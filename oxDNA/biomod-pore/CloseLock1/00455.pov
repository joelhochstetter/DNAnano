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
	<24.267078, 35.238094, 35.239895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.322805, 35.130421, 34.858711>,  <24.356241, 35.065815, 34.630001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.322805, 35.130421, 34.858711>,  <24.267078, 35.238094, 35.239895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.322805, 35.130421, 34.858711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286196, 0.932220, -0.221490,
		0.947989, -0.241875, 0.206914,
		0.139317, -0.269188, -0.952958,
		24.364601, 35.049664, 34.572823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963211, 35.501667, 34.893787>,  <24.267078, 35.238094, 35.239895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963211, 35.501667, 34.893787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659716, 35.445282, 34.639404>,  <24.477619, 35.411449, 34.486774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659716, 35.445282, 34.639404>,  <24.963211, 35.501667, 34.893787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.659716, 35.445282, 34.639404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027720, 0.982407, -0.184681,
		0.650805, -0.122496, -0.749298,
		-0.758739, -0.140961, -0.635960,
		24.432095, 35.402992, 34.448616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.180407, 35.709400, 34.193863>,  <24.963211, 35.501667, 34.893787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.180407, 35.709400, 34.193863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.780964, 35.697220, 34.211082>,  <24.541298, 35.689911, 34.221416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.780964, 35.697220, 34.211082>,  <25.180407, 35.709400, 34.193863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.780964, 35.697220, 34.211082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047249, 0.879224, -0.474059,
		-0.023417, -0.475433, -0.879440,
		-0.998608, -0.030451, 0.043052,
		24.481380, 35.688084, 34.223999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.941669, 35.600174, 33.517792>,  <25.180407, 35.709400, 34.193863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.941669, 35.600174, 33.517792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686478, 35.825638, 33.727654>,  <24.533361, 35.960918, 33.853569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686478, 35.825638, 33.727654>,  <24.941669, 35.600174, 33.517792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.686478, 35.825638, 33.727654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205506, 0.781241, -0.589432,
		-0.742123, -0.268227, -0.614253,
		-0.637981, 0.563664, 0.524655,
		24.495083, 35.994736, 33.885052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.466997, 35.314377, 33.056854>,  <24.941669, 35.600174, 33.517792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.466997, 35.314377, 33.056854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626287, 35.434486, 32.710155>,  <25.721861, 35.506554, 32.502136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626287, 35.434486, 32.710155>,  <25.466997, 35.314377, 33.056854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.626287, 35.434486, 32.710155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916287, -0.174349, 0.360584,
		-0.042843, -0.937784, -0.344566,
		0.398225, 0.300273, -0.866748,
		25.745754, 35.524567, 32.450130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918165, 34.811852, 33.101345>,  <25.466997, 35.314377, 33.056854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918165, 34.811852, 33.101345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066795, 35.100685, 32.867928>,  <26.155973, 35.273983, 32.727875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066795, 35.100685, 32.867928>,  <25.918165, 34.811852, 33.101345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066795, 35.100685, 32.867928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903688, -0.137247, 0.405599,
		0.212786, -0.678057, -0.703535,
		0.371577, 0.722082, -0.583548,
		26.178268, 35.317310, 32.692863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474243, 34.646076, 32.782024>,  <25.918165, 34.811852, 33.101345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474243, 34.646076, 32.782024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571180, 35.026398, 32.704834>,  <26.629343, 35.254589, 32.658520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571180, 35.026398, 32.704834>,  <26.474243, 34.646076, 32.782024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571180, 35.026398, 32.704834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951984, -0.194688, 0.236270,
		0.187076, -0.240972, -0.952331,
		0.242342, 0.950805, -0.192980,
		26.643883, 35.311638, 32.646938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155386, 34.413204, 33.167618>,  <26.474243, 34.646076, 32.782024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155386, 34.413204, 33.167618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532333, 34.404633, 33.301170>,  <27.758503, 34.399490, 33.381302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532333, 34.404633, 33.301170>,  <27.155386, 34.413204, 33.167618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532333, 34.404633, 33.301170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082281, 0.952452, 0.293368,
		-0.324296, -0.303933, 0.895799,
		0.942371, -0.021431, 0.333884,
		27.815044, 34.398205, 33.401337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248529, 34.920994, 33.737633>,  <27.155386, 34.413204, 33.167618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248529, 34.920994, 33.737633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.631575, 34.851421, 33.645782>,  <27.861401, 34.809677, 33.590672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.631575, 34.851421, 33.645782>,  <27.248529, 34.920994, 33.737633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631575, 34.851421, 33.645782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243098, 0.915600, 0.320282,
		0.154543, -0.362528, 0.919070,
		0.957611, -0.173926, -0.229630,
		27.918858, 34.799244, 33.576893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598013, 35.059719, 34.292255>,  <27.248529, 34.920994, 33.737633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598013, 35.059719, 34.292255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839249, 35.123146, 33.979553>,  <27.983990, 35.161201, 33.791931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839249, 35.123146, 33.979553>,  <27.598013, 35.059719, 34.292255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839249, 35.123146, 33.979553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185541, 0.925275, 0.330819,
		0.775795, -0.344561, 0.528601,
		0.603089, 0.158570, -0.781754,
		28.020176, 35.170719, 33.745026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108387, 35.434536, 34.618481>,  <27.598013, 35.059719, 34.292255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108387, 35.434536, 34.618481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193130, 35.477394, 34.229916>,  <28.243977, 35.503109, 33.996777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193130, 35.477394, 34.229916>,  <28.108387, 35.434536, 34.618481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193130, 35.477394, 34.229916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351904, 0.918936, 0.178104,
		0.911745, -0.379576, 0.156984,
		0.211862, 0.107142, -0.971409,
		28.256689, 35.509537, 33.938492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735760, 35.969791, 34.585548>,  <28.108387, 35.434536, 34.618481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735760, 35.969791, 34.585548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565411, 35.965282, 34.223663>,  <28.463202, 35.962578, 34.006531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565411, 35.965282, 34.223663>,  <28.735760, 35.969791, 34.585548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565411, 35.965282, 34.223663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153113, 0.984603, -0.084345,
		0.891734, -0.174444, -0.417589,
		-0.425872, -0.011275, -0.904713,
		28.437649, 35.961899, 33.952248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292065, 36.042019, 34.001492>,  <28.735760, 35.969791, 34.585548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292065, 36.042019, 34.001492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930212, 36.196861, 33.930172>,  <28.713100, 36.289768, 33.887379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930212, 36.196861, 33.930172>,  <29.292065, 36.042019, 34.001492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930212, 36.196861, 33.930172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397636, 0.917170, -0.026185,
		0.153396, -0.094587, -0.983627,
		-0.904630, 0.387109, -0.178301,
		28.658823, 36.312992, 33.876682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449492, 36.632706, 33.694069>,  <29.292065, 36.042019, 34.001492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449492, 36.632706, 33.694069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055737, 36.691566, 33.732689>,  <28.819483, 36.726883, 33.755863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055737, 36.691566, 33.732689>,  <29.449492, 36.632706, 33.694069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055737, 36.691566, 33.732689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157297, 0.981678, 0.107548,
		-0.078959, 0.121056, -0.989500,
		-0.984390, 0.147154, 0.096554,
		28.760420, 36.735714, 33.761654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282108, 37.109703, 33.188282>,  <29.449492, 36.632706, 33.694069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282108, 37.109703, 33.188282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015608, 37.126328, 33.486111>,  <28.855707, 37.136303, 33.664806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015608, 37.126328, 33.486111>,  <29.282108, 37.109703, 33.188282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015608, 37.126328, 33.486111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134601, 0.988749, 0.065250,
		-0.733481, 0.143693, -0.664347,
		-0.666249, 0.041562, 0.744570,
		28.815733, 37.138798, 33.709480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956921, 37.749004, 33.019650>,  <29.282108, 37.109703, 33.188282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956921, 37.749004, 33.019650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819447, 37.694019, 33.391239>,  <28.736961, 37.661030, 33.614193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819447, 37.694019, 33.391239>,  <28.956921, 37.749004, 33.019650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819447, 37.694019, 33.391239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250463, 0.939979, 0.231750,
		-0.905069, 0.312321, -0.288628,
		-0.343684, -0.137459, 0.928970,
		28.716341, 37.652782, 33.669930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663422, 38.382931, 33.218544>,  <28.956921, 37.749004, 33.019650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663422, 38.382931, 33.218544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715130, 38.220711, 33.580498>,  <28.746155, 38.123379, 33.797672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715130, 38.220711, 33.580498>,  <28.663422, 38.382931, 33.218544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715130, 38.220711, 33.580498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257225, 0.895020, 0.364382,
		-0.957666, 0.185656, 0.220017,
		0.129269, -0.405550, 0.904886,
		28.753910, 38.099045, 33.851963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352022, 38.867905, 33.689182>,  <28.663422, 38.382931, 33.218544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352022, 38.867905, 33.689182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584755, 38.649261, 33.930080>,  <28.724394, 38.518078, 34.074619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584755, 38.649261, 33.930080>,  <28.352022, 38.867905, 33.689182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584755, 38.649261, 33.930080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357804, 0.837007, 0.414001,
		-0.730376, -0.025394, 0.682573,
		0.581831, -0.546603, 0.602243,
		28.759304, 38.485279, 34.110752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166636, 39.058929, 34.395634>,  <28.352022, 38.867905, 33.689182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166636, 39.058929, 34.395634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537876, 38.910091, 34.390354>,  <28.760620, 38.820789, 34.387184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537876, 38.910091, 34.390354>,  <28.166636, 39.058929, 34.395634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537876, 38.910091, 34.390354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337583, 0.826015, 0.451371,
		-0.157046, -0.423375, 0.892238,
		0.928102, -0.372091, -0.013202,
		28.816307, 38.798466, 34.386395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279263, 39.292511, 34.951191>,  <28.166636, 39.058929, 34.395634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279263, 39.292511, 34.951191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610907, 39.198303, 34.748371>,  <28.809893, 39.141777, 34.626678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610907, 39.198303, 34.748371>,  <28.279263, 39.292511, 34.951191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610907, 39.198303, 34.748371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479453, 0.766026, 0.428170,
		0.287573, -0.598109, 0.748042,
		0.829112, -0.235521, -0.507053,
		28.859640, 39.127647, 34.596256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791182, 39.256516, 35.440018>,  <28.279263, 39.292511, 34.951191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791182, 39.256516, 35.440018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002779, 39.309464, 35.104725>,  <29.129738, 39.341232, 34.903549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002779, 39.309464, 35.104725>,  <28.791182, 39.256516, 35.440018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002779, 39.309464, 35.104725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531163, 0.718701, 0.448704,
		0.661838, -0.682603, 0.309877,
		0.528996, 0.132374, -0.838237,
		29.161478, 39.349174, 34.853252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422783, 39.307587, 35.746075>,  <28.791182, 39.256516, 35.440018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422783, 39.307587, 35.746075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463842, 39.469372, 35.382565>,  <29.488478, 39.566444, 35.164459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463842, 39.469372, 35.382565>,  <29.422783, 39.307587, 35.746075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463842, 39.469372, 35.382565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662361, 0.653811, 0.365800,
		0.742120, -0.639486, -0.200789,
		0.102647, 0.404462, -0.908776,
		29.494637, 39.590710, 35.109932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153564, 39.486176, 35.623840>,  <29.422783, 39.307587, 35.746075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153564, 39.486176, 35.623840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952139, 39.716232, 35.365963>,  <29.831284, 39.854267, 35.211235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952139, 39.716232, 35.365963>,  <30.153564, 39.486176, 35.623840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952139, 39.716232, 35.365963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437577, 0.813209, 0.383690,
		0.744951, -0.088893, -0.661170,
		-0.503562, 0.575143, -0.644698,
		29.801069, 39.888775, 35.172554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604475, 39.975632, 35.272205>,  <30.153564, 39.486176, 35.623840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604475, 39.975632, 35.272205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235544, 40.123657, 35.227722>,  <30.014185, 40.212471, 35.201031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235544, 40.123657, 35.227722>,  <30.604475, 39.975632, 35.272205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235544, 40.123657, 35.227722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336029, 0.910234, 0.241989,
		0.190775, 0.185825, -0.963885,
		-0.922328, 0.370059, -0.111208,
		29.958845, 40.234676, 35.194359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783712, 40.699757, 35.507843>,  <30.604475, 39.975632, 35.272205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783712, 40.699757, 35.507843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388113, 40.682079, 35.451370>,  <30.150753, 40.671474, 35.417488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388113, 40.682079, 35.451370>,  <30.783712, 40.699757, 35.507843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388113, 40.682079, 35.451370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054380, 0.996122, 0.069162,
		0.137576, 0.076079, -0.987565,
		-0.988997, -0.044189, -0.141180,
		30.091413, 40.668823, 35.409016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395092, 41.180576, 34.923088>,  <30.783712, 40.699757, 35.507843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395092, 41.180576, 34.923088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186172, 41.098820, 35.254250>,  <30.060822, 41.049767, 35.452946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186172, 41.098820, 35.254250>,  <30.395092, 41.180576, 34.923088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186172, 41.098820, 35.254250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063694, 0.958789, 0.276886,
		-0.850382, 0.197350, -0.487754,
		-0.522297, -0.204392, 0.827907,
		30.029484, 41.037502, 35.502621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802198, 41.555012, 35.020729>,  <30.395092, 41.180576, 34.923088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802198, 41.555012, 35.020729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954586, 41.459999, 35.378151>,  <30.046019, 41.402992, 35.592606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954586, 41.459999, 35.378151>,  <29.802198, 41.555012, 35.020729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954586, 41.459999, 35.378151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203684, 0.964255, 0.169486,
		-0.901873, 0.117434, 0.415734,
		0.380970, -0.237533, 0.893555,
		30.068876, 41.388741, 35.646217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508516, 41.865311, 35.832935>,  <29.802198, 41.555012, 35.020729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508516, 41.865311, 35.832935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897270, 41.822296, 35.749153>,  <30.130524, 41.796486, 35.698883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897270, 41.822296, 35.749153>,  <29.508516, 41.865311, 35.832935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897270, 41.822296, 35.749153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141769, 0.977544, 0.155918,
		0.187987, -0.181229, 0.965307,
		0.971886, -0.107540, -0.209458,
		30.188835, 41.790035, 35.686317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944794, 42.293114, 36.297199>,  <29.508516, 41.865311, 35.832935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944794, 42.293114, 36.297199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145418, 42.235298, 35.956013>,  <30.265793, 42.200607, 35.751301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145418, 42.235298, 35.956013>,  <29.944794, 42.293114, 36.297199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145418, 42.235298, 35.956013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042527, 0.988871, -0.142566,
		0.864076, 0.035232, 0.502126,
		0.501561, -0.144542, -0.852962,
		30.295887, 42.191936, 35.700123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428732, 42.917908, 36.318241>,  <29.944794, 42.293114, 36.297199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428732, 42.917908, 36.318241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388479, 42.761604, 35.952251>,  <30.364328, 42.667824, 35.732658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388479, 42.761604, 35.952251>,  <30.428732, 42.917908, 36.318241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388479, 42.761604, 35.952251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067697, 0.920202, -0.385546,
		0.992618, 0.023143, -0.119053,
		-0.100630, -0.390760, -0.914976,
		30.358290, 42.644375, 35.677757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044319, 43.061390, 35.715427>,  <30.428732, 42.917908, 36.318241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044319, 43.061390, 35.715427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663530, 43.013535, 35.602688>,  <30.435057, 42.984821, 35.535046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663530, 43.013535, 35.602688>,  <31.044319, 43.061390, 35.715427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663530, 43.013535, 35.602688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030132, 0.952642, -0.302597,
		0.304702, -0.279571, -0.910493,
		-0.951971, -0.119637, -0.281848,
		30.377939, 42.977642, 35.518135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023752, 43.611839, 35.261520>,  <31.044319, 43.061390, 35.715427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023752, 43.611839, 35.261520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651001, 43.477680, 35.316818>,  <30.427351, 43.397182, 35.349998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651001, 43.477680, 35.316818>,  <31.023752, 43.611839, 35.261520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651001, 43.477680, 35.316818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362469, 0.845195, -0.392760,
		0.014885, -0.416115, -0.909190,
		-0.931877, -0.335400, 0.138249,
		30.371437, 43.377060, 35.358292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754776, 44.098351, 34.716290>,  <31.023752, 43.611839, 35.261520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754776, 44.098351, 34.716290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021093, 44.115501, 34.418327>,  <31.180883, 44.125790, 34.239552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021093, 44.115501, 34.418327>,  <30.754776, 44.098351, 34.716290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021093, 44.115501, 34.418327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312486, -0.890553, -0.330557,
		-0.677547, 0.452855, -0.579528,
		0.665794, 0.042873, -0.744902,
		31.220831, 44.128365, 34.194855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489437, 43.782646, 34.080986>,  <30.754776, 44.098351, 34.716290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489437, 43.782646, 34.080986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885225, 43.764893, 34.025887>,  <31.122700, 43.754242, 33.992828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885225, 43.764893, 34.025887>,  <30.489437, 43.782646, 34.080986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885225, 43.764893, 34.025887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074894, -0.971486, -0.224956,
		-0.123832, 0.232904, -0.964584,
		0.989473, -0.044385, -0.137744,
		31.182068, 43.751575, 33.984562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540405, 43.455769, 33.493355>,  <30.489437, 43.782646, 34.080986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540405, 43.455769, 33.493355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907841, 43.433666, 33.649887>,  <31.128302, 43.420403, 33.743809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907841, 43.433666, 33.649887>,  <30.540405, 43.455769, 33.493355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907841, 43.433666, 33.649887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113522, -0.911556, -0.395194,
		0.378560, 0.407446, -0.831072,
		0.918589, -0.055259, 0.391332,
		31.183418, 43.417088, 33.767288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904013, 43.221188, 32.944893>,  <30.540405, 43.455769, 33.493355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904013, 43.221188, 32.944893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104528, 43.114895, 33.274277>,  <31.224838, 43.051117, 33.471909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104528, 43.114895, 33.274277>,  <30.904013, 43.221188, 32.944893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104528, 43.114895, 33.274277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085623, -0.931769, -0.352810,
		0.861032, 0.247368, -0.444334,
		0.501290, -0.265736, 0.823464,
		31.254915, 43.035175, 33.521317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566277, 42.979500, 32.807983>,  <30.904013, 43.221188, 32.944893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566277, 42.979500, 32.807983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511229, 42.836807, 33.177589>,  <31.478199, 42.751190, 33.399353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511229, 42.836807, 33.177589>,  <31.566277, 42.979500, 32.807983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511229, 42.836807, 33.177589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204334, -0.923050, -0.325925,
		0.969179, 0.143953, 0.199923,
		-0.137620, -0.356731, 0.924015,
		31.469942, 42.729790, 33.454796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127735, 42.585609, 33.067013>,  <31.566277, 42.979500, 32.807983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127735, 42.585609, 33.067013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813496, 42.439205, 33.266560>,  <31.624950, 42.351364, 33.386288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813496, 42.439205, 33.266560>,  <32.127735, 42.585609, 33.067013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813496, 42.439205, 33.266560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226989, -0.920541, -0.317932,
		0.575591, -0.136531, 0.806259,
		-0.785602, -0.366010, 0.498865,
		31.577814, 42.329403, 33.416218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395748, 41.912128, 33.328346>,  <32.127735, 42.585609, 33.067013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395748, 41.912128, 33.328346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000027, 41.883278, 33.379070>,  <31.762594, 41.865967, 33.409504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000027, 41.883278, 33.379070>,  <32.395748, 41.912128, 33.328346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000027, 41.883278, 33.379070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053215, -0.987757, -0.146645,
		0.135838, -0.138328, 0.981027,
		-0.989301, -0.072125, 0.126814,
		31.703236, 41.861641, 33.417114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285793, 41.258968, 33.813366>,  <32.395748, 41.912128, 33.328346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285793, 41.258968, 33.813366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940788, 41.333015, 33.624985>,  <31.733786, 41.377445, 33.511955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940788, 41.333015, 33.624985>,  <32.285793, 41.258968, 33.813366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940788, 41.333015, 33.624985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176277, -0.982305, -0.063274,
		-0.474337, 0.028444, 0.879884,
		-0.862514, 0.185116, -0.470958,
		31.682034, 41.388550, 33.483696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848253, 40.798138, 34.125916>,  <32.285793, 41.258968, 33.813366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848253, 40.798138, 34.125916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686939, 40.892536, 33.772266>,  <31.590151, 40.949177, 33.560078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686939, 40.892536, 33.772266>,  <31.848253, 40.798138, 34.125916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686939, 40.892536, 33.772266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254288, -0.957020, -0.139465,
		-0.879032, 0.168576, 0.445965,
		-0.403287, 0.235998, -0.884118,
		31.565952, 40.963337, 33.507030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131571, 40.527229, 34.133282>,  <31.848253, 40.798138, 34.125916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131571, 40.527229, 34.133282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226294, 40.597046, 33.750980>,  <31.283127, 40.638935, 33.521599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226294, 40.597046, 33.750980>,  <31.131571, 40.527229, 34.133282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226294, 40.597046, 33.750980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110194, -0.972556, -0.204917,
		-0.965288, 0.153843, -0.211074,
		0.236806, 0.174545, -0.955749,
		31.297335, 40.649410, 33.464256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556416, 40.269550, 33.754532>,  <31.131571, 40.527229, 34.133282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556416, 40.269550, 33.754532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876978, 40.282589, 33.515640>,  <31.069315, 40.290413, 33.372303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876978, 40.282589, 33.515640>,  <30.556416, 40.269550, 33.754532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876978, 40.282589, 33.515640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135665, -0.962585, -0.234575,
		-0.582531, 0.269013, -0.767001,
		0.801407, 0.032592, -0.597231,
		31.117399, 40.292366, 33.336472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359449, 39.820724, 33.223698>,  <30.556416, 40.269550, 33.754532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359449, 39.820724, 33.223698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754589, 39.824280, 33.161633>,  <30.991673, 39.826412, 33.124393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754589, 39.824280, 33.161633>,  <30.359449, 39.820724, 33.223698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754589, 39.824280, 33.161633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057674, -0.906105, -0.419103,
		-0.144323, 0.422959, -0.894582,
		0.987848, 0.008892, -0.155166,
		31.050943, 39.826946, 33.115082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401880, 39.501778, 32.609165>,  <30.359449, 39.820724, 33.223698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401880, 39.501778, 32.609165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764969, 39.485226, 32.776176>,  <30.982822, 39.475292, 32.876381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764969, 39.485226, 32.776176>,  <30.401880, 39.501778, 32.609165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764969, 39.485226, 32.776176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025050, -0.988003, -0.152387,
		0.418821, 0.148785, -0.895797,
		0.907723, -0.041383, 0.417524,
		31.037285, 39.472809, 32.901432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756397, 38.931004, 32.232395>,  <30.401880, 39.501778, 32.609165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756397, 38.931004, 32.232395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951426, 38.976051, 32.578712>,  <31.068443, 39.003078, 32.786503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951426, 38.976051, 32.578712>,  <30.756397, 38.931004, 32.232395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951426, 38.976051, 32.578712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146471, -0.988143, 0.046045,
		0.860709, 0.104363, -0.498285,
		0.487571, 0.112616, 0.865790,
		31.097696, 39.009834, 32.838448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304008, 38.578251, 32.080498>,  <30.756397, 38.931004, 32.232395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304008, 38.578251, 32.080498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290810, 38.608868, 32.479107>,  <31.282890, 38.627239, 32.718273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290810, 38.608868, 32.479107>,  <31.304008, 38.578251, 32.080498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290810, 38.608868, 32.479107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129089, -0.988385, 0.080194,
		0.991084, 0.131286, 0.022734,
		-0.032998, 0.076544, 0.996520,
		31.280910, 38.631832, 32.778065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797020, 38.242039, 32.244457>,  <31.304008, 38.578251, 32.080498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797020, 38.242039, 32.244457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565428, 38.258976, 32.570156>,  <31.426474, 38.269138, 32.765575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565428, 38.258976, 32.570156>,  <31.797020, 38.242039, 32.244457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565428, 38.258976, 32.570156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095535, -0.995295, -0.016177,
		0.809726, -0.087154, 0.580299,
		-0.578979, 0.042340, 0.814243,
		31.391735, 38.271679, 32.814430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120625, 37.819672, 32.819054>,  <31.797020, 38.242039, 32.244457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120625, 37.819672, 32.819054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725956, 37.847824, 32.877743>,  <31.489155, 37.864716, 32.912956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725956, 37.847824, 32.877743>,  <32.120625, 37.819672, 32.819054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725956, 37.847824, 32.877743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054967, -0.992784, 0.106574,
		0.153168, 0.097088, 0.983419,
		-0.986670, 0.070380, 0.146726,
		31.429955, 37.868938, 32.921761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029179, 37.299671, 33.314220>,  <32.120625, 37.819672, 32.819054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029179, 37.299671, 33.314220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674055, 37.379204, 33.148201>,  <31.460981, 37.426922, 33.048592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674055, 37.379204, 33.148201>,  <32.029179, 37.299671, 33.314220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674055, 37.379204, 33.148201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222794, -0.974818, 0.009581,
		-0.402690, 0.100976, 0.909750,
		-0.887808, 0.198829, -0.415047,
		31.407713, 37.438854, 33.023685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445171, 37.228527, 33.857510>,  <32.029179, 37.299671, 33.314220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445171, 37.228527, 33.857510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250750, 37.200497, 33.509064>,  <31.134096, 37.183678, 33.299995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250750, 37.200497, 33.509064>,  <31.445171, 37.228527, 33.857510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250750, 37.200497, 33.509064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076023, -0.996392, 0.037732,
		-0.870615, -0.047885, 0.489629,
		-0.486055, -0.070073, -0.871114,
		31.104933, 37.179474, 33.247730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943977, 36.651287, 33.999691>,  <31.445171, 37.228527, 33.857510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943977, 36.651287, 33.999691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966585, 36.694145, 33.602638>,  <30.980150, 36.719860, 33.364407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966585, 36.694145, 33.602638>,  <30.943977, 36.651287, 33.999691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966585, 36.694145, 33.602638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060685, -0.992755, -0.103706,
		-0.996556, -0.054377, -0.062610,
		0.056518, 0.107149, -0.992635,
		30.983540, 36.726292, 33.304848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496675, 36.162094, 33.766739>,  <30.943977, 36.651287, 33.999691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496675, 36.162094, 33.766739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727852, 36.223740, 33.446182>,  <30.866558, 36.260727, 33.253849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727852, 36.223740, 33.446182>,  <30.496675, 36.162094, 33.766739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727852, 36.223740, 33.446182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033415, -0.976713, -0.211932,
		-0.815394, 0.149262, -0.559333,
		0.577941, 0.154118, -0.801393,
		30.901234, 36.269974, 33.205765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196632, 35.669548, 33.226845>,  <30.496675, 36.162094, 33.766739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196632, 35.669548, 33.226845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559355, 35.789948, 33.108791>,  <30.776989, 35.862186, 33.037960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559355, 35.789948, 33.108791>,  <30.196632, 35.669548, 33.226845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559355, 35.789948, 33.108791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225086, -0.937683, -0.264737,
		-0.356425, 0.173635, -0.918048,
		0.906806, 0.300999, -0.295131,
		30.831396, 35.880249, 33.020252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298077, 35.474926, 32.538181>,  <30.196632, 35.669548, 33.226845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298077, 35.474926, 32.538181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662889, 35.523705, 32.694813>,  <30.881777, 35.552971, 32.788792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662889, 35.523705, 32.694813>,  <30.298077, 35.474926, 32.538181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662889, 35.523705, 32.694813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262375, -0.907314, -0.328544,
		0.315216, 0.402382, -0.859493,
		0.912030, 0.121947, 0.391575,
		30.936499, 35.560287, 32.812286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699963, 35.203342, 32.078079>,  <30.298077, 35.474926, 32.538181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699963, 35.203342, 32.078079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958660, 35.219727, 32.382721>,  <31.113878, 35.229557, 32.565506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958660, 35.219727, 32.382721>,  <30.699963, 35.203342, 32.078079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958660, 35.219727, 32.382721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424721, -0.848748, -0.315023,
		0.633508, 0.527210, -0.566319,
		0.646746, 0.040958, 0.761605,
		31.152683, 35.232014, 32.611202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346766, 34.944717, 31.820465>,  <30.699963, 35.203342, 32.078079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346766, 34.944717, 31.820465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344133, 34.877811, 32.214821>,  <31.342554, 34.837669, 32.451435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344133, 34.877811, 32.214821>,  <31.346766, 34.944717, 31.820465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344133, 34.877811, 32.214821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320069, -0.934397, -0.156390,
		0.947371, 0.314525, 0.059681,
		-0.006578, -0.167262, 0.985891,
		31.342159, 34.827633, 32.510590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900414, 34.568302, 31.931950>,  <31.346766, 34.944717, 31.820465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900414, 34.568302, 31.931950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658068, 34.507004, 32.244217>,  <31.512661, 34.470222, 32.431576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658068, 34.507004, 32.244217>,  <31.900414, 34.568302, 31.931950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658068, 34.507004, 32.244217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203470, -0.978485, -0.034171,
		0.769110, 0.138140, 0.624009,
		-0.605863, -0.153248, 0.780670,
		31.476309, 34.461029, 32.478416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223129, 34.118305, 32.437332>,  <31.900414, 34.568302, 31.931950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223129, 34.118305, 32.437332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824549, 34.096245, 32.411903>,  <31.585400, 34.083008, 32.396648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824549, 34.096245, 32.411903>,  <32.223129, 34.118305, 32.437332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824549, 34.096245, 32.411903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072694, -0.944676, -0.319848,
		-0.042411, -0.323335, 0.945334,
		-0.996452, -0.055155, -0.063569,
		31.525614, 34.079697, 32.392834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633930, 34.039383, 33.109219>,  <32.223129, 34.118305, 32.437332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633930, 34.039383, 33.109219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718861, 34.408470, 32.980530>,  <32.769821, 34.629921, 32.903316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718861, 34.408470, 32.980530>,  <32.633930, 34.039383, 33.109219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718861, 34.408470, 32.980530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454012, 0.198389, 0.868628,
		0.865326, -0.330500, -0.376802,
		0.212328, 0.922720, -0.321723,
		32.782558, 34.685287, 32.884014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314827, 34.216610, 32.971714>,  <32.633930, 34.039383, 33.109219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314827, 34.216610, 32.971714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111256, 34.534298, 33.104511>,  <32.989113, 34.724911, 33.184189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111256, 34.534298, 33.104511>,  <33.314827, 34.216610, 32.971714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111256, 34.534298, 33.104511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552966, 0.006057, 0.833182,
		0.659715, 0.607606, -0.442257,
		-0.508925, 0.794216, 0.331990,
		32.958580, 34.772564, 33.204109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854282, 34.577927, 33.177849>,  <33.314827, 34.216610, 32.971714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854282, 34.577927, 33.177849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524464, 34.703163, 33.366352>,  <33.326572, 34.778305, 33.479454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524464, 34.703163, 33.366352>,  <33.854282, 34.577927, 33.177849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524464, 34.703163, 33.366352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529249, 0.132344, 0.838082,
		0.200030, 0.940456, -0.274829,
		-0.824551, 0.313094, 0.471262,
		33.277100, 34.797092, 33.507732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908901, 35.316914, 33.364304>,  <33.854282, 34.577927, 33.177849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908901, 35.316914, 33.364304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666389, 35.098030, 33.595123>,  <33.520882, 34.966698, 33.733616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666389, 35.098030, 33.595123>,  <33.908901, 35.316914, 33.364304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666389, 35.098030, 33.595123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471210, 0.337327, 0.814968,
		-0.640613, 0.766009, 0.053336,
		-0.606281, -0.547211, 0.577047,
		33.484505, 34.933868, 33.768238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323578, 35.705528, 33.762127>,  <33.908901, 35.316914, 33.364304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323578, 35.705528, 33.762127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466816, 35.378090, 33.941753>,  <33.552761, 35.181625, 34.049530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466816, 35.378090, 33.941753>,  <33.323578, 35.705528, 33.762127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466816, 35.378090, 33.941753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453233, 0.572897, 0.682913,
		-0.816299, -0.041020, 0.576170,
		0.358099, -0.818600, 0.449064,
		33.574245, 35.132511, 34.076473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297649, 35.969147, 34.400539>,  <33.323578, 35.705528, 33.762127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297649, 35.969147, 34.400539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503883, 35.629478, 34.446285>,  <33.627625, 35.425678, 34.473732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503883, 35.629478, 34.446285>,  <33.297649, 35.969147, 34.400539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503883, 35.629478, 34.446285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493326, 0.403323, 0.770688,
		-0.700572, -0.340936, 0.626866,
		0.515585, -0.849172, 0.114364,
		33.658558, 35.374725, 34.480595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207672, 35.808205, 35.137028>,  <33.297649, 35.969147, 34.400539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207672, 35.808205, 35.137028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537853, 35.613136, 35.023323>,  <33.735962, 35.496098, 34.955101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537853, 35.613136, 35.023323>,  <33.207672, 35.808205, 35.137028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537853, 35.613136, 35.023323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507948, 0.422095, 0.750883,
		-0.246196, -0.764210, 0.596130,
		0.825455, -0.487668, -0.284260,
		33.785488, 35.466835, 34.938046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521423, 35.542667, 35.766376>,  <33.207672, 35.808205, 35.137028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521423, 35.542667, 35.766376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829964, 35.531799, 35.512043>,  <34.015087, 35.525276, 35.359444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829964, 35.531799, 35.512043>,  <33.521423, 35.542667, 35.766376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829964, 35.531799, 35.512043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588932, 0.409133, 0.696972,
		0.241199, -0.912070, 0.331589,
		0.771351, -0.027175, -0.635829,
		34.061367, 35.523647, 35.321293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011921, 35.093525, 35.977901>,  <33.521423, 35.542667, 35.766376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011921, 35.093525, 35.977901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175465, 35.392876, 35.768993>,  <34.273590, 35.572487, 35.643650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175465, 35.392876, 35.768993>,  <34.011921, 35.093525, 35.977901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175465, 35.392876, 35.768993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525890, 0.274500, 0.805040,
		0.745836, -0.603805, -0.281332,
		0.408862, 0.748378, -0.522267,
		34.298122, 35.617390, 35.612312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649734, 35.189541, 36.221222>,  <34.011921, 35.093525, 35.977901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649734, 35.189541, 36.221222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648209, 35.541195, 36.030598>,  <34.647293, 35.752186, 35.916222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648209, 35.541195, 36.030598>,  <34.649734, 35.189541, 36.221222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648209, 35.541195, 36.030598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662546, 0.359175, 0.657286,
		0.749011, -0.313240, -0.583835,
		-0.003811, 0.879132, -0.476562,
		34.647064, 35.804935, 35.887630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376472, 35.416119, 36.244789>,  <34.649734, 35.189541, 36.221222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376472, 35.416119, 36.244789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147568, 35.732952, 36.159821>,  <35.010223, 35.923054, 36.108841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147568, 35.732952, 36.159821>,  <35.376472, 35.416119, 36.244789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147568, 35.732952, 36.159821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439940, 0.515119, 0.735598,
		0.692077, 0.327502, -0.643252,
		-0.572261, 0.792083, -0.212421,
		34.975891, 35.970577, 36.096096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816879, 36.027428, 36.353394>,  <35.376472, 35.416119, 36.244789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816879, 36.027428, 36.353394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440430, 36.160442, 36.377720>,  <35.214561, 36.240253, 36.392315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440430, 36.160442, 36.377720>,  <35.816879, 36.027428, 36.353394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440430, 36.160442, 36.377720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232217, 0.505178, 0.831186,
		0.245679, 0.796374, -0.552658,
		-0.941125, 0.332541, 0.060820,
		35.158092, 36.260204, 36.395966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933861, 36.699638, 36.477615>,  <35.816879, 36.027428, 36.353394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933861, 36.699638, 36.477615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565655, 36.600487, 36.598419>,  <35.344730, 36.540997, 36.670902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565655, 36.600487, 36.598419>,  <35.933861, 36.699638, 36.477615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565655, 36.600487, 36.598419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208952, 0.340816, 0.916615,
		-0.330136, 0.906864, -0.261932,
		-0.920516, -0.247876, 0.302006,
		35.289501, 36.526123, 36.689022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625626, 37.221710, 36.824177>,  <35.933861, 36.699638, 36.477615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625626, 37.221710, 36.824177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436401, 36.902966, 36.974495>,  <35.322865, 36.711720, 37.064686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436401, 36.902966, 36.974495>,  <35.625626, 37.221710, 36.824177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436401, 36.902966, 36.974495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153174, 0.345653, 0.925776,
		-0.867611, 0.495512, -0.041457,
		-0.473063, -0.796864, 0.375792,
		35.294483, 36.663906, 37.087231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161560, 37.493778, 37.277401>,  <35.625626, 37.221710, 36.824177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161560, 37.493778, 37.277401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191311, 37.111607, 37.391682>,  <35.209160, 36.882305, 37.460251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191311, 37.111607, 37.391682>,  <35.161560, 37.493778, 37.277401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191311, 37.111607, 37.391682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128878, 0.274881, 0.952801,
		-0.988867, -0.107684, -0.102690,
		0.074374, -0.955429, 0.285699,
		35.213623, 36.824978, 37.477390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660282, 37.508808, 37.683140>,  <35.161560, 37.493778, 37.277401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660282, 37.508808, 37.683140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854019, 37.174847, 37.787716>,  <34.970261, 36.974468, 37.850460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854019, 37.174847, 37.787716>,  <34.660282, 37.508808, 37.683140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854019, 37.174847, 37.787716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248220, 0.155413, 0.956156,
		-0.838929, -0.527999, -0.131967,
		0.484340, -0.834904, 0.261440,
		34.999321, 36.924377, 37.866146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362076, 37.185829, 38.247150>,  <34.660282, 37.508808, 37.683140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362076, 37.185829, 38.247150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713715, 37.002457, 38.299339>,  <34.924698, 36.892433, 38.330654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713715, 37.002457, 38.299339>,  <34.362076, 37.185829, 38.247150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713715, 37.002457, 38.299339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181159, -0.068166, 0.981089,
		-0.440872, -0.886110, -0.142974,
		0.879098, -0.458436, 0.130474,
		34.977444, 36.864925, 38.338482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234047, 36.576729, 38.677849>,  <34.362076, 37.185829, 38.247150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234047, 36.576729, 38.677849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631496, 36.608780, 38.709560>,  <34.869968, 36.628010, 38.728588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631496, 36.608780, 38.709560>,  <34.234047, 36.576729, 38.677849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631496, 36.608780, 38.709560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050262, -0.314551, 0.947909,
		0.100894, -0.945852, -0.308518,
		0.993627, 0.080132, 0.079277,
		34.929585, 36.632820, 38.733345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382454, 36.061203, 39.127033>,  <34.234047, 36.576729, 38.677849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382454, 36.061203, 39.127033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678761, 36.329121, 39.147587>,  <34.856544, 36.489872, 39.159920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678761, 36.329121, 39.147587>,  <34.382454, 36.061203, 39.127033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678761, 36.329121, 39.147587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042265, -0.029866, 0.998660,
		0.670432, -0.741946, 0.006185,
		0.740767, 0.669795, 0.051382,
		34.900990, 36.530060, 39.163002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966759, 35.808334, 39.598553>,  <34.382454, 36.061203, 39.127033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966759, 35.808334, 39.598553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966366, 36.208317, 39.594707>,  <34.966129, 36.448307, 39.592400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966366, 36.208317, 39.594707>,  <34.966759, 35.808334, 39.598553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966366, 36.208317, 39.594707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129947, 0.009657, 0.991474,
		0.991520, -0.000279, -0.129951,
		-0.000978, 0.999953, -0.009611,
		34.966072, 36.508305, 39.591824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406631, 35.949242, 40.113094>,  <34.966759, 35.808334, 39.598553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406631, 35.949242, 40.113094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231445, 36.305664, 40.065426>,  <35.126335, 36.519520, 40.036823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231445, 36.305664, 40.065426>,  <35.406631, 35.949242, 40.113094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231445, 36.305664, 40.065426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053821, 0.158312, 0.985921,
		0.897380, 0.425385, -0.117292,
		-0.437965, 0.891058, -0.119171,
		35.100056, 36.572983, 40.029675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692154, 36.333771, 40.541740>,  <35.406631, 35.949242, 40.113094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692154, 36.333771, 40.541740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370159, 36.562920, 40.480019>,  <35.176964, 36.700409, 40.442986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370159, 36.562920, 40.480019>,  <35.692154, 36.333771, 40.541740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370159, 36.562920, 40.480019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075490, 0.356872, 0.931098,
		0.588471, 0.737872, -0.330523,
		-0.804986, 0.572876, -0.154307,
		35.128662, 36.734783, 40.433727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741699, 37.034637, 40.953285>,  <35.692154, 36.333771, 40.541740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741699, 37.034637, 40.953285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351147, 36.985764, 40.882004>,  <35.116817, 36.956440, 40.839237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351147, 36.985764, 40.882004>,  <35.741699, 37.034637, 40.953285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351147, 36.985764, 40.882004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203916, 0.248410, 0.946948,
		-0.071436, 0.960918, -0.267458,
		-0.976379, -0.122185, -0.178201,
		35.058231, 36.949108, 40.828545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366867, 37.601616, 41.260544>,  <35.741699, 37.034637, 40.953285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366867, 37.601616, 41.260544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072319, 37.331215, 41.249382>,  <34.895592, 37.168976, 41.242687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072319, 37.331215, 41.249382>,  <35.366867, 37.601616, 41.260544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072319, 37.331215, 41.249382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316878, 0.308154, 0.897011,
		-0.597785, 0.669373, -0.441126,
		-0.736370, -0.676003, -0.027900,
		34.851406, 37.128414, 41.241013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755978, 37.943947, 41.537060>,  <35.366867, 37.601616, 41.260544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755978, 37.943947, 41.537060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712360, 37.548122, 41.574741>,  <34.686192, 37.310627, 41.597351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712360, 37.548122, 41.574741>,  <34.755978, 37.943947, 41.537060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712360, 37.548122, 41.574741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365969, 0.128073, 0.921772,
		-0.924217, 0.066034, -0.376114,
		-0.109039, -0.989564, 0.094201,
		34.679649, 37.251255, 41.603001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193615, 37.877262, 41.920097>,  <34.755978, 37.943947, 41.537060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193615, 37.877262, 41.920097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350174, 37.509762, 41.940899>,  <34.444111, 37.289261, 41.953381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350174, 37.509762, 41.940899>,  <34.193615, 37.877262, 41.920097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350174, 37.509762, 41.940899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445066, -0.139533, 0.884560,
		-0.805433, -0.369362, -0.463518,
		0.391399, -0.918750, 0.052006,
		34.467594, 37.234138, 41.956501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700306, 37.381790, 42.072643>,  <34.193615, 37.877262, 41.920097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700306, 37.381790, 42.072643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040318, 37.204418, 42.186359>,  <34.244324, 37.097996, 42.254589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040318, 37.204418, 42.186359>,  <33.700306, 37.381790, 42.072643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040318, 37.204418, 42.186359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416999, -0.236779, 0.877524,
		-0.321809, -0.864467, -0.386180,
		0.850030, -0.443432, 0.284284,
		34.295326, 37.071388, 42.271645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547279, 36.798946, 42.514587>,  <33.700306, 37.381790, 42.072643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547279, 36.798946, 42.514587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942310, 36.824955, 42.571815>,  <34.179329, 36.840561, 42.606152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942310, 36.824955, 42.571815>,  <33.547279, 36.798946, 42.514587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942310, 36.824955, 42.571815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097800, -0.458369, 0.883365,
		0.123015, -0.886381, -0.446314,
		0.987574, 0.065018, 0.143074,
		34.238583, 36.844460, 42.614738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815159, 36.055424, 42.730537>,  <33.547279, 36.798946, 42.514587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815159, 36.055424, 42.730537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055038, 36.343330, 42.870419>,  <34.198967, 36.516075, 42.954346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055038, 36.343330, 42.870419>,  <33.815159, 36.055424, 42.730537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055038, 36.343330, 42.870419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000941, -0.436373, 0.899765,
		0.800224, -0.539919, -0.261016,
		0.599701, 0.719768, 0.349704,
		34.234947, 36.559261, 42.975330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341427, 35.743263, 43.088371>,  <33.815159, 36.055424, 42.730537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341427, 35.743263, 43.088371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342632, 36.113880, 43.238842>,  <34.343353, 36.336250, 43.329124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342632, 36.113880, 43.238842>,  <34.341427, 35.743263, 43.088371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342632, 36.113880, 43.238842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088512, -0.374945, 0.922812,
		0.996071, 0.030519, -0.083139,
		0.003009, 0.926544, 0.376173,
		34.343536, 36.391842, 43.351692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736828, 35.599182, 43.643181>,  <34.341427, 35.743263, 43.088371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736828, 35.599182, 43.643181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563602, 35.955963, 43.695133>,  <34.459667, 36.170033, 43.726307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563602, 35.955963, 43.695133>,  <34.736828, 35.599182, 43.643181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563602, 35.955963, 43.695133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047786, -0.121176, 0.991480,
		0.900095, 0.435583, 0.009854,
		-0.433066, 0.891955, 0.129884,
		34.433681, 36.223549, 43.734100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089481, 35.956844, 44.212677>,  <34.736828, 35.599182, 43.643181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089481, 35.956844, 44.212677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727009, 36.123001, 44.180962>,  <34.509525, 36.222694, 44.161930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727009, 36.123001, 44.180962>,  <35.089481, 35.956844, 44.212677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727009, 36.123001, 44.180962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115317, -0.062331, 0.991371,
		0.406869, 0.907503, 0.104385,
		-0.906179, 0.415395, -0.079291,
		34.455154, 36.247620, 44.157173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027664, 36.428123, 44.780403>,  <35.089481, 35.956844, 44.212677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027664, 36.428123, 44.780403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649471, 36.358662, 44.670200>,  <34.422554, 36.316982, 44.604076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649471, 36.358662, 44.670200>,  <35.027664, 36.428123, 44.780403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649471, 36.358662, 44.670200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288050, 0.051185, 0.956247,
		-0.151959, 0.983475, -0.098416,
		-0.945482, -0.173659, -0.275512,
		34.365826, 36.306564, 44.587547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613289, 37.038345, 44.876053>,  <35.027664, 36.428123, 44.780403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613289, 37.038345, 44.876053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384422, 36.710293, 44.875233>,  <34.247101, 36.513462, 44.874741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384422, 36.710293, 44.875233>,  <34.613289, 37.038345, 44.876053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384422, 36.710293, 44.875233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287017, 0.197898, 0.937261,
		-0.768272, 0.536861, -0.348623,
		-0.572171, -0.820132, -0.002048,
		34.212772, 36.464252, 44.874619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219086, 37.185825, 45.473206>,  <34.613289, 37.038345, 44.876053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219086, 37.185825, 45.473206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111851, 36.807728, 45.398754>,  <34.047508, 36.580868, 45.354084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111851, 36.807728, 45.398754>,  <34.219086, 37.185825, 45.473206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111851, 36.807728, 45.398754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280556, -0.108230, 0.953716,
		-0.921639, 0.307898, -0.236178,
		-0.268086, -0.945243, -0.186132,
		34.031425, 36.524155, 45.342915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553680, 37.136913, 45.637398>,  <34.219086, 37.185825, 45.473206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553680, 37.136913, 45.637398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654472, 36.750114, 45.652485>,  <33.714947, 36.518036, 45.661537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654472, 36.750114, 45.652485>,  <33.553680, 37.136913, 45.637398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654472, 36.750114, 45.652485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353894, -0.055797, 0.933620,
		-0.900704, -0.248600, -0.356274,
		0.251977, -0.966998, 0.037722,
		33.730064, 36.460014, 45.663803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087879, 36.777122, 45.942696>,  <33.553680, 37.136913, 45.637398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087879, 36.777122, 45.942696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406437, 36.540871, 45.994713>,  <33.597572, 36.399120, 46.025921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406437, 36.540871, 45.994713>,  <33.087879, 36.777122, 45.942696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406437, 36.540871, 45.994713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291079, -0.185861, 0.938472,
		-0.530123, -0.785244, -0.319939,
		0.796393, -0.590633, 0.130039,
		33.645355, 36.363682, 46.033726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712322, 36.154404, 46.292061>,  <33.087879, 36.777122, 45.942696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712322, 36.154404, 46.292061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100353, 36.103729, 46.374916>,  <33.333172, 36.073326, 46.424629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100353, 36.103729, 46.374916>,  <32.712322, 36.154404, 46.292061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100353, 36.103729, 46.374916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240197, -0.375952, 0.894967,
		-0.035501, -0.917939, -0.395130,
		0.970075, -0.126681, 0.207139,
		33.391376, 36.065723, 46.437057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719082, 35.559826, 46.719360>,  <32.712322, 36.154404, 46.292061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719082, 35.559826, 46.719360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093811, 35.685581, 46.780716>,  <33.318649, 35.761036, 46.817532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093811, 35.685581, 46.780716>,  <32.719082, 35.559826, 46.719360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093811, 35.685581, 46.780716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001693, -0.434416, 0.900711,
		0.349809, -0.844063, -0.406437,
		0.936820, 0.314389, 0.153392,
		33.374855, 35.779900, 46.826733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214722, 34.898922, 46.908028>,  <32.719082, 35.559826, 46.719360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214722, 34.898922, 46.908028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329933, 35.252228, 47.056023>,  <33.399059, 35.464211, 47.144817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329933, 35.252228, 47.056023>,  <33.214722, 34.898922, 46.908028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329933, 35.252228, 47.056023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039802, -0.374982, 0.926177,
		0.956795, -0.281489, -0.072849,
		0.288026, 0.883262, 0.369985,
		33.416340, 35.517208, 47.167019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777863, 34.791065, 47.322861>,  <33.214722, 34.898922, 46.908028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777863, 34.791065, 47.322861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648422, 35.141911, 47.464825>,  <33.570759, 35.352417, 47.550003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648422, 35.141911, 47.464825>,  <33.777863, 34.791065, 47.322861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648422, 35.141911, 47.464825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080873, -0.399358, 0.913221,
		0.942732, 0.266814, 0.200166,
		-0.323598, 0.877111, 0.354909,
		33.551342, 35.405045, 47.571297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184853, 34.903934, 47.949047>,  <33.777863, 34.791065, 47.322861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184853, 34.903934, 47.949047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872948, 35.150978, 47.990112>,  <33.685806, 35.299202, 48.014751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872948, 35.150978, 47.990112>,  <34.184853, 34.903934, 47.949047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872948, 35.150978, 47.990112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106452, -0.292376, 0.950360,
		0.616965, 0.730122, 0.293728,
		-0.779758, 0.617607, 0.102662,
		33.639019, 35.336262, 48.020912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361088, 35.266155, 48.475555>,  <34.184853, 34.903934, 47.949047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361088, 35.266155, 48.475555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962906, 35.275818, 48.438721>,  <33.723995, 35.281616, 48.416622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962906, 35.275818, 48.438721>,  <34.361088, 35.266155, 48.475555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962906, 35.275818, 48.438721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094851, -0.334285, 0.937687,
		-0.008132, 0.942162, 0.335058,
		-0.995458, 0.024155, -0.092084,
		33.664268, 35.283066, 48.411095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149567, 35.443348, 49.119972>,  <34.361088, 35.266155, 48.475555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149567, 35.443348, 49.119972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786266, 35.344051, 48.985241>,  <33.568287, 35.284473, 48.904400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786266, 35.344051, 48.985241>,  <34.149567, 35.443348, 49.119972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786266, 35.344051, 48.985241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349826, 0.008838, 0.936773,
		-0.229573, 0.968657, -0.094870,
		-0.908250, -0.248246, -0.336832,
		33.513790, 35.269577, 48.884190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557899, 36.027775, 49.340958>,  <34.149567, 35.443348, 49.119972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557899, 36.027775, 49.340958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391262, 35.671074, 49.270275>,  <33.291279, 35.457054, 49.227867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391262, 35.671074, 49.270275>,  <33.557899, 36.027775, 49.340958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391262, 35.671074, 49.270275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328717, -0.033462, 0.943836,
		-0.847583, 0.451280, -0.279194,
		-0.416592, -0.891755, -0.176705,
		33.266285, 35.403549, 49.217262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993843, 35.896736, 49.828346>,  <33.557899, 36.027775, 49.340958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993843, 35.896736, 49.828346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061432, 35.514099, 49.733376>,  <33.101986, 35.284515, 49.676392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061432, 35.514099, 49.733376>,  <32.993843, 35.896736, 49.828346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061432, 35.514099, 49.733376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247070, -0.274311, 0.929360,
		-0.954152, -0.098371, -0.282696,
		0.168969, -0.956597, -0.237430,
		33.112122, 35.227119, 49.662148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323963, 35.486237, 49.973190>,  <32.993843, 35.896736, 49.828346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323963, 35.486237, 49.973190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662724, 35.275249, 50.000137>,  <32.865978, 35.148659, 50.016304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662724, 35.275249, 50.000137>,  <32.323963, 35.486237, 49.973190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662724, 35.275249, 50.000137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337118, -0.434618, 0.835140,
		-0.411216, -0.729999, -0.545896,
		0.846908, -0.527454, 0.067374,
		32.916794, 35.117012, 50.020348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204830, 34.744453, 50.054371>,  <32.323963, 35.486237, 49.973190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204830, 34.744453, 50.054371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545086, 34.822247, 50.249752>,  <32.749241, 34.868923, 50.366982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545086, 34.822247, 50.249752>,  <32.204830, 34.744453, 50.054371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545086, 34.822247, 50.249752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311182, -0.562594, 0.765933,
		0.423764, -0.803531, -0.418044,
		0.850640, 0.194487, 0.488452,
		32.800278, 34.880592, 50.396286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682610, 34.109684, 50.199425>,  <32.204830, 34.744453, 50.054371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682610, 34.109684, 50.199425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704937, 34.389126, 50.484756>,  <32.718334, 34.556789, 50.655956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704937, 34.389126, 50.484756>,  <32.682610, 34.109684, 50.199425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704937, 34.389126, 50.484756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451745, -0.619460, 0.642025,
		0.890399, -0.358079, 0.281014,
		0.055819, 0.698605, 0.713327,
		32.721684, 34.598709, 50.698753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654533, 33.749519, 50.811939>,  <32.682610, 34.109684, 50.199425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654533, 33.749519, 50.811939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560467, 34.129349, 50.894890>,  <32.504028, 34.357246, 50.944660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560467, 34.129349, 50.894890>,  <32.654533, 33.749519, 50.811939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560467, 34.129349, 50.894890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731253, -0.313408, 0.605842,
		0.640286, -0.009174, 0.768082,
		-0.235165, 0.949574, 0.207380,
		32.489918, 34.414223, 50.957104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771957, 33.950985, 51.519733>,  <32.654533, 33.749519, 50.811939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771957, 33.950985, 51.519733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470901, 34.144817, 51.341427>,  <32.290268, 34.261116, 51.234444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470901, 34.144817, 51.341427>,  <32.771957, 33.950985, 51.519733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470901, 34.144817, 51.341427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657170, -0.594703, 0.463093,
		-0.040691, 0.641488, 0.766054,
		-0.752643, 0.484584, -0.445766,
		32.245110, 34.290192, 51.207699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457157, 34.017857, 51.804287>,  <32.771957, 33.950985, 51.519733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457157, 34.017857, 51.804287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719913, 33.717693, 51.833641>,  <33.877567, 33.537598, 51.851254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719913, 33.717693, 51.833641>,  <33.457157, 34.017857, 51.804287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719913, 33.717693, 51.833641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208899, -0.274654, -0.938577,
		0.724470, 0.601212, -0.337177,
		0.656890, -0.750406, 0.073385,
		33.916981, 33.492573, 51.855656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791409, 33.921955, 51.209534>,  <33.457157, 34.017857, 51.804287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791409, 33.921955, 51.209534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885120, 33.570992, 51.376991>,  <33.941349, 33.360413, 51.477467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885120, 33.570992, 51.376991>,  <33.791409, 33.921955, 51.209534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885120, 33.570992, 51.376991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172710, -0.461346, -0.870248,
		0.956704, 0.131581, -0.259623,
		0.234284, -0.877409, 0.418646,
		33.955406, 33.307770, 51.502586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285534, 33.393761, 50.868668>,  <33.791409, 33.921955, 51.209534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285534, 33.393761, 50.868668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004940, 33.217537, 51.092751>,  <33.836586, 33.111805, 51.227200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004940, 33.217537, 51.092751>,  <34.285534, 33.393761, 50.868668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004940, 33.217537, 51.092751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395116, -0.413783, -0.820163,
		0.593133, -0.796677, 0.116190,
		-0.701482, -0.440557, 0.560208,
		33.794495, 33.085369, 51.260815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093094, 32.633270, 50.797909>,  <34.285534, 33.393761, 50.868668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093094, 32.633270, 50.797909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752655, 32.794487, 50.932480>,  <33.548389, 32.891216, 51.013222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752655, 32.794487, 50.932480>,  <34.093094, 32.633270, 50.797909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752655, 32.794487, 50.932480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521901, -0.579986, -0.625488,
		-0.056976, -0.707935, 0.703976,
		-0.851101, 0.403044, 0.336427,
		33.497326, 32.915401, 51.033409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514687, 32.087585, 50.958324>,  <34.093094, 32.633270, 50.797909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514687, 32.087585, 50.958324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326397, 32.431107, 50.877449>,  <33.213421, 32.637218, 50.828922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326397, 32.431107, 50.877449>,  <33.514687, 32.087585, 50.958324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326397, 32.431107, 50.877449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510770, -0.452121, -0.731232,
		-0.719395, -0.240939, 0.651474,
		-0.470728, 0.858798, -0.202189,
		33.185177, 32.688747, 50.816792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872272, 31.966803, 50.829609>,  <33.514687, 32.087585, 50.958324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872272, 31.966803, 50.829609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918140, 32.311302, 50.631577>,  <32.945663, 32.518002, 50.512756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918140, 32.311302, 50.631577>,  <32.872272, 31.966803, 50.829609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918140, 32.311302, 50.631577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471715, -0.391389, -0.790127,
		-0.874263, 0.324142, 0.361382,
		0.114672, 0.861247, -0.495079,
		32.952541, 32.569675, 50.483051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270199, 32.036243, 50.493938>,  <32.872272, 31.966803, 50.829609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270199, 32.036243, 50.493938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559772, 32.234852, 50.302361>,  <32.733517, 32.354015, 50.187412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559772, 32.234852, 50.302361>,  <32.270199, 32.036243, 50.493938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559772, 32.234852, 50.302361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383076, -0.288061, -0.877652,
		-0.573740, 0.818833, -0.018331,
		0.723931, 0.496522, -0.478947,
		32.776951, 32.383808, 50.158676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960987, 32.574123, 49.978226>,  <32.270199, 32.036243, 50.493938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960987, 32.574123, 49.978226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327160, 32.565674, 49.817459>,  <32.546864, 32.560604, 49.720997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327160, 32.565674, 49.817459>,  <31.960987, 32.574123, 49.978226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327160, 32.565674, 49.817459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398345, -0.190250, -0.897288,
		-0.057512, 0.981509, -0.182575,
		0.915431, -0.021123, -0.401921,
		32.601788, 32.559338, 49.696884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930765, 33.015945, 49.261974>,  <31.960987, 32.574123, 49.978226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930765, 33.015945, 49.261974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249779, 32.774673, 49.266125>,  <32.441189, 32.629910, 49.268616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249779, 32.774673, 49.266125>,  <31.930765, 33.015945, 49.261974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249779, 32.774673, 49.266125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164173, -0.233555, -0.958384,
		0.580505, 0.762641, -0.285294,
		0.797534, -0.603184, 0.010375,
		32.489040, 32.593719, 49.269238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202156, 33.071419, 48.695465>,  <31.930765, 33.015945, 49.261974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202156, 33.071419, 48.695465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361252, 32.726379, 48.820515>,  <32.456711, 32.519356, 48.895542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361252, 32.726379, 48.820515>,  <32.202156, 33.071419, 48.695465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361252, 32.726379, 48.820515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007742, -0.343874, -0.938984,
		0.917465, 0.371052, -0.143451,
		0.397741, -0.862596, 0.312620,
		32.480576, 32.467602, 48.914299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761341, 32.960297, 48.240845>,  <32.202156, 33.071419, 48.695465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761341, 32.960297, 48.240845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691463, 32.602180, 48.404766>,  <32.649536, 32.387310, 48.503120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691463, 32.602180, 48.404766>,  <32.761341, 32.960297, 48.240845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691463, 32.602180, 48.404766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097131, -0.429846, -0.897662,
		0.979820, -0.117011, 0.162052,
		-0.174694, -0.895288, 0.409807,
		32.639057, 32.333595, 48.527710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211025, 32.542747, 48.073013>,  <32.761341, 32.960297, 48.240845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211025, 32.542747, 48.073013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908413, 32.295002, 48.156960>,  <32.726845, 32.146355, 48.207329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908413, 32.295002, 48.156960>,  <33.211025, 32.542747, 48.073013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908413, 32.295002, 48.156960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027235, -0.350485, -0.936172,
		0.653386, -0.702531, 0.282022,
		-0.756535, -0.619363, 0.209869,
		32.681454, 32.109192, 48.219921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376797, 31.910229, 47.759476>,  <33.211025, 32.542747, 48.073013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376797, 31.910229, 47.759476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979507, 31.897564, 47.804207>,  <32.741135, 31.889965, 47.831043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979507, 31.897564, 47.804207>,  <33.376797, 31.910229, 47.759476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979507, 31.897564, 47.804207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101922, -0.225061, -0.968999,
		0.055849, -0.973830, 0.220308,
		-0.993223, -0.031664, 0.111824,
		32.681541, 31.888065, 47.837753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258625, 31.375423, 47.348667>,  <33.376797, 31.910229, 47.759476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258625, 31.375423, 47.348667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902229, 31.548679, 47.403111>,  <32.688393, 31.652634, 47.435776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902229, 31.548679, 47.403111>,  <33.258625, 31.375423, 47.348667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902229, 31.548679, 47.403111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239349, -0.193366, -0.951484,
		-0.385808, -0.880340, 0.275959,
		-0.890991, 0.433141, 0.136107,
		32.634933, 31.678621, 47.443943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754189, 30.988535, 47.019848>,  <33.258625, 31.375423, 47.348667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754189, 30.988535, 47.019848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635693, 31.369442, 47.049328>,  <32.564594, 31.597986, 47.067017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635693, 31.369442, 47.049328>,  <32.754189, 30.988535, 47.019848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635693, 31.369442, 47.049328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181644, 0.019584, -0.983169,
		-0.937682, -0.304639, 0.167172,
		-0.296238, 0.952266, 0.073700,
		32.546822, 31.655123, 47.071438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293831, 30.928570, 46.547012>,  <32.754189, 30.988535, 47.019848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293831, 30.928570, 46.547012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380295, 31.314110, 46.609322>,  <32.432175, 31.545435, 46.646706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380295, 31.314110, 46.609322>,  <32.293831, 30.928570, 46.547012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380295, 31.314110, 46.609322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119956, 0.184552, -0.975475,
		-0.968961, 0.192175, 0.155513,
		0.216162, 0.963851, 0.155771,
		32.445145, 31.603266, 46.656052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899513, 31.159092, 46.056580>,  <32.293831, 30.928570, 46.547012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899513, 31.159092, 46.056580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131287, 31.472868, 46.145046>,  <32.270351, 31.661133, 46.198128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131287, 31.472868, 46.145046>,  <31.899513, 31.159092, 46.056580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131287, 31.472868, 46.145046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041162, 0.299186, -0.953307,
		-0.813981, 0.543272, 0.205647,
		0.579432, 0.784438, 0.221169,
		32.305115, 31.708199, 46.211395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642883, 31.738567, 45.684963>,  <31.899513, 31.159092, 46.056580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642883, 31.738567, 45.684963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028168, 31.822083, 45.752651>,  <32.259338, 31.872192, 45.793262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028168, 31.822083, 45.752651>,  <31.642883, 31.738567, 45.684963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028168, 31.822083, 45.752651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038978, 0.514467, -0.856624,
		-0.265913, 0.831703, 0.487401,
		0.963209, 0.208789, 0.169221,
		32.317131, 31.884720, 45.803417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732777, 32.443089, 45.541302>,  <31.642883, 31.738567, 45.684963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732777, 32.443089, 45.541302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114315, 32.327766, 45.507694>,  <32.343239, 32.258575, 45.487530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114315, 32.327766, 45.507694>,  <31.732777, 32.443089, 45.541302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114315, 32.327766, 45.507694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091097, 0.544412, -0.833857,
		0.286144, 0.787717, 0.545549,
		0.953846, -0.288301, -0.084022,
		32.400471, 32.241276, 45.482487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882347, 32.832119, 45.023895>,  <31.732777, 32.443089, 45.541302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882347, 32.832119, 45.023895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203602, 32.597385, 45.065071>,  <32.396355, 32.456543, 45.089779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203602, 32.597385, 45.065071>,  <31.882347, 32.832119, 45.023895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203602, 32.597385, 45.065071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241667, 0.162937, -0.956582,
		0.544583, 0.793143, 0.272679,
		0.803136, -0.586836, 0.102944,
		32.444542, 32.421333, 45.095955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510220, 33.205849, 44.776009>,  <31.882347, 32.832119, 45.023895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510220, 33.205849, 44.776009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553707, 32.809597, 44.742958>,  <32.579800, 32.571846, 44.723129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553707, 32.809597, 44.742958>,  <32.510220, 33.205849, 44.776009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553707, 32.809597, 44.742958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090683, 0.092654, -0.991560,
		0.989928, 0.100309, 0.099907,
		0.108719, -0.990633, -0.082625,
		32.586323, 32.512405, 44.718170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139614, 33.037792, 44.347031>,  <32.510220, 33.205849, 44.776009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139614, 33.037792, 44.347031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924824, 32.700367, 44.344162>,  <32.795948, 32.497913, 44.342442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924824, 32.700367, 44.344162>,  <33.139614, 33.037792, 44.347031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924824, 32.700367, 44.344162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047553, -0.021778, -0.998631,
		0.842254, -0.536586, 0.051808,
		-0.536980, -0.843564, -0.007174,
		32.763729, 32.447296, 44.342010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591862, 32.525185, 43.931774>,  <33.139614, 33.037792, 44.347031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591862, 32.525185, 43.931774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220352, 32.378510, 43.910168>,  <32.997448, 32.290504, 43.897205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220352, 32.378510, 43.910168>,  <33.591862, 32.525185, 43.931774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220352, 32.378510, 43.910168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074493, -0.041915, -0.996340,
		0.363082, -0.929399, 0.066246,
		-0.928775, -0.366688, -0.054015,
		32.941719, 32.268505, 43.893963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668438, 32.033398, 43.348679>,  <33.591862, 32.525185, 43.931774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668438, 32.033398, 43.348679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281921, 32.121426, 43.402119>,  <33.050011, 32.174244, 43.434181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281921, 32.121426, 43.402119>,  <33.668438, 32.033398, 43.348679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281921, 32.121426, 43.402119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136681, 0.001234, -0.990614,
		-0.218173, -0.975483, 0.028887,
		-0.966291, 0.220073, 0.133599,
		32.992035, 32.187447, 43.442200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374229, 31.641310, 42.843204>,  <33.668438, 32.033398, 43.348679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374229, 31.641310, 42.843204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110634, 31.927927, 42.934677>,  <32.952477, 32.099895, 42.989559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110634, 31.927927, 42.934677>,  <33.374229, 31.641310, 42.843204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110634, 31.927927, 42.934677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203593, 0.122754, -0.971330,
		-0.724071, -0.686657, 0.064989,
		-0.658993, 0.716543, 0.228681,
		32.912937, 32.142891, 43.003281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861286, 31.588186, 42.256313>,  <33.374229, 31.641310, 42.843204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861286, 31.588186, 42.256313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824242, 31.947792, 42.427521>,  <32.802013, 32.163555, 42.530247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824242, 31.947792, 42.427521>,  <32.861286, 31.588186, 42.256313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824242, 31.947792, 42.427521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211872, 0.402228, -0.890687,
		-0.972899, -0.173174, 0.153224,
		-0.092613, 0.899013, 0.428018,
		32.796459, 32.217495, 42.555927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261070, 31.880260, 42.008495>,  <32.861286, 31.588186, 42.256313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261070, 31.880260, 42.008495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438835, 32.214470, 42.137737>,  <32.545494, 32.414997, 42.215282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438835, 32.214470, 42.137737>,  <32.261070, 31.880260, 42.008495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438835, 32.214470, 42.137737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246050, 0.460657, -0.852792,
		-0.861368, 0.299493, 0.410303,
		0.444414, 0.835523, 0.323105,
		32.572159, 32.465126, 42.234669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853607, 32.396824, 41.632206>,  <32.261070, 31.880260, 42.008495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853607, 32.396824, 41.632206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182026, 32.577766, 41.771492>,  <32.379078, 32.686333, 41.855064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182026, 32.577766, 41.771492>,  <31.853607, 32.396824, 41.632206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182026, 32.577766, 41.771492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058967, 0.539523, -0.839903,
		-0.567806, 0.710134, 0.416300,
		0.821047, 0.452354, 0.348219,
		32.428341, 32.713474, 41.875957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697475, 33.108471, 41.589867>,  <31.853607, 32.396824, 41.632206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697475, 33.108471, 41.589867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093208, 33.050491, 41.584087>,  <32.330650, 33.015705, 41.580620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093208, 33.050491, 41.584087>,  <31.697475, 33.108471, 41.589867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093208, 33.050491, 41.584087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053555, 0.454174, -0.889302,
		0.135463, 0.879043, 0.457092,
		0.989334, -0.144947, -0.014447,
		32.390007, 33.007008, 41.579754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968477, 33.708977, 41.176571>,  <31.697475, 33.108471, 41.589867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968477, 33.708977, 41.176571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292778, 33.474861, 41.180805>,  <32.487358, 33.334393, 41.183346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292778, 33.474861, 41.180805>,  <31.968477, 33.708977, 41.176571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292778, 33.474861, 41.180805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142023, 0.179121, -0.973522,
		0.567898, 0.790790, 0.228348,
		0.810754, -0.585292, 0.010588,
		32.536003, 33.299274, 41.183983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579510, 34.023113, 40.733624>,  <31.968477, 33.708977, 41.176571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579510, 34.023113, 40.733624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610092, 33.625622, 40.766258>,  <32.628441, 33.387127, 40.785839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610092, 33.625622, 40.766258>,  <32.579510, 34.023113, 40.733624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610092, 33.625622, 40.766258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024678, -0.079915, -0.996496,
		0.996768, 0.078200, 0.018414,
		0.076454, -0.993730, 0.081586,
		32.633030, 33.327503, 40.790733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224422, 33.811970, 40.311172>,  <32.579510, 34.023113, 40.733624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224422, 33.811970, 40.311172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012115, 33.477486, 40.366371>,  <32.884731, 33.276794, 40.399490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012115, 33.477486, 40.366371>,  <33.224422, 33.811970, 40.311172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012115, 33.477486, 40.366371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025834, -0.178710, -0.983563,
		0.847126, -0.518474, 0.116455,
		-0.530763, -0.836210, 0.137996,
		32.852886, 33.226624, 40.407768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601078, 33.325249, 40.078724>,  <33.224422, 33.811970, 40.311172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601078, 33.325249, 40.078724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222767, 33.198280, 40.051155>,  <32.995781, 33.122101, 40.034615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222767, 33.198280, 40.051155>,  <33.601078, 33.325249, 40.078724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222767, 33.198280, 40.051155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121199, -0.147984, -0.981535,
		0.301360, -0.936667, 0.178430,
		-0.945776, -0.317421, -0.068926,
		32.939034, 33.103054, 40.030476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632206, 32.745144, 39.647179>,  <33.601078, 33.325249, 40.078724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632206, 32.745144, 39.647179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236389, 32.789673, 39.610493>,  <32.998898, 32.816391, 39.588482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236389, 32.789673, 39.610493>,  <33.632206, 32.745144, 39.647179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236389, 32.789673, 39.610493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071183, -0.176130, -0.981790,
		-0.125448, -0.978052, 0.166364,
		-0.989543, 0.111322, -0.091716,
		32.939526, 32.823071, 39.582977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393799, 32.226925, 39.227051>,  <33.632206, 32.745144, 39.647179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393799, 32.226925, 39.227051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084984, 32.478951, 39.193657>,  <32.899693, 32.630165, 39.173622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084984, 32.478951, 39.193657>,  <33.393799, 32.226925, 39.227051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084984, 32.478951, 39.193657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109555, -0.261314, -0.959016,
		-0.626060, -0.731253, 0.270772,
		-0.772040, 0.630067, -0.083486,
		32.853371, 32.667969, 39.168610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904755, 31.894815, 38.758095>,  <33.393799, 32.226925, 39.227051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904755, 31.894815, 38.758095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807652, 32.282761, 38.766472>,  <32.749390, 32.515526, 38.771500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807652, 32.282761, 38.766472>,  <32.904755, 31.894815, 38.758095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807652, 32.282761, 38.766472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241517, -0.039510, -0.969592,
		-0.939543, -0.240430, 0.243829,
		-0.242753, 0.969862, 0.020946,
		32.734825, 32.573719, 38.772755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195518, 32.039772, 38.462189>,  <32.904755, 31.894815, 38.758095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195518, 32.039772, 38.462189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411057, 32.375305, 38.431202>,  <32.540379, 32.576626, 38.412609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411057, 32.375305, 38.431202>,  <32.195518, 32.039772, 38.462189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411057, 32.375305, 38.431202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261759, 0.079316, -0.961869,
		-0.800704, 0.538577, 0.262312,
		0.538846, 0.838835, -0.077469,
		32.572712, 32.626957, 38.407963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777502, 32.538006, 38.041065>,  <32.195518, 32.039772, 38.462189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777502, 32.538006, 38.041065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148621, 32.686543, 38.026630>,  <32.371292, 32.775665, 38.017967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148621, 32.686543, 38.026630>,  <31.777502, 32.538006, 38.041065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148621, 32.686543, 38.026630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010758, -0.123317, -0.992309,
		-0.372937, 0.920270, -0.118408,
		0.927794, 0.371343, -0.036090,
		32.426960, 32.797947, 38.015804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712847, 33.055267, 37.570679>,  <31.777502, 32.538006, 38.041065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712847, 33.055267, 37.570679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107964, 32.998726, 37.596859>,  <32.345036, 32.964802, 37.612568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107964, 32.998726, 37.596859>,  <31.712847, 33.055267, 37.570679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107964, 32.998726, 37.596859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076091, 0.071237, -0.994553,
		0.135917, 0.987393, 0.081123,
		0.987794, -0.141350, 0.065450,
		32.404301, 32.956322, 37.616493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107418, 33.563896, 37.159222>,  <31.712847, 33.055267, 37.570679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107418, 33.563896, 37.159222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394207, 33.286728, 37.189709>,  <32.566280, 33.120426, 37.208000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394207, 33.286728, 37.189709>,  <32.107418, 33.563896, 37.159222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394207, 33.286728, 37.189709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257145, 0.161268, -0.952822,
		0.647937, 0.702748, 0.293806,
		0.716975, -0.692919, 0.076217,
		32.609299, 33.078854, 37.212574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749454, 33.821220, 36.782955>,  <32.107418, 33.563896, 37.159222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749454, 33.821220, 36.782955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803207, 33.425003, 36.794014>,  <32.835457, 33.187271, 36.800652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803207, 33.425003, 36.794014>,  <32.749454, 33.821220, 36.782955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803207, 33.425003, 36.794014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376328, 0.025201, -0.926144,
		0.916689, 0.134861, 0.376156,
		0.134380, -0.990544, 0.027650,
		32.843521, 33.127838, 36.802307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317802, 33.718143, 36.364098>,  <32.749454, 33.821220, 36.782955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317802, 33.718143, 36.364098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187828, 33.339874, 36.368416>,  <33.109844, 33.112911, 36.371006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187828, 33.339874, 36.368416>,  <33.317802, 33.718143, 36.364098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187828, 33.339874, 36.368416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327670, -0.123280, -0.936715,
		0.887158, -0.300835, 0.349927,
		-0.324936, -0.945674, 0.010794,
		33.090347, 33.056171, 36.371655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922497, 33.249191, 36.128033>,  <33.317802, 33.718143, 36.364098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922497, 33.249191, 36.128033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587357, 33.040203, 36.064751>,  <33.386272, 32.914810, 36.026779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587357, 33.040203, 36.064751>,  <33.922497, 33.249191, 36.128033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587357, 33.040203, 36.064751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308280, -0.213669, -0.926989,
		0.450522, -0.825450, 0.340090,
		-0.837850, -0.522472, -0.158208,
		33.336002, 32.883461, 36.017288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121986, 32.532440, 36.008259>,  <33.922497, 33.249191, 36.128033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121986, 32.532440, 36.008259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757797, 32.597900, 35.856331>,  <33.539284, 32.637177, 35.765175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757797, 32.597900, 35.856331>,  <34.121986, 32.532440, 36.008259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757797, 32.597900, 35.856331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356943, -0.152941, -0.921521,
		-0.208904, -0.974590, 0.080832,
		-0.910467, 0.163657, -0.379823,
		33.484657, 32.646996, 35.742386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931473, 31.958706, 35.526470>,  <34.121986, 32.532440, 36.008259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931473, 31.958706, 35.526470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694530, 32.263790, 35.422638>,  <33.552364, 32.446842, 35.360340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694530, 32.263790, 35.422638>,  <33.931473, 31.958706, 35.526470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694530, 32.263790, 35.422638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160061, -0.204362, -0.965721,
		-0.789615, -0.613602, -0.001025,
		-0.592358, 0.762712, -0.259581,
		33.516823, 32.492603, 35.344765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415012, 31.388443, 35.827179>,  <33.931473, 31.958706, 35.526470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415012, 31.388443, 35.827179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813889, 31.414913, 35.841179>,  <35.053215, 31.430796, 35.849579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813889, 31.414913, 35.841179>,  <34.415012, 31.388443, 35.827179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813889, 31.414913, 35.841179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037264, 0.033340, 0.998749,
		0.064934, -0.997250, 0.035713,
		0.997193, 0.066184, 0.034996,
		35.113049, 31.434765, 35.851677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607719, 30.857435, 36.342926>,  <34.415012, 31.388443, 35.827179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607719, 30.857435, 36.342926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893124, 31.133989, 36.297520>,  <35.064365, 31.299923, 36.270275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893124, 31.133989, 36.297520>,  <34.607719, 30.857435, 36.342926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893124, 31.133989, 36.297520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138521, 0.298026, 0.944454,
		0.686815, -0.658153, 0.308416,
		0.713511, 0.691387, -0.113520,
		35.107178, 31.341406, 36.263462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895271, 30.852594, 36.983421>,  <34.607719, 30.857435, 36.342926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895271, 30.852594, 36.983421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975174, 31.183268, 36.773014>,  <35.023117, 31.381672, 36.646770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975174, 31.183268, 36.773014>,  <34.895271, 30.852594, 36.983421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975174, 31.183268, 36.773014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235624, 0.561612, 0.793141,
		0.951093, -0.034496, 0.306973,
		0.199760, 0.826681, -0.526017,
		35.035103, 31.431273, 36.615208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541153, 30.462952, 36.926037>,  <34.895271, 30.852594, 36.983421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541153, 30.462952, 36.926037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579594, 30.853493, 36.848576>,  <35.602657, 31.087816, 36.802097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579594, 30.853493, 36.848576>,  <35.541153, 30.462952, 36.926037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579594, 30.853493, 36.848576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303403, 0.156564, 0.939912,
		0.948004, -0.149081, -0.281182,
		0.096100, 0.976351, -0.193655,
		35.608425, 31.146399, 36.790478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227654, 30.699694, 37.173985>,  <35.541153, 30.462952, 36.926037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227654, 30.699694, 37.173985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009495, 31.034904, 37.167614>,  <35.878597, 31.236031, 37.163792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009495, 31.034904, 37.167614>,  <36.227654, 30.699694, 37.173985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009495, 31.034904, 37.167614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392767, 0.272309, 0.878398,
		0.740455, 0.472824, -0.477666,
		-0.545400, 0.838025, -0.015923,
		35.845875, 31.286312, 37.162838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657032, 31.260021, 37.499344>,  <36.227654, 30.699694, 37.173985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657032, 31.260021, 37.499344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284691, 31.405493, 37.513519>,  <36.061287, 31.492777, 37.522026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284691, 31.405493, 37.513519>,  <36.657032, 31.260021, 37.499344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284691, 31.405493, 37.513519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109250, 0.184441, 0.976753,
		0.348688, 0.913082, -0.211419,
		-0.930849, 0.363680, 0.035442,
		36.005436, 31.514597, 37.524151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681416, 31.876675, 38.028423>,  <36.657032, 31.260021, 37.499344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681416, 31.876675, 38.028423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299545, 31.759970, 38.004852>,  <36.070423, 31.689947, 37.990711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299545, 31.759970, 38.004852>,  <36.681416, 31.876675, 38.028423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299545, 31.759970, 38.004852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073639, 0.039704, 0.996494,
		-0.288398, 0.955667, -0.059389,
		-0.954675, -0.291760, -0.058923,
		36.013142, 31.672441, 37.987175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269863, 32.359310, 38.360943>,  <36.681416, 31.876675, 38.028423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269863, 32.359310, 38.360943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051075, 32.024582, 38.351517>,  <35.919800, 31.823746, 38.345860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051075, 32.024582, 38.351517>,  <36.269863, 32.359310, 38.360943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051075, 32.024582, 38.351517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142939, 0.065620, 0.987554,
		-0.824857, 0.543534, -0.155506,
		-0.546973, -0.836818, -0.023565,
		35.886982, 31.773537, 38.344448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770237, 32.374489, 38.952206>,  <36.269863, 32.359310, 38.360943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770237, 32.374489, 38.952206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818829, 31.989065, 38.856884>,  <35.847984, 31.757811, 38.799690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818829, 31.989065, 38.856884>,  <35.770237, 32.374489, 38.952206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818829, 31.989065, 38.856884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002788, -0.240412, 0.970667,
		-0.992590, -0.117254, -0.031892,
		0.121481, -0.963563, -0.238304,
		35.855274, 31.699997, 38.785393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271687, 32.121544, 39.327721>,  <35.770237, 32.374489, 38.952206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271687, 32.121544, 39.327721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537540, 31.833948, 39.246414>,  <35.697052, 31.661390, 39.197628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537540, 31.833948, 39.246414>,  <35.271687, 32.121544, 39.327721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537540, 31.833948, 39.246414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026054, -0.249586, 0.968002,
		-0.746715, -0.648663, -0.147150,
		0.664633, -0.718988, -0.203270,
		35.736931, 31.618252, 39.185432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952099, 31.512419, 39.531322>,  <35.271687, 32.121544, 39.327721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952099, 31.512419, 39.531322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342430, 31.427179, 39.511955>,  <35.576630, 31.376036, 39.500336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342430, 31.427179, 39.511955>,  <34.952099, 31.512419, 39.531322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342430, 31.427179, 39.511955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058156, -0.466813, 0.882442,
		-0.210647, -0.858298, -0.467923,
		0.975831, -0.213096, -0.048418,
		35.635178, 31.363251, 39.497429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026333, 30.825691, 39.527260>,  <34.952099, 31.512419, 39.531322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026333, 30.825691, 39.527260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357525, 30.974829, 39.694801>,  <35.556240, 31.064310, 39.795326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357525, 30.974829, 39.694801>,  <35.026333, 30.825691, 39.527260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357525, 30.974829, 39.694801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072504, -0.669488, 0.739276,
		0.556048, -0.642475, -0.527291,
		0.827982, 0.372842, 0.418849,
		35.605919, 31.086681, 39.820457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165852, 30.299450, 39.943913>,  <35.026333, 30.825691, 39.527260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165852, 30.299450, 39.943913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403206, 30.578482, 40.104549>,  <35.545616, 30.745901, 40.200932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403206, 30.578482, 40.104549>,  <35.165852, 30.299450, 39.943913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403206, 30.578482, 40.104549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025765, -0.515130, 0.856725,
		0.804509, -0.498018, -0.323642,
		0.593381, 0.697581, 0.401595,
		35.581219, 30.787756, 40.225029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567051, 29.898098, 40.405010>,  <35.165852, 30.299450, 39.943913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567051, 29.898098, 40.405010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589314, 30.280630, 40.519787>,  <35.602673, 30.510149, 40.588654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589314, 30.280630, 40.519787>,  <35.567051, 29.898098, 40.405010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589314, 30.280630, 40.519787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199707, -0.270916, 0.941659,
		0.978274, -0.109713, 0.175908,
		0.055656, 0.956330, 0.286940,
		35.606010, 30.567530, 40.605869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998768, 29.840582, 41.047642>,  <35.567051, 29.898098, 40.405010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998768, 29.840582, 41.047642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835266, 30.205339, 41.062450>,  <35.737164, 30.424194, 41.071335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835266, 30.205339, 41.062450>,  <35.998768, 29.840582, 41.047642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835266, 30.205339, 41.062450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058289, -0.066573, 0.996078,
		0.910781, 0.404993, 0.080365,
		-0.408755, 0.911893, 0.037026,
		35.712639, 30.478907, 41.073559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411091, 30.270178, 41.482929>,  <35.998768, 29.840582, 41.047642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411091, 30.270178, 41.482929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054676, 30.450310, 41.460110>,  <35.840828, 30.558388, 41.446419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054676, 30.450310, 41.460110>,  <36.411091, 30.270178, 41.482929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054676, 30.450310, 41.460110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077461, -0.027012, 0.996629,
		0.447269, 0.892455, 0.058951,
		-0.891039, 0.450328, -0.057049,
		35.787365, 30.585407, 41.442997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469479, 30.756746, 41.974434>,  <36.411091, 30.270178, 41.482929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469479, 30.756746, 41.974434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079277, 30.719007, 41.894951>,  <35.845154, 30.696363, 41.847260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079277, 30.719007, 41.894951>,  <36.469479, 30.756746, 41.974434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079277, 30.719007, 41.894951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204689, 0.058495, 0.977078,
		-0.080561, 0.993819, -0.076374,
		-0.975506, -0.094348, -0.198711,
		35.786625, 30.690702, 41.835339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188198, 31.098921, 42.554253>,  <36.469479, 30.756746, 41.974434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188198, 31.098921, 42.554253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883404, 30.886084, 42.406601>,  <35.700527, 30.758381, 42.318008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883404, 30.886084, 42.406601>,  <36.188198, 31.098921, 42.554253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883404, 30.886084, 42.406601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349554, -0.141888, 0.926110,
		-0.545152, 0.834712, -0.077879,
		-0.761985, -0.532093, -0.369128,
		35.654808, 30.726456, 42.295864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633389, 31.463406, 42.808743>,  <36.188198, 31.098921, 42.554253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633389, 31.463406, 42.808743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521740, 31.090639, 42.716114>,  <35.454750, 30.866980, 42.660538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521740, 31.090639, 42.716114>,  <35.633389, 31.463406, 42.808743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521740, 31.090639, 42.716114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431762, -0.093608, 0.897117,
		-0.857714, 0.350387, -0.376238,
		-0.279119, -0.931916, -0.231573,
		35.438004, 30.811064, 42.646641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953735, 31.481453, 42.929337>,  <35.633389, 31.463406, 42.808743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953735, 31.481453, 42.929337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097099, 31.108154, 42.939068>,  <35.183117, 30.884174, 42.944908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097099, 31.108154, 42.939068>,  <34.953735, 31.481453, 42.929337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097099, 31.108154, 42.939068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429162, -0.141566, 0.892065,
		-0.829072, -0.330168, -0.451253,
		0.358413, -0.933246, 0.024327,
		35.204624, 30.828180, 42.946365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412437, 31.208338, 43.196476>,  <34.953735, 31.481453, 42.929337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412437, 31.208338, 43.196476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691124, 30.926592, 43.250824>,  <34.858337, 30.757545, 43.283432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691124, 30.926592, 43.250824>,  <34.412437, 31.208338, 43.196476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691124, 30.926592, 43.250824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404077, -0.228850, 0.885635,
		-0.592714, -0.671938, -0.444060,
		0.696715, -0.704363, 0.135872,
		34.900139, 30.715282, 43.291584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009380, 30.718483, 43.475224>,  <34.412437, 31.208338, 43.196476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009380, 30.718483, 43.475224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394077, 30.631428, 43.541775>,  <34.624897, 30.579195, 43.581707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394077, 30.631428, 43.541775>,  <34.009380, 30.718483, 43.475224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394077, 30.631428, 43.541775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233469, -0.333411, 0.913416,
		-0.143323, -0.917316, -0.371468,
		0.961744, -0.217640, 0.166380,
		34.682602, 30.566135, 43.591690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067154, 29.986454, 43.850323>,  <34.009380, 30.718483, 43.475224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067154, 29.986454, 43.850323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399273, 30.198738, 43.918388>,  <34.598545, 30.326109, 43.959229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399273, 30.198738, 43.918388>,  <34.067154, 29.986454, 43.850323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399273, 30.198738, 43.918388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020927, -0.275415, 0.961098,
		0.556929, -0.801557, -0.217570,
		0.830297, 0.530710, 0.170160,
		34.648361, 30.357952, 43.969437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255878, 29.738237, 44.394295>,  <34.067154, 29.986454, 43.850323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255878, 29.738237, 44.394295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472263, 30.074600, 44.388191>,  <34.602093, 30.276419, 44.384529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472263, 30.074600, 44.388191>,  <34.255878, 29.738237, 44.394295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472263, 30.074600, 44.388191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040951, 0.044459, 0.998171,
		0.840050, -0.539346, 0.058487,
		0.540960, 0.840909, -0.015261,
		34.634552, 30.326874, 44.383614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943474, 29.729387, 44.874878>,  <34.255878, 29.738237, 44.394295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943474, 29.729387, 44.874878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873478, 30.120459, 44.828354>,  <34.831482, 30.355101, 44.800442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873478, 30.120459, 44.828354>,  <34.943474, 29.729387, 44.874878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873478, 30.120459, 44.828354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091487, 0.101472, 0.990623,
		0.980310, 0.183990, 0.071688,
		-0.174990, 0.977676, -0.116307,
		34.820980, 30.413761, 44.793461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361626, 30.006828, 45.510323>,  <34.943474, 29.729387, 44.874878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361626, 30.006828, 45.510323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116711, 30.286985, 45.363594>,  <34.969761, 30.455080, 45.275558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116711, 30.286985, 45.363594>,  <35.361626, 30.006828, 45.510323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116711, 30.286985, 45.363594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127878, 0.545576, 0.828247,
		0.780226, 0.460216, -0.423613,
		-0.612286, 0.700391, -0.366821,
		34.933025, 30.497103, 45.253548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701828, 30.719910, 45.538525>,  <35.361626, 30.006828, 45.510323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701828, 30.719910, 45.538525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306061, 30.775917, 45.523281>,  <35.068600, 30.809521, 45.514137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306061, 30.775917, 45.523281>,  <35.701828, 30.719910, 45.538525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306061, 30.775917, 45.523281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049461, 0.572288, 0.818560,
		0.136420, 0.808011, -0.573156,
		-0.989416, 0.140016, -0.038107,
		35.009235, 30.817923, 45.511848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542454, 31.488169, 45.588173>,  <35.701828, 30.719910, 45.538525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542454, 31.488169, 45.588173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231632, 31.270967, 45.715508>,  <35.045139, 31.140646, 45.791908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231632, 31.270967, 45.715508>,  <35.542454, 31.488169, 45.588173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231632, 31.270967, 45.715508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048434, 0.452672, 0.890361,
		-0.627572, 0.707274, -0.325449,
		-0.777050, -0.543003, 0.318340,
		34.998516, 31.108067, 45.811008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270966, 31.982645, 45.982281>,  <35.542454, 31.488169, 45.588173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270966, 31.982645, 45.982281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111362, 31.631292, 46.087536>,  <35.015602, 31.420481, 46.150688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111362, 31.631292, 46.087536>,  <35.270966, 31.982645, 45.982281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111362, 31.631292, 46.087536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167137, 0.351832, 0.921021,
		-0.901588, 0.323510, -0.287192,
		-0.399003, -0.878382, 0.263138,
		34.991661, 31.367777, 46.166477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711788, 32.200401, 46.401058>,  <35.270966, 31.982645, 45.982281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711788, 32.200401, 46.401058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776398, 31.822277, 46.514400>,  <34.815163, 31.595402, 46.582405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776398, 31.822277, 46.514400>,  <34.711788, 32.200401, 46.401058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776398, 31.822277, 46.514400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110777, 0.267945, 0.957044,
		-0.980631, -0.185980, -0.061439,
		0.161528, -0.945313, 0.283357,
		34.824856, 31.538683, 46.599407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252979, 32.163502, 46.915707>,  <34.711788, 32.200401, 46.401058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252979, 32.163502, 46.915707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527294, 31.884296, 46.998135>,  <34.691883, 31.716772, 47.047592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527294, 31.884296, 46.998135>,  <34.252979, 32.163502, 46.915707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527294, 31.884296, 46.998135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032858, 0.253161, 0.966866,
		-0.727058, -0.669837, 0.150679,
		0.685789, -0.698017, 0.206073,
		34.733032, 31.674891, 47.059956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030361, 31.832384, 47.475407>,  <34.252979, 32.163502, 46.915707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030361, 31.832384, 47.475407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412029, 31.713028, 47.484543>,  <34.641029, 31.641415, 47.490025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412029, 31.713028, 47.484543>,  <34.030361, 31.832384, 47.475407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412029, 31.713028, 47.484543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110757, 0.422996, 0.899337,
		-0.278015, -0.855591, 0.436659,
		0.954170, -0.298393, 0.022836,
		34.698280, 31.623510, 47.491394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223511, 31.555931, 48.054787>,  <34.030361, 31.832384, 47.475407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223511, 31.555931, 48.054787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595284, 31.653168, 47.943748>,  <34.818348, 31.711510, 47.877125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595284, 31.653168, 47.943748>,  <34.223511, 31.555931, 48.054787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595284, 31.653168, 47.943748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148323, 0.442721, 0.884307,
		0.337862, -0.863079, 0.375424,
		0.929435, 0.243090, -0.277593,
		34.874115, 31.726095, 47.860470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515953, 31.502337, 48.674660>,  <34.223511, 31.555931, 48.054787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515953, 31.502337, 48.674660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757320, 31.722839, 48.444180>,  <34.902142, 31.855141, 48.305893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757320, 31.722839, 48.444180>,  <34.515953, 31.502337, 48.674660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757320, 31.722839, 48.444180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281184, 0.529074, 0.800635,
		0.746208, -0.645133, 0.164246,
		0.603415, 0.551257, -0.576200,
		34.938347, 31.888216, 48.271320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206425, 31.518492, 49.055801>,  <34.515953, 31.502337, 48.674660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206425, 31.518492, 49.055801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222397, 31.826269, 48.800816>,  <35.231979, 32.010937, 48.647823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222397, 31.826269, 48.800816>,  <35.206425, 31.518492, 49.055801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222397, 31.826269, 48.800816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423552, 0.564788, 0.708250,
		0.904991, -0.298284, -0.303344,
		0.039935, 0.769442, -0.637467,
		35.234379, 32.057102, 48.609577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866856, 31.767841, 49.219299>,  <35.206425, 31.518492, 49.055801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866856, 31.767841, 49.219299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679626, 32.076622, 49.047253>,  <35.567291, 32.261890, 48.944023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679626, 32.076622, 49.047253>,  <35.866856, 31.767841, 49.219299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679626, 32.076622, 49.047253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226586, 0.575298, 0.785933,
		0.854147, 0.270414, -0.444194,
		-0.468071, 0.771951, -0.430117,
		35.539204, 32.308208, 48.918217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349758, 32.330223, 49.139683>,  <35.866856, 31.767841, 49.219299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349758, 32.330223, 49.139683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982014, 32.487339, 49.148560>,  <35.761368, 32.581608, 49.153885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982014, 32.487339, 49.148560>,  <36.349758, 32.330223, 49.139683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982014, 32.487339, 49.148560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225136, 0.479023, 0.848440,
		0.322628, 0.785019, -0.528826,
		-0.919361, 0.392788, 0.022190,
		35.706207, 32.605175, 49.155216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481358, 33.004898, 49.252590>,  <36.349758, 32.330223, 49.139683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481358, 33.004898, 49.252590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110374, 32.912064, 49.369869>,  <35.887787, 32.856365, 49.440235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110374, 32.912064, 49.369869>,  <36.481358, 33.004898, 49.252590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110374, 32.912064, 49.369869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183555, 0.400555, 0.897699,
		-0.325780, 0.886394, -0.328897,
		-0.927456, -0.232082, 0.293195,
		35.832138, 32.842438, 49.457829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569832, 33.414101, 49.931728>,  <36.481358, 33.004898, 49.252590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569832, 33.414101, 49.931728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890068, 33.653603, 49.922428>,  <37.082211, 33.797306, 49.916847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890068, 33.653603, 49.922428>,  <36.569832, 33.414101, 49.931728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890068, 33.653603, 49.922428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213701, 0.249055, -0.944618,
		-0.559807, 0.761223, 0.327347,
		0.800592, 0.598758, -0.023251,
		37.130245, 33.833229, 49.915451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362823, 34.046196, 49.741398>,  <36.569832, 33.414101, 49.931728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362823, 34.046196, 49.741398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748611, 34.011951, 49.641422>,  <36.980083, 33.991405, 49.581436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748611, 34.011951, 49.641422>,  <36.362823, 34.046196, 49.741398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748611, 34.011951, 49.641422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212084, 0.313261, -0.925682,
		0.157546, 0.945800, 0.283974,
		0.964469, -0.085611, -0.249942,
		37.037952, 33.986267, 49.566441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511314, 34.488270, 49.209187>,  <36.362823, 34.046196, 49.741398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511314, 34.488270, 49.209187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820766, 34.235909, 49.185665>,  <37.006435, 34.084492, 49.171551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820766, 34.235909, 49.185665>,  <36.511314, 34.488270, 49.209187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820766, 34.235909, 49.185665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127609, 0.246031, -0.960825,
		0.620659, 0.735816, 0.270845,
		0.773627, -0.630907, -0.058805,
		37.052853, 34.046635, 49.168022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108818, 34.801563, 48.899246>,  <36.511314, 34.488270, 49.209187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108818, 34.801563, 48.899246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226589, 34.420692, 48.866577>,  <37.297253, 34.192169, 48.846977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226589, 34.420692, 48.866577>,  <37.108818, 34.801563, 48.899246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226589, 34.420692, 48.866577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342338, 0.184868, -0.921210,
		0.892255, 0.243269, 0.380397,
		0.294425, -0.952179, -0.081669,
		37.314915, 34.135040, 48.842075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830666, 34.649757, 48.574570>,  <37.108818, 34.801563, 48.899246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830666, 34.649757, 48.574570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616180, 34.318741, 48.508045>,  <37.487488, 34.120132, 48.468132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616180, 34.318741, 48.508045>,  <37.830666, 34.649757, 48.574570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616180, 34.318741, 48.508045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187502, 0.075327, -0.979372,
		0.822994, -0.556335, 0.114774,
		-0.536213, -0.827537, -0.166308,
		37.455315, 34.070480, 48.458153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148659, 34.320747, 48.021534>,  <37.830666, 34.649757, 48.574570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148659, 34.320747, 48.021534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774517, 34.184834, 48.060848>,  <37.550034, 34.103287, 48.084435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774517, 34.184834, 48.060848>,  <38.148659, 34.320747, 48.021534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774517, 34.184834, 48.060848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178083, 0.212306, -0.960840,
		0.305611, -0.916228, -0.259091,
		-0.935355, -0.339783, 0.098281,
		37.493912, 34.082901, 48.090332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060677, 33.796448, 47.449986>,  <38.148659, 34.320747, 48.021534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060677, 33.796448, 47.449986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696022, 33.906612, 47.572014>,  <37.477230, 33.972710, 47.645229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696022, 33.906612, 47.572014>,  <38.060677, 33.796448, 47.449986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696022, 33.906612, 47.572014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289416, 0.096853, -0.952291,
		-0.291818, -0.956435, -0.008586,
		-0.911636, 0.275411, 0.305071,
		37.422531, 33.989235, 47.663536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668270, 33.375183, 47.070049>,  <38.060677, 33.796448, 47.449986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668270, 33.375183, 47.070049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399437, 33.651611, 47.176418>,  <37.238136, 33.817471, 47.240242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399437, 33.651611, 47.176418>,  <37.668270, 33.375183, 47.070049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399437, 33.651611, 47.176418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275388, 0.100088, -0.956109,
		-0.687358, -0.715820, 0.123045,
		-0.672086, 0.691074, 0.265925,
		37.197811, 33.858932, 47.256195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114159, 33.180363, 46.823200>,  <37.668270, 33.375183, 47.070049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114159, 33.180363, 46.823200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015347, 33.558281, 46.909313>,  <36.956059, 33.785030, 46.960979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015347, 33.558281, 46.909313>,  <37.114159, 33.180363, 46.823200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015347, 33.558281, 46.909313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402753, 0.101961, -0.909612,
		-0.881344, -0.311404, 0.355331,
		-0.247027, 0.944792, 0.215282,
		36.941238, 33.841717, 46.973896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485783, 33.234970, 46.634781>,  <37.114159, 33.180363, 46.823200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485783, 33.234970, 46.634781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619179, 33.611549, 46.614975>,  <36.699219, 33.837498, 46.603092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619179, 33.611549, 46.614975>,  <36.485783, 33.234970, 46.634781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619179, 33.611549, 46.614975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353535, 0.076199, -0.932312,
		-0.873954, 0.328424, 0.358248,
		0.333492, 0.941452, -0.049515,
		36.719227, 33.893986, 46.600121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028389, 33.556538, 46.088123>,  <36.485783, 33.234970, 46.634781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028389, 33.556538, 46.088123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343060, 33.800205, 46.128208>,  <36.531864, 33.946407, 46.152260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343060, 33.800205, 46.128208>,  <36.028389, 33.556538, 46.088123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343060, 33.800205, 46.128208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125319, 0.316518, -0.940272,
		-0.604508, 0.727135, 0.325339,
		0.786680, 0.609173, 0.100214,
		36.579063, 33.982956, 46.158272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849060, 34.164593, 45.680332>,  <36.028389, 33.556538, 46.088123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849060, 34.164593, 45.680332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246342, 34.173721, 45.725983>,  <36.484711, 34.179199, 45.753372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246342, 34.173721, 45.725983>,  <35.849060, 34.164593, 45.680332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246342, 34.173721, 45.725983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112575, 0.060393, -0.991806,
		-0.029529, 0.997914, 0.057413,
		0.993204, 0.022824, 0.114123,
		36.544304, 34.180569, 45.760220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129265, 34.716183, 45.178452>,  <35.849060, 34.164593, 45.680332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129265, 34.716183, 45.178452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413273, 34.448700, 45.266724>,  <36.583679, 34.288208, 45.319687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413273, 34.448700, 45.266724>,  <36.129265, 34.716183, 45.178452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413273, 34.448700, 45.266724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243325, -0.061102, -0.968018,
		0.660807, 0.741009, 0.119330,
		0.710019, -0.668710, 0.220683,
		36.626278, 34.248089, 45.332928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740391, 34.963520, 44.853916>,  <36.129265, 34.716183, 45.178452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740391, 34.963520, 44.853916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833599, 34.576862, 44.896423>,  <36.889523, 34.344868, 44.921928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833599, 34.576862, 44.896423>,  <36.740391, 34.963520, 44.853916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833599, 34.576862, 44.896423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301584, -0.032054, -0.952901,
		0.924526, 0.254094, 0.284056,
		0.233021, -0.966648, 0.106266,
		36.903507, 34.286869, 44.928303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335697, 34.887520, 44.414570>,  <36.740391, 34.963520, 44.853916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335697, 34.887520, 44.414570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175415, 34.523514, 44.457123>,  <37.079247, 34.305111, 44.482655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175415, 34.523514, 44.457123>,  <37.335697, 34.887520, 44.414570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175415, 34.523514, 44.457123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238457, -0.215690, -0.946898,
		0.884634, -0.354056, 0.303426,
		-0.400701, -0.910012, 0.106379,
		37.055206, 34.250511, 44.489037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889721, 34.442970, 44.170620>,  <37.335697, 34.887520, 44.414570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889721, 34.442970, 44.170620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563011, 34.212395, 44.180309>,  <37.366985, 34.074047, 44.186123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563011, 34.212395, 44.180309>,  <37.889721, 34.442970, 44.170620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563011, 34.212395, 44.180309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336199, -0.509653, -0.791974,
		0.468875, -0.638722, 0.610074,
		-0.816778, -0.576444, 0.024226,
		37.317978, 34.039463, 44.187576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074615, 33.741989, 44.173004>,  <37.889721, 34.442970, 44.170620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074615, 33.741989, 44.173004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702774, 33.776390, 44.029652>,  <37.479668, 33.797031, 43.943642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702774, 33.776390, 44.029652>,  <38.074615, 33.741989, 44.173004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702774, 33.776390, 44.029652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248022, -0.573284, -0.780917,
		-0.272614, -0.814831, 0.511598,
		-0.929606, 0.086002, -0.358381,
		37.423893, 33.802189, 43.922138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799816, 33.098873, 44.038471>,  <38.074615, 33.741989, 44.173004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799816, 33.098873, 44.038471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590618, 33.351185, 43.809177>,  <37.465099, 33.502571, 43.671600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590618, 33.351185, 43.809177>,  <37.799816, 33.098873, 44.038471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590618, 33.351185, 43.809177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106075, -0.619152, -0.778074,
		-0.845712, -0.467732, 0.256901,
		-0.522991, 0.630775, -0.573239,
		37.433720, 33.540417, 43.637207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527191, 32.688690, 43.672131>,  <37.799816, 33.098873, 44.038471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527191, 32.688690, 43.672131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448101, 33.009754, 43.447048>,  <37.400646, 33.202393, 43.312000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448101, 33.009754, 43.447048>,  <37.527191, 32.688690, 43.672131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448101, 33.009754, 43.447048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037609, -0.567403, -0.822580,
		-0.979535, -0.183809, 0.082004,
		-0.197728, 0.802663, -0.562704,
		37.388783, 33.250553, 43.278236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320889, 32.407227, 43.110397>,  <37.527191, 32.688690, 43.672131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320889, 32.407227, 43.110397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380585, 32.781788, 42.983349>,  <37.416401, 33.006523, 42.907120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380585, 32.781788, 42.983349>,  <37.320889, 32.407227, 43.110397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380585, 32.781788, 42.983349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107356, -0.334665, -0.936202,
		-0.982956, 0.105619, -0.150473,
		0.149238, 0.936400, -0.317622,
		37.425358, 33.062706, 42.888062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805473, 32.534920, 42.663963>,  <37.320889, 32.407227, 43.110397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805473, 32.534920, 42.663963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119797, 32.766640, 42.577320>,  <37.308392, 32.905670, 42.525333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119797, 32.766640, 42.577320>,  <36.805473, 32.534920, 42.663963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119797, 32.766640, 42.577320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032372, -0.311227, -0.949784,
		-0.617626, 0.753357, -0.225811,
		0.785805, 0.579301, -0.216609,
		37.355537, 32.940430, 42.512337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648041, 32.772419, 41.962135>,  <36.805473, 32.534920, 42.663963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648041, 32.772419, 41.962135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035137, 32.855934, 42.018528>,  <37.267395, 32.906044, 42.052364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035137, 32.855934, 42.018528>,  <36.648041, 32.772419, 41.962135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035137, 32.855934, 42.018528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186025, -0.214832, -0.958771,
		-0.169891, 0.954073, -0.246742,
		0.967746, 0.208787, 0.140983,
		37.325462, 32.918571, 42.060822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862965, 33.300797, 41.461102>,  <36.648041, 32.772419, 41.962135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862965, 33.300797, 41.461102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207752, 33.125702, 41.563400>,  <37.414623, 33.020645, 41.624779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207752, 33.125702, 41.563400>,  <36.862965, 33.300797, 41.461102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207752, 33.125702, 41.563400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233434, -0.105119, -0.966674,
		0.450029, 0.892939, 0.011573,
		0.861964, -0.437733, 0.255749,
		37.466343, 32.994381, 41.640125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356678, 33.653500, 41.067905>,  <36.862965, 33.300797, 41.461102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356678, 33.653500, 41.067905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520596, 33.295956, 41.140663>,  <37.618946, 33.081429, 41.184319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520596, 33.295956, 41.140663>,  <37.356678, 33.653500, 41.067905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520596, 33.295956, 41.140663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096317, -0.155887, -0.983068,
		0.907079, 0.420374, 0.022213,
		0.409793, -0.893860, 0.181891,
		37.643532, 33.027798, 41.195232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844772, 33.607388, 40.525379>,  <37.356678, 33.653500, 41.067905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844772, 33.607388, 40.525379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837410, 33.240299, 40.684101>,  <37.832993, 33.020046, 40.779335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837410, 33.240299, 40.684101>,  <37.844772, 33.607388, 40.525379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837410, 33.240299, 40.684101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360072, -0.376328, -0.853654,
		0.932743, 0.127168, 0.337370,
		-0.018404, -0.917718, 0.396807,
		37.831890, 32.964985, 40.803143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546329, 33.289192, 40.339176>,  <37.844772, 33.607388, 40.525379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546329, 33.289192, 40.339176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303211, 32.984238, 40.428028>,  <38.157341, 32.801266, 40.481339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303211, 32.984238, 40.428028>,  <38.546329, 33.289192, 40.339176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303211, 32.984238, 40.428028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295297, -0.476670, -0.828001,
		0.737144, -0.437661, 0.514850,
		-0.607798, -0.762390, 0.222135,
		38.120872, 32.755520, 40.494667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944561, 32.670757, 40.398537>,  <38.546329, 33.289192, 40.339176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944561, 32.670757, 40.398537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571266, 32.571442, 40.294674>,  <38.347290, 32.511852, 40.232357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571266, 32.571442, 40.294674>,  <38.944561, 32.670757, 40.398537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571266, 32.571442, 40.294674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354658, -0.521396, -0.776121,
		0.057315, -0.816395, 0.574643,
		-0.933237, -0.248285, -0.259658,
		38.291294, 32.496956, 40.216778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909019, 31.907978, 40.328945>,  <38.944561, 32.670757, 40.398537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909019, 31.907978, 40.328945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594158, 32.061687, 40.135979>,  <38.405243, 32.153915, 40.020199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594158, 32.061687, 40.135979>,  <38.909019, 31.907978, 40.328945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594158, 32.061687, 40.135979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217017, -0.559588, -0.799853,
		-0.577329, -0.734292, 0.357079,
		-0.787143, 0.384286, -0.482421,
		38.358013, 32.176971, 39.991253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724052, 31.449583, 39.858025>,  <38.909019, 31.907978, 40.328945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724052, 31.449583, 39.858025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531857, 31.758598, 39.691982>,  <38.416538, 31.944008, 39.592358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531857, 31.758598, 39.691982>,  <38.724052, 31.449583, 39.858025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531857, 31.758598, 39.691982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434663, -0.201325, -0.877802,
		-0.761708, -0.602204, -0.239061,
		-0.480487, 0.772540, -0.415107,
		38.387711, 31.990360, 39.567451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470467, 31.248549, 39.226276>,  <38.724052, 31.449583, 39.858025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470467, 31.248549, 39.226276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504333, 31.644705, 39.182533>,  <38.524654, 31.882399, 39.156288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504333, 31.644705, 39.182533>,  <38.470467, 31.248549, 39.226276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504333, 31.644705, 39.182533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253469, -0.127548, -0.958898,
		-0.963631, 0.053472, -0.261833,
		0.084670, 0.990390, -0.109355,
		38.529736, 31.941822, 39.149727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224426, 31.374208, 38.518017>,  <38.470467, 31.248549, 39.226276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224426, 31.374208, 38.518017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430355, 31.704569, 38.609970>,  <38.553913, 31.902784, 38.665142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430355, 31.704569, 38.609970>,  <38.224426, 31.374208, 38.518017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430355, 31.704569, 38.609970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384055, 0.017552, -0.923143,
		-0.766460, 0.563542, -0.308155,
		0.514821, 0.825901, 0.229884,
		38.584801, 31.952339, 38.678936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985027, 32.040543, 38.086578>,  <38.224426, 31.374208, 38.518017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985027, 32.040543, 38.086578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346432, 32.151005, 38.217674>,  <38.563274, 32.217281, 38.296333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346432, 32.151005, 38.217674>,  <37.985027, 32.040543, 38.086578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346432, 32.151005, 38.217674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298701, 0.142631, -0.943628,
		-0.307333, 0.950471, 0.046381,
		0.903507, 0.276154, 0.327742,
		38.617485, 32.233852, 38.315998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165115, 32.791248, 37.822495>,  <37.985027, 32.040543, 38.086578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165115, 32.791248, 37.822495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517658, 32.622818, 37.908195>,  <38.729183, 32.521759, 37.959618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517658, 32.622818, 37.908195>,  <38.165115, 32.791248, 37.822495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517658, 32.622818, 37.908195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386157, 0.380773, -0.840175,
		0.272193, 0.823232, 0.498198,
		0.881359, -0.421072, 0.214253,
		38.782066, 32.496498, 37.972473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640892, 33.265678, 37.656235>,  <38.165115, 32.791248, 37.822495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640892, 33.265678, 37.656235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855091, 32.928150, 37.670170>,  <38.983608, 32.725632, 37.678532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855091, 32.928150, 37.670170>,  <38.640892, 33.265678, 37.656235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855091, 32.928150, 37.670170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557519, 0.322221, -0.765080,
		0.634366, 0.429115, 0.642993,
		0.535493, -0.843821, 0.034834,
		39.015739, 32.675003, 37.680618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234146, 33.488403, 37.575504>,  <38.640892, 33.265678, 37.656235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234146, 33.488403, 37.575504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265488, 33.097359, 37.497391>,  <39.284290, 32.862732, 37.450523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265488, 33.097359, 37.497391>,  <39.234146, 33.488403, 37.575504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265488, 33.097359, 37.497391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582641, 0.203857, -0.786748,
		0.808944, -0.052140, 0.585569,
		0.078351, -0.977611, -0.195288,
		39.288994, 32.804077, 37.438805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940655, 33.345463, 37.381256>,  <39.234146, 33.488403, 37.575504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940655, 33.345463, 37.381256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766525, 33.019936, 37.227276>,  <39.662048, 32.824619, 37.134888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766525, 33.019936, 37.227276>,  <39.940655, 33.345463, 37.381256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766525, 33.019936, 37.227276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409074, 0.202094, -0.889841,
		0.801968, -0.544842, 0.244937,
		-0.435322, -0.813821, -0.384954,
		39.635929, 32.775791, 37.111790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457634, 32.967308, 36.977993>,  <39.940655, 33.345463, 37.381256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457634, 32.967308, 36.977993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113552, 32.838299, 36.819992>,  <39.907104, 32.760891, 36.725189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113552, 32.838299, 36.819992>,  <40.457634, 32.967308, 36.977993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113552, 32.838299, 36.819992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340862, 0.212482, -0.915786,
		0.379298, -0.922403, -0.072840,
		-0.860201, -0.322527, -0.395007,
		39.855492, 32.741539, 36.701488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652721, 32.629158, 36.341934>,  <40.457634, 32.967308, 36.977993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652721, 32.629158, 36.341934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264675, 32.708027, 36.285374>,  <40.031845, 32.755348, 36.251438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264675, 32.708027, 36.285374>,  <40.652721, 32.629158, 36.341934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264675, 32.708027, 36.285374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214945, 0.428021, -0.877836,
		-0.112564, -0.881998, -0.457612,
		-0.970118, 0.197174, -0.141401,
		39.973640, 32.767178, 36.242954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359737, 32.157185, 35.812508>,  <40.652721, 32.629158, 36.341934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359737, 32.157185, 35.812508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121155, 32.476997, 35.840740>,  <39.978004, 32.668884, 35.857681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121155, 32.476997, 35.840740>,  <40.359737, 32.157185, 35.812508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121155, 32.476997, 35.840740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234448, 0.257648, -0.937364,
		-0.767642, -0.542549, -0.341126,
		-0.596457, 0.799536, 0.070582,
		39.942219, 32.716858, 35.861916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978573, 32.123653, 35.262417>,  <40.359737, 32.157185, 35.812508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978573, 32.123653, 35.262417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957375, 32.508110, 35.370785>,  <39.944656, 32.738785, 35.435806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957375, 32.508110, 35.370785>,  <39.978573, 32.123653, 35.262417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957375, 32.508110, 35.370785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162687, 0.275989, -0.947292,
		-0.985254, -0.006127, -0.170992,
		-0.052996, 0.961141, 0.270923,
		39.941475, 32.796452, 35.452061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679153, 32.565933, 34.611179>,  <39.978573, 32.123653, 35.262417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679153, 32.565933, 34.611179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874214, 32.831398, 34.838074>,  <39.991249, 32.990677, 34.974209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874214, 32.831398, 34.838074>,  <39.679153, 32.565933, 34.611179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874214, 32.831398, 34.838074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288695, 0.490591, -0.822177,
		-0.823925, 0.564692, 0.047642,
		0.487650, 0.663659, 0.567234,
		40.020508, 33.030495, 35.008244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710712, 33.424767, 34.453655>,  <39.679153, 32.565933, 34.611179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710712, 33.424767, 34.453655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088650, 33.334736, 34.548828>,  <40.315414, 33.280720, 34.605930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088650, 33.334736, 34.548828>,  <39.710712, 33.424767, 34.453655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088650, 33.334736, 34.548828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303716, 0.330240, -0.893699,
		0.122575, 0.916669, 0.380384,
		0.944845, -0.225074, 0.237928,
		40.372105, 33.267212, 34.620205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156857, 34.014374, 34.359604>,  <39.710712, 33.424767, 34.453655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156857, 34.014374, 34.359604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329678, 33.662476, 34.280224>,  <40.433369, 33.451336, 34.232597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329678, 33.662476, 34.280224>,  <40.156857, 34.014374, 34.359604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329678, 33.662476, 34.280224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313208, 0.352722, -0.881753,
		0.845714, 0.318806, 0.427937,
		0.432051, -0.879744, -0.198450,
		40.459293, 33.398552, 34.220688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853546, 34.172100, 34.161640>,  <40.156857, 34.014374, 34.359604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853546, 34.172100, 34.161640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765903, 33.813416, 34.007809>,  <40.713318, 33.598206, 33.915512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765903, 33.813416, 34.007809>,  <40.853546, 34.172100, 34.161640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765903, 33.813416, 34.007809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309490, 0.309926, -0.898978,
		0.925315, -0.315995, 0.209616,
		-0.219107, -0.896713, -0.384576,
		40.700172, 33.544403, 33.892437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765079, 34.122097, 34.866108>,  <40.853546, 34.172100, 34.161640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765079, 34.122097, 34.866108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080872, 34.077976, 34.624596>,  <41.270348, 34.051502, 34.479687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080872, 34.077976, 34.624596>,  <40.765079, 34.122097, 34.866108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080872, 34.077976, 34.624596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315215, 0.771213, -0.553055,
		0.526648, 0.626948, 0.574089,
		0.789482, -0.110304, -0.603781,
		41.317715, 34.044884, 34.443462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355507, 33.946632, 35.516251>,  <40.765079, 34.122097, 34.866108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355507, 33.946632, 35.516251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665150, 33.737450, 35.373550>,  <41.850937, 33.611938, 35.287930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665150, 33.737450, 35.373550>,  <41.355507, 33.946632, 35.516251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665150, 33.737450, 35.373550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223230, -0.301845, 0.926854,
		-0.592387, -0.797124, -0.116922,
		0.774110, -0.522956, -0.356751,
		41.897385, 33.580563, 35.266525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227856, 33.340664, 35.682541>,  <41.355507, 33.946632, 35.516251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227856, 33.340664, 35.682541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625164, 33.377991, 35.655098>,  <41.863548, 33.400387, 35.638634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625164, 33.377991, 35.655098>,  <41.227856, 33.340664, 35.682541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625164, 33.377991, 35.655098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095044, -0.318201, 0.943247,
		0.066187, -0.943420, -0.324928,
		0.993270, 0.093314, -0.068606,
		41.923145, 33.405983, 35.634518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668522, 32.704288, 35.738087>,  <41.227856, 33.340664, 35.682541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668522, 32.704288, 35.738087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860882, 33.027878, 35.873322>,  <41.976295, 33.222031, 35.954464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860882, 33.027878, 35.873322>,  <41.668522, 32.704288, 35.738087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860882, 33.027878, 35.873322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092670, -0.430342, 0.897896,
		0.871867, -0.400464, -0.281917,
		0.480895, 0.808971, 0.338090,
		42.005150, 33.270569, 35.974747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096561, 32.370148, 36.117020>,  <41.668522, 32.704288, 35.738087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096561, 32.370148, 36.117020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133831, 32.744438, 36.253101>,  <42.156193, 32.969013, 36.334751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133831, 32.744438, 36.253101>,  <42.096561, 32.370148, 36.117020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133831, 32.744438, 36.253101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251960, -0.352731, 0.901164,
		0.963242, 0.001757, -0.268629,
		0.093171, 0.935723, 0.340208,
		42.161781, 33.025154, 36.355164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750637, 32.346828, 36.385571>,  <42.096561, 32.370148, 36.117020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750637, 32.346828, 36.385571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555588, 32.641388, 36.573162>,  <42.438560, 32.818123, 36.685715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555588, 32.641388, 36.573162>,  <42.750637, 32.346828, 36.385571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555588, 32.641388, 36.573162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257450, -0.391995, 0.883210,
		0.834234, 0.551408, 0.001558,
		-0.487620, 0.736403, 0.468976,
		42.409302, 32.862309, 36.713856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153393, 32.577068, 36.969559>,  <42.750637, 32.346828, 36.385571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153393, 32.577068, 36.969559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802990, 32.746414, 37.061977>,  <42.592751, 32.848022, 37.117428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802990, 32.746414, 37.061977>,  <43.153393, 32.577068, 36.969559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802990, 32.746414, 37.061977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088477, -0.329855, 0.939876,
		0.474118, 0.843778, 0.251497,
		-0.876004, 0.423361, 0.231045,
		42.540188, 32.873421, 37.131290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296333, 32.861362, 37.570557>,  <43.153393, 32.577068, 36.969559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296333, 32.861362, 37.570557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897007, 32.854614, 37.548374>,  <42.657410, 32.850567, 37.535065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897007, 32.854614, 37.548374>,  <43.296333, 32.861362, 37.570557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897007, 32.854614, 37.548374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046606, -0.335281, 0.940965,
		-0.034467, 0.941967, 0.333931,
		-0.998319, -0.016869, -0.055457,
		42.597511, 32.849552, 37.531738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131035, 33.119965, 38.179272>,  <43.296333, 32.861362, 37.570557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131035, 33.119965, 38.179272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792801, 32.929768, 38.082199>,  <42.589863, 32.815651, 38.023956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792801, 32.929768, 38.082199>,  <43.131035, 33.119965, 38.179272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792801, 32.929768, 38.082199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116427, -0.279400, 0.953090,
		-0.520995, 0.834171, 0.180895,
		-0.845582, -0.475494, -0.242686,
		42.539127, 32.787121, 38.009392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654087, 33.269787, 38.781429>,  <43.131035, 33.119965, 38.179272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654087, 33.269787, 38.781429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539337, 32.937950, 38.589817>,  <42.470490, 32.738846, 38.474850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539337, 32.937950, 38.589817>,  <42.654087, 33.269787, 38.781429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539337, 32.937950, 38.589817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352820, -0.373406, 0.857955,
		-0.890630, 0.415137, -0.185578,
		-0.286873, -0.829596, -0.479035,
		42.453274, 32.689072, 38.446106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000820, 33.215466, 39.114262>,  <42.654087, 33.269787, 38.781429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000820, 33.215466, 39.114262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149967, 32.873741, 38.969418>,  <42.239456, 32.668705, 38.882511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149967, 32.873741, 38.969418>,  <42.000820, 33.215466, 39.114262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149967, 32.873741, 38.969418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254577, -0.469466, 0.845454,
		-0.892277, -0.223059, -0.392537,
		0.372869, -0.854310, -0.362108,
		42.261829, 32.617447, 38.860786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574360, 32.661999, 39.437378>,  <42.000820, 33.215466, 39.114262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574360, 32.661999, 39.437378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874138, 32.442631, 39.289024>,  <42.054005, 32.311008, 39.200012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874138, 32.442631, 39.289024>,  <41.574360, 32.661999, 39.437378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874138, 32.442631, 39.289024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193859, -0.717428, 0.669116,
		-0.633045, -0.429568, -0.643992,
		0.749448, -0.548424, -0.370888,
		42.098972, 32.278103, 39.177757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352692, 32.002045, 39.140858>,  <41.574360, 32.661999, 39.437378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352692, 32.002045, 39.140858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726845, 31.953224, 39.273617>,  <41.951336, 31.923931, 39.353271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726845, 31.953224, 39.273617>,  <41.352692, 32.002045, 39.140858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726845, 31.953224, 39.273617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312900, -0.722962, 0.615970,
		0.164769, -0.680020, -0.714439,
		0.935385, -0.122055, 0.331900,
		42.007462, 31.916607, 39.373188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451603, 31.314333, 39.300915>,  <41.352692, 32.002045, 39.140858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451603, 31.314333, 39.300915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752960, 31.498959, 39.488258>,  <41.933773, 31.609734, 39.600662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752960, 31.498959, 39.488258>,  <41.451603, 31.314333, 39.300915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752960, 31.498959, 39.488258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054018, -0.666403, 0.743633,
		0.655347, -0.585548, -0.477131,
		0.753394, 0.461564, 0.468355,
		41.978977, 31.637428, 39.628765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785866, 30.791756, 39.704639>,  <41.451603, 31.314333, 39.300915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785866, 30.791756, 39.704639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909096, 31.134651, 39.869675>,  <41.983032, 31.340389, 39.968697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909096, 31.134651, 39.869675>,  <41.785866, 30.791756, 39.704639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909096, 31.134651, 39.869675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076959, -0.409809, 0.908919,
		0.948245, -0.311765, -0.060278,
		0.308072, 0.857239, 0.412592,
		42.001518, 31.391823, 39.993454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265377, 30.640825, 40.151581>,  <41.785866, 30.791756, 39.704639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265377, 30.640825, 40.151581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153862, 31.006237, 40.270065>,  <42.086952, 31.225485, 40.341156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153862, 31.006237, 40.270065>,  <42.265377, 30.640825, 40.151581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153862, 31.006237, 40.270065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090149, -0.331970, 0.938972,
		0.956113, 0.235067, 0.174902,
		-0.278783, 0.913531, 0.296209,
		42.070229, 31.280296, 40.358929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733398, 30.822296, 40.696747>,  <42.265377, 30.640825, 40.151581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733398, 30.822296, 40.696747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398037, 31.032700, 40.753864>,  <42.196819, 31.158941, 40.788136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398037, 31.032700, 40.753864>,  <42.733398, 30.822296, 40.696747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398037, 31.032700, 40.753864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069811, -0.363460, 0.928991,
		0.540559, 0.768902, 0.341448,
		-0.838405, 0.526011, 0.142793,
		42.146515, 31.190502, 40.796703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873997, 31.007698, 41.369518>,  <42.733398, 30.822296, 40.696747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873997, 31.007698, 41.369518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478863, 31.054300, 41.328331>,  <42.241783, 31.082262, 41.303619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478863, 31.054300, 41.328331>,  <42.873997, 31.007698, 41.369518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478863, 31.054300, 41.328331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125975, -0.211507, 0.969224,
		0.091141, 0.970408, 0.223611,
		-0.987838, 0.116505, -0.102970,
		42.182510, 31.089252, 41.297440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728306, 31.455738, 41.865456>,  <42.873997, 31.007698, 41.369518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728306, 31.455738, 41.865456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391998, 31.266228, 41.760658>,  <42.190212, 31.152521, 41.697781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391998, 31.266228, 41.760658>,  <42.728306, 31.455738, 41.865456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391998, 31.266228, 41.760658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207148, -0.165575, 0.964197,
		-0.500191, 0.864941, 0.041070,
		-0.840773, -0.473775, -0.261990,
		42.139767, 31.124096, 41.682060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176598, 31.692694, 42.333847>,  <42.728306, 31.455738, 41.865456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176598, 31.692694, 42.333847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003643, 31.368359, 42.176071>,  <41.899872, 31.173758, 42.081406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003643, 31.368359, 42.176071>,  <42.176598, 31.692694, 42.333847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003643, 31.368359, 42.176071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179736, -0.351160, 0.918902,
		-0.883594, 0.468215, 0.006100,
		-0.432386, -0.810840, -0.394438,
		41.873928, 31.125107, 42.057739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674389, 31.567171, 42.800953>,  <42.176598, 31.692694, 42.333847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674389, 31.567171, 42.800953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731087, 31.216066, 42.617893>,  <41.765106, 31.005404, 42.508057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731087, 31.216066, 42.617893>,  <41.674389, 31.567171, 42.800953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731087, 31.216066, 42.617893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009351, -0.463481, 0.886058,
		-0.989859, -0.121316, -0.073904,
		0.141746, -0.877763, -0.457646,
		41.773609, 30.952738, 42.480598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113052, 31.113485, 43.047428>,  <41.674389, 31.567171, 42.800953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113052, 31.113485, 43.047428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439102, 30.903471, 42.949520>,  <41.634731, 30.777462, 42.890774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439102, 30.903471, 42.949520>,  <41.113052, 31.113485, 43.047428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439102, 30.903471, 42.949520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042347, -0.475414, 0.878742,
		-0.577742, -0.705915, -0.409754,
		0.815120, -0.525038, -0.244773,
		41.683640, 30.745960, 42.876087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967716, 30.514013, 43.245426>,  <41.113052, 31.113485, 43.047428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967716, 30.514013, 43.245426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363274, 30.472668, 43.202705>,  <41.600609, 30.447861, 43.177074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363274, 30.472668, 43.202705>,  <40.967716, 30.514013, 43.245426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363274, 30.472668, 43.202705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005851, -0.690932, 0.722896,
		-0.148511, -0.715492, -0.682653,
		0.988894, -0.103364, -0.106798,
		41.659943, 30.441658, 43.170666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059074, 29.886326, 43.326424>,  <40.967716, 30.514013, 43.245426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059074, 29.886326, 43.326424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437248, 30.008352, 43.372196>,  <41.664150, 30.081568, 43.399658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437248, 30.008352, 43.372196>,  <41.059074, 29.886326, 43.326424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437248, 30.008352, 43.372196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154554, -0.729075, 0.666755,
		0.286834, -0.612685, -0.736439,
		0.945431, 0.305068, 0.114430,
		41.720879, 30.099873, 43.406525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526619, 29.349178, 43.179661>,  <41.059074, 29.886326, 43.326424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526619, 29.349178, 43.179661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684589, 29.619967, 43.428093>,  <41.779373, 29.782440, 43.577152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684589, 29.619967, 43.428093>,  <41.526619, 29.349178, 43.179661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684589, 29.619967, 43.428093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292566, -0.733511, 0.613487,
		0.870884, -0.060575, -0.487741,
		0.394926, 0.676972, 0.621081,
		41.803066, 29.823059, 43.614418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131084, 29.133577, 43.196529>,  <41.526619, 29.349178, 43.179661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131084, 29.133577, 43.196529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991512, 29.320175, 43.521645>,  <41.907768, 29.432135, 43.716713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991512, 29.320175, 43.521645>,  <42.131084, 29.133577, 43.196529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991512, 29.320175, 43.521645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076382, -0.850260, 0.520791,
		0.934029, 0.243805, 0.261054,
		-0.348935, 0.466494, 0.812790,
		41.886833, 29.460123, 43.765480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653072, 29.034849, 43.758610>,  <42.131084, 29.133577, 43.196529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653072, 29.034849, 43.758610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263912, 29.072227, 43.843216>,  <42.030418, 29.094654, 43.893978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263912, 29.072227, 43.843216>,  <42.653072, 29.034849, 43.758610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263912, 29.072227, 43.843216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052385, -0.801859, 0.595212,
		0.225223, 0.590161, 0.775232,
		-0.972898, 0.093445, 0.211513,
		41.972042, 29.100262, 43.906670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071739, 28.826969, 43.221333>,  <42.653072, 29.034849, 43.758610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071739, 28.826969, 43.221333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416035, 28.956104, 43.378765>,  <43.622612, 29.033585, 43.473225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416035, 28.956104, 43.378765>,  <43.071739, 28.826969, 43.221333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416035, 28.956104, 43.378765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017650, 0.791634, -0.610741,
		-0.508742, 0.518741, 0.687087,
		0.860738, 0.322837, 0.393582,
		43.674255, 29.052956, 43.496841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077461, 29.561319, 43.510208>,  <43.071739, 28.826969, 43.221333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077461, 29.561319, 43.510208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428413, 29.435949, 43.364895>,  <43.638985, 29.360727, 43.277706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428413, 29.435949, 43.364895>,  <43.077461, 29.561319, 43.510208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428413, 29.435949, 43.364895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048444, 0.811150, -0.582829,
		0.477348, 0.493762, 0.726868,
		0.877378, -0.313425, -0.363281,
		43.691628, 29.341923, 43.255909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745605, 29.857847, 43.550850>,  <43.077461, 29.561319, 43.510208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745605, 29.857847, 43.550850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724621, 29.692144, 43.187393>,  <43.712029, 29.592722, 42.969318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724621, 29.692144, 43.187393>,  <43.745605, 29.857847, 43.550850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724621, 29.692144, 43.187393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115613, 0.901262, -0.417565,
		0.991908, -0.126958, 0.000611,
		-0.052463, -0.414257, -0.908647,
		43.708881, 29.567867, 42.914799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782673, 30.452732, 43.002632>,  <43.745605, 29.857847, 43.550850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782673, 30.452732, 43.002632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941563, 30.477608, 42.636387>,  <44.036896, 30.492533, 42.416641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941563, 30.477608, 42.636387>,  <43.782673, 30.452732, 43.002632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941563, 30.477608, 42.636387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508152, 0.815890, 0.275870,
		0.764194, -0.574853, 0.292493,
		0.397227, 0.062188, -0.915611,
		44.060730, 30.496264, 42.361702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560844, 30.482140, 42.997108>,  <43.782673, 30.452732, 43.002632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560844, 30.482140, 42.997108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444462, 30.670492, 42.663975>,  <44.374634, 30.783504, 42.464092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444462, 30.670492, 42.663975>,  <44.560844, 30.482140, 42.997108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444462, 30.670492, 42.663975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539894, 0.799459, 0.263400,
		0.789849, -0.373006, -0.486832,
		-0.290952, 0.470884, -0.832836,
		44.357178, 30.811758, 42.414124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074421, 31.017080, 42.857578>,  <44.560844, 30.482140, 42.997108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.074421, 31.017080, 42.857578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.736950, 31.143682, 42.684128>,  <44.534466, 31.219643, 42.580055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.736950, 31.143682, 42.684128>,  <45.074421, 31.017080, 42.857578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736950, 31.143682, 42.684128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231039, 0.943160, 0.238892,
		0.484593, 0.101362, -0.868847,
		-0.843677, 0.316503, -0.433631,
		44.483849, 31.238634, 42.554039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.198444, 31.593561, 42.420647>,  <45.074421, 31.017080, 42.857578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.198444, 31.593561, 42.420647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825928, 31.595524, 42.566341>,  <44.602417, 31.596701, 42.653759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825928, 31.595524, 42.566341>,  <45.198444, 31.593561, 42.420647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825928, 31.595524, 42.566341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209988, 0.824285, 0.525794,
		-0.297658, 0.566154, -0.768681,
		-0.931292, 0.004907, 0.364241,
		44.546539, 31.596996, 42.675613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329220, 31.610682, 41.743080>,  <45.198444, 31.593561, 42.420647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329220, 31.610682, 41.743080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944618, 31.704996, 41.799530>,  <44.713856, 31.761585, 41.833401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944618, 31.704996, 41.799530>,  <45.329220, 31.610682, 41.743080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.944618, 31.704996, 41.799530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016003, 0.464647, -0.885351,
		-0.274329, -0.853526, -0.442986,
		-0.961503, 0.235789, 0.141126,
		44.656166, 31.775732, 41.841869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025562, 31.586670, 41.078362>,  <45.329220, 31.610682, 41.743080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025562, 31.586670, 41.078362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792015, 31.819263, 41.304977>,  <44.651886, 31.958820, 41.440948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792015, 31.819263, 41.304977>,  <45.025562, 31.586670, 41.078362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792015, 31.819263, 41.304977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117796, 0.629781, -0.767789,
		-0.803255, -0.515027, -0.299214,
		-0.583871, 0.581484, 0.566543,
		44.616852, 31.993708, 41.474941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.533035, 31.947243, 40.573914>,  <45.025562, 31.586670, 41.078362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.533035, 31.947243, 40.573914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505123, 32.163036, 40.909554>,  <44.488377, 32.292511, 41.110939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505123, 32.163036, 40.909554>,  <44.533035, 31.947243, 40.573914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505123, 32.163036, 40.909554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116927, 0.830928, -0.543955,
		-0.990686, -0.136072, 0.005096,
		-0.069782, 0.539485, 0.839099,
		44.484188, 32.324883, 41.161282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909798, 32.346840, 40.470299>,  <44.533035, 31.947243, 40.573914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909798, 32.346840, 40.470299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104168, 32.568985, 40.740246>,  <44.220791, 32.702271, 40.902214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104168, 32.568985, 40.740246>,  <43.909798, 32.346840, 40.470299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104168, 32.568985, 40.740246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141683, 0.812003, -0.566195,
		-0.862439, 0.179512, 0.473260,
		0.485927, 0.555362, 0.674869,
		44.249947, 32.735592, 40.942707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494465, 32.935562, 40.670677>,  <43.909798, 32.346840, 40.470299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494465, 32.935562, 40.670677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.864143, 33.039577, 40.782562>,  <44.085949, 33.101986, 40.849693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.864143, 33.039577, 40.782562>,  <43.494465, 32.935562, 40.670677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.864143, 33.039577, 40.782562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022472, 0.768147, -0.639879,
		-0.381257, 0.585088, 0.715762,
		0.924196, 0.260043, 0.279713,
		44.141403, 33.117592, 40.866478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482231, 33.681335, 40.851784>,  <43.494465, 32.935562, 40.670677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482231, 33.681335, 40.851784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854359, 33.583870, 40.742142>,  <44.077637, 33.525391, 40.676357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854359, 33.583870, 40.742142>,  <43.482231, 33.681335, 40.851784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854359, 33.583870, 40.742142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122896, 0.497061, -0.858969,
		0.345547, 0.832801, 0.432480,
		0.930319, -0.243665, -0.274106,
		44.133453, 33.510769, 40.659908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665791, 34.214909, 40.464535>,  <43.482231, 33.681335, 40.851784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665791, 34.214909, 40.464535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954891, 33.955795, 40.368198>,  <44.128353, 33.800327, 40.310398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954891, 33.955795, 40.368198>,  <43.665791, 34.214909, 40.464535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954891, 33.955795, 40.368198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114098, 0.455543, -0.882872,
		0.681624, 0.610619, 0.403155,
		0.722752, -0.647785, -0.240838,
		44.171719, 33.761459, 40.295948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248714, 34.606052, 40.181686>,  <43.665791, 34.214909, 40.464535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248714, 34.606052, 40.181686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296917, 34.238750, 40.030800>,  <44.325836, 34.018372, 39.940266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296917, 34.238750, 40.030800>,  <44.248714, 34.606052, 40.181686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296917, 34.238750, 40.030800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123087, 0.390876, -0.912176,
		0.985053, 0.063489, 0.160127,
		0.120502, -0.918251, -0.377219,
		44.333069, 33.963276, 39.917633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822777, 34.596752, 39.680313>,  <44.248714, 34.606052, 40.181686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822777, 34.596752, 39.680313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615562, 34.275414, 39.562820>,  <44.491234, 34.082611, 39.492325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615562, 34.275414, 39.562820>,  <44.822777, 34.596752, 39.680313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615562, 34.275414, 39.562820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132853, 0.263670, -0.955420,
		0.844981, -0.533961, -0.029862,
		-0.518031, -0.803345, -0.293735,
		44.460152, 34.034409, 39.474701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261272, 34.227303, 39.333561>,  <44.822777, 34.596752, 39.680313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261272, 34.227303, 39.333561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898640, 34.113297, 39.209057>,  <44.681061, 34.044891, 39.134354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898640, 34.113297, 39.209057>,  <45.261272, 34.227303, 39.333561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898640, 34.113297, 39.209057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253376, 0.222235, -0.941494,
		0.337517, -0.932403, -0.129257,
		-0.906578, -0.285020, -0.311257,
		44.626667, 34.027790, 39.115681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.392300, 33.766243, 38.794167>,  <45.261272, 34.227303, 39.333561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.392300, 33.766243, 38.794167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.018600, 33.903419, 38.755028>,  <44.794380, 33.985725, 38.731544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.018600, 33.903419, 38.755028>,  <45.392300, 33.766243, 38.794167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.018600, 33.903419, 38.755028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147299, 0.121194, -0.981639,
		-0.324784, -0.931507, -0.163740,
		-0.934248, 0.342939, -0.097849,
		44.738327, 34.006302, 38.725674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103634, 33.581966, 38.161297>,  <45.392300, 33.766243, 38.794167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103634, 33.581966, 38.161297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830967, 33.863998, 38.239468>,  <44.667366, 34.033218, 38.286369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830967, 33.863998, 38.239468>,  <45.103634, 33.581966, 38.161297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830967, 33.863998, 38.239468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056458, 0.215613, -0.974845,
		-0.729483, -0.675552, -0.107168,
		-0.681665, 0.705082, 0.195427,
		44.626469, 34.075523, 38.298096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625614, 33.355988, 37.756027>,  <45.103634, 33.581966, 38.161297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625614, 33.355988, 37.756027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.558949, 33.740524, 37.843712>,  <44.518948, 33.971245, 37.896324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.558949, 33.740524, 37.843712>,  <44.625614, 33.355988, 37.756027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558949, 33.740524, 37.843712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049910, 0.213812, -0.975599,
		-0.984750, -0.173537, 0.012346,
		-0.166662, 0.961337, 0.219213,
		44.508949, 34.028927, 37.909477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078068, 33.501820, 37.329651>,  <44.625614, 33.355988, 37.756027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078068, 33.501820, 37.329651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228439, 33.856586, 37.437019>,  <44.318661, 34.069447, 37.501438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228439, 33.856586, 37.437019>,  <44.078068, 33.501820, 37.329651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228439, 33.856586, 37.437019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094817, 0.324962, -0.940962,
		-0.921785, 0.328284, 0.206258,
		0.375929, 0.886921, 0.268418,
		44.341217, 34.122662, 37.517544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611992, 33.976120, 37.097996>,  <44.078068, 33.501820, 37.329651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611992, 33.976120, 37.097996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938454, 34.204868, 37.131123>,  <44.134331, 34.342117, 37.150997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938454, 34.204868, 37.131123>,  <43.611992, 33.976120, 37.097996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938454, 34.204868, 37.131123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077313, 0.250107, -0.965126,
		-0.572643, 0.781287, 0.248339,
		0.816152, 0.571872, 0.082818,
		44.183300, 34.376431, 37.155968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491379, 34.733582, 36.843987>,  <43.611992, 33.976120, 37.097996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491379, 34.733582, 36.843987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877277, 34.641109, 36.793682>,  <44.108818, 34.585625, 36.763500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877277, 34.641109, 36.793682>,  <43.491379, 34.733582, 36.843987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877277, 34.641109, 36.793682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025638, 0.393036, -0.919166,
		0.261925, 0.889987, 0.373254,
		0.964748, -0.231183, -0.125764,
		44.166702, 34.571754, 36.755955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713531, 35.222485, 36.359203>,  <43.491379, 34.733582, 36.843987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713531, 35.222485, 36.359203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992012, 34.937542, 36.394627>,  <44.159100, 34.766575, 36.415882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992012, 34.937542, 36.394627>,  <43.713531, 35.222485, 36.359203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992012, 34.937542, 36.394627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223693, 0.098069, -0.969713,
		0.682099, 0.694929, 0.227626,
		0.696205, -0.712359, 0.088558,
		44.200874, 34.723835, 36.421192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240681, 35.468937, 35.888905>,  <43.713531, 35.222485, 36.359203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240681, 35.468937, 35.888905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330486, 35.083736, 35.948528>,  <44.384369, 34.852615, 35.984303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330486, 35.083736, 35.948528>,  <44.240681, 35.468937, 35.888905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330486, 35.083736, 35.948528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313180, -0.073545, -0.946842,
		0.922774, 0.259262, 0.285081,
		0.224513, -0.963003, 0.149061,
		44.397839, 34.794834, 35.993248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909332, 35.421139, 35.558315>,  <44.240681, 35.468937, 35.888905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.909332, 35.421139, 35.558315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771984, 35.048153, 35.603218>,  <44.689575, 34.824360, 35.630157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771984, 35.048153, 35.603218>,  <44.909332, 35.421139, 35.558315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771984, 35.048153, 35.603218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145970, -0.171051, -0.974389,
		0.927788, -0.318189, 0.194846,
		-0.343368, -0.932469, 0.112253,
		44.668972, 34.768414, 35.636894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444073, 34.829208, 35.218746>,  <44.909332, 35.421139, 35.558315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444073, 34.829208, 35.218746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080059, 34.663536, 35.225548>,  <44.861649, 34.564133, 35.229630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080059, 34.663536, 35.225548>,  <45.444073, 34.829208, 35.218746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080059, 34.663536, 35.225548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138888, -0.343300, -0.928900,
		0.390569, -0.842971, 0.369940,
		-0.910036, -0.414179, 0.017004,
		44.807049, 34.539284, 35.230648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.717770, 34.427811, 34.702793>,  <45.444073, 34.829208, 35.218746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.717770, 34.427811, 34.702793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.985184, 34.374146, 34.995384>,  <46.145634, 34.341946, 35.170940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.985184, 34.374146, 34.995384>,  <45.717770, 34.427811, 34.702793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.985184, 34.374146, 34.995384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240208, -0.969827, 0.041664,
		0.703818, -0.203561, -0.680590,
		0.668536, -0.134159, 0.731479,
		46.185745, 34.333897, 35.214828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.292610, 33.885590, 34.501930>,  <45.717770, 34.427811, 34.702793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.292610, 33.885590, 34.501930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.265030, 33.916016, 34.899818>,  <46.248482, 33.934273, 35.138550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.265030, 33.916016, 34.899818>,  <46.292610, 33.885590, 34.501930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.265030, 33.916016, 34.899818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056987, -0.995761, 0.072194,
		0.995991, -0.051708, 0.072996,
		-0.068954, 0.076064, 0.994716,
		46.244343, 33.938835, 35.198235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.575600, 34.468376, 34.171871>,  <46.292610, 33.885590, 34.501930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.575600, 34.468376, 34.171871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.600311, 34.517735, 34.568043>,  <46.615139, 34.547348, 34.805748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.600311, 34.517735, 34.568043>,  <46.575600, 34.468376, 34.171871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.600311, 34.517735, 34.568043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986105, -0.160865, -0.041468,
		0.154209, 0.979233, -0.131616,
		0.061779, 0.123393, 0.990433,
		46.618843, 34.554752, 34.865173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.017838, 35.044079, 34.385788>,  <46.575600, 34.468376, 34.171871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.017838, 35.044079, 34.385788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.019188, 34.748096, 34.654850>,  <47.019997, 34.570507, 34.816288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.019188, 34.748096, 34.654850>,  <47.017838, 35.044079, 34.385788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.019188, 34.748096, 34.654850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997485, -0.045133, -0.054652,
		0.070799, 0.671144, 0.737939,
		0.003374, -0.739952, 0.672651,
		47.020199, 34.526112, 34.856644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.502831, 35.222988, 34.853268>,  <47.017838, 35.044079, 34.385788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.502831, 35.222988, 34.853268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.492695, 34.829445, 34.924126>,  <47.486614, 34.593319, 34.966640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.492695, 34.829445, 34.924126>,  <47.502831, 35.222988, 34.853268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.492695, 34.829445, 34.924126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981942, 0.008739, 0.188983,
		-0.187480, 0.178737, 0.965870,
		-0.025338, -0.983858, 0.177147,
		47.485092, 34.534286, 34.977268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.374363, 36.871971, 43.583641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.089741, 37.150387, 43.622047>,  <36.918968, 37.317436, 43.645092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.089741, 37.150387, 43.622047>,  <37.374363, 36.871971, 43.583641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089741, 37.150387, 43.622047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211490, 0.342480, -0.915412,
		-0.670048, -0.631058, -0.390899,
		-0.711553, 0.696041, 0.096016,
		36.876274, 37.359200, 43.650852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859497, 36.638821, 43.111595>,  <37.374363, 36.871971, 43.583641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859497, 36.638821, 43.111595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.784195, 37.029469, 43.153114>,  <36.739014, 37.263859, 43.178024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.784195, 37.029469, 43.153114>,  <36.859497, 36.638821, 43.111595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784195, 37.029469, 43.153114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056427, 0.116265, -0.991614,
		-0.980497, -0.180822, -0.076996,
		-0.188258, 0.976620, 0.103794,
		36.727718, 37.322456, 43.184254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321083, 36.755917, 42.661499>,  <36.859497, 36.638821, 43.111595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321083, 36.755917, 42.661499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526619, 37.091965, 42.730968>,  <36.649940, 37.293594, 42.772652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526619, 37.091965, 42.730968>,  <36.321083, 36.755917, 42.661499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526619, 37.091965, 42.730968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117805, 0.131429, -0.984301,
		-0.849757, 0.526236, -0.031437,
		0.513843, 0.840121, 0.173676,
		36.680771, 37.344002, 42.783070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057438, 36.987877, 42.093899>,  <36.321083, 36.755917, 42.661499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057438, 36.987877, 42.093899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351875, 37.235016, 42.204483>,  <36.528538, 37.383301, 42.270832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351875, 37.235016, 42.204483>,  <36.057438, 36.987877, 42.093899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351875, 37.235016, 42.204483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136636, 0.264394, -0.954687,
		-0.662944, 0.740514, 0.110199,
		0.736095, 0.617846, 0.276459,
		36.572704, 37.420368, 42.287422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835342, 37.634975, 41.777348>,  <36.057438, 36.987877, 42.093899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835342, 37.634975, 41.777348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.229115, 37.611877, 41.843750>,  <36.465378, 37.598019, 41.883591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.229115, 37.611877, 41.843750>,  <35.835342, 37.634975, 41.777348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229115, 37.611877, 41.843750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173327, 0.162401, -0.971382,
		0.029133, 0.985034, 0.169882,
		0.984433, -0.057744, 0.166002,
		36.524445, 37.594555, 41.893551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097534, 38.004730, 41.216816>,  <35.835342, 37.634975, 41.777348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097534, 38.004730, 41.216816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.434498, 37.835163, 41.349861>,  <36.636677, 37.733421, 41.429688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.434498, 37.835163, 41.349861>,  <36.097534, 38.004730, 41.216816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434498, 37.835163, 41.349861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365212, -0.004661, -0.930913,
		0.396184, 0.905687, 0.150895,
		0.842412, -0.423921, 0.332615,
		36.687222, 37.707985, 41.449646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578762, 38.358109, 40.994251>,  <36.097534, 38.004730, 41.216816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578762, 38.358109, 40.994251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.771008, 38.010719, 41.042847>,  <36.886356, 37.802284, 41.072006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.771008, 38.010719, 41.042847>,  <36.578762, 38.358109, 40.994251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771008, 38.010719, 41.042847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243447, -0.000957, -0.969914,
		0.842461, 0.495733, 0.210967,
		0.480617, -0.868474, 0.121491,
		36.915192, 37.750175, 41.079292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090530, 38.455044, 40.598129>,  <36.578762, 38.358109, 40.994251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090530, 38.455044, 40.598129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.109085, 38.059372, 40.653793>,  <37.120216, 37.821968, 40.687191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.109085, 38.059372, 40.653793>,  <37.090530, 38.455044, 40.598129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109085, 38.059372, 40.653793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171816, -0.129333, -0.976603,
		0.984036, 0.069211, 0.163958,
		0.046387, -0.989183, 0.139160,
		37.123001, 37.762615, 40.695541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751148, 38.231659, 40.309566>,  <37.090530, 38.455044, 40.598129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751148, 38.231659, 40.309566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510048, 37.912502, 40.312622>,  <37.365387, 37.721008, 40.314457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510048, 37.912502, 40.312622>,  <37.751148, 38.231659, 40.309566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510048, 37.912502, 40.312622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318985, -0.249730, -0.914267,
		0.731392, -0.548641, 0.405041,
		-0.602755, -0.797889, 0.007642,
		37.329220, 37.673134, 40.314915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172791, 37.652786, 40.162777>,  <37.751148, 38.231659, 40.309566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172791, 37.652786, 40.162777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.806015, 37.537209, 40.052704>,  <37.585949, 37.467861, 39.986660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.806015, 37.537209, 40.052704>,  <38.172791, 37.652786, 40.162777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806015, 37.537209, 40.052704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386678, -0.473283, -0.791507,
		0.098463, -0.832174, 0.545703,
		-0.916943, -0.288946, -0.275183,
		37.530933, 37.450523, 39.970150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249004, 37.057823, 39.954388>,  <38.172791, 37.652786, 40.162777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249004, 37.057823, 39.954388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.883286, 37.123104, 39.806107>,  <37.663853, 37.162273, 39.717140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.883286, 37.123104, 39.806107>,  <38.249004, 37.057823, 39.954388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883286, 37.123104, 39.806107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181664, -0.652773, -0.735449,
		-0.362012, -0.739765, 0.567182,
		-0.914300, 0.163205, -0.370700,
		37.608994, 37.172066, 39.694897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029678, 36.377090, 39.826519>,  <38.249004, 37.057823, 39.954388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029678, 36.377090, 39.826519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.843067, 36.659977, 39.614029>,  <37.731102, 36.829708, 39.486534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.843067, 36.659977, 39.614029>,  <38.029678, 36.377090, 39.826519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843067, 36.659977, 39.614029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211784, -0.493806, -0.843388,
		-0.858780, -0.505966, 0.080596,
		-0.466525, 0.707215, -0.531226,
		37.703110, 36.872143, 39.454662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558990, 36.029839, 39.280701>,  <38.029678, 36.377090, 39.826519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558990, 36.029839, 39.280701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594563, 36.402134, 39.138817>,  <37.615906, 36.625511, 39.053688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594563, 36.402134, 39.138817>,  <37.558990, 36.029839, 39.280701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594563, 36.402134, 39.138817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153341, -0.364666, -0.918426,
		-0.984164, 0.027286, -0.175151,
		0.088931, 0.930739, -0.354707,
		37.621243, 36.681355, 39.032406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147610, 36.112556, 38.719345>,  <37.558990, 36.029839, 39.280701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147610, 36.112556, 38.719345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.383770, 36.422924, 38.630459>,  <37.525467, 36.609142, 38.577126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.383770, 36.422924, 38.630459>,  <37.147610, 36.112556, 38.719345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383770, 36.422924, 38.630459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029871, -0.296145, -0.954676,
		-0.806557, 0.557003, -0.198022,
		0.590401, 0.775916, -0.222220,
		37.560890, 36.655701, 38.563793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870583, 36.495659, 38.056198>,  <37.147610, 36.112556, 38.719345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870583, 36.495659, 38.056198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261566, 36.573605, 38.088718>,  <37.496155, 36.620373, 38.108231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261566, 36.573605, 38.088718>,  <36.870583, 36.495659, 38.056198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261566, 36.573605, 38.088718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108396, -0.132695, -0.985212,
		-0.181192, 0.971813, -0.150826,
		0.977456, 0.194862, 0.081298,
		37.554802, 36.632065, 38.113110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087349, 36.870346, 37.436214>,  <36.870583, 36.495659, 38.056198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087349, 36.870346, 37.436214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.447803, 36.777931, 37.582954>,  <37.664074, 36.722485, 37.670998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.447803, 36.777931, 37.582954>,  <37.087349, 36.870346, 37.436214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447803, 36.777931, 37.582954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309460, -0.249838, -0.917505,
		0.303629, 0.940321, -0.153642,
		0.901135, -0.231035, 0.366850,
		37.718143, 36.708622, 37.693008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568508, 37.168888, 37.000420>,  <37.087349, 36.870346, 37.436214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568508, 37.168888, 37.000420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.782616, 36.884674, 37.183125>,  <37.911079, 36.714146, 37.292747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.782616, 36.884674, 37.183125>,  <37.568508, 37.168888, 37.000420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782616, 36.884674, 37.183125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305502, -0.341293, -0.888925,
		0.787501, 0.615353, 0.034388,
		0.535266, -0.710535, 0.456760,
		37.943195, 36.671513, 37.320152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120117, 37.145542, 36.614521>,  <37.568508, 37.168888, 37.000420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120117, 37.145542, 36.614521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.124195, 36.799213, 36.814617>,  <38.126640, 36.591415, 36.934677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.124195, 36.799213, 36.814617>,  <38.120117, 37.145542, 36.614521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124195, 36.799213, 36.814617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584653, -0.400691, -0.705427,
		0.811219, 0.299659, 0.502123,
		0.010191, -0.865824, 0.500245,
		38.127251, 36.539467, 36.964691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695122, 36.968723, 36.427673>,  <38.120117, 37.145542, 36.614521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695122, 36.968723, 36.427673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.524864, 36.639549, 36.578197>,  <38.422710, 36.442047, 36.668514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.524864, 36.639549, 36.578197>,  <38.695122, 36.968723, 36.427673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524864, 36.639549, 36.578197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459892, -0.554881, -0.693258,
		0.779314, -0.122014, 0.614640,
		-0.425639, -0.822933, 0.376313,
		38.397171, 36.392670, 36.691090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155228, 36.508457, 36.640652>,  <38.695122, 36.968723, 36.427673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155228, 36.508457, 36.640652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.851345, 36.260033, 36.563572>,  <38.669014, 36.110977, 36.517323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.851345, 36.260033, 36.563572>,  <39.155228, 36.508457, 36.640652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851345, 36.260033, 36.563572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591180, -0.536221, -0.602473,
		0.270841, -0.571623, 0.774528,
		-0.759705, -0.621059, -0.192701,
		38.623432, 36.073715, 36.505760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383400, 35.885891, 36.650738>,  <39.155228, 36.508457, 36.640652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383400, 35.885891, 36.650738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.055786, 35.834465, 36.427074>,  <38.859219, 35.803608, 36.292877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.055786, 35.834465, 36.427074>,  <39.383400, 35.885891, 36.650738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055786, 35.834465, 36.427074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529992, -0.542812, -0.651509,
		-0.219752, -0.829955, 0.512722,
		-0.819034, -0.128568, -0.559154,
		38.810078, 35.795895, 36.259327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463696, 35.206173, 36.416153>,  <39.383400, 35.885891, 36.650738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463696, 35.206173, 36.416153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202576, 35.375069, 36.164577>,  <39.045902, 35.476406, 36.013634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202576, 35.375069, 36.164577>,  <39.463696, 35.206173, 36.416153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202576, 35.375069, 36.164577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382043, -0.533417, -0.754658,
		-0.654135, -0.732923, 0.186900,
		-0.652802, 0.422245, -0.628935,
		39.006737, 35.501743, 35.975899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107002, 34.519386, 36.450344>,  <39.463696, 35.206173, 36.416153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107002, 34.519386, 36.450344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.498608, 34.600761, 36.455021>,  <39.733570, 34.649586, 36.457825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.498608, 34.600761, 36.455021>,  <39.107002, 34.519386, 36.450344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498608, 34.600761, 36.455021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014384, 0.011783, 0.999827,
		0.203268, -0.979016, 0.014462,
		0.979017, 0.203441, 0.011687,
		39.792313, 34.661793, 36.458527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288643, 34.287014, 37.004482>,  <39.107002, 34.519386, 36.450344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288643, 34.287014, 37.004482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.605854, 34.513519, 36.914642>,  <39.796181, 34.649422, 36.860741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.605854, 34.513519, 36.914642>,  <39.288643, 34.287014, 37.004482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605854, 34.513519, 36.914642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227362, 0.066916, 0.971509,
		0.565160, -0.821503, -0.075680,
		0.793032, 0.566265, -0.224596,
		39.843765, 34.683399, 36.847263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837925, 34.090500, 37.470432>,  <39.288643, 34.287014, 37.004482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837925, 34.090500, 37.470432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.939075, 34.453114, 37.335228>,  <39.999767, 34.670681, 37.254105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.939075, 34.453114, 37.335228>,  <39.837925, 34.090500, 37.470432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939075, 34.453114, 37.335228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288865, 0.262685, 0.920627,
		0.923369, -0.330444, -0.195439,
		0.252877, 0.906533, -0.338009,
		40.014938, 34.725075, 37.233826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530476, 34.199982, 37.750034>,  <39.837925, 34.090500, 37.470432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530476, 34.199982, 37.750034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.389282, 34.560711, 37.650341>,  <40.304565, 34.777149, 37.590523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.389282, 34.560711, 37.650341>,  <40.530476, 34.199982, 37.750034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389282, 34.560711, 37.650341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252305, 0.348262, 0.902804,
		0.900967, 0.255794, -0.350467,
		-0.352986, 0.901822, -0.249235,
		40.283386, 34.831257, 37.575569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023293, 34.674492, 37.950073>,  <40.530476, 34.199982, 37.750034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023293, 34.674492, 37.950073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.703022, 34.912712, 37.924065>,  <40.510860, 35.055645, 37.908459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.703022, 34.912712, 37.924065>,  <41.023293, 34.674492, 37.950073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703022, 34.912712, 37.924065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255129, 0.437162, 0.862438,
		0.542054, 0.673947, -0.501969,
		-0.800679, 0.595555, -0.065022,
		40.462818, 35.091377, 37.904556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214973, 35.316166, 38.151203>,  <41.023293, 34.674492, 37.950073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214973, 35.316166, 38.151203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.815777, 35.338169, 38.163784>,  <40.576260, 35.351372, 38.171333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.815777, 35.338169, 38.163784>,  <41.214973, 35.316166, 38.151203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815777, 35.338169, 38.163784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059147, 0.630466, 0.773960,
		0.022743, 0.774265, -0.632453,
		-0.997990, 0.055010, 0.031457,
		40.516380, 35.354671, 38.173222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037914, 36.086697, 38.125866>,  <41.214973, 35.316166, 38.151203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037914, 36.086697, 38.125866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.747066, 35.875202, 38.301014>,  <40.572556, 35.748306, 38.406105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.747066, 35.875202, 38.301014>,  <41.037914, 36.086697, 38.125866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747066, 35.875202, 38.301014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101452, 0.548066, 0.830260,
		-0.678971, 0.648123, -0.344869,
		-0.727121, -0.528735, 0.437874,
		40.528931, 35.716583, 38.432377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660706, 36.632053, 38.380516>,  <41.037914, 36.086697, 38.125866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660706, 36.632053, 38.380516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.551651, 36.305195, 38.583668>,  <40.486217, 36.109077, 38.705559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.551651, 36.305195, 38.583668>,  <40.660706, 36.632053, 38.380516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551651, 36.305195, 38.583668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012958, 0.530945, 0.847307,
		-0.962031, 0.224422, -0.155342,
		-0.272632, -0.817149, 0.507878,
		40.469860, 36.060051, 38.736031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962257, 36.730190, 38.870094>,  <40.660706, 36.632053, 38.380516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962257, 36.730190, 38.870094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.143650, 36.410816, 39.028511>,  <40.252487, 36.219193, 39.123562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.143650, 36.410816, 39.028511>,  <39.962257, 36.730190, 38.870094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143650, 36.410816, 39.028511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199138, 0.342354, 0.918225,
		-0.868734, -0.495265, -0.003748,
		0.453482, -0.798440, 0.396041,
		40.279694, 36.171284, 39.147324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508553, 36.491909, 39.312714>,  <39.962257, 36.730190, 38.870094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508553, 36.491909, 39.312714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.851208, 36.335068, 39.446831>,  <40.056801, 36.240963, 39.527302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.851208, 36.335068, 39.446831>,  <39.508553, 36.491909, 39.312714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851208, 36.335068, 39.446831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330601, 0.081735, 0.940225,
		-0.396074, -0.916281, -0.059613,
		0.856638, -0.392107, 0.335297,
		40.108200, 36.217438, 39.547421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388729, 35.958561, 39.802200>,  <39.508553, 36.491909, 39.312714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388729, 35.958561, 39.802200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.769371, 36.037094, 39.896778>,  <39.997757, 36.084213, 39.953526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.769371, 36.037094, 39.896778>,  <39.388729, 35.958561, 39.802200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769371, 36.037094, 39.896778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243924, 0.014470, 0.969686,
		0.186962, -0.980430, 0.061661,
		0.951602, 0.196335, 0.236445,
		40.054852, 36.095993, 39.967712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573307, 35.400620, 40.200130>,  <39.388729, 35.958561, 39.802200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573307, 35.400620, 40.200130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.777676, 35.726673, 40.309326>,  <39.900295, 35.922306, 40.374844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.777676, 35.726673, 40.309326>,  <39.573307, 35.400620, 40.200130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777676, 35.726673, 40.309326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237500, -0.171351, 0.956155,
		0.826169, -0.553352, 0.106047,
		0.510919, 0.815132, 0.272986,
		39.930950, 35.971214, 40.391224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629036, 35.159927, 40.988514>,  <39.573307, 35.400620, 40.200130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629036, 35.159927, 40.988514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.744007, 35.538277, 40.928226>,  <39.812988, 35.765285, 40.892056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.744007, 35.538277, 40.928226>,  <39.629036, 35.159927, 40.988514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744007, 35.538277, 40.928226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176513, 0.206969, 0.962293,
		0.941398, -0.249984, 0.226446,
		0.287425, 0.945871, -0.150715,
		39.830235, 35.822037, 40.883011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082375, 35.319679, 41.504597>,  <39.629036, 35.159927, 40.988514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082375, 35.319679, 41.504597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.914772, 35.670719, 41.411419>,  <39.814213, 35.881344, 41.355515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.914772, 35.670719, 41.411419>,  <40.082375, 35.319679, 41.504597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914772, 35.670719, 41.411419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240718, 0.140003, 0.960445,
		0.875494, 0.458503, 0.152591,
		-0.419004, 0.877595, -0.232942,
		39.789070, 35.933998, 41.341537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330654, 35.714188, 42.078388>,  <40.082375, 35.319679, 41.504597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330654, 35.714188, 42.078388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.025074, 35.907196, 41.907017>,  <39.841724, 36.022999, 41.804192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.025074, 35.907196, 41.907017>,  <40.330654, 35.714188, 42.078388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025074, 35.907196, 41.907017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358671, 0.234406, 0.903554,
		0.536407, 0.843938, -0.006010,
		-0.763952, 0.482517, -0.428433,
		39.795887, 36.051952, 41.778488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393391, 36.462410, 42.293365>,  <40.330654, 35.714188, 42.078388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393391, 36.462410, 42.293365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.011963, 36.376305, 42.209110>,  <39.783108, 36.324642, 42.158558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.011963, 36.376305, 42.209110>,  <40.393391, 36.462410, 42.293365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011963, 36.376305, 42.209110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258757, 0.227682, 0.938725,
		-0.154112, 0.949644, -0.272811,
		-0.953569, -0.215260, -0.210639,
		39.725891, 36.311726, 42.145920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144035, 36.841099, 42.792816>,  <40.393391, 36.462410, 42.293365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144035, 36.841099, 42.792816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.830906, 36.632530, 42.656986>,  <39.643028, 36.507389, 42.575489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.830906, 36.632530, 42.656986>,  <40.144035, 36.841099, 42.792816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830906, 36.632530, 42.656986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465890, 0.129395, 0.875331,
		-0.412478, 0.843431, -0.344219,
		-0.782821, -0.521423, -0.339573,
		39.596058, 36.476105, 42.555115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624168, 37.177120, 43.022499>,  <40.144035, 36.841099, 42.792816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624168, 37.177120, 43.022499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.457611, 36.820442, 42.951511>,  <39.357677, 36.606434, 42.908920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.457611, 36.820442, 42.951511>,  <39.624168, 37.177120, 43.022499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457611, 36.820442, 42.951511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405281, 0.007316, 0.914163,
		-0.813855, 0.452579, -0.364433,
		-0.416397, -0.891694, -0.177468,
		39.332691, 36.552933, 42.898270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.786888, 37.314644, 43.098717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.876160, 36.926144, 43.131855>,  <38.929722, 36.693043, 43.151737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.876160, 36.926144, 43.131855>,  <38.786888, 37.314644, 43.098717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876160, 36.926144, 43.131855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440258, -0.024611, 0.897534,
		-0.869692, -0.236781, -0.433094,
		0.223177, -0.971252, 0.082841,
		38.943111, 36.634769, 43.156708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191643, 36.937607, 43.341713>,  <38.786888, 37.314644, 43.098717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191643, 36.937607, 43.341713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.492210, 36.692135, 43.438683>,  <38.672550, 36.544849, 43.496864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.492210, 36.692135, 43.438683>,  <38.191643, 36.937607, 43.341713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492210, 36.692135, 43.438683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267892, 0.052013, 0.962044,
		-0.603000, -0.787837, -0.125318,
		0.751415, -0.613684, 0.242419,
		38.717636, 36.508030, 43.511410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979492, 36.361629, 43.647579>,  <38.191643, 36.937607, 43.341713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979492, 36.361629, 43.647579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.350258, 36.394196, 43.794109>,  <38.572720, 36.413734, 43.882027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.350258, 36.394196, 43.794109>,  <37.979492, 36.361629, 43.647579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350258, 36.394196, 43.794109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370275, 0.039719, 0.928072,
		0.061020, -0.995888, 0.066967,
		0.926915, 0.081427, 0.366329,
		38.628334, 36.418617, 43.904007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942680, 36.015614, 44.195202>,  <37.979492, 36.361629, 43.647579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942680, 36.015614, 44.195202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299217, 36.180683, 44.270264>,  <38.513138, 36.279724, 44.315300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299217, 36.180683, 44.270264>,  <37.942680, 36.015614, 44.195202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299217, 36.180683, 44.270264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144067, -0.134619, 0.980368,
		0.429833, -0.900877, -0.060539,
		0.891341, 0.412673, 0.187650,
		38.566620, 36.304485, 44.326557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131832, 35.689949, 44.850586>,  <37.942680, 36.015614, 44.195202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131832, 35.689949, 44.850586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379200, 36.002361, 44.815838>,  <38.527618, 36.189808, 44.794991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379200, 36.002361, 44.815838>,  <38.131832, 35.689949, 44.850586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379200, 36.002361, 44.815838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323224, 0.353558, 0.877795,
		0.716302, -0.514764, 0.471094,
		0.618416, 0.781035, -0.086870,
		38.564724, 36.236671, 44.789776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547066, 35.647972, 45.375366>,  <38.131832, 35.689949, 44.850586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547066, 35.647972, 45.375366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568439, 36.037884, 45.288689>,  <38.581264, 36.271832, 45.236683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568439, 36.037884, 45.288689>,  <38.547066, 35.647972, 45.375366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568439, 36.037884, 45.288689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109472, 0.221416, 0.969016,
		0.992553, -0.028058, 0.118542,
		0.053436, 0.974776, -0.216695,
		38.584469, 36.330315, 45.223679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026680, 35.916874, 45.803581>,  <38.547066, 35.647972, 45.375366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026680, 35.916874, 45.803581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.799122, 36.222279, 45.681335>,  <38.662586, 36.405521, 45.607986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.799122, 36.222279, 45.681335>,  <39.026680, 35.916874, 45.803581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799122, 36.222279, 45.681335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125049, 0.286984, 0.949739,
		0.812845, 0.578522, -0.067788,
		-0.568899, 0.763513, -0.305617,
		38.628452, 36.451332, 45.589649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136719, 36.413925, 46.215252>,  <39.026680, 35.916874, 45.803581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136719, 36.413925, 46.215252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.785110, 36.541279, 46.073288>,  <38.574146, 36.617691, 45.988110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.785110, 36.541279, 46.073288>,  <39.136719, 36.413925, 46.215252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785110, 36.541279, 46.073288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244938, 0.337090, 0.909052,
		0.409066, 0.886002, -0.218323,
		-0.879017, 0.318386, -0.354908,
		38.521404, 36.636795, 45.966816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153416, 37.029900, 46.473957>,  <39.136719, 36.413925, 46.215252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153416, 37.029900, 46.473957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.769936, 36.967018, 46.379154>,  <38.539848, 36.929291, 46.322273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.769936, 36.967018, 46.379154>,  <39.153416, 37.029900, 46.473957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769936, 36.967018, 46.379154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276289, 0.317144, 0.907240,
		-0.067452, 0.935258, -0.347480,
		-0.958705, -0.157200, -0.237010,
		38.482323, 36.919857, 46.308052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778149, 37.619926, 46.694489>,  <39.153416, 37.029900, 46.473957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778149, 37.619926, 46.694489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.498344, 37.338486, 46.644485>,  <38.330463, 37.169621, 46.614483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.498344, 37.338486, 46.644485>,  <38.778149, 37.619926, 46.694489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498344, 37.338486, 46.644485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467682, 0.318473, 0.824529,
		-0.540331, 0.635231, -0.551838,
		-0.699512, -0.703603, -0.125006,
		38.288490, 37.127403, 46.606983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149586, 37.939743, 46.946419>,  <38.778149, 37.619926, 46.694489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149586, 37.939743, 46.946419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.111240, 37.542713, 46.976357>,  <38.088234, 37.304493, 46.994320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.111240, 37.542713, 46.976357>,  <38.149586, 37.939743, 46.946419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111240, 37.542713, 46.976357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453093, 0.110458, 0.884594,
		-0.886294, 0.050887, -0.460319,
		-0.095860, -0.992577, 0.074841,
		38.082481, 37.244942, 46.998810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665955, 37.822414, 47.375931>,  <38.149586, 37.939743, 46.946419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665955, 37.822414, 47.375931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.790768, 37.443199, 47.400753>,  <37.865654, 37.215668, 47.415646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.790768, 37.443199, 47.400753>,  <37.665955, 37.822414, 47.375931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790768, 37.443199, 47.400753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406044, -0.074018, 0.910851,
		-0.858932, -0.309413, -0.408043,
		0.312032, -0.948043, 0.062059,
		37.884377, 37.158787, 47.419373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159679, 37.495255, 47.755165>,  <37.665955, 37.822414, 47.375931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159679, 37.495255, 47.755165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.444763, 37.216732, 47.789116>,  <37.615814, 37.049618, 47.809486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.444763, 37.216732, 47.789116>,  <37.159679, 37.495255, 47.755165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444763, 37.216732, 47.789116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366653, -0.266634, 0.891332,
		-0.598010, -0.666379, -0.445335,
		0.712707, -0.696308, 0.084880,
		37.658577, 37.007839, 47.814579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884830, 36.738480, 48.009583>,  <37.159679, 37.495255, 47.755165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884830, 36.738480, 48.009583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.269783, 36.776115, 48.111546>,  <37.500755, 36.798698, 48.172722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.269783, 36.776115, 48.111546>,  <36.884830, 36.738480, 48.009583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269783, 36.776115, 48.111546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195880, -0.409915, 0.890843,
		0.188311, -0.907258, -0.376062,
		0.962377, 0.094093, 0.254905,
		37.558495, 36.804344, 48.188019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951118, 36.165207, 48.308456>,  <36.884830, 36.738480, 48.009583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951118, 36.165207, 48.308456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.247566, 36.415939, 48.404648>,  <37.425434, 36.566380, 48.462364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.247566, 36.415939, 48.404648>,  <36.951118, 36.165207, 48.308456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247566, 36.415939, 48.404648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083124, -0.269766, 0.959331,
		0.666211, -0.730966, -0.147824,
		0.741117, 0.626829, 0.240482,
		37.469902, 36.603989, 48.476791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960693, 35.944275, 48.988022>,  <36.951118, 36.165207, 48.308456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960693, 35.944275, 48.988022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.222237, 36.246845, 48.981220>,  <37.379162, 36.428387, 48.977139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.222237, 36.246845, 48.981220>,  <36.960693, 35.944275, 48.988022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222237, 36.246845, 48.981220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094433, -0.059292, 0.993764,
		0.750703, -0.651383, -0.110201,
		0.653855, 0.756429, -0.017001,
		37.418392, 36.473774, 48.976120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614727, 35.695778, 49.341564>,  <36.960693, 35.944275, 48.988022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614727, 35.695778, 49.341564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.554573, 36.091225, 49.339840>,  <37.518482, 36.328495, 49.338806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.554573, 36.091225, 49.339840>,  <37.614727, 35.695778, 49.341564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554573, 36.091225, 49.339840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150652, -0.018610, 0.988412,
		0.977082, 0.149287, 0.151736,
		-0.150381, 0.988619, -0.004307,
		37.509460, 36.387810, 49.338547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110283, 35.904705, 49.869137>,  <37.614727, 35.695778, 49.341564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110283, 35.904705, 49.869137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.836815, 36.195023, 49.838634>,  <37.672733, 36.369213, 49.820332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.836815, 36.195023, 49.838634>,  <38.110283, 35.904705, 49.869137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836815, 36.195023, 49.838634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200382, -0.086213, 0.975917,
		0.701744, 0.682484, 0.204378,
		-0.683668, 0.725798, -0.076258,
		37.631714, 36.412762, 49.815758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246086, 36.313637, 50.459721>,  <38.110283, 35.904705, 49.869137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246086, 36.313637, 50.459721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872646, 36.407558, 50.351456>,  <37.648582, 36.463909, 50.286495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872646, 36.407558, 50.351456>,  <38.246086, 36.313637, 50.459721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872646, 36.407558, 50.351456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315636, -0.181357, 0.931388,
		0.169604, 0.954975, 0.243426,
		-0.933600, 0.234801, -0.270666,
		37.592567, 36.478001, 50.270256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075588, 36.819260, 50.876362>,  <38.246086, 36.313637, 50.459721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075588, 36.819260, 50.876362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727623, 36.683628, 50.733101>,  <37.518845, 36.602249, 50.647144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727623, 36.683628, 50.733101>,  <38.075588, 36.819260, 50.876362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727623, 36.683628, 50.733101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311899, -0.184313, 0.932066,
		-0.382060, 0.922524, 0.054577,
		-0.869913, -0.339083, -0.358153,
		37.466648, 36.581902, 50.625656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582520, 37.164490, 51.337566>,  <38.075588, 36.819260, 50.876362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582520, 37.164490, 51.337566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.388973, 36.868561, 51.150578>,  <37.272846, 36.691002, 51.038383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.388973, 36.868561, 51.150578>,  <37.582520, 37.164490, 51.337566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388973, 36.868561, 51.150578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480581, -0.221790, 0.848440,
		-0.731378, 0.635191, -0.248229,
		-0.483867, -0.739825, -0.467473,
		37.243813, 36.646614, 51.010334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887028, 37.313717, 51.442165>,  <37.582520, 37.164490, 51.337566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887028, 37.313717, 51.442165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.932678, 36.919861, 51.389305>,  <36.960068, 36.683548, 51.357590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.932678, 36.919861, 51.389305>,  <36.887028, 37.313717, 51.442165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932678, 36.919861, 51.389305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233872, -0.155908, 0.959686,
		-0.965546, -0.078622, -0.248073,
		0.114129, -0.984638, -0.132149,
		36.966919, 36.624470, 51.349659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291759, 37.501183, 50.956787>,  <36.887028, 37.313717, 51.442165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291759, 37.501183, 50.956787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.278938, 37.787849, 51.235458>,  <36.271248, 37.959850, 51.402660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.278938, 37.787849, 51.235458>,  <36.291759, 37.501183, 50.956787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278938, 37.787849, 51.235458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987606, 0.084444, -0.132303,
		-0.153648, -0.692280, 0.705082,
		-0.032051, 0.716671, 0.696674,
		36.269321, 38.002850, 51.444462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879696, 37.119823, 51.590733>,  <36.291759, 37.501183, 50.956787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879696, 37.119823, 51.590733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873901, 37.503853, 51.478985>,  <35.870426, 37.734272, 51.411938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873901, 37.503853, 51.478985>,  <35.879696, 37.119823, 51.590733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873901, 37.503853, 51.478985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987047, -0.058375, -0.149435,
		-0.159777, 0.273587, 0.948484,
		-0.014485, 0.960074, -0.279370,
		35.869556, 37.791874, 51.395172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098091, 37.098228, 51.437653>,  <35.879696, 37.119823, 51.590733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098091, 37.098228, 51.437653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.755013, 37.302933, 51.457481>,  <34.549164, 37.425755, 51.469379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.755013, 37.302933, 51.457481>,  <35.098091, 37.098228, 51.437653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755013, 37.302933, 51.457481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017014, 0.124615, -0.992059,
		-0.513873, -0.850044, -0.115589,
		-0.857698, 0.511759, 0.049574,
		34.497704, 37.456459, 51.472355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633976, 36.740257, 51.035931>,  <35.098091, 37.098228, 51.437653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633976, 36.740257, 51.035931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481415, 37.109909, 51.045067>,  <34.389877, 37.331699, 51.050549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481415, 37.109909, 51.045067>,  <34.633976, 36.740257, 51.035931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481415, 37.109909, 51.045067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026467, 0.013786, -0.999555,
		-0.924031, -0.381836, 0.019201,
		-0.381401, 0.924127, 0.022845,
		34.366993, 37.387146, 51.051922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089005, 36.637539, 50.572048>,  <34.633976, 36.740257, 51.035931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089005, 36.637539, 50.572048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134712, 37.032749, 50.613510>,  <34.162136, 37.269875, 50.638390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134712, 37.032749, 50.613510>,  <34.089005, 36.637539, 50.572048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134712, 37.032749, 50.613510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014717, 0.106012, -0.994256,
		-0.993341, 0.112089, 0.026655,
		0.114271, 0.988027, 0.103657,
		34.168995, 37.329159, 50.644608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645741, 36.861206, 50.082157>,  <34.089005, 36.637539, 50.572048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645741, 36.861206, 50.082157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894672, 37.166237, 50.152782>,  <34.044033, 37.349255, 50.195160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894672, 37.166237, 50.152782>,  <33.645741, 36.861206, 50.082157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894672, 37.166237, 50.152782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219494, 0.046509, -0.974505,
		-0.751351, 0.645219, -0.138438,
		0.622330, 0.762581, 0.176566,
		34.081371, 37.395012, 50.205753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460487, 37.498436, 49.588627>,  <33.645741, 36.861206, 50.082157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460487, 37.498436, 49.588627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841751, 37.548317, 49.698856>,  <34.070507, 37.578247, 49.764996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841751, 37.548317, 49.698856>,  <33.460487, 37.498436, 49.588627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841751, 37.548317, 49.698856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255135, 0.157939, -0.953919,
		-0.162483, 0.979543, 0.118724,
		0.953156, 0.124705, 0.275578,
		34.127697, 37.585728, 49.781528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625027, 38.018723, 49.143467>,  <33.460487, 37.498436, 49.588627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625027, 38.018723, 49.143467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967255, 37.857460, 49.273365>,  <34.172592, 37.760704, 49.351303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967255, 37.857460, 49.273365>,  <33.625027, 38.018723, 49.143467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967255, 37.857460, 49.273365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444551, 0.250733, -0.859946,
		0.265269, 0.880112, 0.393745,
		0.855574, -0.403157, 0.324743,
		34.223927, 37.736511, 49.370789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097160, 38.364189, 48.663269>,  <33.625027, 38.018723, 49.143467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097160, 38.364189, 48.663269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.287903, 38.054302, 48.829361>,  <34.402348, 37.868370, 48.929016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.287903, 38.054302, 48.829361>,  <34.097160, 38.364189, 48.663269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287903, 38.054302, 48.829361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587873, -0.070105, -0.805910,
		0.653466, 0.628404, 0.422008,
		0.476852, -0.774722, 0.415233,
		34.430958, 37.821884, 48.953930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780975, 38.494865, 48.641376>,  <34.097160, 38.364189, 48.663269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780975, 38.494865, 48.641376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761402, 38.096478, 48.671467>,  <34.749660, 37.857445, 48.689522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761402, 38.096478, 48.671467>,  <34.780975, 38.494865, 48.641376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761402, 38.096478, 48.671467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642963, -0.089047, -0.760703,
		0.764332, 0.011148, 0.644726,
		-0.048930, -0.995965, 0.075229,
		34.746723, 37.797688, 48.694035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443344, 38.214569, 48.629173>,  <34.780975, 38.494865, 48.641376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443344, 38.214569, 48.629173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.215569, 37.920757, 48.481556>,  <35.078903, 37.744469, 48.392986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.215569, 37.920757, 48.481556>,  <35.443344, 38.214569, 48.629173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215569, 37.920757, 48.481556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603878, -0.069193, -0.794068,
		0.557734, -0.675035, 0.482970,
		-0.569442, -0.734534, -0.369047,
		35.044735, 37.700397, 48.370842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901024, 37.682533, 48.518391>,  <35.443344, 38.214569, 48.629173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901024, 37.682533, 48.518391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.577663, 37.606560, 48.295532>,  <35.383648, 37.560974, 48.161816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.577663, 37.606560, 48.295532>,  <35.901024, 37.682533, 48.518391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577663, 37.606560, 48.295532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582372, -0.120367, -0.803962,
		0.085639, -0.974390, 0.207918,
		-0.808399, -0.189936, -0.557149,
		35.335144, 37.549580, 48.128387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123264, 37.283012, 48.018681>,  <35.901024, 37.682533, 48.518391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123264, 37.283012, 48.018681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.777454, 37.389210, 47.847984>,  <35.569969, 37.452927, 47.745567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.777454, 37.389210, 47.847984>,  <36.123264, 37.283012, 48.018681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777454, 37.389210, 47.847984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441794, -0.003360, -0.897110,
		-0.239611, -0.964107, -0.114388,
		-0.864526, 0.265493, -0.426742,
		35.518097, 37.468857, 47.719963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116989, 36.793873, 47.489464>,  <36.123264, 37.283012, 48.018681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116989, 36.793873, 47.489464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.863659, 37.085030, 47.384331>,  <35.711662, 37.259724, 47.321251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.863659, 37.085030, 47.384331>,  <36.116989, 36.793873, 47.489464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863659, 37.085030, 47.384331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336751, -0.046581, -0.940441,
		-0.696780, -0.684111, -0.215617,
		-0.633322, 0.727889, -0.262832,
		35.673664, 37.303398, 47.305481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730141, 36.634598, 46.773109>,  <36.116989, 36.793873, 47.489464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730141, 36.634598, 46.773109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664177, 37.027897, 46.804169>,  <35.624599, 37.263878, 46.822803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664177, 37.027897, 46.804169>,  <35.730141, 36.634598, 46.773109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664177, 37.027897, 46.804169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056217, 0.087968, -0.994536,
		-0.984705, -0.159645, -0.069782,
		-0.164912, 0.983247, 0.077648,
		35.614704, 37.322872, 46.827461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227898, 36.928654, 46.254860>,  <35.730141, 36.634598, 46.773109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227898, 36.928654, 46.254860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.499443, 37.206326, 46.350567>,  <35.662373, 37.372929, 46.407990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.499443, 37.206326, 46.350567>,  <35.227898, 36.928654, 46.254860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499443, 37.206326, 46.350567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233488, 0.104857, -0.966689,
		-0.696148, 0.712121, -0.090899,
		0.678868, 0.694182, 0.239268,
		35.703102, 37.414581, 46.422348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205292, 37.338421, 45.628757>,  <35.227898, 36.928654, 46.254860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205292, 37.338421, 45.628757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534431, 37.452682, 45.825256>,  <35.731915, 37.521240, 45.943153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534431, 37.452682, 45.825256>,  <35.205292, 37.338421, 45.628757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534431, 37.452682, 45.825256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431716, 0.247884, -0.867280,
		-0.369512, 0.925719, 0.080650,
		0.822850, 0.285653, 0.491244,
		35.781288, 37.538380, 45.972630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471279, 37.759384, 45.134693>,  <35.205292, 37.338421, 45.628757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471279, 37.759384, 45.134693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.774239, 37.700409, 45.389130>,  <35.956013, 37.665024, 45.541794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.774239, 37.700409, 45.389130>,  <35.471279, 37.759384, 45.134693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774239, 37.700409, 45.389130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652654, 0.200597, -0.730618,
		-0.019879, 0.968516, 0.248157,
		0.757395, -0.147437, 0.636094,
		36.001457, 37.656178, 45.579956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942280, 38.345612, 45.249813>,  <35.471279, 37.759384, 45.134693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942280, 38.345612, 45.249813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163719, 38.014011, 45.281548>,  <36.296581, 37.815052, 45.300587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163719, 38.014011, 45.281548>,  <35.942280, 38.345612, 45.249813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163719, 38.014011, 45.281548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435744, 0.207162, -0.875906,
		0.709690, 0.519466, 0.475915,
		0.553595, -0.828999, 0.079334,
		36.329796, 37.765312, 45.305347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694088, 38.496647, 45.324013>,  <35.942280, 38.345612, 45.249813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694088, 38.496647, 45.324013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607449, 38.149914, 45.144379>,  <36.555466, 37.941872, 45.036598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607449, 38.149914, 45.144379>,  <36.694088, 38.496647, 45.324013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607449, 38.149914, 45.144379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437758, 0.324933, -0.838324,
		0.872612, -0.378175, 0.309083,
		-0.216602, -0.866835, -0.449090,
		36.542469, 37.889862, 45.009651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191090, 38.370033, 44.933674>,  <36.694088, 38.496647, 45.324013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191090, 38.370033, 44.933674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947315, 38.105522, 44.758724>,  <36.801048, 37.946815, 44.653755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947315, 38.105522, 44.758724>,  <37.191090, 38.370033, 44.933674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947315, 38.105522, 44.758724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398537, 0.221384, -0.890032,
		0.685384, -0.716733, 0.128622,
		-0.609440, -0.661274, -0.437377,
		36.764484, 37.907139, 44.627510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669628, 37.986618, 44.527512>,  <37.191090, 38.370033, 44.933674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669628, 37.986618, 44.527512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.302181, 37.919693, 44.384323>,  <37.081711, 37.879536, 44.298409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.302181, 37.919693, 44.384323>,  <37.669628, 37.986618, 44.527512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302181, 37.919693, 44.384323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335499, 0.148346, -0.930287,
		0.208757, -0.974679, -0.080139,
		-0.918619, -0.167318, -0.357972,
		37.026596, 37.869499, 44.276932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.841522, 30.786587, 43.506962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.518127, 30.552635, 43.480831>,  <42.324093, 30.412264, 43.465153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.518127, 30.552635, 43.480831>,  <42.841522, 30.786587, 43.506962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518127, 30.552635, 43.480831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036115, 0.160100, -0.986440,
		0.587407, -0.795162, -0.150561,
		-0.808485, -0.584880, -0.065326,
		42.275581, 30.377171, 43.461235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940697, 30.341990, 42.919155>,  <42.841522, 30.786587, 43.506962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940697, 30.341990, 42.919155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.548553, 30.333746, 42.997616>,  <42.313267, 30.328800, 43.044693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.548553, 30.333746, 42.997616>,  <42.940697, 30.341990, 42.919155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548553, 30.333746, 42.997616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195854, 0.219154, -0.955831,
		-0.023290, -0.975472, -0.218886,
		-0.980356, -0.020608, 0.196154,
		42.254448, 30.327562, 43.056461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552853, 29.861898, 42.517071>,  <42.940697, 30.341990, 42.919155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552853, 29.861898, 42.517071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275738, 30.131987, 42.618359>,  <42.109467, 30.294039, 42.679131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275738, 30.131987, 42.618359>,  <42.552853, 29.861898, 42.517071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275738, 30.131987, 42.618359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183891, 0.174121, -0.967402,
		-0.697299, -0.716772, 0.003537,
		-0.692791, 0.675218, 0.253222,
		42.067902, 30.334553, 42.694324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019009, 29.832399, 41.870140>,  <42.552853, 29.861898, 42.517071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019009, 29.832399, 41.870140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.904243, 30.168350, 42.054440>,  <41.835384, 30.369921, 42.165020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.904243, 30.168350, 42.054440>,  <42.019009, 29.832399, 41.870140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904243, 30.168350, 42.054440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045424, 0.468502, -0.882294,
		-0.956881, -0.274067, -0.096267,
		-0.286908, 0.839877, 0.460750,
		41.818172, 30.420313, 42.192665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356266, 29.996454, 41.636463>,  <42.019009, 29.832399, 41.870140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356266, 29.996454, 41.636463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.498814, 30.346895, 41.766354>,  <41.584343, 30.557159, 41.844288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.498814, 30.346895, 41.766354>,  <41.356266, 29.996454, 41.636463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498814, 30.346895, 41.766354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151221, 0.397045, -0.905255,
		-0.922025, 0.273503, 0.273981,
		0.356372, 0.876100, 0.324726,
		41.605724, 30.609726, 41.863773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003784, 30.559340, 41.334297>,  <41.356266, 29.996454, 41.636463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003784, 30.559340, 41.334297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.339539, 30.748308, 41.441811>,  <41.540993, 30.861689, 41.506317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.339539, 30.748308, 41.441811>,  <41.003784, 30.559340, 41.334297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339539, 30.748308, 41.441811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059947, 0.571957, -0.818091,
		-0.540214, 0.670584, 0.508415,
		0.839390, 0.472422, 0.268780,
		41.591354, 30.890036, 41.522446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890388, 31.330391, 41.163109>,  <41.003784, 30.559340, 41.334297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890388, 31.330391, 41.163109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.285255, 31.278795, 41.200752>,  <41.522175, 31.247839, 41.223339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.285255, 31.278795, 41.200752>,  <40.890388, 31.330391, 41.163109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285255, 31.278795, 41.200752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156040, 0.654419, -0.739857,
		0.033846, 0.745049, 0.666150,
		0.987171, -0.128988, 0.094108,
		41.581406, 31.240099, 41.228985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197876, 31.989752, 41.045658>,  <40.890388, 31.330391, 41.163109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197876, 31.989752, 41.045658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.481644, 31.718344, 40.969410>,  <41.651905, 31.555498, 40.923660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.481644, 31.718344, 40.969410>,  <41.197876, 31.989752, 41.045658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481644, 31.718344, 40.969410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260799, 0.503995, -0.823391,
		0.654758, 0.534416, 0.534501,
		0.709419, -0.678520, -0.190619,
		41.694469, 31.514788, 40.912224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732265, 32.437088, 40.795368>,  <41.197876, 31.989752, 41.045658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732265, 32.437088, 40.795368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.845406, 32.070850, 40.681042>,  <41.913292, 31.851109, 40.612446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.845406, 32.070850, 40.681042>,  <41.732265, 32.437088, 40.795368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845406, 32.070850, 40.681042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354880, 0.376736, -0.855646,
		0.891098, 0.140591, 0.431485,
		0.282852, -0.915589, -0.285816,
		41.930260, 31.796173, 40.595299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396229, 32.529823, 40.577370>,  <41.732265, 32.437088, 40.795368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396229, 32.529823, 40.577370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.273865, 32.194893, 40.396130>,  <42.200447, 31.993935, 40.287384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.273865, 32.194893, 40.396130>,  <42.396229, 32.529823, 40.577370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273865, 32.194893, 40.396130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347816, 0.344733, -0.871885,
		0.886254, -0.424311, 0.185781,
		-0.305905, -0.837329, -0.453103,
		42.182095, 31.943695, 40.260201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998322, 32.309578, 40.147713>,  <42.396229, 32.529823, 40.577370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998322, 32.309578, 40.147713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.680618, 32.113483, 40.004143>,  <42.489998, 31.995827, 39.918003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.680618, 32.113483, 40.004143>,  <42.998322, 32.309578, 40.147713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680618, 32.113483, 40.004143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258856, 0.261409, -0.929870,
		0.549683, -0.831464, -0.080725,
		-0.794256, -0.490238, -0.358921,
		42.442341, 31.966412, 39.896465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243977, 31.978693, 39.489658>,  <42.998322, 32.309578, 40.147713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243977, 31.978693, 39.489658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852821, 31.922068, 39.428097>,  <42.618126, 31.888092, 39.391159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852821, 31.922068, 39.428097>,  <43.243977, 31.978693, 39.489658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852821, 31.922068, 39.428097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124934, 0.194669, -0.972880,
		0.167675, -0.970601, -0.172681,
		-0.977894, -0.141554, -0.153902,
		42.559452, 31.879599, 39.381924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215736, 31.708433, 38.823101>,  <43.243977, 31.978693, 39.489658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215736, 31.708433, 38.823101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.856205, 31.857342, 38.915642>,  <42.640488, 31.946688, 38.971165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.856205, 31.857342, 38.915642>,  <43.215736, 31.708433, 38.823101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856205, 31.857342, 38.915642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003057, 0.522492, -0.852639,
		-0.438292, -0.767083, -0.468492,
		-0.898827, 0.372273, 0.231349,
		42.586555, 31.969023, 38.985046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640781, 31.475201, 38.338348>,  <43.215736, 31.708433, 38.823101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640781, 31.475201, 38.338348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516113, 31.816572, 38.505451>,  <42.441311, 32.021397, 38.605713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516113, 31.816572, 38.505451>,  <42.640781, 31.475201, 38.338348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516113, 31.816572, 38.505451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029134, 0.430862, -0.901948,
		-0.949743, -0.293283, -0.109423,
		-0.311672, 0.853431, 0.417752,
		42.422611, 32.072601, 38.630775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962864, 31.554537, 38.093719>,  <42.640781, 31.475201, 38.338348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962864, 31.554537, 38.093719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.130482, 31.907782, 38.178108>,  <42.231052, 32.119728, 38.228741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.130482, 31.907782, 38.178108>,  <41.962864, 31.554537, 38.093719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130482, 31.907782, 38.178108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243785, 0.333257, -0.910774,
		-0.874624, 0.330226, 0.354941,
		0.419048, 0.883114, 0.210971,
		42.256195, 32.172714, 38.241398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655994, 31.999737, 37.605743>,  <41.962864, 31.554537, 38.093719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655994, 31.999737, 37.605743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.920219, 32.267990, 37.740742>,  <42.078754, 32.428944, 37.821739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.920219, 32.267990, 37.740742>,  <41.655994, 31.999737, 37.605743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920219, 32.267990, 37.740742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051778, 0.489154, -0.870659,
		-0.748980, 0.557654, 0.357843,
		0.660567, 0.670634, 0.337492,
		42.118389, 32.469181, 37.841988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301510, 32.632526, 37.496258>,  <41.655994, 31.999737, 37.605743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301510, 32.632526, 37.496258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696194, 32.696644, 37.506878>,  <41.933006, 32.735115, 37.513252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696194, 32.696644, 37.506878>,  <41.301510, 32.632526, 37.496258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696194, 32.696644, 37.506878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041077, 0.404219, -0.913739,
		-0.157201, 0.900507, 0.405432,
		0.986712, 0.160295, 0.026554,
		41.992207, 32.744732, 37.514843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382996, 33.329147, 37.279602>,  <41.301510, 32.632526, 37.496258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382996, 33.329147, 37.279602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.750862, 33.177361, 37.239178>,  <41.971584, 33.086288, 37.214924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.750862, 33.177361, 37.239178>,  <41.382996, 33.329147, 37.279602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750862, 33.177361, 37.239178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143009, 0.563307, -0.813778,
		0.365731, 0.733953, 0.572323,
		0.919668, -0.379471, -0.101057,
		42.026764, 33.063519, 37.208862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791630, 33.826481, 37.261242>,  <41.382996, 33.329147, 37.279602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791630, 33.826481, 37.261242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990875, 33.534946, 37.073338>,  <42.110420, 33.360023, 36.960594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990875, 33.534946, 37.073338>,  <41.791630, 33.826481, 37.261242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990875, 33.534946, 37.073338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006715, 0.538498, -0.842600,
		0.867088, 0.422862, 0.263337,
		0.498110, -0.728840, -0.469764,
		42.140308, 33.316296, 36.932407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297718, 34.259796, 36.817364>,  <41.791630, 33.826481, 37.261242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297718, 34.259796, 36.817364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259518, 33.888546, 36.673443>,  <42.236599, 33.665794, 36.587090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259518, 33.888546, 36.673443>,  <42.297718, 34.259796, 36.817364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259518, 33.888546, 36.673443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037873, 0.357808, -0.933027,
		0.994709, -0.102728, 0.000981,
		-0.095497, -0.928127, -0.359805,
		42.230869, 33.610107, 36.565502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677746, 34.326431, 36.261856>,  <42.297718, 34.259796, 36.817364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677746, 34.326431, 36.261856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.457138, 34.001911, 36.184273>,  <42.324772, 33.807201, 36.137722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.457138, 34.001911, 36.184273>,  <42.677746, 34.326431, 36.261856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457138, 34.001911, 36.184273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138387, 0.318288, -0.937839,
		0.822601, -0.490398, -0.287816,
		-0.551522, -0.811297, -0.193959,
		42.291679, 33.758522, 36.126083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954792, 34.026890, 35.683395>,  <42.677746, 34.326431, 36.261856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954792, 34.026890, 35.683395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.577202, 33.896038, 35.666000>,  <42.350647, 33.817528, 35.655563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.577202, 33.896038, 35.666000>,  <42.954792, 34.026890, 35.683395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577202, 33.896038, 35.666000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006106, 0.114456, -0.993410,
		0.329949, -0.938023, -0.106046,
		-0.943979, -0.327127, -0.043492,
		42.294006, 33.797901, 35.652954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673004, 34.013237, 35.284786>,  <42.954792, 34.026890, 35.683395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673004, 34.013237, 35.284786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.041256, 34.168186, 35.265232>,  <44.262207, 34.261154, 35.253498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.041256, 34.168186, 35.265232>,  <43.673004, 34.013237, 35.284786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.041256, 34.168186, 35.265232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046749, 0.014953, 0.998795,
		0.387635, -0.921803, -0.004343,
		0.920627, 0.387371, -0.048890,
		44.317444, 34.284397, 35.250565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186745, 33.561222, 35.682938>,  <43.673004, 34.013237, 35.284786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186745, 33.561222, 35.682938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.327850, 33.935501, 35.680946>,  <44.412514, 34.160069, 35.679752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.327850, 33.935501, 35.680946>,  <44.186745, 33.561222, 35.682938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327850, 33.935501, 35.680946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004959, 0.007189, 0.999962,
		0.935699, -0.352726, 0.007176,
		0.352764, 0.935699, -0.004977,
		44.433681, 34.216209, 35.679455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732494, 33.550556, 36.211330>,  <44.186745, 33.561222, 35.682938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732494, 33.550556, 36.211330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.626347, 33.929127, 36.137726>,  <44.562656, 34.156269, 36.093563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.626347, 33.929127, 36.137726>,  <44.732494, 33.550556, 36.211330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626347, 33.929127, 36.137726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088097, 0.166251, 0.982140,
		0.960114, 0.276839, 0.039260,
		-0.265368, 0.946425, -0.184008,
		44.546738, 34.213055, 36.082523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208458, 33.957619, 36.332542>,  <44.732494, 33.550556, 36.211330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208458, 33.957619, 36.332542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.879021, 34.176456, 36.392387>,  <44.681358, 34.307758, 36.428295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.879021, 34.176456, 36.392387>,  <45.208458, 33.957619, 36.332542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.879021, 34.176456, 36.392387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226033, 0.074663, 0.971254,
		0.520201, 0.833732, -0.185154,
		-0.823590, 0.547098, 0.149611,
		44.631943, 34.340588, 36.437271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423031, 34.430061, 36.921722>,  <45.208458, 33.957619, 36.332542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423031, 34.430061, 36.921722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.031368, 34.481441, 36.858784>,  <44.796371, 34.512272, 36.821022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.031368, 34.481441, 36.858784>,  <45.423031, 34.430061, 36.921722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031368, 34.481441, 36.858784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127662, 0.213321, 0.968605,
		0.157985, 0.968501, -0.192475,
		-0.979154, 0.128454, -0.157343,
		44.737621, 34.519978, 36.811581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.210022, 35.158955, 37.206818>,  <45.423031, 34.430061, 36.921722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.210022, 35.158955, 37.206818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.914028, 34.890179, 37.194695>,  <44.736431, 34.728912, 37.187420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.914028, 34.890179, 37.194695>,  <45.210022, 35.158955, 37.206818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.914028, 34.890179, 37.194695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169216, 0.142368, 0.975242,
		-0.650989, 0.726794, -0.219053,
		-0.739986, -0.671939, -0.030305,
		44.692032, 34.688599, 37.185604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738918, 35.355553, 37.738937>,  <45.210022, 35.158955, 37.206818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738918, 35.355553, 37.738937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.655132, 34.968575, 37.682125>,  <44.604862, 34.736389, 37.648037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.655132, 34.968575, 37.682125>,  <44.738918, 35.355553, 37.738937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655132, 34.968575, 37.682125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103310, -0.122546, 0.987071,
		-0.972344, 0.221426, -0.074279,
		-0.209461, -0.967447, -0.142033,
		44.592293, 34.678341, 37.639515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198517, 35.284340, 38.157379>,  <44.738918, 35.355553, 37.738937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198517, 35.284340, 38.157379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.306133, 34.904655, 38.092133>,  <44.370705, 34.676846, 38.052986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.306133, 34.904655, 38.092133>,  <44.198517, 35.284340, 38.157379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306133, 34.904655, 38.092133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149931, -0.208569, 0.966447,
		-0.951387, -0.235561, -0.198431,
		0.269044, -0.949216, -0.163112,
		44.386845, 34.619892, 38.043198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637325, 34.865448, 38.504436>,  <44.198517, 35.284340, 38.157379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637325, 34.865448, 38.504436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.955276, 34.628807, 38.450508>,  <44.146046, 34.486820, 38.418152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.955276, 34.628807, 38.450508>,  <43.637325, 34.865448, 38.504436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955276, 34.628807, 38.450508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196670, -0.461392, 0.865123,
		-0.574017, -0.661149, -0.483100,
		0.794874, -0.591607, -0.134819,
		44.193741, 34.451324, 38.410061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453209, 34.257359, 38.801178>,  <43.637325, 34.865448, 38.504436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453209, 34.257359, 38.801178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.845142, 34.186825, 38.763584>,  <44.080303, 34.144505, 38.741028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.845142, 34.186825, 38.763584>,  <43.453209, 34.257359, 38.801178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845142, 34.186825, 38.763584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038983, -0.630018, 0.775601,
		-0.195974, -0.756297, -0.624187,
		0.979834, -0.176331, -0.093985,
		44.139091, 34.133926, 38.735390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450642, 33.593662, 38.890518>,  <43.453209, 34.257359, 38.801178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450642, 33.593662, 38.890518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.833157, 33.704906, 38.926674>,  <44.062664, 33.771652, 38.948368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.833157, 33.704906, 38.926674>,  <43.450642, 33.593662, 38.890518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833157, 33.704906, 38.926674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039219, -0.428273, 0.902798,
		0.289787, -0.859789, -0.420459,
		0.956288, 0.278110, 0.090388,
		44.120041, 33.788338, 38.953789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905109, 32.953987, 39.082535>,  <43.450642, 33.593662, 38.890518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905109, 32.953987, 39.082535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.097008, 33.287121, 39.192970>,  <44.212147, 33.487003, 39.259232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.097008, 33.287121, 39.192970>,  <43.905109, 32.953987, 39.082535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097008, 33.287121, 39.192970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119793, -0.373891, 0.919704,
		0.869191, -0.408151, -0.279141,
		0.479746, 0.832838, 0.276089,
		44.240932, 33.536972, 39.275799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540443, 32.771652, 39.441727>,  <43.905109, 32.953987, 39.082535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540443, 32.771652, 39.441727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.471588, 33.133209, 39.598366>,  <44.430275, 33.350143, 39.692348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.471588, 33.133209, 39.598366>,  <44.540443, 32.771652, 39.441727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471588, 33.133209, 39.598366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193627, -0.358733, 0.913137,
		0.965856, 0.233010, -0.113266,
		-0.172138, 0.903890, 0.391602,
		44.419949, 33.404377, 39.715847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027798, 32.884335, 39.938148>,  <44.540443, 32.771652, 39.441727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.027798, 32.884335, 39.938148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.757618, 33.162155, 40.037243>,  <44.595509, 33.328846, 40.096699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.757618, 33.162155, 40.037243>,  <45.027798, 32.884335, 39.938148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757618, 33.162155, 40.037243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033187, -0.306978, 0.951138,
		0.736659, 0.650667, 0.184298,
		-0.675449, 0.694548, 0.247732,
		44.554985, 33.370522, 40.111561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370182, 33.292507, 40.488731>,  <45.027798, 32.884335, 39.938148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370182, 33.292507, 40.488731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.978432, 33.357265, 40.537086>,  <44.743382, 33.396118, 40.566101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.978432, 33.357265, 40.537086>,  <45.370182, 33.292507, 40.488731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978432, 33.357265, 40.537086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034821, -0.454129, 0.890256,
		0.199025, 0.876104, 0.439125,
		-0.979376, 0.161893, 0.120890,
		44.684620, 33.405834, 40.573353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.337032, 33.484394, 41.196995>,  <45.370182, 33.292507, 40.488731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.337032, 33.484394, 41.196995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968941, 33.367924, 41.092384>,  <44.748085, 33.298042, 41.029617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968941, 33.367924, 41.092384>,  <45.337032, 33.484394, 41.196995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968941, 33.367924, 41.092384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007979, -0.654124, 0.756345,
		-0.391300, 0.698097, 0.599620,
		-0.920229, -0.291174, -0.261529,
		44.692871, 33.280571, 41.013927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998459, 33.283501, 41.805595>,  <45.337032, 33.484394, 41.196995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998459, 33.283501, 41.805595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.750134, 33.099403, 41.551739>,  <44.601139, 32.988945, 41.399426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.750134, 33.099403, 41.551739>,  <44.998459, 33.283501, 41.805595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750134, 33.099403, 41.551739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087722, -0.763665, 0.639625,
		-0.779038, 0.452757, 0.433717,
		-0.620809, -0.460246, -0.634641,
		44.563892, 32.961330, 41.361347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455421, 33.078125, 42.219971>,  <44.998459, 33.283501, 41.805595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455421, 33.078125, 42.219971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453167, 32.850643, 41.890965>,  <44.451817, 32.714153, 41.693562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453167, 32.850643, 41.890965>,  <44.455421, 33.078125, 42.219971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453167, 32.850643, 41.890965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077537, -0.819808, 0.567365,
		-0.996974, 0.066972, -0.039477,
		-0.005634, -0.568709, -0.822520,
		44.451477, 32.680031, 41.644207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868927, 32.755848, 42.164948>,  <44.455421, 33.078125, 42.219971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868927, 32.755848, 42.164948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.100403, 32.504890, 41.956528>,  <44.239288, 32.354317, 41.831474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.100403, 32.504890, 41.956528>,  <43.868927, 32.755848, 42.164948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100403, 32.504890, 41.956528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256910, -0.746611, 0.613652,
		-0.774021, -0.221254, -0.593243,
		0.578695, -0.627390, -0.521050,
		44.274010, 32.316673, 41.800213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424408, 32.173302, 42.090820>,  <43.868927, 32.755848, 42.164948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424408, 32.173302, 42.090820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.802914, 32.065758, 42.018936>,  <44.030018, 32.001232, 41.975807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.802914, 32.065758, 42.018936>,  <43.424408, 32.173302, 42.090820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802914, 32.065758, 42.018936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108041, -0.786596, 0.607942,
		-0.304810, -0.555859, -0.773377,
		0.946265, -0.268863, -0.179707,
		44.086792, 31.985098, 41.965023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.931839, 36.819160, 40.668987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649189, 36.550652, 40.579475>,  <40.479599, 36.389545, 40.525768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649189, 36.550652, 40.579475>,  <40.931839, 36.819160, 40.668987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649189, 36.550652, 40.579475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318379, -0.019195, -0.947769,
		0.631913, -0.740965, 0.227282,
		-0.706626, -0.671270, -0.223778,
		40.437202, 36.349270, 40.512341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282143, 36.446487, 40.091763>,  <40.931839, 36.819160, 40.668987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282143, 36.446487, 40.091763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898750, 36.335140, 40.067055>,  <40.668713, 36.268330, 40.052231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898750, 36.335140, 40.067055>,  <41.282143, 36.446487, 40.091763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898750, 36.335140, 40.067055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171031, -0.387911, -0.905689,
		0.228156, -0.878655, 0.419417,
		-0.958485, -0.278372, -0.061773,
		40.611206, 36.251629, 40.048523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166203, 35.673504, 39.926487>,  <41.282143, 36.446487, 40.091763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166203, 35.673504, 39.926487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831833, 35.857746, 39.807106>,  <40.631210, 35.968292, 39.735477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831833, 35.857746, 39.807106>,  <41.166203, 35.673504, 39.926487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831833, 35.857746, 39.807106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106077, -0.397937, -0.911260,
		-0.538494, -0.793404, 0.283786,
		-0.835926, 0.460604, -0.298448,
		40.581055, 35.995926, 39.717571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803726, 35.077278, 39.635937>,  <41.166203, 35.673504, 39.926487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803726, 35.077278, 39.635937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652199, 35.421482, 39.499687>,  <40.561283, 35.628002, 39.417938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652199, 35.421482, 39.499687>,  <40.803726, 35.077278, 39.635937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652199, 35.421482, 39.499687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026019, -0.377815, -0.925516,
		-0.925105, -0.341739, 0.165513,
		-0.378818, 0.860506, -0.340627,
		40.538555, 35.679634, 39.397499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071770, 35.044086, 39.380623>,  <40.803726, 35.077278, 39.635937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071770, 35.044086, 39.380623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192219, 35.372124, 39.185986>,  <40.264488, 35.568947, 39.069202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192219, 35.372124, 39.185986>,  <40.071770, 35.044086, 39.380623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192219, 35.372124, 39.185986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286525, -0.408884, -0.866440,
		-0.909520, 0.400328, 0.111851,
		0.301126, 0.820092, -0.486592,
		40.282558, 35.618153, 39.040009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539825, 35.098610, 38.960934>,  <40.071770, 35.044086, 39.380623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539825, 35.098610, 38.960934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842438, 35.287254, 38.779720>,  <40.024006, 35.400440, 38.670994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842438, 35.287254, 38.779720>,  <39.539825, 35.098610, 38.960934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842438, 35.287254, 38.779720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302883, -0.361282, -0.881894,
		-0.579583, 0.804399, -0.130480,
		0.756535, 0.471611, -0.453032,
		40.069397, 35.428738, 38.643810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248783, 35.356869, 38.324848>,  <39.539825, 35.098610, 38.960934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248783, 35.356869, 38.324848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646465, 35.341492, 38.284702>,  <39.885075, 35.332264, 38.260612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646465, 35.341492, 38.284702>,  <39.248783, 35.356869, 38.324848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646465, 35.341492, 38.284702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106740, -0.243864, -0.963917,
		0.012583, 0.969047, -0.246555,
		0.994207, -0.038446, -0.100367,
		39.944729, 35.329956, 38.254593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393070, 35.849701, 37.879101>,  <39.248783, 35.356869, 38.324848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393070, 35.849701, 37.879101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697330, 35.590149, 37.871391>,  <39.879887, 35.434418, 37.866768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697330, 35.590149, 37.871391>,  <39.393070, 35.849701, 37.879101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697330, 35.590149, 37.871391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068600, -0.050827, -0.996349,
		0.645530, 0.759192, -0.083175,
		0.760648, -0.648878, -0.019270,
		39.925526, 35.395485, 37.865612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805790, 36.012089, 37.248589>,  <39.393070, 35.849701, 37.879101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805790, 36.012089, 37.248589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937420, 35.648994, 37.352680>,  <40.016399, 35.431137, 37.415134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937420, 35.648994, 37.352680>,  <39.805790, 36.012089, 37.248589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937420, 35.648994, 37.352680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037167, -0.287811, -0.956966,
		0.943571, 0.305246, -0.128450,
		0.329079, -0.907739, 0.260225,
		40.036144, 35.376671, 37.430748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414833, 35.892609, 36.775646>,  <39.805790, 36.012089, 37.248589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414833, 35.892609, 36.775646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298988, 35.534447, 36.910927>,  <40.229481, 35.319550, 36.992096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298988, 35.534447, 36.910927>,  <40.414833, 35.892609, 36.775646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298988, 35.534447, 36.910927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013020, -0.349625, -0.936799,
		0.957054, -0.275715, 0.089598,
		-0.289616, -0.895401, 0.338200,
		40.212105, 35.265827, 37.012386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913853, 35.455204, 36.612411>,  <40.414833, 35.892609, 36.775646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913853, 35.455204, 36.612411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601257, 35.216183, 36.684196>,  <40.413700, 35.072769, 36.727268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601257, 35.216183, 36.684196>,  <40.913853, 35.455204, 36.612411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601257, 35.216183, 36.684196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190257, -0.502181, -0.843574,
		0.594201, -0.625100, 0.506137,
		-0.781491, -0.597549, 0.179467,
		40.366810, 35.036919, 36.738037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069340, 34.749992, 36.476475>,  <40.913853, 35.455204, 36.612411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069340, 34.749992, 36.476475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669628, 34.747295, 36.461529>,  <40.429802, 34.745678, 36.452560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669628, 34.747295, 36.461529>,  <41.069340, 34.749992, 36.476475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669628, 34.747295, 36.461529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036323, -0.456241, -0.889114,
		-0.011047, -0.889830, 0.456158,
		-0.999279, -0.006747, -0.037361,
		40.369843, 34.745270, 36.450321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873020, 34.053406, 36.315502>,  <41.069340, 34.749992, 36.476475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873020, 34.053406, 36.315502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566315, 34.282310, 36.199162>,  <40.382294, 34.419655, 36.129356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566315, 34.282310, 36.199162>,  <40.873020, 34.053406, 36.315502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566315, 34.282310, 36.199162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055508, -0.510491, -0.858090,
		-0.639532, -0.641803, 0.423188,
		-0.766758, 0.572266, -0.290850,
		40.336288, 34.453991, 36.111908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262951, 33.593647, 36.182072>,  <40.873020, 34.053406, 36.315502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262951, 33.593647, 36.182072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258076, 33.945217, 35.991352>,  <40.255150, 34.156158, 35.876919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258076, 33.945217, 35.991352>,  <40.262951, 33.593647, 36.182072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258076, 33.945217, 35.991352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062709, -0.475223, -0.877627,
		-0.997957, -0.040600, -0.049323,
		-0.012192, 0.878928, -0.476799,
		40.254417, 34.208897, 35.848312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665737, 34.057800, 35.922882>,  <40.262951, 33.593647, 36.182072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665737, 34.057800, 35.922882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767094, 33.713020, 35.747231>,  <39.827908, 33.506153, 35.641842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767094, 33.713020, 35.747231>,  <39.665737, 34.057800, 35.922882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767094, 33.713020, 35.747231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414299, -0.506901, 0.755916,
		-0.874156, -0.009615, -0.485550,
		0.253394, -0.861951, -0.439127,
		39.843113, 33.454433, 35.615494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100624, 33.670242, 35.906639>,  <39.665737, 34.057800, 35.922882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100624, 33.670242, 35.906639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365772, 33.370808, 35.900833>,  <39.524860, 33.191147, 35.897350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365772, 33.370808, 35.900833>,  <39.100624, 33.670242, 35.906639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365772, 33.370808, 35.900833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460322, -0.422746, 0.780634,
		-0.590510, -0.510782, -0.624820,
		0.662874, -0.748590, -0.014512,
		39.564636, 33.146233, 35.896481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704193, 33.147919, 36.078033>,  <39.100624, 33.670242, 35.906639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704193, 33.147919, 36.078033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079456, 33.016357, 36.121281>,  <39.304615, 32.937420, 36.147228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079456, 33.016357, 36.121281>,  <38.704193, 33.147919, 36.078033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079456, 33.016357, 36.121281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294490, -0.593860, 0.748736,
		-0.182053, -0.734270, -0.653991,
		0.938154, -0.328904, 0.108121,
		39.360901, 32.917686, 36.153717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666748, 32.487492, 36.238628>,  <38.704193, 33.147919, 36.078033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666748, 32.487492, 36.238628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034340, 32.564606, 36.376217>,  <39.254894, 32.610874, 36.458771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034340, 32.564606, 36.376217>,  <38.666748, 32.487492, 36.238628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034340, 32.564606, 36.376217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148780, -0.638319, 0.755257,
		0.365167, -0.745240, -0.557917,
		0.918976, 0.192788, 0.343970,
		39.310032, 32.622440, 36.479408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950764, 31.827776, 36.528664>,  <38.666748, 32.487492, 36.238628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950764, 31.827776, 36.528664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168247, 32.110054, 36.710381>,  <39.298737, 32.279419, 36.819408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168247, 32.110054, 36.710381>,  <38.950764, 31.827776, 36.528664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168247, 32.110054, 36.710381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212164, -0.408135, 0.887926,
		0.812015, -0.579155, -0.072183,
		0.543707, 0.705695, 0.454287,
		39.331360, 32.321762, 36.846668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308414, 31.550726, 37.071362>,  <38.950764, 31.827776, 36.528664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308414, 31.550726, 37.071362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310875, 31.933060, 37.188896>,  <39.312351, 32.162460, 37.259415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310875, 31.933060, 37.188896>,  <39.308414, 31.550726, 37.071362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310875, 31.933060, 37.188896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141967, -0.290030, 0.946429,
		0.989852, -0.047535, 0.133914,
		0.006149, 0.955837, 0.293835,
		39.312721, 32.219810, 37.277046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601978, 31.539404, 37.731895>,  <39.308414, 31.550726, 37.071362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601978, 31.539404, 37.731895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442677, 31.906231, 37.724091>,  <39.347095, 32.126328, 37.719406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442677, 31.906231, 37.724091>,  <39.601978, 31.539404, 37.731895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442677, 31.906231, 37.724091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258600, -0.091842, 0.961608,
		0.880068, 0.388010, 0.273731,
		-0.398253, 0.917068, -0.019512,
		39.323200, 32.181351, 37.718235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865570, 31.898153, 38.319733>,  <39.601978, 31.539404, 37.731895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865570, 31.898153, 38.319733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540298, 32.105862, 38.214588>,  <39.345135, 32.230488, 38.151501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540298, 32.105862, 38.214588>,  <39.865570, 31.898153, 38.319733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540298, 32.105862, 38.214588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331863, -0.042657, 0.942363,
		0.478130, 0.853543, 0.207014,
		-0.813178, 0.519272, -0.262864,
		39.296345, 32.261642, 38.135731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800507, 32.527298, 38.747242>,  <39.865570, 31.898153, 38.319733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800507, 32.527298, 38.747242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435551, 32.412376, 38.630627>,  <39.216576, 32.343422, 38.560658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435551, 32.412376, 38.630627>,  <39.800507, 32.527298, 38.747242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435551, 32.412376, 38.630627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324423, 0.073325, 0.943066,
		-0.249572, 0.955028, -0.160111,
		-0.912394, -0.287307, -0.291533,
		39.161831, 32.326183, 38.543167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253853, 33.014286, 39.011169>,  <39.800507, 32.527298, 38.747242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253853, 33.014286, 39.011169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041992, 32.691448, 38.906803>,  <38.914875, 32.497746, 38.844185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041992, 32.691448, 38.906803>,  <39.253853, 33.014286, 39.011169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041992, 32.691448, 38.906803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627074, 0.165437, 0.761189,
		-0.571183, 0.566777, -0.593729,
		-0.529650, -0.807090, -0.260916,
		38.883099, 32.449322, 38.828529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606312, 33.228088, 38.917339>,  <39.253853, 33.014286, 39.011169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606312, 33.228088, 38.917339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579845, 32.835831, 38.991062>,  <38.563965, 32.600475, 39.035297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579845, 32.835831, 38.991062>,  <38.606312, 33.228088, 38.917339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579845, 32.835831, 38.991062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524045, 0.191336, 0.829920,
		-0.849117, -0.041674, -0.526559,
		-0.066164, -0.980640, 0.184306,
		38.559998, 32.541637, 39.046352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827896, 33.054008, 39.071095>,  <38.606312, 33.228088, 38.917339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827896, 33.054008, 39.071095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979095, 32.716255, 39.222950>,  <38.069817, 32.513603, 39.314064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979095, 32.716255, 39.222950>,  <37.827896, 33.054008, 39.071095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979095, 32.716255, 39.222950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484045, 0.169302, 0.858509,
		-0.789186, -0.508283, -0.344723,
		0.378003, -0.844384, 0.379643,
		38.092495, 32.462940, 39.336842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290142, 32.559296, 39.334236>,  <37.827896, 33.054008, 39.071095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290142, 32.559296, 39.334236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620766, 32.458645, 39.535625>,  <37.819141, 32.398254, 39.656460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620766, 32.458645, 39.535625>,  <37.290142, 32.559296, 39.334236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620766, 32.458645, 39.535625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447221, 0.249521, 0.858914,
		-0.341751, -0.935107, 0.093713,
		0.826559, -0.251624, 0.503473,
		37.868732, 32.383160, 39.686668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087444, 32.094418, 39.892006>,  <37.290142, 32.559296, 39.334236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087444, 32.094418, 39.892006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451469, 32.221027, 39.999043>,  <37.669884, 32.296993, 40.063263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451469, 32.221027, 39.999043>,  <37.087444, 32.094418, 39.892006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451469, 32.221027, 39.999043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318390, 0.120519, 0.940268,
		0.265366, -0.940898, 0.210457,
		0.910060, 0.316523, 0.267591,
		37.724487, 32.315983, 40.079319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839680, 31.403976, 40.086273>,  <37.087444, 32.094418, 39.892006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839680, 31.403976, 40.086273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468212, 31.280809, 40.003567>,  <36.245331, 31.206909, 39.953941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468212, 31.280809, 40.003567>,  <36.839680, 31.403976, 40.086273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468212, 31.280809, 40.003567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087237, 0.360493, -0.928674,
		0.360493, -0.880472, -0.307918,
		0.928674, 0.307918, 0.206765,
		36.189610, 31.188435, 39.941536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945778, 31.128151, 39.379498>,  <36.839680, 31.403976, 40.086273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945778, 31.128151, 39.379498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552235, 31.188906, 39.417336>,  <36.316109, 31.225359, 39.440041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552235, 31.188906, 39.417336>,  <36.945778, 31.128151, 39.379498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552235, 31.188906, 39.417336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056003, 0.240731, -0.968975,
		-0.169946, -0.958634, -0.228340,
		-0.983861, 0.151886, 0.094598,
		36.257076, 31.234470, 39.445713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481457, 30.539459, 39.076195>,  <36.945778, 31.128151, 39.379498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481457, 30.539459, 39.076195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302528, 30.897207, 39.077003>,  <36.195171, 31.111856, 39.077488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302528, 30.897207, 39.077003>,  <36.481457, 30.539459, 39.076195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302528, 30.897207, 39.077003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066286, -0.030896, -0.997322,
		-0.891913, -0.446258, 0.073105,
		-0.447322, 0.894371, 0.002024,
		36.168331, 31.165518, 39.077610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859146, 30.472332, 38.524296>,  <36.481457, 30.539459, 39.076195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859146, 30.472332, 38.524296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891743, 30.860746, 38.614140>,  <35.911301, 31.093794, 38.668045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891743, 30.860746, 38.614140>,  <35.859146, 30.472332, 38.524296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891743, 30.860746, 38.614140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215019, 0.237184, -0.947370,
		-0.973204, 0.028906, 0.228119,
		0.081491, 0.971034, 0.224613,
		35.916191, 31.152058, 38.681522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239189, 30.646730, 38.225731>,  <35.859146, 30.472332, 38.524296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239189, 30.646730, 38.225731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433567, 30.989965, 38.292118>,  <35.550194, 31.195906, 38.331951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433567, 30.989965, 38.292118>,  <35.239189, 30.646730, 38.225731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433567, 30.989965, 38.292118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308904, 0.346270, -0.885819,
		-0.817582, 0.379186, 0.433333,
		0.485941, 0.858088, 0.165972,
		35.579350, 31.247393, 38.341911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804886, 31.165632, 38.000477>,  <35.239189, 30.646730, 38.225731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804886, 31.165632, 38.000477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173889, 31.318714, 37.980438>,  <35.395290, 31.410564, 37.968414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173889, 31.318714, 37.980438>,  <34.804886, 31.165632, 38.000477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173889, 31.318714, 37.980438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100538, 0.112957, -0.988500,
		-0.372647, 0.916939, 0.142680,
		0.922511, 0.382707, -0.050094,
		35.450642, 31.433527, 37.965408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738224, 31.825994, 37.556057>,  <34.804886, 31.165632, 38.000477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738224, 31.825994, 37.556057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124184, 31.723160, 37.534580>,  <35.355759, 31.661459, 37.521694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124184, 31.723160, 37.534580>,  <34.738224, 31.825994, 37.556057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124184, 31.723160, 37.534580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018123, 0.138763, -0.990160,
		0.262007, 0.956374, 0.129233,
		0.964896, -0.257086, -0.053689,
		35.413654, 31.646034, 37.518475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061104, 32.314541, 37.103123>,  <34.738224, 31.825994, 37.556057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061104, 32.314541, 37.103123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283257, 31.981972, 37.109966>,  <35.416546, 31.782431, 37.114071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283257, 31.981972, 37.109966>,  <35.061104, 32.314541, 37.103123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283257, 31.981972, 37.109966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055512, 0.016543, -0.998321,
		0.829743, 0.555395, 0.055341,
		0.555378, -0.831422, 0.017105,
		35.449871, 31.732546, 37.115097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683975, 32.422997, 36.589893>,  <35.061104, 32.314541, 37.103123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683975, 32.422997, 36.589893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633255, 32.029606, 36.641575>,  <35.602825, 31.793571, 36.672585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633255, 32.029606, 36.641575>,  <35.683975, 32.422997, 36.589893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633255, 32.029606, 36.641575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214525, -0.154362, -0.964443,
		0.968453, -0.094570, 0.230553,
		-0.126796, -0.983478, 0.129205,
		35.595215, 31.734562, 36.680336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131210, 32.086071, 36.232086>,  <35.683975, 32.422997, 36.589893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131210, 32.086071, 36.232086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841824, 31.812485, 36.269588>,  <35.668190, 31.648333, 36.292091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841824, 31.812485, 36.269588>,  <36.131210, 32.086071, 36.232086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841824, 31.812485, 36.269588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042931, -0.180117, -0.982708,
		0.689024, -0.706931, 0.159672,
		-0.723466, -0.683964, 0.093756,
		35.624783, 31.607296, 36.297714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417587, 31.538454, 35.937595>,  <36.131210, 32.086071, 36.232086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417587, 31.538454, 35.937595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019089, 31.519394, 35.908665>,  <35.779991, 31.507957, 35.891308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019089, 31.519394, 35.908665>,  <36.417587, 31.538454, 35.937595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019089, 31.519394, 35.908665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078394, -0.141151, -0.986879,
		0.036818, -0.988841, 0.144356,
		-0.996242, -0.047652, -0.072322,
		35.720215, 31.505098, 35.886967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213058, 30.981937, 35.454418>,  <36.417587, 31.538454, 35.937595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213058, 30.981937, 35.454418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902611, 31.233488, 35.473000>,  <35.716343, 31.384418, 35.484150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902611, 31.233488, 35.473000>,  <36.213058, 30.981937, 35.454418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902611, 31.233488, 35.473000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050427, 0.011539, -0.998661,
		-0.628571, -0.777419, 0.022757,
		-0.776116, 0.628877, 0.046456,
		35.669777, 31.422152, 35.486935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.720917, 29.789946, 43.502285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.494678, 30.105413, 43.405869>,  <35.358936, 30.294695, 43.348019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.494678, 30.105413, 43.405869>,  <35.720917, 29.789946, 43.502285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494678, 30.105413, 43.405869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226473, -0.132509, -0.964962,
		-0.792976, -0.600368, -0.103665,
		-0.565596, 0.788669, -0.241044,
		35.325001, 30.342014, 43.333557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549145, 29.576324, 42.926281>,  <35.720917, 29.789946, 43.502285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549145, 29.576324, 42.926281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.425297, 29.956633, 42.920959>,  <35.350990, 30.184816, 42.917767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.425297, 29.956633, 42.920959>,  <35.549145, 29.576324, 42.926281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425297, 29.956633, 42.920959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164687, 0.039837, -0.985541,
		-0.936491, -0.307332, -0.168914,
		-0.309617, 0.950768, -0.013307,
		35.332413, 30.241863, 42.916965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041725, 29.587400, 42.413311>,  <35.549145, 29.576324, 42.926281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041725, 29.587400, 42.413311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.148243, 29.969952, 42.461357>,  <35.212154, 30.199482, 42.490185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.148243, 29.969952, 42.461357>,  <35.041725, 29.587400, 42.413311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148243, 29.969952, 42.461357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067708, 0.142866, -0.987423,
		-0.961510, 0.254817, 0.102799,
		0.266299, 0.956377, 0.120114,
		35.228134, 30.256865, 42.497391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730850, 29.961140, 41.855793>,  <35.041725, 29.587400, 42.413311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730850, 29.961140, 41.855793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.014862, 30.211174, 41.985485>,  <35.185268, 30.361195, 42.063301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.014862, 30.211174, 41.985485>,  <34.730850, 29.961140, 41.855793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014862, 30.211174, 41.985485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021904, 0.440612, -0.897430,
		-0.703828, 0.644307, 0.299157,
		0.710033, 0.625084, 0.324228,
		35.227871, 30.398699, 42.082752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526585, 30.621138, 41.648529>,  <34.730850, 29.961140, 41.855793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526585, 30.621138, 41.648529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.920929, 30.620918, 41.715561>,  <35.157536, 30.620787, 41.755779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.920929, 30.620918, 41.715561>,  <34.526585, 30.621138, 41.648529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920929, 30.620918, 41.715561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152414, 0.418671, -0.895256,
		-0.069671, 0.908138, 0.412834,
		0.985858, -0.000548, 0.167583,
		35.216686, 30.620754, 41.765835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635983, 31.248974, 41.386543>,  <34.526585, 30.621138, 41.648529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635983, 31.248974, 41.386543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.978703, 31.044598, 41.414341>,  <35.184334, 30.921972, 41.431019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.978703, 31.044598, 41.414341>,  <34.635983, 31.248974, 41.386543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978703, 31.044598, 41.414341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223508, 0.246552, -0.943004,
		0.464686, 0.823500, 0.325446,
		0.856803, -0.510941, 0.069490,
		35.235744, 30.891315, 41.435188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103622, 31.673727, 41.063309>,  <34.635983, 31.248974, 41.386543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103622, 31.673727, 41.063309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.279606, 31.314543, 41.067356>,  <35.385197, 31.099033, 41.069782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.279606, 31.314543, 41.067356>,  <35.103622, 31.673727, 41.063309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279606, 31.314543, 41.067356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314990, 0.143763, -0.938144,
		0.840961, 0.415934, 0.346098,
		0.439962, -0.897960, 0.010116,
		35.411594, 31.045155, 41.070393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716541, 31.836977, 40.890530>,  <35.103622, 31.673727, 41.063309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716541, 31.836977, 40.890530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.708397, 31.444056, 40.816055>,  <35.703510, 31.208303, 40.771370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.708397, 31.444056, 40.816055>,  <35.716541, 31.836977, 40.890530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708397, 31.444056, 40.816055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475226, 0.154336, -0.866222,
		0.879628, -0.106118, 0.463674,
		-0.020360, -0.982303, -0.186188,
		35.702290, 31.149364, 40.760201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405052, 31.641127, 40.673798>,  <35.716541, 31.836977, 40.890530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405052, 31.641127, 40.673798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154480, 31.364779, 40.529423>,  <36.004135, 31.198969, 40.442799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154480, 31.364779, 40.529423>,  <36.405052, 31.641127, 40.673798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154480, 31.364779, 40.529423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297346, 0.216240, -0.929960,
		0.720533, -0.689881, 0.069968,
		-0.626432, -0.690872, -0.360941,
		35.966549, 31.157516, 40.421139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131256, 31.896505, 40.647324>,  <36.405052, 31.641127, 40.673798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131256, 31.896505, 40.647324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.427261, 32.159222, 40.589352>,  <37.604866, 32.316853, 40.554569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.427261, 32.159222, 40.589352>,  <37.131256, 31.896505, 40.647324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427261, 32.159222, 40.589352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022127, 0.191586, 0.981226,
		0.672225, -0.729330, 0.127244,
		0.740016, 0.656789, -0.144926,
		37.649265, 32.356258, 40.545876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676102, 31.630188, 41.092976>,  <37.131256, 31.896505, 40.647324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676102, 31.630188, 41.092976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734684, 32.018482, 41.016842>,  <37.769833, 32.251457, 40.971161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734684, 32.018482, 41.016842>,  <37.676102, 31.630188, 41.092976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734684, 32.018482, 41.016842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094580, 0.177789, 0.979513,
		0.984686, -0.161454, -0.065774,
		0.146452, 0.970734, -0.190337,
		37.778618, 32.309704, 40.959740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167252, 31.878468, 41.576279>,  <37.676102, 31.630188, 41.092976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167252, 31.878468, 41.576279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.001331, 32.229908, 41.481617>,  <37.901779, 32.440773, 41.424820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.001331, 32.229908, 41.481617>,  <38.167252, 31.878468, 41.576279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001331, 32.229908, 41.481617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088542, 0.297824, 0.950506,
		0.905595, 0.373314, -0.201330,
		-0.414798, 0.878599, -0.236654,
		37.876892, 32.493488, 41.410622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514233, 32.383507, 41.966263>,  <38.167252, 31.878468, 41.576279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514233, 32.383507, 41.966263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.166939, 32.553112, 41.863205>,  <37.958561, 32.654873, 41.801369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.166939, 32.553112, 41.863205>,  <38.514233, 32.383507, 41.966263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166939, 32.553112, 41.863205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065567, 0.416680, 0.906685,
		0.491799, 0.804110, -0.333976,
		-0.868236, 0.424010, -0.257646,
		37.906467, 32.680313, 41.785912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575253, 33.008263, 42.304535>,  <38.514233, 32.383507, 41.966263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575253, 33.008263, 42.304535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.187134, 33.001305, 42.208019>,  <37.954262, 32.997131, 42.150112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.187134, 33.001305, 42.208019>,  <38.575253, 33.008263, 42.304535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187134, 33.001305, 42.208019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215723, 0.513588, 0.830476,
		0.109475, 0.857861, -0.502086,
		-0.970298, -0.017395, -0.241285,
		37.896046, 32.996086, 42.135635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392857, 33.738293, 42.309841>,  <38.575253, 33.008263, 42.304535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392857, 33.738293, 42.309841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.089409, 33.484249, 42.367992>,  <37.907341, 33.331821, 42.402885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.089409, 33.484249, 42.367992>,  <38.392857, 33.738293, 42.309841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089409, 33.484249, 42.367992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392750, 0.623804, 0.675733,
		-0.519854, 0.455524, -0.722668,
		-0.758616, -0.635111, 0.145380,
		37.861824, 33.293716, 42.411606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792236, 34.210995, 42.374973>,  <38.392857, 33.738293, 42.309841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792236, 34.210995, 42.374973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.675167, 33.857788, 42.521736>,  <37.604923, 33.645863, 42.609795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.675167, 33.857788, 42.521736>,  <37.792236, 34.210995, 42.374973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675167, 33.857788, 42.521736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447659, 0.465595, 0.763428,
		-0.844951, 0.059186, -0.531559,
		-0.292676, -0.883017, 0.366909,
		37.587364, 33.592884, 42.631809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125362, 34.334030, 42.637009>,  <37.792236, 34.210995, 42.374973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125362, 34.334030, 42.637009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186687, 33.991596, 42.834438>,  <37.223480, 33.786137, 42.952896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186687, 33.991596, 42.834438>,  <37.125362, 34.334030, 42.637009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186687, 33.991596, 42.834438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488208, 0.368646, 0.791045,
		-0.859156, -0.362241, -0.361431,
		0.153309, -0.856085, 0.493574,
		37.232681, 33.734772, 42.982510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530125, 34.151745, 42.961277>,  <37.125362, 34.334030, 42.637009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530125, 34.151745, 42.961277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.811790, 33.942345, 43.153152>,  <36.980789, 33.816704, 43.268280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.811790, 33.942345, 43.153152>,  <36.530125, 34.151745, 42.961277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811790, 33.942345, 43.153152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442230, 0.205204, 0.873112,
		-0.555510, -0.826945, -0.087011,
		0.704160, -0.523501, 0.479692,
		37.023037, 33.785294, 43.297062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177040, 33.824528, 43.504227>,  <36.530125, 34.151745, 42.961277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177040, 33.824528, 43.504227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561432, 33.832985, 43.614555>,  <36.792065, 33.838058, 43.680752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561432, 33.832985, 43.614555>,  <36.177040, 33.824528, 43.504227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561432, 33.832985, 43.614555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275114, 0.177208, 0.944939,
		-0.028900, -0.983946, 0.176109,
		0.960977, 0.021141, 0.275818,
		36.849724, 33.839329, 43.697300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205605, 33.318645, 44.047798>,  <36.177040, 33.824528, 43.504227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205605, 33.318645, 44.047798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.529198, 33.550461, 44.087135>,  <36.723354, 33.689552, 44.110737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.529198, 33.550461, 44.087135>,  <36.205605, 33.318645, 44.047798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529198, 33.550461, 44.087135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198297, 0.111566, 0.973772,
		0.553371, -0.807269, 0.205177,
		0.808987, 0.579542, 0.098342,
		36.771893, 33.724323, 44.116638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451786, 33.135212, 44.704720>,  <36.205605, 33.318645, 44.047798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451786, 33.135212, 44.704720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.651340, 33.472290, 44.623741>,  <36.771072, 33.674538, 44.575153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.651340, 33.472290, 44.623741>,  <36.451786, 33.135212, 44.704720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651340, 33.472290, 44.623741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065907, 0.196027, 0.978381,
		0.864159, -0.501442, 0.042256,
		0.498885, 0.842692, -0.202447,
		36.801006, 33.725098, 44.563007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138969, 33.062347, 45.144802>,  <36.451786, 33.135212, 44.704720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138969, 33.062347, 45.144802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.084503, 33.453548, 45.081581>,  <37.051823, 33.688267, 45.043648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.084503, 33.453548, 45.081581>,  <37.138969, 33.062347, 45.144802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084503, 33.453548, 45.081581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161938, 0.179360, 0.970364,
		0.977362, 0.106532, -0.182797,
		-0.136161, 0.977998, -0.158049,
		37.043655, 33.746948, 45.034168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634285, 33.404694, 45.535599>,  <37.138969, 33.062347, 45.144802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634285, 33.404694, 45.535599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339626, 33.668167, 45.474304>,  <37.162830, 33.826252, 45.437527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339626, 33.668167, 45.474304>,  <37.634285, 33.404694, 45.535599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339626, 33.668167, 45.474304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043022, 0.271779, 0.961397,
		0.674903, 0.701622, -0.228545,
		-0.736651, 0.658683, -0.153239,
		37.118629, 33.865772, 45.428333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.272423, 36.755634, 43.898190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.632111, 36.625229, 44.014885>,  <33.847923, 36.546986, 44.084904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.632111, 36.625229, 44.014885>,  <33.272423, 36.755634, 43.898190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632111, 36.625229, 44.014885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393161, 0.309704, -0.865741,
		0.191894, 0.893194, 0.406671,
		0.899222, -0.326018, 0.291739,
		33.901878, 36.527424, 44.102406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738934, 37.379730, 43.972496>,  <33.272423, 36.755634, 43.898190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738934, 37.379730, 43.972496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948978, 37.044201, 43.915039>,  <34.075005, 36.842884, 43.880566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948978, 37.044201, 43.915039>,  <33.738934, 37.379730, 43.972496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948978, 37.044201, 43.915039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259112, 0.318356, -0.911872,
		0.810628, 0.441617, 0.384522,
		0.525113, -0.838823, -0.143640,
		34.106514, 36.792553, 43.871948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399952, 37.672619, 43.692043>,  <33.738934, 37.379730, 43.972496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399952, 37.672619, 43.692043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.393524, 37.278347, 43.624905>,  <34.389668, 37.041782, 43.584621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.393524, 37.278347, 43.624905>,  <34.399952, 37.672619, 43.692043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393524, 37.278347, 43.624905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436084, 0.144150, -0.888286,
		0.899763, -0.087468, 0.427524,
		-0.016069, -0.985683, -0.167844,
		34.388702, 36.982643, 43.574551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116428, 37.341919, 43.494278>,  <34.399952, 37.672619, 43.692043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116428, 37.341919, 43.494278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.817661, 37.135529, 43.326527>,  <34.638401, 37.011696, 43.225876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.817661, 37.135529, 43.326527>,  <35.116428, 37.341919, 43.494278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817661, 37.135529, 43.326527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469845, 0.036730, -0.881984,
		0.470484, -0.855817, 0.214993,
		-0.746920, -0.515972, -0.419382,
		34.593586, 36.980736, 43.200710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467976, 36.941628, 43.003895>,  <35.116428, 37.341919, 43.494278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467976, 36.941628, 43.003895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082760, 36.933315, 42.896477>,  <34.851631, 36.928326, 42.832024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082760, 36.933315, 42.896477>,  <35.467976, 36.941628, 43.003895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082760, 36.933315, 42.896477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263233, 0.138698, -0.954710,
		0.057088, -0.990117, -0.128101,
		-0.963042, -0.020782, -0.268550,
		34.793846, 36.927082, 42.815910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301449, 36.378803, 42.538902>,  <35.467976, 36.941628, 43.003895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301449, 36.378803, 42.538902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.992191, 36.616779, 42.450989>,  <34.806637, 36.759563, 42.398243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.992191, 36.616779, 42.450989>,  <35.301449, 36.378803, 42.538902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992191, 36.616779, 42.450989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259151, -0.019947, -0.965631,
		-0.578873, -0.803525, -0.138757,
		-0.773141, 0.594936, -0.219782,
		34.760250, 36.795261, 42.385056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051754, 36.020817, 41.966557>,  <35.301449, 36.378803, 42.538902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051754, 36.020817, 41.966557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.865131, 36.374546, 41.973507>,  <34.753159, 36.586784, 41.977676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.865131, 36.374546, 41.973507>,  <35.051754, 36.020817, 41.966557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865131, 36.374546, 41.973507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003096, 0.018016, -0.999833,
		-0.884484, -0.466536, -0.005667,
		-0.466560, 0.884319, 0.017379,
		34.725163, 36.639843, 41.978722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300663, 35.998367, 41.626339>,  <35.051754, 36.020817, 41.966557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300663, 35.998367, 41.626339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.454922, 36.366554, 41.601013>,  <34.547478, 36.587467, 41.585819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.454922, 36.366554, 41.601013>,  <34.300663, 35.998367, 41.626339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454922, 36.366554, 41.601013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021570, -0.059604, -0.997989,
		-0.922394, 0.386237, -0.003131,
		0.385647, 0.920472, -0.063310,
		34.570614, 36.642696, 41.582020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983086, 36.210888, 41.052410>,  <34.300663, 35.998367, 41.626339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983086, 36.210888, 41.052410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.252258, 36.497303, 41.126652>,  <34.413761, 36.669151, 41.171196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.252258, 36.497303, 41.126652>,  <33.983086, 36.210888, 41.052410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252258, 36.497303, 41.126652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025370, 0.228433, -0.973229,
		-0.739269, 0.659626, 0.135554,
		0.672932, 0.716039, 0.185608,
		34.454140, 36.712116, 41.182335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813061, 36.744019, 40.658173>,  <33.983086, 36.210888, 41.052410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813061, 36.744019, 40.658173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.201271, 36.809540, 40.728882>,  <34.434196, 36.848850, 40.771305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.201271, 36.809540, 40.728882>,  <33.813061, 36.744019, 40.658173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201271, 36.809540, 40.728882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165715, 0.078976, -0.983006,
		-0.174977, 0.983327, 0.049504,
		0.970527, 0.163800, 0.176771,
		34.492428, 36.858681, 40.781914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940815, 37.255512, 40.197220>,  <33.813061, 36.744019, 40.658173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940815, 37.255512, 40.197220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293713, 37.085587, 40.278397>,  <34.505451, 36.983631, 40.327103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293713, 37.085587, 40.278397>,  <33.940815, 37.255512, 40.197220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293713, 37.085587, 40.278397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195530, -0.061498, -0.978768,
		0.428276, 0.903189, 0.028808,
		0.882240, -0.424816, 0.202939,
		34.558384, 36.958141, 40.339279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357700, 37.584770, 39.765884>,  <33.940815, 37.255512, 40.197220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357700, 37.584770, 39.765884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.595249, 37.276001, 39.856617>,  <34.737778, 37.090740, 39.911057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.595249, 37.276001, 39.856617>,  <34.357700, 37.584770, 39.765884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595249, 37.276001, 39.856617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270668, -0.073819, -0.959838,
		0.757664, 0.631417, 0.165096,
		0.593871, -0.771921, 0.226835,
		34.773411, 37.044426, 39.924667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109055, 37.739540, 39.449093>,  <34.357700, 37.584770, 39.765884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109055, 37.739540, 39.449093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.094948, 37.343555, 39.503834>,  <35.086483, 37.105965, 39.536678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.094948, 37.343555, 39.503834>,  <35.109055, 37.739540, 39.449093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094948, 37.343555, 39.503834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514818, -0.135367, -0.846545,
		0.856574, 0.040602, 0.514425,
		-0.035265, -0.989963, 0.136855,
		35.084370, 37.046566, 39.544891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868252, 37.414803, 39.311741>,  <35.109055, 37.739540, 39.449093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868252, 37.414803, 39.311741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.580360, 37.142292, 39.258289>,  <35.407627, 36.978786, 39.226219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.580360, 37.142292, 39.258289>,  <35.868252, 37.414803, 39.311741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580360, 37.142292, 39.258289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322180, -0.157261, -0.933525,
		0.614973, -0.714936, 0.332678,
		-0.719728, -0.681275, -0.133627,
		35.364441, 36.937908, 39.218201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359901, 37.025501, 39.707882>,  <35.868252, 37.414803, 39.311741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359901, 37.025501, 39.707882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.733414, 37.122852, 39.812820>,  <36.957520, 37.181263, 39.875786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.733414, 37.122852, 39.812820>,  <36.359901, 37.025501, 39.707882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733414, 37.122852, 39.812820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248457, -0.086693, 0.964756,
		0.257541, -0.966050, -0.020484,
		0.933778, 0.243374, 0.262349,
		37.013546, 37.195866, 39.891525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554710, 36.639278, 40.251446>,  <36.359901, 37.025501, 39.707882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554710, 36.639278, 40.251446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.817711, 36.939022, 40.282837>,  <36.975510, 37.118866, 40.301670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.817711, 36.939022, 40.282837>,  <36.554710, 36.639278, 40.251446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817711, 36.939022, 40.282837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070956, -0.042106, 0.996590,
		0.750104, -0.660828, 0.025486,
		0.657502, 0.749355, 0.078473,
		37.014961, 37.163830, 40.306377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135513, 36.485077, 40.673256>,  <36.554710, 36.639278, 40.251446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135513, 36.485077, 40.673256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.130955, 36.884674, 40.690575>,  <37.128220, 37.124432, 40.700966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.130955, 36.884674, 40.690575>,  <37.135513, 36.485077, 40.673256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130955, 36.884674, 40.690575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004081, -0.043343, 0.999052,
		0.999927, 0.011205, 0.004571,
		-0.011393, 0.998997, 0.043294,
		37.127537, 37.184372, 40.703564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558975, 36.605911, 41.286892>,  <37.135513, 36.485077, 40.673256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558975, 36.605911, 41.286892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.390690, 36.964920, 41.234039>,  <37.289719, 37.180325, 41.202328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.390690, 36.964920, 41.234039>,  <37.558975, 36.605911, 41.286892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390690, 36.964920, 41.234039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140329, 0.079508, 0.986907,
		0.896276, 0.433744, 0.092498,
		-0.420711, 0.897521, -0.132127,
		37.264477, 37.234177, 41.194401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642868, 36.931355, 41.868160>,  <37.558975, 36.605911, 41.286892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642868, 36.931355, 41.868160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.364269, 37.184605, 41.733074>,  <37.197109, 37.336555, 41.652023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.364269, 37.184605, 41.733074>,  <37.642868, 36.931355, 41.868160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364269, 37.184605, 41.733074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280396, 0.193083, 0.940265,
		0.660509, 0.749583, 0.043044,
		-0.696496, 0.633123, -0.337713,
		37.155319, 37.374542, 41.631760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775738, 37.646069, 42.139534>,  <37.642868, 36.931355, 41.868160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775738, 37.646069, 42.139534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.386612, 37.596050, 42.061558>,  <37.153137, 37.566040, 42.014771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.386612, 37.596050, 42.061558>,  <37.775738, 37.646069, 42.139534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386612, 37.596050, 42.061558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219190, 0.225244, 0.949326,
		-0.074799, 0.966245, -0.246529,
		-0.972811, -0.125046, -0.194943,
		37.094769, 37.558537, 42.003075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674274, 38.078705, 42.663319>,  <37.775738, 37.646069, 42.139534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674274, 38.078705, 42.663319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.338924, 37.889404, 42.555126>,  <37.137714, 37.775826, 42.490211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.338924, 37.889404, 42.555126>,  <37.674274, 38.078705, 42.663319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338924, 37.889404, 42.555126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377477, 0.146077, 0.914425,
		-0.393243, 0.868731, -0.301109,
		-0.838374, -0.473253, -0.270482,
		37.087414, 37.747429, 42.473980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205608, 38.534462, 42.926865>,  <37.674274, 38.078705, 42.663319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205608, 38.534462, 42.926865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.045296, 38.172337, 42.870609>,  <36.949108, 37.955059, 42.836857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.045296, 38.172337, 42.870609>,  <37.205608, 38.534462, 42.926865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045296, 38.172337, 42.870609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411081, 0.040513, 0.910698,
		-0.818772, 0.422802, -0.388395,
		-0.400780, -0.905316, -0.140635,
		36.925060, 37.900742, 42.828419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614632, 38.607834, 43.376209>,  <37.205608, 38.534462, 42.926865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614632, 38.607834, 43.376209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.659462, 38.214455, 43.319267>,  <36.686359, 37.978428, 43.285103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.659462, 38.214455, 43.319267>,  <36.614632, 38.607834, 43.376209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659462, 38.214455, 43.319267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339885, -0.172556, 0.924501,
		-0.933766, -0.055226, -0.353598,
		0.112072, -0.983450, -0.142357,
		36.693085, 37.919418, 43.276562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118664, 38.387474, 43.744827>,  <36.614632, 38.607834, 43.376209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118664, 38.387474, 43.744827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.352402, 38.063499, 43.724636>,  <36.492645, 37.869114, 43.712521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.352402, 38.063499, 43.724636>,  <36.118664, 38.387474, 43.744827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352402, 38.063499, 43.724636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158532, -0.174941, 0.971732,
		-0.795870, -0.559823, -0.230626,
		0.584344, -0.809935, -0.050480,
		36.527706, 37.820518, 43.709492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776539, 37.730961, 43.800320>,  <36.118664, 38.387474, 43.744827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776539, 37.730961, 43.800320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.152573, 37.721390, 43.936363>,  <36.378193, 37.715649, 44.017990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.152573, 37.721390, 43.936363>,  <35.776539, 37.730961, 43.800320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152573, 37.721390, 43.936363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339661, -0.152226, 0.928147,
		0.029568, -0.988056, -0.151231,
		0.940083, -0.023923, 0.340105,
		36.434597, 37.714214, 44.038395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830944, 37.161625, 44.134266>,  <35.776539, 37.730961, 43.800320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830944, 37.161625, 44.134266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.120720, 37.397846, 44.276493>,  <36.294586, 37.539577, 44.361832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.120720, 37.397846, 44.276493>,  <35.830944, 37.161625, 44.134266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120720, 37.397846, 44.276493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223349, -0.286904, 0.931559,
		0.652150, -0.754276, -0.075946,
		0.724442, 0.590553, 0.355571,
		36.338051, 37.575012, 44.383163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367329, 36.739658, 44.484753>,  <35.830944, 37.161625, 44.134266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367329, 36.739658, 44.484753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.384518, 37.111706, 44.630650>,  <36.394833, 37.334934, 44.718189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.384518, 37.111706, 44.630650>,  <36.367329, 36.739658, 44.484753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384518, 37.111706, 44.630650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323818, -0.332407, 0.885803,
		0.945143, -0.156176, 0.286903,
		0.042972, 0.930116, 0.364745,
		36.397408, 37.390739, 44.740074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860165, 36.870041, 45.080616>,  <36.367329, 36.739658, 44.484753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860165, 36.870041, 45.080616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533314, 37.097313, 45.119534>,  <36.337204, 37.233677, 45.142883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533314, 37.097313, 45.119534>,  <36.860165, 36.870041, 45.080616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533314, 37.097313, 45.119534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262677, -0.517240, 0.814533,
		0.513126, 0.640024, 0.571901,
		-0.817131, 0.568183, 0.097290,
		36.288174, 37.267769, 45.148720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416000, 37.115669, 45.497360>,  <36.860165, 36.870041, 45.080616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416000, 37.115669, 45.497360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.757992, 36.971581, 45.646626>,  <37.963188, 36.885128, 45.736183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.757992, 36.971581, 45.646626>,  <37.416000, 37.115669, 45.497360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757992, 36.971581, 45.646626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393328, -0.018679, -0.919208,
		0.338093, 0.932678, 0.125717,
		0.854977, -0.360226, 0.373164,
		38.014484, 36.863514, 45.758575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990108, 37.467953, 45.095013>,  <37.416000, 37.115669, 45.497360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990108, 37.467953, 45.095013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.173683, 37.151352, 45.256454>,  <38.283829, 36.961391, 45.353321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.173683, 37.151352, 45.256454>,  <37.990108, 37.467953, 45.095013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173683, 37.151352, 45.256454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535829, -0.115788, -0.836349,
		0.708708, 0.600093, 0.370972,
		0.458933, -0.791506, 0.403607,
		38.311363, 36.913898, 45.377537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702530, 37.606117, 44.931770>,  <37.990108, 37.467953, 45.095013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702530, 37.606117, 44.931770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665161, 37.217377, 45.018276>,  <38.642738, 36.984131, 45.070179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665161, 37.217377, 45.018276>,  <38.702530, 37.606117, 44.931770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665161, 37.217377, 45.018276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563931, -0.230666, -0.792953,
		0.820520, 0.047878, 0.569609,
		-0.093424, -0.971855, 0.216266,
		38.637135, 36.925819, 45.083157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308662, 37.326275, 44.668655>,  <38.702530, 37.606117, 44.931770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308662, 37.326275, 44.668655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.082493, 36.999279, 44.712498>,  <38.946793, 36.803082, 44.738804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.082493, 36.999279, 44.712498>,  <39.308662, 37.326275, 44.668655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082493, 36.999279, 44.712498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251587, -0.297493, -0.920979,
		0.785497, -0.493164, 0.373877,
		-0.565419, -0.817488, 0.109606,
		38.912868, 36.754032, 44.745380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707012, 36.826485, 44.474270>,  <39.308662, 37.326275, 44.668655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707012, 36.826485, 44.474270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.348442, 36.655079, 44.429031>,  <39.133301, 36.552235, 44.401886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.348442, 36.655079, 44.429031>,  <39.707012, 36.826485, 44.474270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348442, 36.655079, 44.429031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317560, -0.443042, -0.838373,
		0.309147, -0.787457, 0.533234,
		-0.896428, -0.428515, -0.113099,
		39.079514, 36.526524, 44.395103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865284, 36.156227, 44.236931>,  <39.707012, 36.826485, 44.474270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865284, 36.156227, 44.236931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.486462, 36.220371, 44.125675>,  <39.259167, 36.258858, 44.058922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.486462, 36.220371, 44.125675>,  <39.865284, 36.156227, 44.236931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486462, 36.220371, 44.125675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227879, -0.274526, -0.934188,
		-0.226160, -0.948115, 0.223451,
		-0.947060, 0.160356, -0.278142,
		39.202343, 36.268478, 44.042233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615726, 35.597225, 43.798809>,  <39.865284, 36.156227, 44.236931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615726, 35.597225, 43.798809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.347256, 35.880505, 43.711205>,  <39.186172, 36.050472, 43.658642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.347256, 35.880505, 43.711205>,  <39.615726, 35.597225, 43.798809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347256, 35.880505, 43.711205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105117, -0.201533, -0.973825,
		-0.733804, -0.676634, 0.060821,
		-0.671180, 0.708203, -0.219011,
		39.145901, 36.092964, 43.645500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237232, 35.349209, 43.340202>,  <39.615726, 35.597225, 43.798809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237232, 35.349209, 43.340202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.160759, 35.735458, 43.269753>,  <39.114876, 35.967209, 43.227482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.160759, 35.735458, 43.269753>,  <39.237232, 35.349209, 43.340202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160759, 35.735458, 43.269753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252076, -0.125115, -0.959585,
		-0.948634, -0.227855, -0.219491,
		-0.191185, 0.965623, -0.176125,
		39.103405, 36.025146, 43.216915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803108, 35.391018, 42.693901>,  <39.237232, 35.349209, 43.340202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803108, 35.391018, 42.693901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984684, 35.741776, 42.757141>,  <39.093628, 35.952229, 42.795086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984684, 35.741776, 42.757141>,  <38.803108, 35.391018, 42.693901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984684, 35.741776, 42.757141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458865, -0.077961, -0.885079,
		-0.763794, 0.474321, -0.437765,
		0.453941, 0.876893, 0.158103,
		39.120865, 36.004845, 42.804573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454002, 35.855782, 42.278839>,  <38.803108, 35.391018, 42.693901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454002, 35.855782, 42.278839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.818264, 35.999039, 42.361248>,  <39.036819, 36.084991, 42.410694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.818264, 35.999039, 42.361248>,  <38.454002, 35.855782, 42.278839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818264, 35.999039, 42.361248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187122, 0.087067, -0.978471,
		-0.368369, 0.929599, 0.012272,
		0.910653, 0.358142, 0.206021,
		39.091461, 36.106480, 42.423054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504997, 36.395863, 41.798138>,  <38.454002, 35.855782, 42.278839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504997, 36.395863, 41.798138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.884739, 36.331070, 41.905834>,  <39.112583, 36.292194, 41.970451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.884739, 36.331070, 41.905834>,  <38.504997, 36.395863, 41.798138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884739, 36.331070, 41.905834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282185, 0.062634, -0.957313,
		0.138199, 0.984805, 0.105169,
		0.949354, -0.161977, 0.269241,
		39.169544, 36.282478, 41.986607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814590, 36.753304, 41.287281>,  <38.504997, 36.395863, 41.798138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814590, 36.753304, 41.287281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.115799, 36.533276, 41.431713>,  <39.296524, 36.401260, 41.518372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.115799, 36.533276, 41.431713>,  <38.814590, 36.753304, 41.287281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115799, 36.533276, 41.431713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451501, 0.032763, -0.891669,
		0.478648, 0.834477, 0.273027,
		0.753023, -0.550068, 0.361085,
		39.341705, 36.368256, 41.540039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339104, 37.079063, 40.994537>,  <38.814590, 36.753304, 41.287281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339104, 37.079063, 40.994537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.480850, 36.724728, 41.114346>,  <39.565899, 36.512127, 41.186230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.480850, 36.724728, 41.114346>,  <39.339104, 37.079063, 40.994537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480850, 36.724728, 41.114346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513438, -0.083387, -0.854066,
		0.781540, 0.456441, 0.425273,
		0.354368, -0.885838, 0.299525,
		39.587162, 36.458977, 41.204205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105244, 37.085320, 40.788258>,  <39.339104, 37.079063, 40.994537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105244, 37.085320, 40.788258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.014523, 36.696587, 40.813873>,  <39.960091, 36.463345, 40.829243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.014523, 36.696587, 40.813873>,  <40.105244, 37.085320, 40.788258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014523, 36.696587, 40.813873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506446, -0.173844, -0.844565,
		0.831910, -0.159113, 0.531609,
		-0.226799, -0.971834, 0.064040,
		39.946484, 36.405037, 40.833084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.875364, 40.940212, 35.632149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.241774, 40.842369, 35.504986>,  <29.461620, 40.783665, 35.428688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.241774, 40.842369, 35.504986>,  <28.875364, 40.940212, 35.632149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241774, 40.842369, 35.504986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379156, -0.786681, -0.487210,
		-0.130919, 0.566834, -0.813363,
		0.916024, -0.244606, -0.317910,
		29.516581, 40.768986, 35.409611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797291, 40.720501, 35.012657>,  <28.875364, 40.940212, 35.632149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797291, 40.720501, 35.012657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.170038, 40.589012, 35.074062>,  <29.393686, 40.510120, 35.110905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.170038, 40.589012, 35.074062>,  <28.797291, 40.720501, 35.012657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170038, 40.589012, 35.074062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209382, -0.832848, -0.512370,
		0.296278, 0.445319, -0.844932,
		0.931868, -0.328718, 0.153513,
		29.449598, 40.490398, 35.120117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989447, 40.640877, 34.377041>,  <28.797291, 40.720501, 35.012657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989447, 40.640877, 34.377041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.234756, 40.424110, 34.606899>,  <29.381943, 40.294048, 34.744816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.234756, 40.424110, 34.606899>,  <28.989447, 40.640877, 34.377041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234756, 40.424110, 34.606899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107992, -0.778216, -0.618642,
		0.782454, 0.317339, -0.535782,
		0.613273, -0.541918, 0.574648,
		29.418739, 40.261536, 34.779293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443604, 40.190708, 33.926697>,  <28.989447, 40.640877, 34.377041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443604, 40.190708, 33.926697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.479780, 40.010887, 34.282162>,  <29.501486, 39.902992, 34.495441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.479780, 40.010887, 34.282162>,  <29.443604, 40.190708, 33.926697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479780, 40.010887, 34.282162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063731, -0.893103, -0.445315,
		0.993860, -0.016360, -0.109425,
		0.090443, -0.449554, 0.888663,
		29.506912, 39.876022, 34.548759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937551, 39.622890, 33.897896>,  <29.443604, 40.190708, 33.926697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937551, 39.622890, 33.897896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.697325, 39.520809, 34.200996>,  <29.553188, 39.459560, 34.382858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.697325, 39.520809, 34.200996>,  <29.937551, 39.622890, 33.897896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697325, 39.520809, 34.200996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117087, -0.909408, -0.399083,
		0.790955, -0.328399, 0.516279,
		-0.600567, -0.255207, 0.757753,
		29.517155, 39.444248, 34.428322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062567, 38.845078, 34.064575>,  <29.937551, 39.622890, 33.897896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062567, 38.845078, 34.064575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.714907, 38.935612, 34.240463>,  <29.506310, 38.989933, 34.345997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.714907, 38.935612, 34.240463>,  <30.062567, 38.845078, 34.064575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714907, 38.935612, 34.240463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356720, -0.902741, -0.240437,
		0.342531, -0.365831, 0.865356,
		-0.869151, 0.226333, 0.439716,
		29.454161, 39.003513, 34.372379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989740, 38.233021, 34.384880>,  <30.062567, 38.845078, 34.064575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989740, 38.233021, 34.384880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640854, 38.427792, 34.366348>,  <29.431522, 38.544655, 34.355228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640854, 38.427792, 34.366348>,  <29.989740, 38.233021, 34.384880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640854, 38.427792, 34.366348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486751, -0.873400, -0.015680,
		-0.048097, 0.008874, 0.998803,
		-0.872215, 0.486923, -0.046328,
		29.379189, 38.573868, 34.352451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628572, 37.837322, 34.835873>,  <29.989740, 38.233021, 34.384880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628572, 37.837322, 34.835873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.363638, 38.031548, 34.607647>,  <29.204678, 38.148083, 34.470711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.363638, 38.031548, 34.607647>,  <29.628572, 37.837322, 34.835873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363638, 38.031548, 34.607647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492680, -0.856012, -0.156554,
		-0.564424, 0.177414, 0.806194,
		-0.662338, 0.485559, -0.570563,
		29.164936, 38.177216, 34.436478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028383, 37.546249, 34.974648>,  <29.628572, 37.837322, 34.835873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028383, 37.546249, 34.974648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.965199, 37.696659, 34.609428>,  <28.927288, 37.786903, 34.390297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.965199, 37.696659, 34.609428>,  <29.028383, 37.546249, 34.974648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965199, 37.696659, 34.609428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399079, -0.870086, -0.289286,
		-0.903208, 0.318682, 0.287502,
		-0.157961, 0.376022, -0.913048,
		28.917810, 37.809467, 34.335514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241249, 37.495007, 34.884331>,  <29.028383, 37.546249, 34.974648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241249, 37.495007, 34.884331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.423380, 37.516335, 34.528839>,  <28.532660, 37.529129, 34.315544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.423380, 37.516335, 34.528839>,  <28.241249, 37.495007, 34.884331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423380, 37.516335, 34.528839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416601, -0.869425, -0.265600,
		-0.786842, 0.491179, -0.373662,
		0.455328, 0.053318, -0.888726,
		28.559978, 37.532330, 34.262222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722864, 37.291515, 34.385235>,  <28.241249, 37.495007, 34.884331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722864, 37.291515, 34.385235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062592, 37.244122, 34.179470>,  <28.266428, 37.215683, 34.056011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062592, 37.244122, 34.179470>,  <27.722864, 37.291515, 34.385235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062592, 37.244122, 34.179470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300786, -0.909440, -0.287134,
		-0.433804, 0.398596, -0.808044,
		0.849318, -0.118488, -0.514411,
		28.317387, 37.208576, 34.025146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481749, 36.903328, 33.784954>,  <27.722864, 37.291515, 34.385235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481749, 36.903328, 33.784954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877945, 36.855015, 33.758606>,  <28.115664, 36.826027, 33.742798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877945, 36.855015, 33.758606>,  <27.481749, 36.903328, 33.784954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877945, 36.855015, 33.758606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135772, -0.935553, -0.326047,
		-0.022246, 0.331890, -0.943056,
		0.990491, -0.120788, -0.065874,
		28.175093, 36.818779, 33.738842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619293, 36.603901, 33.098377>,  <27.481749, 36.903328, 33.784954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619293, 36.603901, 33.098377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.926653, 36.509029, 33.336136>,  <28.111069, 36.452106, 33.478790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.926653, 36.509029, 33.336136>,  <27.619293, 36.603901, 33.098377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926653, 36.509029, 33.336136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075546, -0.955911, -0.283774,
		0.635494, 0.173148, -0.752441,
		0.768401, -0.237181, 0.594395,
		28.157173, 36.437874, 33.514454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816101, 36.044926, 32.769897>,  <27.619293, 36.603901, 33.098377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816101, 36.044926, 32.769897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.995346, 36.013855, 33.126137>,  <28.102892, 35.995213, 33.339882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.995346, 36.013855, 33.126137>,  <27.816101, 36.044926, 32.769897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995346, 36.013855, 33.126137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216120, -0.957256, -0.192232,
		0.867461, 0.278617, -0.412170,
		0.448111, -0.077675, 0.890597,
		28.129780, 35.990551, 33.393314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427380, 35.712620, 32.663532>,  <27.816101, 36.044926, 32.769897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427380, 35.712620, 32.663532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.390192, 35.653862, 33.057442>,  <28.367880, 35.618607, 33.293789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.390192, 35.653862, 33.057442>,  <28.427380, 35.712620, 32.663532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390192, 35.653862, 33.057442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234185, -0.964536, -0.121771,
		0.967736, 0.219298, 0.124076,
		-0.092971, -0.146899, 0.984773,
		28.362301, 35.609791, 33.352875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876276, 35.125389, 32.790089>,  <28.427380, 35.712620, 32.663532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876276, 35.125389, 32.790089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.625387, 35.132992, 33.101532>,  <28.474854, 35.137554, 33.288399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.625387, 35.132992, 33.101532>,  <28.876276, 35.125389, 32.790089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625387, 35.132992, 33.101532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108500, -0.992086, -0.063190,
		0.771247, -0.124113, 0.624319,
		-0.627221, 0.019003, 0.778609,
		28.437222, 35.138691, 33.335114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119934, 34.617847, 33.180252>,  <28.876276, 35.125389, 32.790089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119934, 34.617847, 33.180252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.735846, 34.664879, 33.281567>,  <28.505392, 34.693100, 33.342354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.735846, 34.664879, 33.281567>,  <29.119934, 34.617847, 33.180252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735846, 34.664879, 33.281567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153900, -0.979675, -0.128655,
		0.233008, -0.162518, 0.958799,
		-0.960220, 0.117582, 0.253284,
		28.447781, 34.700153, 33.357552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764765, 34.417416, 33.280838>,  <29.119934, 34.617847, 33.180252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764765, 34.417416, 33.280838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.850780, 34.765636, 33.457882>,  <29.902390, 34.974567, 33.564110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.850780, 34.765636, 33.457882>,  <29.764765, 34.417416, 33.280838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850780, 34.765636, 33.457882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962420, -0.265867, 0.055340,
		0.165851, 0.414075, -0.895006,
		0.215037, 0.870549, 0.442609,
		29.915291, 35.026802, 33.590664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490675, 34.626476, 33.088383>,  <29.764765, 34.417416, 33.280838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490675, 34.626476, 33.088383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.390902, 34.785137, 33.441753>,  <30.331038, 34.880333, 33.653778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.390902, 34.785137, 33.441753>,  <30.490675, 34.626476, 33.088383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390902, 34.785137, 33.441753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956315, -0.042730, 0.289199,
		0.152460, 0.916974, -0.368665,
		-0.249435, 0.396651, 0.883431,
		30.316071, 34.904133, 33.706783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816442, 34.131596, 33.486488>,  <30.490675, 34.626476, 33.088383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816442, 34.131596, 33.486488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.058029, 34.246391, 33.189068>,  <31.202980, 34.315269, 33.010616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.058029, 34.246391, 33.189068>,  <30.816442, 34.131596, 33.486488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058029, 34.246391, 33.189068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113493, 0.954383, 0.276173,
		0.788888, -0.082412, 0.608986,
		0.603966, 0.286986, -0.743548,
		31.239220, 34.332485, 32.966003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266026, 34.620430, 33.757343>,  <30.816442, 34.131596, 33.486488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266026, 34.620430, 33.757343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.309111, 34.708706, 33.369591>,  <31.334963, 34.761673, 33.136940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.309111, 34.708706, 33.369591>,  <31.266026, 34.620430, 33.757343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309111, 34.708706, 33.369591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027405, 0.974020, 0.224797,
		0.993804, -0.050779, 0.098868,
		0.107715, 0.220694, -0.969377,
		31.341425, 34.774914, 33.078777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782856, 35.262226, 33.710941>,  <31.266026, 34.620430, 33.757343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782856, 35.262226, 33.710941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.610594, 35.269131, 33.350002>,  <31.507236, 35.273273, 33.133438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.610594, 35.269131, 33.350002>,  <31.782856, 35.262226, 33.710941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610594, 35.269131, 33.350002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070795, 0.996090, 0.052840,
		0.899735, 0.086638, -0.427751,
		-0.430657, 0.017260, -0.902351,
		31.481398, 35.274307, 33.079296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169430, 35.729656, 33.199703>,  <31.782856, 35.262226, 33.710941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169430, 35.729656, 33.199703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.799419, 35.675560, 33.057701>,  <31.577412, 35.643101, 32.972500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.799419, 35.675560, 33.057701>,  <32.169430, 35.729656, 33.199703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799419, 35.675560, 33.057701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101999, 0.988591, -0.110831,
		0.365946, -0.066312, -0.928271,
		-0.925030, -0.135241, -0.355007,
		31.521910, 35.634987, 32.951199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102638, 36.157276, 32.625462>,  <32.169430, 35.729656, 33.199703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102638, 36.157276, 32.625462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.720875, 36.071907, 32.708942>,  <31.491817, 36.020683, 32.759033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.720875, 36.071907, 32.708942>,  <32.102638, 36.157276, 32.625462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720875, 36.071907, 32.708942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222208, 0.974808, -0.019293,
		-0.199330, -0.064790, -0.977788,
		-0.954406, -0.213427, 0.208706,
		31.434553, 36.007877, 32.771553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670919, 36.441715, 32.121502>,  <32.102638, 36.157276, 32.625462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670919, 36.441715, 32.121502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.443060, 36.403625, 32.448044>,  <31.306345, 36.380772, 32.643967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.443060, 36.403625, 32.448044>,  <31.670919, 36.441715, 32.121502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443060, 36.403625, 32.448044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191396, 0.981327, -0.019087,
		-0.799292, -0.167120, -0.577238,
		-0.569649, -0.095224, 0.816353,
		31.272165, 36.375057, 32.692951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011400, 36.686241, 32.002720>,  <31.670919, 36.441715, 32.121502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011400, 36.686241, 32.002720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.011190, 36.709099, 32.402065>,  <31.011065, 36.722813, 32.641674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.011190, 36.709099, 32.402065>,  <31.011400, 36.686241, 32.002720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011190, 36.709099, 32.402065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314867, 0.947575, -0.054406,
		-0.949136, -0.314381, 0.017495,
		-0.000527, 0.057147, 0.998366,
		31.011032, 36.726242, 32.701576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479132, 37.100834, 32.112320>,  <31.011400, 36.686241, 32.002720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479132, 37.100834, 32.112320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.680744, 37.125423, 32.456917>,  <30.801712, 37.140179, 32.663677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.680744, 37.125423, 32.456917>,  <30.479132, 37.100834, 32.112320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680744, 37.125423, 32.456917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207825, 0.976789, 0.051886,
		-0.838308, -0.205193, 0.505109,
		0.504032, 0.061478, 0.861494,
		30.831953, 37.143867, 32.715366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213491, 37.546173, 32.607040>,  <30.479132, 37.100834, 32.112320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213491, 37.546173, 32.607040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.588892, 37.528149, 32.743969>,  <30.814133, 37.517334, 32.826126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.588892, 37.528149, 32.743969>,  <30.213491, 37.546173, 32.607040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588892, 37.528149, 32.743969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020700, 0.982320, 0.186059,
		-0.344654, -0.181703, 0.920976,
		0.938501, -0.045062, 0.342322,
		30.870443, 37.514629, 32.846664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177544, 38.041710, 33.162964>,  <30.213491, 37.546173, 32.607040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177544, 38.041710, 33.162964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.572411, 37.982422, 33.139183>,  <30.809330, 37.946850, 33.124916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.572411, 37.982422, 33.139183>,  <30.177544, 38.041710, 33.162964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572411, 37.982422, 33.139183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155294, 0.977758, 0.140972,
		0.037235, -0.148395, 0.988227,
		0.987166, -0.148216, -0.059452,
		30.868561, 37.937958, 33.121349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560444, 38.255623, 33.778423>,  <30.177544, 38.041710, 33.162964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560444, 38.255623, 33.778423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.818331, 38.267471, 33.472885>,  <30.973063, 38.274578, 33.289562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.818331, 38.267471, 33.472885>,  <30.560444, 38.255623, 33.778423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818331, 38.267471, 33.472885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363923, 0.866852, 0.340775,
		0.672237, -0.497685, 0.548095,
		0.644715, 0.029617, -0.763849,
		31.011745, 38.276356, 33.243729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241411, 38.621418, 34.064556>,  <30.560444, 38.255623, 33.778423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241411, 38.621418, 34.064556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.231689, 38.637794, 33.665009>,  <31.225857, 38.647621, 33.425282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.231689, 38.637794, 33.665009>,  <31.241411, 38.621418, 34.064556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231689, 38.637794, 33.665009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184052, 0.982265, 0.035779,
		0.982616, -0.182974, -0.031405,
		-0.024302, 0.040938, -0.998866,
		31.224400, 38.650074, 33.365349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709236, 39.252293, 33.975452>,  <31.241411, 38.621418, 34.064556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709236, 39.252293, 33.975452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.566557, 39.166317, 33.611790>,  <31.480949, 39.114731, 33.393593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.566557, 39.166317, 33.611790>,  <31.709236, 39.252293, 33.975452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566557, 39.166317, 33.611790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240827, 0.919126, -0.311785,
		0.902647, -0.330161, -0.276082,
		-0.356694, -0.214944, -0.909158,
		31.459549, 39.101833, 33.339043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271698, 39.333759, 33.418850>,  <31.709236, 39.252293, 33.975452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271698, 39.333759, 33.418850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.906036, 39.359245, 33.258720>,  <31.686640, 39.374538, 33.162643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.906036, 39.359245, 33.258720>,  <32.271698, 39.333759, 33.418850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906036, 39.359245, 33.258720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097508, 0.993137, -0.064592,
		0.393463, -0.098082, -0.914093,
		-0.914155, 0.063717, -0.400327,
		31.631790, 39.378361, 33.138622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356583, 39.893444, 32.948647>,  <32.271698, 39.333759, 33.418850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356583, 39.893444, 32.948647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.960297, 39.862179, 32.993137>,  <31.722525, 39.843418, 33.019833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.960297, 39.862179, 32.993137>,  <32.356583, 39.893444, 32.948647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960297, 39.862179, 32.993137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087342, 0.992944, -0.080213,
		-0.104168, -0.089183, -0.990553,
		-0.990717, -0.078162, 0.111223,
		31.663082, 39.838730, 33.026505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051056, 40.364700, 32.396236>,  <32.356583, 39.893444, 32.948647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051056, 40.364700, 32.396236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.785833, 40.332756, 32.693954>,  <31.626701, 40.313587, 32.872585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.785833, 40.332756, 32.693954>,  <32.051056, 40.364700, 32.396236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785833, 40.332756, 32.693954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100208, 0.994813, 0.017475,
		-0.741835, -0.062997, -0.667617,
		-0.663054, -0.079864, 0.744299,
		31.586918, 40.308796, 32.917244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535982, 40.752674, 32.194092>,  <32.051056, 40.364700, 32.396236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535982, 40.752674, 32.194092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.488068, 40.717442, 32.589645>,  <31.459318, 40.696301, 32.826977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.488068, 40.717442, 32.589645>,  <31.535982, 40.752674, 32.194092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488068, 40.717442, 32.589645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093748, 0.992610, 0.077057,
		-0.988364, -0.083475, -0.127158,
		-0.119785, -0.088081, 0.988885,
		31.452131, 40.691017, 32.886311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048244, 41.291092, 32.350273>,  <31.535982, 40.752674, 32.194092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048244, 41.291092, 32.350273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.210009, 41.191563, 32.702305>,  <31.307066, 41.131847, 32.913525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.210009, 41.191563, 32.702305>,  <31.048244, 41.291092, 32.350273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210009, 41.191563, 32.702305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171107, 0.924705, 0.340062,
		-0.898430, -0.288112, 0.331384,
		0.404409, -0.248820, 0.880081,
		31.331331, 41.116917, 32.966328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607012, 41.669140, 32.775654>,  <31.048244, 41.291092, 32.350273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607012, 41.669140, 32.775654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.931046, 41.573071, 32.989597>,  <31.125465, 41.515430, 33.117966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.931046, 41.573071, 32.989597>,  <30.607012, 41.669140, 32.775654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931046, 41.573071, 32.989597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054811, 0.877232, 0.476928,
		-0.583743, -0.415669, 0.697469,
		0.810086, -0.240174, 0.534861,
		31.174072, 41.501019, 33.150055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405182, 41.842335, 33.473660>,  <30.607012, 41.669140, 32.775654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405182, 41.842335, 33.473660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.804962, 41.830818, 33.467068>,  <31.044830, 41.823910, 33.463112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.804962, 41.830818, 33.467068>,  <30.405182, 41.842335, 33.473660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804962, 41.830818, 33.467068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032579, 0.758527, 0.650827,
		-0.006235, -0.651006, 0.759047,
		0.999450, -0.028787, -0.016479,
		31.104797, 41.822182, 33.462124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648619, 41.917580, 34.179543>,  <30.405182, 41.842335, 33.473660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648619, 41.917580, 34.179543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.953281, 42.044659, 33.953640>,  <31.136080, 42.120907, 33.818100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.953281, 42.044659, 33.953640>,  <30.648619, 41.917580, 34.179543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953281, 42.044659, 33.953640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021219, 0.858864, 0.511764,
		0.647634, -0.401772, 0.647418,
		0.761656, 0.317698, -0.564754,
		31.181778, 42.139969, 33.784214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107494, 42.213696, 34.615417>,  <30.648619, 41.917580, 34.179543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107494, 42.213696, 34.615417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.169924, 42.371311, 34.253120>,  <31.207382, 42.465881, 34.035740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.169924, 42.371311, 34.253120>,  <31.107494, 42.213696, 34.615417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169924, 42.371311, 34.253120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080061, 0.908920, 0.409211,
		0.984495, -0.136382, 0.110312,
		0.156074, 0.394035, -0.905747,
		31.216745, 42.489521, 33.981396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749769, 42.596840, 34.713173>,  <31.107494, 42.213696, 34.615417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749769, 42.596840, 34.713173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.565241, 42.739861, 34.388374>,  <31.454525, 42.825672, 34.193493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.565241, 42.739861, 34.388374>,  <31.749769, 42.596840, 34.713173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565241, 42.739861, 34.388374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206150, 0.933351, 0.293867,
		0.862953, -0.031828, -0.504281,
		-0.461318, 0.357551, -0.811999,
		31.426846, 42.847126, 34.144775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.820679, 34.021416, 45.889618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424255, 34.062504, 45.855556>,  <37.186401, 34.087154, 45.835117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424255, 34.062504, 45.855556>,  <37.820679, 34.021416, 45.889618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424255, 34.062504, 45.855556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067520, 0.164395, 0.984081,
		0.115080, 0.981032, -0.155989,
		-0.991059, 0.102716, -0.085157,
		37.126938, 34.093319, 45.830009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673119, 34.627472, 46.321404>,  <37.820679, 34.021416, 45.889618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673119, 34.627472, 46.321404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.324883, 34.438293, 46.267159>,  <37.115940, 34.324787, 46.234612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.324883, 34.438293, 46.267159>,  <37.673119, 34.627472, 46.321404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324883, 34.438293, 46.267159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236584, 0.160746, 0.958222,
		-0.431390, 0.866304, -0.251836,
		-0.870592, -0.472947, -0.135609,
		37.063705, 34.296410, 46.226475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175259, 35.125664, 46.601894>,  <37.673119, 34.627472, 46.321404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175259, 35.125664, 46.601894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.031044, 34.752613, 46.595924>,  <36.944515, 34.528782, 46.592342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.031044, 34.752613, 46.595924>,  <37.175259, 35.125664, 46.601894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031044, 34.752613, 46.595924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041814, -0.032145, 0.998608,
		-0.931806, 0.359413, 0.050587,
		-0.360539, -0.932625, -0.014924,
		36.922882, 34.472824, 46.591446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874226, 35.108646, 47.204330>,  <37.175259, 35.125664, 46.601894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874226, 35.108646, 47.204330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.894806, 34.716434, 47.128517>,  <36.907154, 34.481110, 47.083031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.894806, 34.716434, 47.128517>,  <36.874226, 35.108646, 47.204330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894806, 34.716434, 47.128517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346691, -0.160446, 0.924155,
		-0.936567, -0.113257, 0.331684,
		0.051450, -0.980525, -0.189534,
		36.910240, 34.422276, 47.071655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442448, 34.832455, 47.695377>,  <36.874226, 35.108646, 47.204330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442448, 34.832455, 47.695377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665337, 34.529179, 47.559940>,  <36.799072, 34.347214, 47.478680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665337, 34.529179, 47.559940>,  <36.442448, 34.832455, 47.695377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665337, 34.529179, 47.559940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196337, -0.275900, 0.940921,
		-0.806816, -0.590782, -0.004877,
		0.557225, -0.758192, -0.338592,
		36.832504, 34.301720, 47.458363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181400, 34.158741, 47.989178>,  <36.442448, 34.832455, 47.695377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181400, 34.158741, 47.989178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.553680, 34.086849, 47.861752>,  <36.777050, 34.043713, 47.785294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.553680, 34.086849, 47.861752>,  <36.181400, 34.158741, 47.989178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553680, 34.086849, 47.861752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150395, -0.605885, 0.781207,
		-0.333423, -0.774984, -0.536870,
		0.930705, -0.179730, -0.318569,
		36.832893, 34.032928, 47.766182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315830, 33.370331, 48.040039>,  <36.181400, 34.158741, 47.989178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315830, 33.370331, 48.040039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.643463, 33.599186, 48.056797>,  <36.840042, 33.736500, 48.066853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.643463, 33.599186, 48.056797>,  <36.315830, 33.370331, 48.040039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643463, 33.599186, 48.056797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240537, -0.408827, 0.880342,
		0.520806, -0.710998, -0.472485,
		0.819087, 0.572138, 0.041899,
		36.889191, 33.770828, 48.069366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736172, 32.991928, 48.448483>,  <36.315830, 33.370331, 48.040039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736172, 32.991928, 48.448483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.926479, 33.343708, 48.442677>,  <37.040665, 33.554775, 48.439194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.926479, 33.343708, 48.442677>,  <36.736172, 32.991928, 48.448483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926479, 33.343708, 48.442677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457294, -0.233224, 0.858189,
		0.751348, -0.414941, -0.513128,
		0.475771, 0.879449, -0.014517,
		37.069210, 33.607544, 48.438320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397018, 32.856304, 48.761448>,  <36.736172, 32.991928, 48.448483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397018, 32.856304, 48.761448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.361927, 33.254410, 48.778206>,  <37.340874, 33.493275, 48.788261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.361927, 33.254410, 48.778206>,  <37.397018, 32.856304, 48.761448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361927, 33.254410, 48.778206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261667, -0.017553, 0.964998,
		0.961163, 0.095617, -0.258888,
		-0.087726, 0.995263, 0.041891,
		37.335609, 33.552990, 48.790771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902409, 33.057720, 49.134529>,  <37.397018, 32.856304, 48.761448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902409, 33.057720, 49.134529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.647781, 33.366199, 49.136669>,  <37.495007, 33.551289, 49.137955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.647781, 33.366199, 49.136669>,  <37.902409, 33.057720, 49.134529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647781, 33.366199, 49.136669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115157, 0.088183, 0.989425,
		0.762573, 0.630454, -0.144944,
		-0.636569, 0.771201, 0.005355,
		37.456810, 33.597561, 49.138275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271351, 33.516800, 49.514893>,  <37.902409, 33.057720, 49.134529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271351, 33.516800, 49.514893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.900894, 33.667667, 49.515732>,  <37.678619, 33.758186, 49.516235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.900894, 33.667667, 49.515732>,  <38.271351, 33.516800, 49.514893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900894, 33.667667, 49.515732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127673, 0.308270, 0.942692,
		0.354904, 0.873337, -0.333656,
		-0.926144, 0.377164, 0.002096,
		37.623051, 33.780815, 49.516361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267620, 34.202198, 49.767952>,  <38.271351, 33.516800, 49.514893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267620, 34.202198, 49.767952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.905594, 34.056583, 49.855892>,  <37.688377, 33.969215, 49.908657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.905594, 34.056583, 49.855892>,  <38.267620, 34.202198, 49.767952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905594, 34.056583, 49.855892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086778, 0.347999, 0.933470,
		-0.416329, 0.863928, -0.283371,
		-0.905063, -0.364041, 0.219852,
		37.634075, 33.947372, 49.921848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961266, 34.614235, 50.288670>,  <38.267620, 34.202198, 49.767952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961266, 34.614235, 50.288670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728130, 34.292835, 50.337139>,  <37.588249, 34.099995, 50.366219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728130, 34.292835, 50.337139>,  <37.961266, 34.614235, 50.288670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728130, 34.292835, 50.337139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168511, 0.265393, 0.949300,
		-0.794920, 0.532874, -0.290081,
		-0.582843, -0.803500, 0.121171,
		37.553276, 34.051785, 50.373489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308193, 34.769360, 50.541611>,  <37.961266, 34.614235, 50.288670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308193, 34.769360, 50.541611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463940, 34.415253, 50.643353>,  <37.557388, 34.202789, 50.704399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463940, 34.415253, 50.643353>,  <37.308193, 34.769360, 50.541611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463940, 34.415253, 50.643353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048044, 0.256253, 0.965415,
		-0.919830, -0.388118, 0.057244,
		0.389364, -0.885268, 0.254356,
		37.580750, 34.149673, 50.719658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191269, 35.309151, 51.108093>,  <37.308193, 34.769360, 50.541611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191269, 35.309151, 51.108093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.108292, 35.695103, 51.172569>,  <37.058506, 35.926674, 51.211254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.108292, 35.695103, 51.172569>,  <37.191269, 35.309151, 51.108093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108292, 35.695103, 51.172569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061283, 0.177265, -0.982253,
		-0.976325, -0.193887, -0.095903,
		-0.207446, 0.964876, 0.161186,
		37.046059, 35.984566, 51.220924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576031, 35.576397, 50.708500>,  <37.191269, 35.309151, 51.108093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576031, 35.576397, 50.708500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786556, 35.908791, 50.780563>,  <36.912872, 36.108227, 50.823803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786556, 35.908791, 50.780563>,  <36.576031, 35.576397, 50.708500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786556, 35.908791, 50.780563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129886, 0.287967, -0.948791,
		-0.840311, 0.475962, 0.259495,
		0.526315, 0.830984, 0.180161,
		36.944450, 36.158085, 50.834610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295177, 36.177555, 50.268707>,  <36.576031, 35.576397, 50.708500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295177, 36.177555, 50.268707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665619, 36.288990, 50.370472>,  <36.887882, 36.355850, 50.431530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665619, 36.288990, 50.370472>,  <36.295177, 36.177555, 50.268707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665619, 36.288990, 50.370472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155473, 0.332620, -0.930157,
		-0.343751, 0.900974, 0.264727,
		0.926101, 0.278585, 0.254415,
		36.943451, 36.372566, 50.446796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392258, 36.805210, 49.917740>,  <36.295177, 36.177555, 50.268707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392258, 36.805210, 49.917740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.765385, 36.707352, 50.023575>,  <36.989262, 36.648636, 50.087074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.765385, 36.707352, 50.023575>,  <36.392258, 36.805210, 49.917740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765385, 36.707352, 50.023575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310289, 0.171931, -0.934966,
		0.183241, 0.954248, 0.236290,
		0.932815, -0.244642, 0.264588,
		37.045231, 36.633961, 50.102951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753384, 37.380005, 49.695168>,  <36.392258, 36.805210, 49.917740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753384, 37.380005, 49.695168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035816, 37.098877, 49.729794>,  <37.205276, 36.930199, 49.750568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035816, 37.098877, 49.729794>,  <36.753384, 37.380005, 49.695168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035816, 37.098877, 49.729794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440508, 0.340221, -0.830784,
		0.554440, 0.624735, 0.549821,
		0.706080, -0.702820, 0.086569,
		37.247639, 36.888031, 49.755764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401249, 37.668358, 49.421974>,  <36.753384, 37.380005, 49.695168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401249, 37.668358, 49.421974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.440544, 37.270561, 49.407337>,  <37.464123, 37.031883, 49.398556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.440544, 37.270561, 49.407337>,  <37.401249, 37.668358, 49.421974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440544, 37.270561, 49.407337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388897, 0.072207, -0.918447,
		0.916029, 0.075997, 0.393847,
		0.098238, -0.994490, -0.036588,
		37.470016, 36.972214, 49.396362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198505, 37.546280, 49.240227>,  <37.401249, 37.668358, 49.421974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198505, 37.546280, 49.240227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.972160, 37.233662, 49.135170>,  <37.836353, 37.046089, 49.072136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.972160, 37.233662, 49.135170>,  <38.198505, 37.546280, 49.240227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972160, 37.233662, 49.135170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293397, 0.106828, -0.950003,
		0.770530, -0.614631, 0.168854,
		-0.565863, -0.781548, -0.262645,
		37.802402, 36.999199, 49.056377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584660, 37.413921, 48.766418>,  <38.198505, 37.546280, 49.240227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584660, 37.413921, 48.766418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.287880, 37.157230, 48.688763>,  <38.109810, 37.003216, 48.642170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.287880, 37.157230, 48.688763>,  <38.584660, 37.413921, 48.766418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287880, 37.157230, 48.688763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305319, -0.065611, -0.949987,
		0.596899, -0.764118, 0.244613,
		-0.741951, -0.641731, -0.194137,
		38.065296, 36.964710, 48.630520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798851, 36.796791, 48.341396>,  <38.584660, 37.413921, 48.766418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798851, 36.796791, 48.341396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.403866, 36.829700, 48.287518>,  <38.166874, 36.849445, 48.255192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.403866, 36.829700, 48.287518>,  <38.798851, 36.796791, 48.341396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403866, 36.829700, 48.287518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111621, -0.239311, -0.964506,
		-0.111588, -0.967451, 0.227128,
		-0.987466, 0.082275, -0.134692,
		38.107628, 36.854385, 48.247108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608040, 36.200302, 48.104996>,  <38.798851, 36.796791, 48.341396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608040, 36.200302, 48.104996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.318172, 36.454071, 47.997395>,  <38.144253, 36.606335, 47.932835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.318172, 36.454071, 47.997395>,  <38.608040, 36.200302, 48.104996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318172, 36.454071, 47.997395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161814, -0.222785, -0.961344,
		-0.669831, -0.740182, 0.058786,
		-0.724667, 0.634426, -0.269001,
		38.100773, 36.644398, 47.916695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489449, 36.036842, 47.417538>,  <38.608040, 36.200302, 48.104996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489449, 36.036842, 47.417538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254868, 36.360378, 47.400360>,  <38.114117, 36.554501, 47.390053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254868, 36.360378, 47.400360>,  <38.489449, 36.036842, 47.417538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254868, 36.360378, 47.400360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120694, 0.034833, -0.992078,
		-0.800940, -0.586992, -0.118050,
		-0.586454, 0.808843, -0.042948,
		38.078930, 36.603031, 47.387474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023933, 35.974602, 46.866623>,  <38.489449, 36.036842, 47.417538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023933, 35.974602, 46.866623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.031364, 36.372158, 46.910156>,  <38.035824, 36.610691, 46.936275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.031364, 36.372158, 46.910156>,  <38.023933, 35.974602, 46.866623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031364, 36.372158, 46.910156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023516, 0.108390, -0.993830,
		-0.999551, 0.021019, -0.021359,
		0.018574, 0.993886, 0.108836,
		38.036938, 36.670322, 46.942806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539387, 36.121029, 46.469135>,  <38.023933, 35.974602, 46.866623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539387, 36.121029, 46.469135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.761711, 36.450424, 46.514633>,  <37.895103, 36.648064, 46.541931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.761711, 36.450424, 46.514633>,  <37.539387, 36.121029, 46.469135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761711, 36.450424, 46.514633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061755, 0.095542, -0.993508,
		-0.829013, 0.559225, 0.002248,
		0.555809, 0.823492, 0.113740,
		37.928455, 36.697472, 46.548756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209091, 36.697861, 46.106743>,  <37.539387, 36.121029, 46.469135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209091, 36.697861, 46.106743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.592171, 36.809151, 46.136116>,  <37.822018, 36.875927, 46.153740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.592171, 36.809151, 46.136116>,  <37.209091, 36.697861, 46.106743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592171, 36.809151, 46.136116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016707, 0.201005, -0.979448,
		-0.287272, 0.939247, 0.187855,
		0.957703, 0.278230, 0.073435,
		37.879482, 36.892620, 46.158146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005886, 37.370342, 46.342312>,  <37.209091, 36.697861, 46.106743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005886, 37.370342, 46.342312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709595, 37.484894, 46.099232>,  <36.531818, 37.553627, 45.953384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709595, 37.484894, 46.099232>,  <37.005886, 37.370342, 46.342312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709595, 37.484894, 46.099232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589048, 0.158073, 0.792487,
		0.323016, 0.944986, 0.051603,
		-0.740732, 0.286383, -0.607702,
		36.487373, 37.570808, 45.916920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794514, 37.927967, 46.587700>,  <37.005886, 37.370342, 46.342312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794514, 37.927967, 46.587700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469013, 37.805553, 46.390057>,  <36.273712, 37.732105, 46.271469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469013, 37.805553, 46.390057>,  <36.794514, 37.927967, 46.587700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469013, 37.805553, 46.390057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574414, 0.293853, 0.764002,
		-0.088618, 0.905534, -0.414917,
		-0.813754, -0.306038, -0.494111,
		36.224888, 37.713741, 46.241825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269844, 38.474174, 46.691811>,  <36.794514, 37.927967, 46.587700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269844, 38.474174, 46.691811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.082977, 38.129585, 46.612202>,  <35.970856, 37.922832, 46.564434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.082977, 38.129585, 46.612202>,  <36.269844, 38.474174, 46.691811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082977, 38.129585, 46.612202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518108, 0.084323, 0.851149,
		-0.716462, 0.500747, -0.485731,
		-0.467169, -0.861476, -0.199026,
		35.942825, 37.871143, 46.552494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626957, 38.594734, 46.925926>,  <36.269844, 38.474174, 46.691811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626957, 38.594734, 46.925926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638134, 38.196152, 46.894199>,  <35.644840, 37.957001, 46.875164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638134, 38.196152, 46.894199>,  <35.626957, 38.594734, 46.925926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638134, 38.196152, 46.894199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577766, -0.080852, 0.812188,
		-0.815724, 0.023137, -0.577978,
		0.027939, -0.996458, -0.079321,
		35.646515, 37.897213, 46.870403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990993, 38.352001, 47.011200>,  <35.626957, 38.594734, 46.925926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990993, 38.352001, 47.011200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.204914, 38.022171, 47.085026>,  <35.333267, 37.824272, 47.129322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.204914, 38.022171, 47.085026>,  <34.990993, 38.352001, 47.011200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204914, 38.022171, 47.085026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562413, -0.184350, 0.806044,
		-0.630619, -0.534875, -0.562343,
		0.534800, -0.824575, 0.184566,
		35.365353, 37.774799, 47.140396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447472, 37.882130, 47.079365>,  <34.990993, 38.352001, 47.011200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447472, 37.882130, 47.079365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.768372, 37.744156, 47.274265>,  <34.960911, 37.661369, 47.391205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.768372, 37.744156, 47.274265>,  <34.447472, 37.882130, 47.079365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768372, 37.744156, 47.274265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554819, -0.129496, 0.821831,
		-0.220387, -0.929649, -0.295268,
		0.802250, -0.344941, 0.487247,
		35.009048, 37.640675, 47.420441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270748, 37.221996, 47.427231>,  <34.447472, 37.882130, 47.079365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270748, 37.221996, 47.427231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591824, 37.346531, 47.630707>,  <34.784470, 37.421253, 47.752792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591824, 37.346531, 47.630707>,  <34.270748, 37.221996, 47.427231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591824, 37.346531, 47.630707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504065, -0.101724, 0.857654,
		0.318765, -0.944839, 0.075281,
		0.802688, 0.311337, 0.508686,
		34.832630, 37.439930, 47.783314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491142, 36.389793, 47.129078>,  <34.270748, 37.221996, 47.427231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491142, 36.389793, 47.129078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.142307, 36.215302, 47.040386>,  <33.933006, 36.110607, 46.987171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.142307, 36.215302, 47.040386>,  <34.491142, 36.389793, 47.129078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142307, 36.215302, 47.040386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207249, 0.081201, -0.974912,
		0.443290, -0.896164, 0.019593,
		-0.872091, -0.436229, -0.221725,
		33.880680, 36.084435, 46.973869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659016, 35.814804, 46.640671>,  <34.491142, 36.389793, 47.129078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659016, 35.814804, 46.640671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.272808, 35.899597, 46.580235>,  <34.041084, 35.950474, 46.543972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.272808, 35.899597, 46.580235>,  <34.659016, 35.814804, 46.640671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272808, 35.899597, 46.580235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201626, 0.241856, -0.949133,
		-0.164660, -0.946873, -0.276259,
		-0.965523, 0.211985, -0.151090,
		33.983150, 35.963192, 46.534908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511444, 35.438297, 46.076698>,  <34.659016, 35.814804, 46.640671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511444, 35.438297, 46.076698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232201, 35.724689, 46.075138>,  <34.064655, 35.896526, 46.074203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232201, 35.724689, 46.075138>,  <34.511444, 35.438297, 46.076698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232201, 35.724689, 46.075138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066265, 0.059186, -0.996045,
		-0.712918, -0.695607, -0.088762,
		-0.698110, 0.715981, -0.003900,
		34.022766, 35.939484, 46.073967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993923, 35.216930, 45.721390>,  <34.511444, 35.438297, 46.076698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993923, 35.216930, 45.721390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946831, 35.614101, 45.727482>,  <33.918575, 35.852406, 45.731136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946831, 35.614101, 45.727482>,  <33.993923, 35.216930, 45.721390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946831, 35.614101, 45.727482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018352, 0.017507, -0.999678,
		-0.992876, -0.117417, -0.020284,
		-0.117734, 0.992928, 0.015228,
		33.911510, 35.911980, 45.732052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557018, 35.348236, 45.114346>,  <33.993923, 35.216930, 45.721390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557018, 35.348236, 45.114346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733131, 35.702976, 45.170406>,  <33.838799, 35.915821, 45.204044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733131, 35.702976, 45.170406>,  <33.557018, 35.348236, 45.114346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733131, 35.702976, 45.170406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007409, 0.152505, -0.988275,
		-0.897830, 0.436157, 0.060574,
		0.440281, 0.886854, 0.140155,
		33.865215, 35.969032, 45.212452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175507, 35.787971, 44.876606>,  <33.557018, 35.348236, 45.114346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175507, 35.787971, 44.876606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.545551, 35.939831, 44.874096>,  <33.767578, 36.030945, 44.872589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.545551, 35.939831, 44.874096>,  <33.175507, 35.787971, 44.876606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545551, 35.939831, 44.874096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059795, 0.129352, -0.989794,
		-0.374963, 0.916043, 0.142366,
		0.925109, 0.379649, -0.006273,
		33.823086, 36.053726, 44.872215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127468, 36.199879, 44.294739>,  <33.175507, 35.787971, 44.876606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127468, 36.199879, 44.294739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517323, 36.205040, 44.384109>,  <33.751236, 36.208138, 44.437733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517323, 36.205040, 44.384109>,  <33.127468, 36.199879, 44.294739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517323, 36.205040, 44.384109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216539, 0.197890, -0.956007,
		-0.056547, 0.980139, 0.190077,
		0.974635, 0.012901, 0.223428,
		33.809711, 36.208912, 44.451138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.553719, 32.583218, 49.724098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.917637, 32.736164, 49.659519>,  <35.135986, 32.827934, 49.620773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.917637, 32.736164, 49.659519>,  <34.553719, 32.583218, 49.724098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917637, 32.736164, 49.659519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127656, -0.112328, -0.985437,
		-0.394934, 0.917157, -0.053384,
		0.909797, 0.382368, -0.161443,
		35.190575, 32.850876, 49.611088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529991, 33.103874, 49.169228>,  <34.553719, 32.583218, 49.724098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529991, 33.103874, 49.169228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.895771, 32.942173, 49.161713>,  <35.115238, 32.845150, 49.157204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.895771, 32.942173, 49.161713>,  <34.529991, 33.103874, 49.169228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895771, 32.942173, 49.161713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116622, -0.218789, -0.968778,
		0.387525, 0.888092, -0.247217,
		0.914452, -0.404257, -0.018785,
		35.170105, 32.820896, 49.156078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929153, 33.408588, 48.464939>,  <34.529991, 33.103874, 49.169228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929153, 33.408588, 48.464939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.087646, 33.067387, 48.600807>,  <35.182743, 32.862663, 48.682327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.087646, 33.067387, 48.600807>,  <34.929153, 33.408588, 48.464939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087646, 33.067387, 48.600807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028216, -0.381089, -0.924108,
		0.917715, 0.356582, -0.175070,
		0.396237, -0.853007, 0.339669,
		35.206516, 32.811485, 48.702709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281727, 33.138290, 47.909077>,  <34.929153, 33.408588, 48.464939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281727, 33.138290, 47.909077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.260139, 32.794945, 48.113155>,  <35.247185, 32.588936, 48.235603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.260139, 32.794945, 48.113155>,  <35.281727, 33.138290, 47.909077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260139, 32.794945, 48.113155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076055, -0.512990, -0.855019,
		0.995642, -0.007343, 0.092969,
		-0.053971, -0.858363, 0.510196,
		35.243950, 32.537437, 48.266212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636719, 32.651394, 47.450630>,  <35.281727, 33.138290, 47.909077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636719, 32.651394, 47.450630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460426, 32.410984, 47.717319>,  <35.354652, 32.266739, 47.877335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460426, 32.410984, 47.717319>,  <35.636719, 32.651394, 47.450630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460426, 32.410984, 47.717319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031679, -0.752707, -0.657593,
		0.897080, -0.268700, 0.350782,
		-0.440731, -0.601026, 0.666726,
		35.328209, 32.230675, 47.917339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070156, 32.036118, 47.536259>,  <35.636719, 32.651394, 47.450630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070156, 32.036118, 47.536259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.693558, 31.937717, 47.628407>,  <35.467598, 31.878679, 47.683693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.693558, 31.937717, 47.628407>,  <36.070156, 32.036118, 47.536259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693558, 31.937717, 47.628407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071879, -0.814379, -0.575865,
		0.329266, -0.525617, 0.784418,
		-0.941497, -0.245996, 0.230367,
		35.411110, 31.863918, 47.697517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969501, 31.408821, 47.292522>,  <36.070156, 32.036118, 47.536259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969501, 31.408821, 47.292522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.583534, 31.468462, 47.378956>,  <35.351952, 31.504246, 47.430817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.583534, 31.468462, 47.378956>,  <35.969501, 31.408821, 47.292522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583534, 31.468462, 47.378956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258236, -0.687369, -0.678851,
		0.047313, -0.710840, 0.701761,
		-0.964923, 0.149101, 0.216086,
		35.294056, 31.513193, 47.443783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658127, 30.836733, 47.271069>,  <35.969501, 31.408821, 47.292522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658127, 30.836733, 47.271069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.346161, 31.079325, 47.209221>,  <35.158981, 31.224880, 47.172112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.346161, 31.079325, 47.209221>,  <35.658127, 30.836733, 47.271069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346161, 31.079325, 47.209221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301411, -0.580462, -0.756449,
		-0.548520, -0.543367, 0.635514,
		-0.779921, 0.606479, -0.154618,
		35.112186, 31.261269, 47.162834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027912, 30.334335, 47.076496>,  <35.658127, 30.836733, 47.271069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027912, 30.334335, 47.076496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.980816, 30.697695, 46.916023>,  <34.952557, 30.915710, 46.819740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.980816, 30.697695, 46.916023>,  <35.027912, 30.334335, 47.076496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980816, 30.697695, 46.916023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182121, -0.416893, -0.890524,
		-0.976201, -0.031791, 0.214525,
		-0.117745, 0.908400, -0.401181,
		34.945492, 30.970215, 46.795670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396160, 30.308176, 46.606342>,  <35.027912, 30.334335, 47.076496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396160, 30.308176, 46.606342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.598934, 30.625217, 46.470814>,  <34.720600, 30.815441, 46.389496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.598934, 30.625217, 46.470814>,  <34.396160, 30.308176, 46.606342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598934, 30.625217, 46.470814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275587, -0.223411, -0.934954,
		-0.816742, 0.567336, 0.105176,
		0.506936, 0.792601, -0.338820,
		34.751015, 30.862997, 46.369167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882603, 30.588461, 46.179672>,  <34.396160, 30.308176, 46.606342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882603, 30.588461, 46.179672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.232128, 30.747049, 46.067059>,  <34.441841, 30.842203, 45.999489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.232128, 30.747049, 46.067059>,  <33.882603, 30.588461, 46.179672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232128, 30.747049, 46.067059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153722, -0.324057, -0.933465,
		-0.461328, 0.858951, -0.222218,
		0.873811, 0.396473, -0.281536,
		34.494270, 30.865992, 45.982597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711670, 30.960371, 45.436340>,  <33.882603, 30.588461, 46.179672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711670, 30.960371, 45.436340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.108635, 30.939556, 45.480888>,  <34.346813, 30.927067, 45.507618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.108635, 30.939556, 45.480888>,  <33.711670, 30.960371, 45.436340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108635, 30.939556, 45.480888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098874, -0.200424, -0.974707,
		0.073043, 0.978326, -0.193758,
		0.992416, -0.052038, 0.111371,
		34.406361, 30.923944, 45.514301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548447, 31.729633, 45.467319>,  <33.711670, 30.960371, 45.436340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548447, 31.729633, 45.467319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.197948, 31.921869, 45.453335>,  <32.987648, 32.037212, 45.444942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.197948, 31.921869, 45.453335>,  <33.548447, 31.729633, 45.467319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197948, 31.921869, 45.453335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023805, 0.029299, 0.999287,
		0.481272, 0.876456, -0.014233,
		-0.876248, 0.480590, -0.034965,
		32.935074, 32.066048, 45.442844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523232, 32.286716, 45.932716>,  <33.548447, 31.729633, 45.467319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523232, 32.286716, 45.932716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.143276, 32.167042, 45.896515>,  <32.915302, 32.095238, 45.874794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.143276, 32.167042, 45.896515>,  <33.523232, 32.286716, 45.932716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143276, 32.167042, 45.896515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105897, 0.035615, 0.993739,
		-0.294094, 0.953529, -0.065513,
		-0.949892, -0.299191, -0.090502,
		32.858307, 32.077286, 45.869366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253513, 32.530605, 46.510948>,  <33.523232, 32.286716, 45.932716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253513, 32.530605, 46.510948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.931557, 32.313297, 46.415440>,  <32.738384, 32.182915, 46.358135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.931557, 32.313297, 46.415440>,  <33.253513, 32.530605, 46.510948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931557, 32.313297, 46.415440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277178, -0.011590, 0.960749,
		-0.524710, 0.839480, -0.141252,
		-0.804892, -0.543267, -0.238767,
		32.690090, 32.150318, 46.343811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662029, 32.900764, 46.707523>,  <33.253513, 32.530605, 46.510948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662029, 32.900764, 46.707523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.563183, 32.513206, 46.702202>,  <32.503876, 32.280670, 46.699009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.563183, 32.513206, 46.702202>,  <32.662029, 32.900764, 46.707523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563183, 32.513206, 46.702202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184033, 0.033444, 0.982351,
		-0.951350, 0.245202, -0.186573,
		-0.247114, -0.968895, -0.013308,
		32.489048, 32.222538, 46.698208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988848, 32.828720, 47.049244>,  <32.662029, 32.900764, 46.707523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988848, 32.828720, 47.049244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.174164, 32.474251, 47.046215>,  <32.285355, 32.261570, 47.044399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.174164, 32.474251, 47.046215>,  <31.988848, 32.828720, 47.049244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174164, 32.474251, 47.046215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052064, -0.035742, 0.998004,
		-0.884677, -0.461970, -0.062697,
		0.463289, -0.886175, -0.007568,
		32.313152, 32.208397, 47.043945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529234, 32.383961, 47.501900>,  <31.988848, 32.828720, 47.049244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529234, 32.383961, 47.501900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.865606, 32.168201, 47.484535>,  <32.067429, 32.038746, 47.474117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.865606, 32.168201, 47.484535>,  <31.529234, 32.383961, 47.501900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865606, 32.168201, 47.484535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030272, -0.033196, 0.998990,
		-0.540296, -0.841395, -0.011587,
		0.840930, -0.539400, -0.043407,
		32.117886, 32.006382, 47.471512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387707, 31.918076, 47.994324>,  <31.529234, 32.383961, 47.501900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387707, 31.918076, 47.994324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.783772, 31.927830, 47.939209>,  <32.021412, 31.933683, 47.906139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.783772, 31.927830, 47.939209>,  <31.387707, 31.918076, 47.994324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783772, 31.927830, 47.939209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129963, 0.204684, 0.970162,
		0.051861, -0.978524, 0.199501,
		0.990162, 0.024386, -0.137787,
		32.080818, 31.935146, 47.897873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653231, 31.355522, 48.540298>,  <31.387707, 31.918076, 47.994324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653231, 31.355522, 48.540298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.966064, 31.574894, 48.421928>,  <32.153763, 31.706516, 48.350906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.966064, 31.574894, 48.421928>,  <31.653231, 31.355522, 48.540298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966064, 31.574894, 48.421928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255146, 0.151438, 0.954969,
		0.568546, -0.822370, -0.021492,
		0.782084, 0.548428, -0.295925,
		32.200691, 31.739422, 48.333153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133774, 31.296789, 49.055294>,  <31.653231, 31.355522, 48.540298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133774, 31.296789, 49.055294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.277756, 31.627687, 48.882740>,  <32.364147, 31.826225, 48.779205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.277756, 31.627687, 48.882740>,  <32.133774, 31.296789, 49.055294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277756, 31.627687, 48.882740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382871, 0.290673, 0.876880,
		0.850787, -0.480807, -0.212098,
		0.359959, 0.827244, -0.431388,
		32.385742, 31.875860, 48.753323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875996, 31.277262, 49.211121>,  <32.133774, 31.296789, 49.055294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875996, 31.277262, 49.211121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.768730, 31.652435, 49.123150>,  <32.704372, 31.877541, 49.070370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.768730, 31.652435, 49.123150>,  <32.875996, 31.277262, 49.211121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768730, 31.652435, 49.123150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676259, 0.345856, 0.650429,
		0.686122, 0.025696, -0.727033,
		-0.268162, 0.937935, -0.219922,
		32.688282, 31.933817, 49.057175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449791, 31.735279, 49.288803>,  <32.875996, 31.277262, 49.211121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449791, 31.735279, 49.288803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.159187, 32.009399, 49.268612>,  <32.984825, 32.173870, 49.256496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.159187, 32.009399, 49.268612>,  <33.449791, 31.735279, 49.288803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159187, 32.009399, 49.268612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391572, 0.473244, 0.789121,
		0.564673, 0.553537, -0.612160,
		-0.726509, 0.685300, -0.050479,
		32.941235, 32.214989, 49.253468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789528, 32.351086, 49.299385>,  <33.449791, 31.735279, 49.288803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789528, 32.351086, 49.299385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.415852, 32.406593, 49.430859>,  <33.191647, 32.439896, 49.509743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.415852, 32.406593, 49.430859>,  <33.789528, 32.351086, 49.299385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415852, 32.406593, 49.430859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354750, 0.459439, 0.814290,
		-0.038015, 0.877302, -0.478430,
		-0.934188, 0.138767, 0.328689,
		33.135593, 32.448223, 49.529465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743881, 32.997143, 49.549446>,  <33.789528, 32.351086, 49.299385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743881, 32.997143, 49.549446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.449997, 32.808609, 49.744606>,  <33.273666, 32.695488, 49.861702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.449997, 32.808609, 49.744606>,  <33.743881, 32.997143, 49.549446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449997, 32.808609, 49.744606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145468, 0.593017, 0.791941,
		-0.662600, 0.652820, -0.367132,
		-0.734711, -0.471334, 0.487898,
		33.229584, 32.667210, 49.890976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397812, 33.550781, 49.799034>,  <33.743881, 32.997143, 49.549446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397812, 33.550781, 49.799034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.291969, 33.227276, 50.009132>,  <33.228462, 33.033173, 50.135189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.291969, 33.227276, 50.009132>,  <33.397812, 33.550781, 49.799034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291969, 33.227276, 50.009132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043599, 0.534066, 0.844318,
		-0.963371, 0.246311, -0.106056,
		-0.264606, -0.808767, 0.525242,
		33.212589, 32.984646, 50.166706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166683, 34.119694, 49.378559>,  <33.397812, 33.550781, 49.799034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166683, 34.119694, 49.378559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.010471, 34.487503, 49.396324>,  <32.916744, 34.708187, 49.406982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.010471, 34.487503, 49.396324>,  <33.166683, 34.119694, 49.378559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010471, 34.487503, 49.396324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190673, 0.127993, -0.973274,
		-0.900630, -0.371619, -0.225312,
		-0.390526, 0.919520, 0.044416,
		32.893314, 34.763359, 49.409649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620518, 34.313568, 48.815140>,  <33.166683, 34.119694, 49.378559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620518, 34.313568, 48.815140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.815796, 34.638294, 48.943283>,  <32.932961, 34.833130, 49.020168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.815796, 34.638294, 48.943283>,  <32.620518, 34.313568, 48.815140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815796, 34.638294, 48.943283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141789, 0.288415, -0.946949,
		-0.861140, 0.507717, 0.025696,
		0.488194, 0.811813, 0.320354,
		32.962254, 34.881840, 49.039391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388245, 34.893265, 48.447418>,  <32.620518, 34.313568, 48.815140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388245, 34.893265, 48.447418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.742470, 34.997746, 48.601070>,  <32.955006, 35.060432, 48.693264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.742470, 34.997746, 48.601070>,  <32.388245, 34.893265, 48.447418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742470, 34.997746, 48.601070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186720, 0.557038, -0.809224,
		-0.425347, 0.788342, 0.444519,
		0.885559, 0.261201, 0.384134,
		33.008137, 35.076107, 48.716312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367619, 35.548851, 48.535015>,  <32.388245, 34.893265, 48.447418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367619, 35.548851, 48.535015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.752773, 35.455711, 48.480404>,  <32.983864, 35.399826, 48.447639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.752773, 35.455711, 48.480404>,  <32.367619, 35.548851, 48.535015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752773, 35.455711, 48.480404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005949, 0.487365, -0.873178,
		0.269855, 0.841580, 0.467890,
		0.962883, -0.232848, -0.136525,
		33.041637, 35.385857, 48.439445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552620, 36.083874, 48.063774>,  <32.367619, 35.548851, 48.535015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552620, 36.083874, 48.063774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.877365, 35.850590, 48.052814>,  <33.072212, 35.710621, 48.046238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.877365, 35.850590, 48.052814>,  <32.552620, 36.083874, 48.063774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877365, 35.850590, 48.052814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282634, 0.433645, -0.855611,
		0.510882, 0.686891, 0.516894,
		0.811860, -0.583208, -0.027403,
		33.120922, 35.675629, 48.044594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196014, 36.563457, 47.997147>,  <32.552620, 36.083874, 48.063774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196014, 36.563457, 47.997147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314323, 36.211597, 47.848160>,  <33.385307, 36.000481, 47.758766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314323, 36.211597, 47.848160>,  <33.196014, 36.563457, 47.997147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314323, 36.211597, 47.848160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331982, 0.460260, -0.823377,
		0.895717, 0.119877, 0.428160,
		0.295768, -0.879654, -0.372465,
		33.403053, 35.947701, 47.736420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895706, 36.635540, 47.628044>,  <33.196014, 36.563457, 47.997147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895706, 36.635540, 47.628044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.768661, 36.281590, 47.491741>,  <33.692436, 36.069218, 47.409958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.768661, 36.281590, 47.491741>,  <33.895706, 36.635540, 47.628044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768661, 36.281590, 47.491741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337454, 0.230358, -0.912721,
		0.886142, -0.404881, 0.225441,
		-0.317612, -0.884876, -0.340759,
		33.673378, 36.016125, 47.389515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464485, 36.546692, 48.055714>,  <33.895706, 36.635540, 47.628044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464485, 36.546692, 48.055714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.637070, 36.896328, 48.144993>,  <34.740620, 37.106110, 48.198563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.637070, 36.896328, 48.144993>,  <34.464485, 36.546692, 48.055714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637070, 36.896328, 48.144993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309496, -0.088982, 0.946729,
		0.847383, -0.477553, 0.232134,
		0.431457, 0.874085, 0.223202,
		34.766506, 37.158554, 48.211952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597706, 36.539425, 48.790504>,  <34.464485, 36.546692, 48.055714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597706, 36.539425, 48.790504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.665554, 36.932430, 48.759781>,  <34.706261, 37.168232, 48.741348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.665554, 36.932430, 48.759781>,  <34.597706, 36.539425, 48.790504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665554, 36.932430, 48.759781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156948, 0.103870, 0.982129,
		0.972932, -0.154531, 0.171822,
		0.169617, 0.982513, -0.076806,
		34.716438, 37.227184, 48.736740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926758, 36.712345, 49.424084>,  <34.597706, 36.539425, 48.790504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926758, 36.712345, 49.424084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.798626, 37.063129, 49.280792>,  <34.721745, 37.273598, 49.194817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.798626, 37.063129, 49.280792>,  <34.926758, 36.712345, 49.424084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798626, 37.063129, 49.280792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229947, 0.294868, 0.927458,
		0.918973, 0.379470, 0.107199,
		-0.320333, 0.876958, -0.358233,
		34.702526, 37.326218, 49.173321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289566, 37.225914, 49.835533>,  <34.926758, 36.712345, 49.424084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289566, 37.225914, 49.835533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.955986, 37.383789, 49.681263>,  <34.755836, 37.478516, 49.588703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.955986, 37.383789, 49.681263>,  <35.289566, 37.225914, 49.835533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955986, 37.383789, 49.681263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302162, 0.258209, 0.917620,
		0.461761, 0.881786, -0.096073,
		-0.833951, 0.394691, -0.385673,
		34.705799, 37.502197, 49.565559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318958, 37.857719, 50.095905>,  <35.289566, 37.225914, 49.835533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318958, 37.857719, 50.095905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.944324, 37.763943, 49.991718>,  <34.719543, 37.707676, 49.929207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.944324, 37.763943, 49.991718>,  <35.318958, 37.857719, 50.095905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944324, 37.763943, 49.991718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321311, 0.277801, 0.905310,
		-0.139887, 0.931592, -0.335514,
		-0.936585, -0.234445, -0.260470,
		34.663349, 37.693607, 49.913578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853218, 38.385460, 50.342564>,  <35.318958, 37.857719, 50.095905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853218, 38.385460, 50.342564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.630562, 38.054943, 50.308151>,  <34.496967, 37.856632, 50.287502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.630562, 38.054943, 50.308151>,  <34.853218, 38.385460, 50.342564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630562, 38.054943, 50.308151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264436, 0.078054, 0.961239,
		-0.787546, 0.557812, -0.261948,
		-0.556636, -0.826289, -0.086035,
		34.463570, 37.807056, 50.282341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296711, 38.635712, 50.600262>,  <34.853218, 38.385460, 50.342564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296711, 38.635712, 50.600262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.276024, 38.236977, 50.624378>,  <34.263611, 37.997734, 50.638847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.276024, 38.236977, 50.624378>,  <34.296711, 38.635712, 50.600262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276024, 38.236977, 50.624378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275583, 0.072274, 0.958556,
		-0.959885, 0.032959, -0.278450,
		-0.051717, -0.996840, 0.060292,
		34.260509, 37.937923, 50.642467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737862, 38.474533, 50.942879>,  <34.296711, 38.635712, 50.600262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737862, 38.474533, 50.942879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.956280, 38.142845, 50.990578>,  <34.087334, 37.943832, 51.019196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.956280, 38.142845, 50.990578>,  <33.737862, 38.474533, 50.942879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956280, 38.142845, 50.990578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147794, 0.044756, 0.988005,
		-0.824613, -0.557124, -0.098115,
		0.546050, -0.829222, 0.119246,
		34.120094, 37.894077, 51.026352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390690, 38.071514, 51.458977>,  <33.737862, 38.474533, 50.942879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390690, 38.071514, 51.458977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.757359, 37.912388, 51.474205>,  <33.977360, 37.816914, 51.483341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.757359, 37.912388, 51.474205>,  <33.390690, 38.071514, 51.458977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757359, 37.912388, 51.474205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041813, -0.000728, 0.999125,
		-0.397438, -0.917466, -0.017301,
		0.916676, -0.397814, 0.038073,
		34.032360, 37.793045, 51.485626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.064434, 36.256886, 35.401482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283573, 35.947285, 35.528469>,  <38.415054, 35.761524, 35.604660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283573, 35.947285, 35.528469>,  <38.064434, 36.256886, 35.401482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283573, 35.947285, 35.528469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475835, 0.023822, 0.879212,
		-0.688074, -0.632736, -0.355247,
		0.547846, -0.774001, 0.317469,
		38.447926, 35.715084, 35.623711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636787, 35.677624, 35.688179>,  <38.064434, 36.256886, 35.401482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636787, 35.677624, 35.688179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002003, 35.683266, 35.851227>,  <38.221134, 35.686649, 35.949055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002003, 35.683266, 35.851227>,  <37.636787, 35.677624, 35.688179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002003, 35.683266, 35.851227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399381, 0.233707, 0.886496,
		-0.082762, -0.972205, 0.219017,
		0.913042, 0.014103, 0.407622,
		38.275917, 35.687496, 35.973515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658241, 35.262314, 36.305443>,  <37.636787, 35.677624, 35.688179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658241, 35.262314, 36.305443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950733, 35.525909, 36.375908>,  <38.126228, 35.684067, 36.418186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950733, 35.525909, 36.375908>,  <37.658241, 35.262314, 36.305443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950733, 35.525909, 36.375908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422895, 0.235313, 0.875093,
		0.535226, -0.714392, 0.450752,
		0.731228, 0.658993, 0.176167,
		38.170101, 35.723606, 36.428757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660492, 35.353207, 37.014732>,  <37.658241, 35.262314, 36.305443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660492, 35.353207, 37.014732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891861, 35.669041, 36.932777>,  <38.030682, 35.858540, 36.883606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891861, 35.669041, 36.932777>,  <37.660492, 35.353207, 37.014732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891861, 35.669041, 36.932777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254909, 0.413547, 0.874071,
		0.774885, -0.453356, 0.440479,
		0.578424, 0.789587, -0.204887,
		38.065388, 35.905918, 36.871311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124073, 35.462990, 37.614174>,  <37.660492, 35.353207, 37.014732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124073, 35.462990, 37.614174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119156, 35.800671, 37.399822>,  <38.116207, 36.003281, 37.271210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119156, 35.800671, 37.399822>,  <38.124073, 35.462990, 37.614174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119156, 35.800671, 37.399822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023822, 0.535522, 0.844186,
		0.999641, 0.023140, 0.013529,
		-0.012289, 0.844204, -0.535881,
		38.115471, 36.053932, 37.239059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644844, 35.750725, 38.019878>,  <38.124073, 35.462990, 37.614174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644844, 35.750725, 38.019878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425346, 36.004086, 37.801640>,  <38.293648, 36.156101, 37.670696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425346, 36.004086, 37.801640>,  <38.644844, 35.750725, 38.019878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425346, 36.004086, 37.801640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072017, 0.614398, 0.785703,
		0.832882, 0.470443, -0.291532,
		-0.548745, 0.633402, -0.545601,
		38.260723, 36.194107, 37.637959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825768, 36.345734, 38.277660>,  <38.644844, 35.750725, 38.019878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825768, 36.345734, 38.277660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490936, 36.452454, 38.086613>,  <38.290039, 36.516487, 37.971985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490936, 36.452454, 38.086613>,  <38.825768, 36.345734, 38.277660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490936, 36.452454, 38.086613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244885, 0.597952, 0.763207,
		0.489219, 0.755824, -0.435196,
		-0.837076, 0.266802, -0.477619,
		38.239815, 36.532494, 37.943329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787258, 37.070869, 38.295879>,  <38.825768, 36.345734, 38.277660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787258, 37.070869, 38.295879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403660, 36.964363, 38.257053>,  <38.173500, 36.900459, 38.233757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403660, 36.964363, 38.257053>,  <38.787258, 37.070869, 38.295879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403660, 36.964363, 38.257053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241596, 0.589025, 0.771155,
		-0.148160, 0.762988, -0.629204,
		-0.959000, -0.266268, -0.097065,
		38.115959, 36.884483, 38.227932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380112, 37.727161, 38.409721>,  <38.787258, 37.070869, 38.295879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380112, 37.727161, 38.409721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170692, 37.392136, 38.472183>,  <38.045040, 37.191120, 38.509659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170692, 37.392136, 38.472183>,  <38.380112, 37.727161, 38.409721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170692, 37.392136, 38.472183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387866, 0.397492, 0.831601,
		-0.758588, 0.374819, -0.532969,
		-0.523550, -0.837563, 0.156153,
		38.013626, 37.140865, 38.519028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788582, 37.888916, 38.646244>,  <38.380112, 37.727161, 38.409721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788582, 37.888916, 38.646244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755917, 37.505398, 38.755085>,  <37.736317, 37.275288, 38.820389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755917, 37.505398, 38.755085>,  <37.788582, 37.888916, 38.646244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755917, 37.505398, 38.755085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534215, 0.272592, 0.800192,
		-0.841395, -0.080019, -0.534464,
		-0.081660, -0.958797, 0.272105,
		37.731419, 37.217758, 38.836716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071381, 37.783012, 38.709133>,  <37.788582, 37.888916, 38.646244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071381, 37.783012, 38.709133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255066, 37.512829, 38.939915>,  <37.365276, 37.350719, 39.078384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255066, 37.512829, 38.939915>,  <37.071381, 37.783012, 38.709133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255066, 37.512829, 38.939915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536280, 0.306988, 0.786233,
		-0.708187, -0.670458, -0.221263,
		0.459211, -0.675459, 0.576958,
		37.392830, 37.310192, 39.113003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537884, 37.473545, 39.087440>,  <37.071381, 37.783012, 38.709133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537884, 37.473545, 39.087440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872269, 37.393642, 39.291893>,  <37.072899, 37.345699, 39.414566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872269, 37.393642, 39.291893>,  <36.537884, 37.473545, 39.087440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872269, 37.393642, 39.291893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503053, 0.093293, 0.859205,
		-0.219322, -0.975393, -0.022501,
		0.835963, -0.199762, 0.511136,
		37.123058, 37.333714, 39.445232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176640, 36.725914, 39.072094>,  <36.537884, 37.473545, 39.087440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176640, 36.725914, 39.072094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798798, 36.715443, 38.941227>,  <35.572094, 36.709160, 38.862705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798798, 36.715443, 38.941227>,  <36.176640, 36.725914, 39.072094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798798, 36.715443, 38.941227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327914, -0.118052, -0.937302,
		-0.014083, -0.992662, 0.120098,
		-0.944602, -0.026182, -0.327170,
		35.515415, 36.707588, 38.843075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099953, 36.288902, 38.531986>,  <36.176640, 36.725914, 39.072094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099953, 36.288902, 38.531986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771729, 36.507027, 38.463493>,  <35.574795, 36.637901, 38.422398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771729, 36.507027, 38.463493>,  <36.099953, 36.288902, 38.531986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771729, 36.507027, 38.463493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066878, -0.205924, -0.976280,
		-0.567635, -0.812547, 0.132503,
		-0.820560, 0.545310, -0.171231,
		35.525562, 36.670620, 38.412125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684879, 35.817764, 38.128094>,  <36.099953, 36.288902, 38.531986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684879, 35.817764, 38.128094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461830, 36.144028, 38.066448>,  <35.327999, 36.339787, 38.029461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461830, 36.144028, 38.066448>,  <35.684879, 35.817764, 38.128094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461830, 36.144028, 38.066448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156255, -0.285482, -0.945560,
		-0.815256, -0.503183, 0.286642,
		-0.557621, 0.815663, -0.154116,
		35.294544, 36.388725, 38.020214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013767, 35.543434, 37.884968>,  <35.684879, 35.817764, 38.128094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013767, 35.543434, 37.884968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092728, 35.913593, 37.755554>,  <35.140106, 36.135689, 37.677906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092728, 35.913593, 37.755554>,  <35.013767, 35.543434, 37.884968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092728, 35.913593, 37.755554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200743, -0.284876, -0.937309,
		-0.959549, 0.249976, 0.129531,
		0.197404, 0.925396, -0.323534,
		35.151947, 36.191212, 37.658493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475636, 35.842186, 37.549866>,  <35.013767, 35.543434, 37.884968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475636, 35.842186, 37.549866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708744, 36.121243, 37.383171>,  <34.848610, 36.288677, 37.283154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708744, 36.121243, 37.383171>,  <34.475636, 35.842186, 37.549866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708744, 36.121243, 37.383171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406990, -0.193303, -0.892745,
		-0.703373, 0.689876, 0.171282,
		0.582774, 0.697643, -0.416736,
		34.883575, 36.330536, 37.258152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094006, 36.182701, 37.087318>,  <34.475636, 35.842186, 37.549866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094006, 36.182701, 37.087318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462723, 36.281040, 36.967415>,  <34.683952, 36.340042, 36.895473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462723, 36.281040, 36.967415>,  <34.094006, 36.182701, 37.087318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462723, 36.281040, 36.967415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310268, 0.004224, -0.950640,
		-0.232445, 0.969300, 0.080172,
		0.921793, 0.245847, -0.299760,
		34.739262, 36.354794, 36.877487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895695, 36.600269, 36.496124>,  <34.094006, 36.182701, 37.087318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895695, 36.600269, 36.496124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279209, 36.489639, 36.470104>,  <34.509319, 36.423260, 36.454494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279209, 36.489639, 36.470104>,  <33.895695, 36.600269, 36.496124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279209, 36.489639, 36.470104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097144, -0.103967, -0.989825,
		0.266999, 0.955352, -0.126550,
		0.958788, -0.276576, -0.065048,
		34.566845, 36.406666, 36.450588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128235, 36.992393, 35.981899>,  <33.895695, 36.600269, 36.496124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128235, 36.992393, 35.981899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391228, 36.691380, 35.996872>,  <34.549023, 36.510769, 36.005856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391228, 36.691380, 35.996872>,  <34.128235, 36.992393, 35.981899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391228, 36.691380, 35.996872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127484, -0.160069, -0.978839,
		0.742605, 0.638800, -0.201179,
		0.657485, -0.752537, 0.037431,
		34.588474, 36.465618, 36.008102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526901, 36.938400, 35.297871>,  <34.128235, 36.992393, 35.981899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526901, 36.938400, 35.297871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555412, 36.571800, 35.455318>,  <34.572517, 36.351841, 35.549789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555412, 36.571800, 35.455318>,  <34.526901, 36.938400, 35.297871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555412, 36.571800, 35.455318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113851, -0.399523, -0.909626,
		0.990938, 0.020021, -0.132821,
		0.071277, -0.916505, 0.393623,
		34.576794, 36.296848, 35.573406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029877, 36.427998, 34.930248>,  <34.526901, 36.938400, 35.297871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029877, 36.427998, 34.930248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774349, 36.187836, 35.122677>,  <34.621033, 36.043739, 35.238132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774349, 36.187836, 35.122677>,  <35.029877, 36.427998, 34.930248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774349, 36.187836, 35.122677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057916, -0.585986, -0.808249,
		0.767174, -0.544186, 0.339567,
		-0.638819, -0.600401, 0.481070,
		34.582703, 36.007717, 35.266998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973709, 35.814415, 34.436474>,  <35.029877, 36.427998, 34.930248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973709, 35.814415, 34.436474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688610, 35.713375, 34.698215>,  <34.517551, 35.652752, 34.855263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688610, 35.713375, 34.698215>,  <34.973709, 35.814415, 34.436474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688610, 35.713375, 34.698215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372077, -0.654671, -0.658000,
		0.594600, -0.712460, 0.372629,
		-0.712748, -0.252601, 0.654357,
		34.474785, 35.637596, 34.894524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854252, 35.041100, 34.400002>,  <34.973709, 35.814415, 34.436474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854252, 35.041100, 34.400002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517979, 35.182755, 34.563873>,  <34.316216, 35.267746, 34.662197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517979, 35.182755, 34.563873>,  <34.854252, 35.041100, 34.400002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517979, 35.182755, 34.563873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541404, -0.565622, -0.622055,
		0.011434, -0.744756, 0.667239,
		-0.840685, 0.354134, 0.409681,
		34.265774, 35.288994, 34.686779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492008, 34.450367, 34.601677>,  <34.854252, 35.041100, 34.400002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492008, 34.450367, 34.601677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226517, 34.744778, 34.548420>,  <34.067223, 34.921425, 34.516464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226517, 34.744778, 34.548420>,  <34.492008, 34.450367, 34.601677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226517, 34.744778, 34.548420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497201, -0.567142, -0.656613,
		-0.558787, -0.369624, 0.742384,
		-0.663737, 0.736022, -0.133134,
		34.027397, 34.965588, 34.508476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939388, 34.023960, 34.651802>,  <34.492008, 34.450367, 34.601677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939388, 34.023960, 34.651802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850204, 34.366619, 34.465710>,  <33.796696, 34.572216, 34.354053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850204, 34.366619, 34.465710>,  <33.939388, 34.023960, 34.651802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850204, 34.366619, 34.465710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539662, -0.505909, -0.672920,
		-0.811823, 0.101038, 0.575096,
		-0.222956, 0.856649, -0.465234,
		33.783318, 34.623615, 34.326138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174393, 34.160103, 34.512413>,  <33.939388, 34.023960, 34.651802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174393, 34.160103, 34.512413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404022, 34.351204, 34.246422>,  <33.541798, 34.465866, 34.086826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404022, 34.351204, 34.246422>,  <33.174393, 34.160103, 34.512413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404022, 34.351204, 34.246422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518018, -0.417034, -0.746819,
		-0.634112, 0.773199, 0.008076,
		0.574072, 0.477751, -0.664978,
		33.576244, 34.494530, 34.046928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145657, 33.551537, 34.674652>,  <33.174393, 34.160103, 34.512413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145657, 33.551537, 34.674652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197224, 33.156952, 34.715195>,  <33.228165, 32.920200, 34.739521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197224, 33.156952, 34.715195>,  <33.145657, 33.551537, 34.674652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197224, 33.156952, 34.715195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246562, 0.067111, 0.966800,
		-0.960514, -0.149630, -0.234572,
		0.128920, -0.986462, 0.101354,
		33.235901, 32.861012, 34.745602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552216, 33.208145, 34.910797>,  <33.145657, 33.551537, 34.674652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552216, 33.208145, 34.910797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857243, 32.986656, 35.044590>,  <33.040260, 32.853764, 35.124866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857243, 32.986656, 35.044590>,  <32.552216, 33.208145, 34.910797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857243, 32.986656, 35.044590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351501, 0.079398, 0.932814,
		-0.543076, -0.828909, -0.134087,
		0.762572, -0.553721, 0.334482,
		33.086014, 32.820541, 35.144936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194874, 32.718666, 35.239517>,  <32.552216, 33.208145, 34.910797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194874, 32.718666, 35.239517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561424, 32.688763, 35.396824>,  <32.781357, 32.670822, 35.491207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561424, 32.688763, 35.396824>,  <32.194874, 32.718666, 35.239517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561424, 32.688763, 35.396824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395336, -0.014645, 0.918420,
		-0.062900, -0.997094, -0.042975,
		0.916381, -0.074759, 0.393266,
		32.836338, 32.666336, 35.514805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143555, 32.277039, 35.881577>,  <32.194874, 32.718666, 35.239517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143555, 32.277039, 35.881577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497677, 32.460945, 35.909428>,  <32.710152, 32.571289, 35.926136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497677, 32.460945, 35.909428>,  <32.143555, 32.277039, 35.881577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497677, 32.460945, 35.909428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165104, 0.170813, 0.971372,
		0.434716, -0.871455, 0.227131,
		0.885304, 0.459771, 0.069625,
		32.763268, 32.598877, 35.930317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493195, 31.854727, 36.423107>,  <32.143555, 32.277039, 35.881577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493195, 31.854727, 36.423107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682945, 32.205940, 36.397743>,  <32.796795, 32.416668, 36.382523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682945, 32.205940, 36.397743>,  <32.493195, 31.854727, 36.423107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682945, 32.205940, 36.397743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009689, 0.066823, 0.997718,
		0.880269, -0.473908, 0.023192,
		0.474376, 0.878035, -0.063414,
		32.825256, 32.469349, 36.378719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985855, 31.819471, 36.974949>,  <32.493195, 31.854727, 36.423107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985855, 31.819471, 36.974949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977509, 32.215363, 36.918373>,  <32.972500, 32.452896, 36.884430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977509, 32.215363, 36.918373>,  <32.985855, 31.819471, 36.974949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977509, 32.215363, 36.918373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051556, 0.140215, 0.988778,
		0.998452, 0.027922, 0.048101,
		-0.020864, 0.989727, -0.141437,
		32.971249, 32.512280, 36.875942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459507, 32.183670, 37.469635>,  <32.985855, 31.819471, 36.974949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459507, 32.183670, 37.469635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212605, 32.483582, 37.374283>,  <33.064465, 32.663528, 37.317070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212605, 32.483582, 37.374283>,  <33.459507, 32.183670, 37.469635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212605, 32.483582, 37.374283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189011, 0.152802, 0.970013,
		0.763720, 0.643806, 0.047398,
		-0.617258, 0.749777, -0.238384,
		33.027428, 32.708515, 37.302769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722919, 32.750343, 37.831215>,  <33.459507, 32.183670, 37.469635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722919, 32.750343, 37.831215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339142, 32.826656, 37.748203>,  <33.108875, 32.872444, 37.698395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339142, 32.826656, 37.748203>,  <33.722919, 32.750343, 37.831215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339142, 32.826656, 37.748203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169565, 0.197536, 0.965519,
		0.225198, 0.961552, -0.157175,
		-0.959444, 0.190781, -0.207530,
		33.051308, 32.883892, 37.685944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583004, 33.395481, 38.214859>,  <33.722919, 32.750343, 37.831215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583004, 33.395481, 38.214859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245220, 33.196964, 38.134277>,  <33.042549, 33.077854, 38.085930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245220, 33.196964, 38.134277>,  <33.583004, 33.395481, 38.214859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245220, 33.196964, 38.134277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224486, -0.013553, 0.974383,
		-0.486309, 0.868050, -0.099966,
		-0.844458, -0.496292, -0.201456,
		32.991882, 33.048077, 38.073841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118526, 33.815304, 38.439934>,  <33.583004, 33.395481, 38.214859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118526, 33.815304, 38.439934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961395, 33.447559, 38.431389>,  <32.867115, 33.226913, 38.426262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961395, 33.447559, 38.431389>,  <33.118526, 33.815304, 38.439934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961395, 33.447559, 38.431389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222306, 0.072396, 0.972285,
		-0.892338, 0.386688, -0.232819,
		-0.392827, -0.919364, -0.021362,
		32.843548, 33.171749, 38.424980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571301, 33.885220, 38.820736>,  <33.118526, 33.815304, 38.439934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571301, 33.885220, 38.820736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598606, 33.487411, 38.789082>,  <32.614990, 33.248726, 38.770088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598606, 33.487411, 38.789082>,  <32.571301, 33.885220, 38.820736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598606, 33.487411, 38.789082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289850, -0.095670, 0.952278,
		-0.954634, -0.042069, -0.294794,
		0.068264, -0.994524, -0.079136,
		32.619087, 33.189053, 38.765343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942961, 33.651611, 39.135468>,  <32.571301, 33.885220, 38.820736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942961, 33.651611, 39.135468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203587, 33.348248, 39.142166>,  <32.359962, 33.166229, 39.146187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203587, 33.348248, 39.142166>,  <31.942961, 33.651611, 39.135468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203587, 33.348248, 39.142166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099455, -0.063518, 0.993013,
		-0.752045, -0.648677, -0.116813,
		0.651565, -0.758408, 0.016746,
		32.399055, 33.120724, 39.147190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657150, 33.124092, 39.569962>,  <31.942961, 33.651611, 39.135468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657150, 33.124092, 39.569962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043209, 33.019524, 39.565086>,  <32.274845, 32.956783, 39.562160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043209, 33.019524, 39.565086>,  <31.657150, 33.124092, 39.569962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043209, 33.019524, 39.565086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002108, -0.054325, 0.998521,
		-0.261694, -0.963696, -0.052983,
		0.965148, -0.261419, -0.012185,
		32.332752, 32.941097, 39.561432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731562, 32.665081, 40.124882>,  <31.657150, 33.124092, 39.569962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731562, 32.665081, 40.124882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114712, 32.772060, 40.083023>,  <32.344601, 32.836246, 40.057907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114712, 32.772060, 40.083023>,  <31.731562, 32.665081, 40.124882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114712, 32.772060, 40.083023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129522, -0.077064, 0.988577,
		0.256325, -0.960487, -0.108458,
		0.957874, 0.267444, -0.104651,
		32.402073, 32.852295, 40.051628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118801, 32.185017, 40.625210>,  <31.731562, 32.665081, 40.124882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118801, 32.185017, 40.625210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342670, 32.507038, 40.546558>,  <32.476990, 32.700249, 40.499367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342670, 32.507038, 40.546558>,  <32.118801, 32.185017, 40.625210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342670, 32.507038, 40.546558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314091, 0.013506, 0.949297,
		0.766887, -0.593053, -0.245300,
		0.559671, 0.805050, -0.196630,
		32.510571, 32.748554, 40.487568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814602, 32.027790, 40.886154>,  <32.118801, 32.185017, 40.625210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814602, 32.027790, 40.886154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779949, 32.425159, 40.856213>,  <32.759155, 32.663582, 40.838249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779949, 32.425159, 40.856213>,  <32.814602, 32.027790, 40.886154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779949, 32.425159, 40.856213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158789, 0.087942, 0.983388,
		0.983504, 0.073309, -0.165364,
		-0.086634, 0.993424, -0.074851,
		32.753960, 32.723186, 40.833755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413578, 32.357384, 41.125221>,  <32.814602, 32.027790, 40.886154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413578, 32.357384, 41.125221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154152, 32.660549, 41.153278>,  <32.998497, 32.842449, 41.170113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154152, 32.660549, 41.153278>,  <33.413578, 32.357384, 41.125221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154152, 32.660549, 41.153278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033541, -0.063605, 0.997411,
		0.760417, 0.649242, 0.015831,
		-0.648569, 0.757917, 0.070142,
		32.959579, 32.887924, 41.174320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713211, 32.914726, 41.582588>,  <33.413578, 32.357384, 41.125221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713211, 32.914726, 41.582588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313686, 32.934189, 41.581982>,  <33.073971, 32.945866, 41.581615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313686, 32.934189, 41.581982>,  <33.713211, 32.914726, 41.582588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313686, 32.934189, 41.581982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002952, -0.029370, 0.999564,
		0.048593, 0.998383, 0.029478,
		-0.998814, 0.048659, -0.001520,
		33.014042, 32.948788, 41.581524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572906, 33.258759, 42.122871>,  <33.713211, 32.914726, 41.582588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572906, 33.258759, 42.122871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205452, 33.108448, 42.074047>,  <32.984978, 33.018261, 42.044754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205452, 33.108448, 42.074047>,  <33.572906, 33.258759, 42.122871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205452, 33.108448, 42.074047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021730, -0.260419, 0.965251,
		-0.394504, 0.889368, 0.231065,
		-0.918637, -0.375774, -0.122062,
		32.929859, 32.995716, 42.037430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258221, 33.465233, 42.714817>,  <33.572906, 33.258759, 42.122871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258221, 33.465233, 42.714817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042805, 33.162949, 42.565754>,  <32.913555, 32.981579, 42.476318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042805, 33.162949, 42.565754>,  <33.258221, 33.465233, 42.714817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042805, 33.162949, 42.565754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079299, -0.394849, 0.915317,
		-0.838862, 0.522484, 0.152714,
		-0.538538, -0.755715, -0.372656,
		32.881245, 32.936234, 42.453957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635220, 33.394703, 43.111996>,  <33.258221, 33.465233, 42.714817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635220, 33.394703, 43.111996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704353, 33.039276, 42.942017>,  <32.745834, 32.826019, 42.840027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704353, 33.039276, 42.942017>,  <32.635220, 33.394703, 43.111996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704353, 33.039276, 42.942017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068222, -0.419607, 0.905139,
		-0.982586, -0.185429, -0.011902,
		0.172833, -0.888564, -0.424950,
		32.756203, 32.772705, 42.814533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040997, 33.065174, 43.292313>,  <32.635220, 33.394703, 43.111996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040997, 33.065174, 43.292313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308952, 32.778461, 43.214882>,  <32.469727, 32.606434, 43.168423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308952, 32.778461, 43.214882>,  <32.040997, 33.065174, 43.292313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308952, 32.778461, 43.214882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150531, -0.386427, 0.909953,
		-0.727045, -0.580425, -0.366760,
		0.669885, -0.716785, -0.193578,
		32.509918, 32.563427, 43.156807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772028, 32.518669, 43.583481>,  <32.040997, 33.065174, 43.292313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772028, 32.518669, 43.583481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147873, 32.395390, 43.523964>,  <32.373379, 32.321423, 43.488255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147873, 32.395390, 43.523964>,  <31.772028, 32.518669, 43.583481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147873, 32.395390, 43.523964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018331, -0.479471, 0.877366,
		-0.341744, -0.821658, -0.456167,
		0.939614, -0.308197, -0.148794,
		32.429756, 32.302929, 43.479324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707613, 31.933304, 43.875961>,  <31.772028, 32.518669, 43.583481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707613, 31.933304, 43.875961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093201, 32.038921, 43.888855>,  <32.324554, 32.102291, 43.896591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093201, 32.038921, 43.888855>,  <31.707613, 31.933304, 43.875961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093201, 32.038921, 43.888855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017083, -0.182361, 0.983083,
		0.265457, -0.947113, -0.180302,
		0.963972, 0.264047, 0.032230,
		32.382393, 32.118134, 43.898525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084259, 31.345438, 44.277443>,  <31.707613, 31.933304, 43.875961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084259, 31.345438, 44.277443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318592, 31.669609, 44.278614>,  <32.459190, 31.864111, 44.279316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318592, 31.669609, 44.278614>,  <32.084259, 31.345438, 44.277443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318592, 31.669609, 44.278614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197687, -0.146399, 0.969272,
		0.785951, -0.567254, -0.245976,
		0.585834, 0.810426, 0.002923,
		32.494343, 31.912737, 44.279491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678425, 31.243126, 44.566147>,  <32.084259, 31.345438, 44.277443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678425, 31.243126, 44.566147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639809, 31.636904, 44.624863>,  <32.616638, 31.873171, 44.660091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639809, 31.636904, 44.624863>,  <32.678425, 31.243126, 44.566147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639809, 31.636904, 44.624863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046097, -0.151745, 0.987344,
		0.994261, 0.088551, 0.060029,
		-0.096539, 0.984445, 0.146792,
		32.610847, 31.932238, 44.668900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187344, 31.348740, 44.999008>,  <32.678425, 31.243126, 44.566147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187344, 31.348740, 44.999008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951191, 31.667389, 45.050919>,  <32.809498, 31.858578, 45.082066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951191, 31.667389, 45.050919>,  <33.187344, 31.348740, 44.999008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951191, 31.667389, 45.050919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129391, -0.065298, 0.989441,
		0.796684, 0.600941, -0.064525,
		-0.590383, 0.796621, 0.129778,
		32.774075, 31.906376, 45.089851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949936, 31.360695, 44.843975>,  <33.187344, 31.348740, 44.999008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949936, 31.360695, 44.843975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240189, 31.118629, 44.974968>,  <34.414341, 30.973391, 45.053562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240189, 31.118629, 44.974968>,  <33.949936, 31.360695, 44.843975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240189, 31.118629, 44.974968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302360, -0.147090, -0.941777,
		0.618097, 0.782396, 0.076244,
		0.725627, -0.605163, 0.327481,
		34.457878, 30.937080, 45.073212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521530, 31.581087, 44.545006>,  <33.949936, 31.360695, 44.843975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521530, 31.581087, 44.545006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626408, 31.210218, 44.652042>,  <34.689335, 30.987698, 44.716263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626408, 31.210218, 44.652042>,  <34.521530, 31.581087, 44.545006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626408, 31.210218, 44.652042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367355, -0.160520, -0.916124,
		0.892359, 0.338502, 0.298515,
		0.262192, -0.927173, 0.267592,
		34.705067, 30.932066, 44.732319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212280, 31.454687, 44.348267>,  <34.521530, 31.581087, 44.545006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212280, 31.454687, 44.348267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035435, 31.096079, 44.359459>,  <34.929325, 30.880915, 44.366173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035435, 31.096079, 44.359459>,  <35.212280, 31.454687, 44.348267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035435, 31.096079, 44.359459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453303, -0.250247, -0.855507,
		0.773982, -0.365551, 0.517035,
		-0.442118, -0.896521, 0.027982,
		34.902798, 30.827124, 44.367855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713634, 31.024738, 44.260925>,  <35.212280, 31.454687, 44.348267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713634, 31.024738, 44.260925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375347, 30.846907, 44.142868>,  <35.172375, 30.740208, 44.072033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375347, 30.846907, 44.142868>,  <35.713634, 31.024738, 44.260925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375347, 30.846907, 44.142868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397782, -0.156542, -0.904027,
		0.355709, -0.881955, 0.309236,
		-0.845719, -0.444578, -0.295143,
		35.121632, 30.713533, 44.054325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912262, 30.353861, 43.928108>,  <35.713634, 31.024738, 44.260925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912262, 30.353861, 43.928108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536716, 30.426270, 43.810966>,  <35.311390, 30.469715, 43.740681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536716, 30.426270, 43.810966>,  <35.912262, 30.353861, 43.928108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536716, 30.426270, 43.810966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223747, -0.325664, -0.918629,
		-0.261662, -0.927995, 0.265252,
		-0.938866, 0.181022, -0.292851,
		35.255058, 30.480576, 43.723110>
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
