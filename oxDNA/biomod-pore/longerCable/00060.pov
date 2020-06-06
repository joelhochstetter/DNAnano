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
	<24.013556, 35.006870, 34.663086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355589, 35.138710, 34.823185>,  <24.560810, 35.217812, 34.919243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355589, 35.138710, 34.823185>,  <24.013556, 35.006870, 34.663086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.355589, 35.138710, 34.823185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349073, 0.204827, -0.914437,
		-0.383375, 0.921636, 0.060092,
		0.855086, 0.329596, 0.400243,
		24.612114, 35.237591, 34.943256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.170666, 35.751747, 34.454311>,  <24.013556, 35.006870, 34.663086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.170666, 35.751747, 34.454311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.489431, 35.522060, 34.529354>,  <24.680691, 35.384247, 34.574379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.489431, 35.522060, 34.529354>,  <24.170666, 35.751747, 34.454311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.489431, 35.522060, 34.529354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293665, 0.096856, -0.950989,
		0.527908, 0.812951, 0.245815,
		0.796916, -0.574222, 0.187604,
		24.728506, 35.349792, 34.585636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.757484, 35.970421, 33.896454>,  <24.170666, 35.751747, 34.454311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.757484, 35.970421, 33.896454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.849148, 35.634296, 34.092968>,  <24.904146, 35.432621, 34.210876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.849148, 35.634296, 34.092968>,  <24.757484, 35.970421, 33.896454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.849148, 35.634296, 34.092968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505939, -0.328359, -0.797626,
		0.831572, 0.431344, 0.349900,
		0.229158, -0.840311, 0.491288,
		24.917894, 35.382202, 34.240353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577766, 35.885017, 33.864731>,  <24.757484, 35.970421, 33.896454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.577766, 35.885017, 33.864731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344004, 35.561501, 33.891033>,  <25.203747, 35.367390, 33.906815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344004, 35.561501, 33.891033>,  <25.577766, 35.885017, 33.864731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344004, 35.561501, 33.891033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580119, -0.473082, -0.663065,
		0.567391, -0.349353, 0.745668,
		-0.584406, -0.808793, 0.065757,
		25.168682, 35.318863, 33.910759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840763, 35.141071, 33.813431>,  <25.577766, 35.885017, 33.864731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840763, 35.141071, 33.813431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601034, 34.903507, 34.028126>,  <25.457197, 34.760967, 34.156940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601034, 34.903507, 34.028126>,  <25.840763, 35.141071, 33.813431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601034, 34.903507, 34.028126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781416, 0.288478, -0.553326,
		0.173788, -0.751035, -0.636980,
		-0.599322, -0.593908, 0.536737,
		25.421238, 34.725334, 34.189148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672638, 34.970177, 33.748653>,  <25.840763, 35.141071, 33.813431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672638, 34.970177, 33.748653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871923, 35.248402, 33.541588>,  <26.991495, 35.415337, 33.417347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871923, 35.248402, 33.541588>,  <26.672638, 34.970177, 33.748653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871923, 35.248402, 33.541588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710445, 0.014771, 0.703598,
		0.497042, -0.718315, -0.486799,
		0.498215, 0.695561, -0.517665,
		27.021387, 35.457069, 33.386288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442085, 34.760571, 33.672649>,  <26.672638, 34.970177, 33.748653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442085, 34.760571, 33.672649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400328, 35.156494, 33.633911>,  <27.375273, 35.394047, 33.610668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400328, 35.156494, 33.633911>,  <27.442085, 34.760571, 33.672649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400328, 35.156494, 33.633911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642480, 0.141449, 0.753135,
		0.759158, 0.016404, -0.650700,
		-0.104395, 0.989810, -0.096843,
		27.369009, 35.453438, 33.604858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100754, 34.993019, 33.786491>,  <27.442085, 34.760571, 33.672649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100754, 34.993019, 33.786491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827528, 35.261879, 33.900784>,  <27.663593, 35.423195, 33.969357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827528, 35.261879, 33.900784>,  <28.100754, 34.993019, 33.786491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827528, 35.261879, 33.900784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486593, 0.127069, 0.864338,
		0.544657, 0.729431, -0.413859,
		-0.683064, 0.672149, 0.285727,
		27.622608, 35.463524, 33.986500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480709, 35.618862, 33.893124>,  <28.100754, 34.993019, 33.786491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480709, 35.618862, 33.893124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136225, 35.647388, 34.094414>,  <27.929535, 35.664505, 34.215187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136225, 35.647388, 34.094414>,  <28.480709, 35.618862, 33.893124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136225, 35.647388, 34.094414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498724, 0.309359, 0.809674,
		-0.097936, 0.948268, -0.301988,
		-0.861210, 0.071313, 0.503221,
		27.877861, 35.668781, 34.245380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480268, 36.277981, 34.253391>,  <28.480709, 35.618862, 33.893124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480268, 36.277981, 34.253391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196234, 36.068264, 34.441391>,  <28.025814, 35.942432, 34.554192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196234, 36.068264, 34.441391>,  <28.480268, 36.277981, 34.253391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196234, 36.068264, 34.441391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354088, 0.311064, 0.881964,
		-0.608605, 0.792691, -0.035237,
		-0.710086, -0.524291, 0.469998,
		27.983208, 35.910976, 34.582390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261253, 36.756699, 34.724464>,  <28.480268, 36.277981, 34.253391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261253, 36.756699, 34.724464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181374, 36.384308, 34.846714>,  <28.133446, 36.160873, 34.920063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181374, 36.384308, 34.846714>,  <28.261253, 36.756699, 34.724464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181374, 36.384308, 34.846714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314105, 0.234626, 0.919939,
		-0.928148, 0.279708, 0.245570,
		-0.199697, -0.930975, 0.305626,
		28.121464, 36.105015, 34.938400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092941, 36.689720, 35.429157>,  <28.261253, 36.756699, 34.724464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092941, 36.689720, 35.429157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237753, 36.334423, 35.316048>,  <28.324640, 36.121246, 35.248180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237753, 36.334423, 35.316048>,  <28.092941, 36.689720, 35.429157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237753, 36.334423, 35.316048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403434, -0.124170, 0.906544,
		-0.840343, -0.442275, 0.313395,
		0.362027, -0.888243, -0.282774,
		28.346361, 36.067951, 35.231216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380610, 37.075951, 35.969139>,  <28.092941, 36.689720, 35.429157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380610, 37.075951, 35.969139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342422, 36.763485, 36.215935>,  <28.319510, 36.576008, 36.364014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342422, 36.763485, 36.215935>,  <28.380610, 37.075951, 35.969139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342422, 36.763485, 36.215935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186972, -0.594715, -0.781892,
		0.977715, -0.190005, -0.089279,
		-0.095468, -0.781160, 0.616988,
		28.313782, 36.529137, 36.401031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759583, 36.569843, 35.750721>,  <28.380610, 37.075951, 35.969139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759583, 36.569843, 35.750721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457462, 36.385460, 35.937069>,  <28.276190, 36.274830, 36.048878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457462, 36.385460, 35.937069>,  <28.759583, 36.569843, 35.750721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457462, 36.385460, 35.937069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294540, -0.396263, -0.869610,
		0.585466, -0.794033, 0.163525,
		-0.755298, -0.460963, 0.465873,
		28.230873, 36.247169, 36.076832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786285, 35.839233, 35.549938>,  <28.759583, 36.569843, 35.750721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786285, 35.839233, 35.549938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410997, 35.916267, 35.664936>,  <28.185825, 35.962490, 35.733936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410997, 35.916267, 35.664936>,  <28.786285, 35.839233, 35.549938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410997, 35.916267, 35.664936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343720, -0.614738, -0.709897,
		0.040019, -0.764858, 0.642955,
		-0.938219, 0.192587, 0.287498,
		28.129532, 35.974045, 35.751186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408394, 35.204346, 35.636448>,  <28.786285, 35.839233, 35.549938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408394, 35.204346, 35.636448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161194, 35.506233, 35.548374>,  <28.012875, 35.687366, 35.495529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161194, 35.506233, 35.548374>,  <28.408394, 35.204346, 35.636448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161194, 35.506233, 35.548374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310661, -0.491707, -0.813458,
		-0.722196, -0.434314, 0.538335,
		-0.618000, 0.754715, -0.220185,
		27.975794, 35.732647, 35.482319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735456, 34.912773, 35.374367>,  <28.408394, 35.204346, 35.636448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735456, 34.912773, 35.374367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818148, 35.281158, 35.242249>,  <27.867762, 35.502190, 35.162979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818148, 35.281158, 35.242249>,  <27.735456, 34.912773, 35.374367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818148, 35.281158, 35.242249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415789, -0.222890, -0.881725,
		-0.885654, 0.319609, 0.336848,
		0.206727, 0.920962, -0.330294,
		27.880165, 35.557446, 35.143162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064524, 35.285770, 35.256691>,  <27.735456, 34.912773, 35.374367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064524, 35.285770, 35.256691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352991, 35.463295, 35.043919>,  <27.526072, 35.569809, 34.916256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352991, 35.463295, 35.043919>,  <27.064524, 35.285770, 35.256691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352991, 35.463295, 35.043919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532641, -0.135732, -0.835386,
		-0.442951, 0.885782, 0.138505,
		0.721171, 0.443809, -0.531927,
		27.569342, 35.596439, 34.884342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700089, 35.640003, 34.852360>,  <27.064524, 35.285770, 35.256691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700089, 35.640003, 34.852360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056988, 35.654449, 34.672318>,  <27.271128, 35.663116, 34.564293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056988, 35.654449, 34.672318>,  <26.700089, 35.640003, 34.852360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056988, 35.654449, 34.672318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451398, 0.097140, -0.887020,
		0.011691, 0.994615, 0.102973,
		0.892246, 0.036111, -0.450103,
		27.324661, 35.665283, 34.537285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545895, 36.082890, 34.302681>,  <26.700089, 35.640003, 34.852360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545895, 36.082890, 34.302681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904270, 35.937462, 34.200619>,  <27.119295, 35.850204, 34.139381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904270, 35.937462, 34.200619>,  <26.545895, 36.082890, 34.302681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904270, 35.937462, 34.200619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221154, 0.133046, -0.966121,
		0.385202, 0.922016, 0.038796,
		0.895941, -0.363572, -0.255157,
		27.173052, 35.828392, 34.124073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051905, 36.581421, 34.164894>,  <26.545895, 36.082890, 34.302681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051905, 36.581421, 34.164894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341127, 36.348289, 34.016571>,  <27.514662, 36.208408, 33.927578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341127, 36.348289, 34.016571>,  <27.051905, 36.581421, 34.164894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341127, 36.348289, 34.016571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586856, -0.235109, -0.774805,
		0.364401, 0.777838, -0.512035,
		0.723057, -0.582831, -0.370805,
		27.558044, 36.173439, 33.905331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217953, 36.790073, 33.469803>,  <27.051905, 36.581421, 34.164894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217953, 36.790073, 33.469803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298470, 36.401489, 33.520012>,  <27.346779, 36.168339, 33.550137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298470, 36.401489, 33.520012>,  <27.217953, 36.790073, 33.469803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298470, 36.401489, 33.520012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462080, -0.207162, -0.862303,
		0.863692, 0.115573, -0.490590,
		0.201291, -0.971456, 0.125520,
		27.358856, 36.110054, 33.557667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431696, 36.522240, 32.784309>,  <27.217953, 36.790073, 33.469803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431696, 36.522240, 32.784309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275993, 36.214375, 32.986732>,  <27.182571, 36.029655, 33.108189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275993, 36.214375, 32.986732>,  <27.431696, 36.522240, 32.784309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275993, 36.214375, 32.986732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559880, -0.238568, -0.793486,
		0.731446, -0.592204, -0.338054,
		-0.389257, -0.769662, 0.506063,
		27.159216, 35.983475, 33.138550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468269, 36.356201, 32.134815>,  <27.431696, 36.522240, 32.784309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468269, 36.356201, 32.134815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593487, 36.612770, 31.854649>,  <27.668617, 36.766712, 31.686548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593487, 36.612770, 31.854649>,  <27.468269, 36.356201, 32.134815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593487, 36.612770, 31.854649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617777, -0.422622, -0.663131,
		-0.721357, 0.640290, 0.263955,
		0.313043, 0.641420, -0.700418,
		27.687399, 36.805195, 31.644524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890203, 36.733078, 31.826155>,  <27.468269, 36.356201, 32.134815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890203, 36.733078, 31.826155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184481, 36.691216, 31.558483>,  <27.361048, 36.666100, 31.397881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184481, 36.691216, 31.558483>,  <26.890203, 36.733078, 31.826155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184481, 36.691216, 31.558483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645405, -0.407998, -0.645748,
		-0.205442, 0.906964, -0.367707,
		0.735694, -0.104656, -0.669179,
		27.405190, 36.659821, 31.357729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549540, 37.024628, 31.224152>,  <26.890203, 36.733078, 31.826155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549540, 37.024628, 31.224152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865923, 36.800014, 31.126942>,  <27.055754, 36.665245, 31.068617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865923, 36.800014, 31.126942>,  <26.549540, 37.024628, 31.224152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865923, 36.800014, 31.126942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586461, -0.582483, -0.562830,
		0.174493, 0.587698, -0.790040,
		0.790959, -0.561538, -0.243023,
		27.103210, 36.631554, 31.054035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467705, 36.801365, 30.596516>,  <26.549540, 37.024628, 31.224152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467705, 36.801365, 30.596516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707176, 36.519882, 30.749552>,  <26.850859, 36.350990, 30.841373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707176, 36.519882, 30.749552>,  <26.467705, 36.801365, 30.596516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707176, 36.519882, 30.749552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517982, -0.704464, -0.485206,
		0.610966, 0.092307, -0.786257,
		0.598678, -0.703711, 0.382591,
		26.886780, 36.308769, 30.864328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807360, 36.420074, 30.045752>,  <26.467705, 36.801365, 30.596516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807360, 36.420074, 30.045752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727667, 36.206516, 30.374449>,  <26.679852, 36.078381, 30.571667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727667, 36.206516, 30.374449>,  <26.807360, 36.420074, 30.045752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727667, 36.206516, 30.374449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405955, -0.718253, -0.565078,
		0.891912, -0.446172, -0.073638,
		-0.199231, -0.533894, 0.821745,
		26.667898, 36.046349, 30.620972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053524, 35.752235, 29.840965>,  <26.807360, 36.420074, 30.045752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053524, 35.752235, 29.840965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856396, 35.626293, 30.165432>,  <26.738119, 35.550728, 30.360113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856396, 35.626293, 30.165432>,  <27.053524, 35.752235, 29.840965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856396, 35.626293, 30.165432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180228, -0.875084, -0.449161,
		0.851260, -0.367552, 0.374515,
		-0.492822, -0.314854, 0.811167,
		26.708549, 35.531837, 30.408783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415300, 35.116478, 30.153852>,  <27.053524, 35.752235, 29.840965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415300, 35.116478, 30.153852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017281, 35.148182, 30.177828>,  <26.778469, 35.167202, 30.192213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017281, 35.148182, 30.177828>,  <27.415300, 35.116478, 30.153852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017281, 35.148182, 30.177828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097361, -0.898267, -0.428528,
		0.019876, -0.432243, 0.901538,
		-0.995051, 0.079257, 0.059937,
		26.718765, 35.171959, 30.195808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257048, 34.452591, 30.281544>,  <27.415300, 35.116478, 30.153852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257048, 34.452591, 30.281544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889133, 34.591808, 30.209038>,  <26.668385, 34.675339, 30.165535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889133, 34.591808, 30.209038>,  <27.257048, 34.452591, 30.281544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889133, 34.591808, 30.209038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213673, -0.831629, -0.512580,
		-0.329145, -0.432733, 0.839289,
		-0.919787, 0.348047, -0.181263,
		26.613197, 34.696224, 30.154659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709232, 34.045582, 30.646244>,  <27.257048, 34.452591, 30.281544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709232, 34.045582, 30.646244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652708, 34.212650, 30.287228>,  <26.618793, 34.312889, 30.071817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652708, 34.212650, 30.287228>,  <26.709232, 34.045582, 30.646244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652708, 34.212650, 30.287228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068204, -0.908594, -0.412074,
		-0.987613, 0.002986, 0.156879,
		-0.141309, 0.417670, -0.897544,
		26.610315, 34.337952, 30.017965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058392, 33.736988, 30.351562>,  <26.709232, 34.045582, 30.646244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058392, 33.736988, 30.351562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256992, 33.906418, 30.048492>,  <26.376152, 34.008076, 29.866650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256992, 33.906418, 30.048492>,  <26.058392, 33.736988, 30.351562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256992, 33.906418, 30.048492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174473, -0.806350, -0.565119,
		-0.850321, 0.412776, -0.326451,
		0.496502, 0.423575, -0.757674,
		26.405943, 34.033489, 29.821190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736029, 33.527084, 29.764956>,  <26.058392, 33.736988, 30.351562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736029, 33.527084, 29.764956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083437, 33.635189, 29.598759>,  <26.291882, 33.700050, 29.499041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083437, 33.635189, 29.598759>,  <25.736029, 33.527084, 29.764956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083437, 33.635189, 29.598759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008436, -0.846206, -0.532789,
		-0.495584, 0.459232, -0.737226,
		0.868519, 0.270261, -0.415492,
		26.343992, 33.716267, 29.474112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712151, 33.333237, 29.095209>,  <25.736029, 33.527084, 29.764956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712151, 33.333237, 29.095209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095343, 33.314789, 29.208448>,  <26.325258, 33.303719, 29.276392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095343, 33.314789, 29.208448>,  <25.712151, 33.333237, 29.095209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095343, 33.314789, 29.208448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032444, -0.963230, -0.266713,
		0.284988, 0.264691, -0.921261,
		0.957982, -0.046121, 0.283096,
		26.382738, 33.300953, 29.293377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.855425, 32.696606, 28.871260>,  <25.712151, 33.333237, 29.095209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.855425, 32.696606, 28.871260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174253, 32.641548, 28.636065>,  <26.365551, 32.608513, 28.494947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174253, 32.641548, 28.636065>,  <25.855425, 32.696606, 28.871260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174253, 32.641548, 28.636065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559349, 0.535262, 0.632948,
		0.227602, -0.833395, 0.503636,
		0.797074, -0.137648, -0.587986,
		26.413376, 32.600254, 28.459669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479437, 32.470505, 29.305994>,  <25.855425, 32.696606, 28.871260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479437, 32.470505, 29.305994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583363, 32.672024, 28.976465>,  <26.645718, 32.792934, 28.778748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583363, 32.672024, 28.976465>,  <26.479437, 32.470505, 29.305994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583363, 32.672024, 28.976465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571043, 0.607813, 0.551791,
		0.778721, -0.613801, -0.129772,
		0.259813, 0.503797, -0.823824,
		26.661306, 32.823162, 28.729319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246992, 32.652020, 29.184406>,  <26.479437, 32.470505, 29.305994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246992, 32.652020, 29.184406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976778, 32.907753, 29.037491>,  <26.814650, 33.061195, 28.949341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976778, 32.907753, 29.037491>,  <27.246992, 32.652020, 29.184406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976778, 32.907753, 29.037491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398122, 0.735559, 0.548135,
		0.620605, 0.224059, -0.751430,
		-0.675536, 0.639336, -0.367288,
		26.774117, 33.099552, 28.927305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417980, 33.318169, 29.437572>,  <27.246992, 32.652020, 29.184406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417980, 33.318169, 29.437572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078587, 33.418911, 29.251394>,  <26.874950, 33.479355, 29.139687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078587, 33.418911, 29.251394>,  <27.417980, 33.318169, 29.437572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078587, 33.418911, 29.251394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021285, 0.862545, 0.505532,
		0.528789, 0.438844, -0.726497,
		-0.848486, 0.251856, -0.465445,
		26.824041, 33.494469, 29.111761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476715, 34.036274, 28.997473>,  <27.417980, 33.318169, 29.437572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476715, 34.036274, 28.997473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098303, 33.947353, 29.091803>,  <26.871256, 33.894001, 29.148399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098303, 33.947353, 29.091803>,  <27.476715, 34.036274, 28.997473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098303, 33.947353, 29.091803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122678, 0.919153, 0.374310,
		-0.299966, 0.325178, -0.896816,
		-0.946029, -0.222300, 0.235823,
		26.814495, 33.880665, 29.162550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976204, 34.590427, 28.769222>,  <27.476715, 34.036274, 28.997473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976204, 34.590427, 28.769222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825775, 34.406532, 29.091019>,  <26.735518, 34.296196, 29.284098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825775, 34.406532, 29.091019>,  <26.976204, 34.590427, 28.769222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825775, 34.406532, 29.091019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079810, 0.881074, 0.466196,
		-0.923146, 0.111117, -0.368041,
		-0.376074, -0.459740, 0.804492,
		26.712954, 34.268612, 29.332367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390907, 34.798668, 28.790653>,  <26.976204, 34.590427, 28.769222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390907, 34.798668, 28.790653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486313, 34.676136, 29.159277>,  <26.543556, 34.602619, 29.380451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486313, 34.676136, 29.159277>,  <26.390907, 34.798668, 28.790653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486313, 34.676136, 29.159277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043590, 0.944616, 0.325270,
		-0.970160, -0.117753, 0.211953,
		0.238516, -0.306325, 0.921561,
		26.557867, 34.584240, 29.435745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.898603, 35.102985, 29.279182>,  <26.390907, 34.798668, 28.790653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.898603, 35.102985, 29.279182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226339, 34.999920, 29.484039>,  <26.422981, 34.938080, 29.606953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226339, 34.999920, 29.484039>,  <25.898603, 35.102985, 29.279182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226339, 34.999920, 29.484039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051385, 0.922722, 0.382025,
		-0.570999, -0.286692, 0.769264,
		0.819341, -0.257665, 0.512142,
		26.472141, 34.922619, 29.637682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871372, 35.153122, 30.098406>,  <25.898603, 35.102985, 29.279182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871372, 35.153122, 30.098406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213770, 35.240593, 29.911022>,  <26.419209, 35.293076, 29.798592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213770, 35.240593, 29.911022>,  <25.871372, 35.153122, 30.098406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213770, 35.240593, 29.911022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023468, 0.921635, 0.387347,
		0.516451, -0.320573, 0.794047,
		0.855995, 0.218680, -0.468457,
		26.470568, 35.306198, 29.770485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677353, 35.297379, 30.775679>,  <25.871372, 35.153122, 30.098406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677353, 35.297379, 30.775679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058372, 35.178856, 30.747810>,  <26.286985, 35.107742, 30.731089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058372, 35.178856, 30.747810>,  <25.677353, 35.297379, 30.775679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058372, 35.178856, 30.747810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303496, 0.907102, 0.291645,
		-0.023216, -0.298951, 0.953986,
		0.952550, -0.296302, -0.069671,
		26.344137, 35.089966, 30.726910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985146, 35.298809, 31.468292>,  <25.677353, 35.297379, 30.775679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985146, 35.298809, 31.468292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216076, 35.366615, 31.148804>,  <26.354635, 35.407299, 30.957109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216076, 35.366615, 31.148804>,  <25.985146, 35.298809, 31.468292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216076, 35.366615, 31.148804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204722, 0.916914, 0.342576,
		0.790432, -0.361294, 0.494656,
		0.577327, 0.169516, -0.798722,
		26.389275, 35.417469, 30.909187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654190, 35.555439, 31.781197>,  <25.985146, 35.298809, 31.468292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654190, 35.555439, 31.781197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625214, 35.694630, 31.407316>,  <26.607828, 35.778145, 31.182987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625214, 35.694630, 31.407316>,  <26.654190, 35.555439, 31.781197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625214, 35.694630, 31.407316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345883, 0.887769, 0.303697,
		0.935477, -0.301297, -0.184671,
		-0.072442, 0.347976, -0.934700,
		26.603481, 35.799023, 31.126905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302567, 35.949829, 31.563055>,  <26.654190, 35.555439, 31.781197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302567, 35.949829, 31.563055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980186, 36.095020, 31.375998>,  <26.786758, 36.182137, 31.263763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980186, 36.095020, 31.375998>,  <27.302567, 35.949829, 31.563055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980186, 36.095020, 31.375998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263746, 0.927395, 0.265284,
		0.529983, 0.090467, -0.843169,
		-0.805950, 0.362978, -0.467644,
		26.738401, 36.203915, 31.235704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615349, 35.525806, 31.001150>,  <27.302567, 35.949829, 31.563055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615349, 35.525806, 31.001150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417875, 35.818031, 30.812449>,  <27.299391, 35.993366, 30.699228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417875, 35.818031, 30.812449>,  <27.615349, 35.525806, 31.001150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417875, 35.818031, 30.812449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555352, 0.682299, 0.475449,
		0.669223, -0.027268, -0.742561,
		-0.493684, 0.730564, -0.471753,
		27.269770, 36.037201, 30.670923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078812, 35.895233, 30.669352>,  <27.615349, 35.525806, 31.001150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078812, 35.895233, 30.669352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.775021, 36.138058, 30.762877>,  <27.592745, 36.283752, 30.818991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.775021, 36.138058, 30.762877>,  <28.078812, 35.895233, 30.669352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775021, 36.138058, 30.762877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621037, 0.569599, 0.538397,
		0.193661, 0.554107, -0.809606,
		-0.759480, 0.607061, 0.233812,
		27.547176, 36.320175, 30.833019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240314, 36.551888, 30.400364>,  <28.078812, 35.895233, 30.669352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240314, 36.551888, 30.400364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999210, 36.562309, 30.719362>,  <27.854548, 36.568562, 30.910761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999210, 36.562309, 30.719362>,  <28.240314, 36.551888, 30.400364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999210, 36.562309, 30.719362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566175, 0.718233, 0.404459,
		-0.562250, 0.695315, -0.447675,
		-0.602761, 0.026056, 0.797496,
		27.818382, 36.570126, 30.958611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303656, 37.242352, 30.592453>,  <28.240314, 36.551888, 30.400364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303656, 37.242352, 30.592453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187317, 37.053982, 30.925592>,  <28.117514, 36.940960, 31.125477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187317, 37.053982, 30.925592>,  <28.303656, 37.242352, 30.592453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187317, 37.053982, 30.925592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608599, 0.580608, 0.540834,
		-0.738251, 0.664171, 0.117736,
		-0.290848, -0.470926, 0.832849,
		28.100063, 36.912704, 31.175447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036585, 37.724552, 31.088490>,  <28.303656, 37.242352, 30.592453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036585, 37.724552, 31.088490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160257, 37.420757, 31.317432>,  <28.234461, 37.238480, 31.454798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160257, 37.420757, 31.317432>,  <28.036585, 37.724552, 31.088490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160257, 37.420757, 31.317432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565963, 0.630610, 0.531052,
		-0.764259, 0.159742, 0.624812,
		0.309181, -0.759483, 0.572358,
		28.253012, 37.192913, 31.489140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973625, 37.852135, 31.806465>,  <28.036585, 37.724552, 31.088490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973625, 37.852135, 31.806465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277470, 37.597069, 31.755287>,  <28.459776, 37.444027, 31.724581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277470, 37.597069, 31.755287>,  <27.973625, 37.852135, 31.806465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277470, 37.597069, 31.755287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597487, 0.606495, 0.524569,
		-0.256904, -0.474914, 0.841699,
		0.759612, -0.637668, -0.127944,
		28.505354, 37.405769, 31.716904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229919, 37.612461, 32.527916>,  <27.973625, 37.852135, 31.806465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229919, 37.612461, 32.527916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464012, 37.677830, 32.210224>,  <28.604467, 37.717049, 32.019611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464012, 37.677830, 32.210224>,  <28.229919, 37.612461, 32.527916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464012, 37.677830, 32.210224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429308, 0.768492, 0.474463,
		0.687892, -0.618639, 0.379592,
		0.585234, 0.163418, -0.794226,
		28.639582, 37.726856, 31.971956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984638, 37.683208, 32.806950>,  <28.229919, 37.612461, 32.527916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984638, 37.683208, 32.806950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892282, 37.859467, 32.459957>,  <28.836870, 37.965221, 32.251762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892282, 37.859467, 32.459957>,  <28.984638, 37.683208, 32.806950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892282, 37.859467, 32.459957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549524, 0.794815, 0.257473,
		0.802941, -0.417254, -0.425658,
		-0.230887, 0.440645, -0.867481,
		28.823017, 37.991661, 32.199715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646410, 37.833305, 32.413589>,  <28.984638, 37.683208, 32.806950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646410, 37.833305, 32.413589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335123, 38.068371, 32.325020>,  <29.148352, 38.209408, 32.271877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335123, 38.068371, 32.325020>,  <29.646410, 37.833305, 32.413589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335123, 38.068371, 32.325020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550087, 0.807992, 0.211076,
		0.302954, 0.042458, -0.952059,
		-0.778218, 0.587662, -0.221429,
		29.101658, 38.244671, 32.258591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471231, 37.693043, 32.309624>,  <29.646410, 37.833305, 32.413589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471231, 37.693043, 32.309624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703468, 37.848759, 32.023586>,  <30.842812, 37.942188, 31.851963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703468, 37.848759, 32.023586>,  <30.471231, 37.693043, 32.309624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703468, 37.848759, 32.023586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682610, -0.711470, 0.166898,
		-0.443796, -0.585031, -0.678811,
		0.580594, 0.389294, -0.715095,
		30.877647, 37.965546, 31.809057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621696, 37.248055, 31.640820>,  <30.471231, 37.693043, 32.309624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621696, 37.248055, 31.640820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932837, 37.491215, 31.704578>,  <31.119520, 37.637112, 31.742834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932837, 37.491215, 31.704578>,  <30.621696, 37.248055, 31.640820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932837, 37.491215, 31.704578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598210, -0.793940, 0.108644,
		0.192597, 0.010845, -0.981218,
		0.777851, 0.607899, 0.159398,
		31.166191, 37.673584, 31.752398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252985, 37.215816, 31.077654>,  <30.621696, 37.248055, 31.640820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252985, 37.215816, 31.077654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348507, 37.294071, 31.458117>,  <31.405821, 37.341026, 31.686394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348507, 37.294071, 31.458117>,  <31.252985, 37.215816, 31.077654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348507, 37.294071, 31.458117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479932, -0.875283, 0.059539,
		0.844178, 0.442271, -0.302917,
		0.238806, 0.195641, 0.951155,
		31.420149, 37.352764, 31.743464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947868, 37.035599, 31.236006>,  <31.252985, 37.215816, 31.077654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947868, 37.035599, 31.236006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704090, 36.999447, 31.551071>,  <31.557823, 36.977757, 31.740110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704090, 36.999447, 31.551071>,  <31.947868, 37.035599, 31.236006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704090, 36.999447, 31.551071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300348, -0.945752, 0.123873,
		0.733737, 0.312066, 0.603527,
		-0.609443, -0.090378, 0.787662,
		31.521257, 36.972332, 31.787369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363567, 36.321362, 31.176359>,  <31.947868, 37.035599, 31.236006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363567, 36.321362, 31.176359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705322, 36.182087, 31.330654>,  <32.910374, 36.098522, 31.423231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705322, 36.182087, 31.330654>,  <32.363567, 36.321362, 31.176359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705322, 36.182087, 31.330654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202838, 0.906894, 0.369324,
		-0.478417, -0.237302, 0.845461,
		0.854385, -0.348183, 0.385740,
		32.961639, 36.077633, 31.446377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360062, 36.254295, 31.942688>,  <32.363567, 36.321362, 31.176359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360062, 36.254295, 31.942688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710407, 36.359997, 31.781179>,  <32.920616, 36.423416, 31.684275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710407, 36.359997, 31.781179>,  <32.360062, 36.254295, 31.942688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710407, 36.359997, 31.781179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055829, 0.886606, 0.459143,
		0.479314, -0.379606, 0.791301,
		0.875866, 0.264251, -0.403770,
		32.973167, 36.439274, 31.660048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721798, 36.593864, 32.467941>,  <32.360062, 36.254295, 31.942688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721798, 36.593864, 32.467941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862968, 36.755417, 32.130344>,  <32.947670, 36.852348, 31.927786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862968, 36.755417, 32.130344>,  <32.721798, 36.593864, 32.467941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862968, 36.755417, 32.130344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180828, 0.914472, 0.361999,
		0.918020, 0.024867, 0.395755,
		0.352904, 0.403885, -0.844000,
		32.968845, 36.876583, 31.877148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207977, 36.087112, 32.614403>,  <32.721798, 36.593864, 32.467941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207977, 36.087112, 32.614403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043022, 36.010883, 32.970745>,  <32.944050, 35.965145, 33.184551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043022, 36.010883, 32.970745>,  <33.207977, 36.087112, 32.614403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043022, 36.010883, 32.970745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471031, -0.792416, -0.387565,
		0.779787, -0.579446, 0.237014,
		-0.412386, -0.190577, 0.890852,
		32.919308, 35.953709, 33.237999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472588, 35.360165, 32.832607>,  <33.207977, 36.087112, 32.614403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472588, 35.360165, 32.832607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104229, 35.455170, 32.956249>,  <32.883213, 35.512173, 33.030434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104229, 35.455170, 32.956249>,  <33.472588, 35.360165, 32.832607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104229, 35.455170, 32.956249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378926, -0.731519, -0.566829,
		0.091487, -0.639116, 0.763650,
		-0.920894, 0.237509, 0.309102,
		32.827961, 35.526421, 33.048981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192009, 34.822201, 33.322601>,  <33.472588, 35.360165, 32.832607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192009, 34.822201, 33.322601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915520, 35.002853, 33.096951>,  <32.749626, 35.111244, 32.961559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915520, 35.002853, 33.096951>,  <33.192009, 34.822201, 33.322601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915520, 35.002853, 33.096951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238198, -0.879415, -0.412177,
		-0.682256, -0.150531, 0.715449,
		-0.691223, 0.451629, -0.564130,
		32.708153, 35.138344, 32.927711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712959, 34.322140, 33.420380>,  <33.192009, 34.822201, 33.322601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712959, 34.322140, 33.420380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605999, 34.531666, 33.096870>,  <32.541824, 34.657383, 32.902763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605999, 34.531666, 33.096870>,  <32.712959, 34.322140, 33.420380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605999, 34.531666, 33.096870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404097, -0.822923, -0.399378,
		-0.874758, 0.220028, 0.431724,
		-0.267401, 0.523818, -0.808772,
		32.525780, 34.688812, 32.854240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116375, 34.035019, 33.287388>,  <32.712959, 34.322140, 33.420380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116375, 34.035019, 33.287388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194683, 34.219807, 32.941380>,  <32.241669, 34.330681, 32.733776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194683, 34.219807, 32.941380>,  <32.116375, 34.035019, 33.287388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194683, 34.219807, 32.941380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368660, -0.782712, -0.501449,
		-0.908715, 0.417067, 0.017078,
		0.195771, 0.461970, -0.865019,
		32.253414, 34.358398, 32.681873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509563, 33.896576, 32.930176>,  <32.116375, 34.035019, 33.287388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509563, 33.896576, 32.930176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779133, 34.021881, 32.662537>,  <31.940874, 34.097065, 32.501953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779133, 34.021881, 32.662537>,  <31.509563, 33.896576, 32.930176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779133, 34.021881, 32.662537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176535, -0.811137, -0.557576,
		-0.717399, 0.493883, -0.491342,
		0.673924, 0.313266, -0.669097,
		31.981310, 34.115860, 32.461807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165777, 33.846008, 32.302883>,  <31.509563, 33.896576, 32.930176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165777, 33.846008, 32.302883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557846, 33.868092, 32.226765>,  <31.793087, 33.881344, 32.181095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557846, 33.868092, 32.226765>,  <31.165777, 33.846008, 32.302883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557846, 33.868092, 32.226765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092429, -0.722088, -0.685599,
		-0.175261, 0.689595, -0.702668,
		0.980174, 0.055211, -0.190292,
		31.851898, 33.884655, 32.169678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173443, 34.040611, 31.670841>,  <31.165777, 33.846008, 32.302883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173443, 34.040611, 31.670841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500290, 33.826221, 31.755741>,  <31.696398, 33.697586, 31.806681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500290, 33.826221, 31.755741>,  <31.173443, 34.040611, 31.670841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500290, 33.826221, 31.755741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212585, -0.622397, -0.753279,
		0.535841, 0.570398, -0.622512,
		0.817118, -0.535974, 0.212248,
		31.745426, 33.665428, 31.819416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453783, 33.910034, 31.023945>,  <31.173443, 34.040611, 31.670841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453783, 33.910034, 31.023945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594858, 33.624599, 31.266069>,  <31.679502, 33.453339, 31.411345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594858, 33.624599, 31.266069>,  <31.453783, 33.910034, 31.023945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594858, 33.624599, 31.266069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031461, -0.655556, -0.754491,
		0.935212, 0.247056, -0.253656,
		0.352687, -0.713590, 0.605311,
		31.700665, 33.410522, 31.447662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768581, 33.455132, 30.587000>,  <31.453783, 33.910034, 31.023945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768581, 33.455132, 30.587000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739164, 33.231483, 30.917328>,  <31.721514, 33.097294, 31.115524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739164, 33.231483, 30.917328>,  <31.768581, 33.455132, 30.587000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739164, 33.231483, 30.917328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049215, -0.825017, -0.562961,
		0.996077, -0.082044, 0.033156,
		-0.073541, -0.559121, 0.825818,
		31.717102, 33.063747, 31.165073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340443, 33.029034, 30.615044>,  <31.768581, 33.455132, 30.587000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340443, 33.029034, 30.615044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042812, 32.841484, 30.805420>,  <31.864235, 32.728954, 30.919645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042812, 32.841484, 30.805420>,  <32.340443, 33.029034, 30.615044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042812, 32.841484, 30.805420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115786, -0.792096, -0.599314,
		0.657990, -0.390826, 0.643665,
		-0.744072, -0.468870, 0.475939,
		31.819592, 32.700825, 30.948202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587788, 32.351734, 30.600239>,  <32.340443, 33.029034, 30.615044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587788, 32.351734, 30.600239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211781, 32.297684, 30.725533>,  <31.986177, 32.265255, 30.800709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211781, 32.297684, 30.725533>,  <32.587788, 32.351734, 30.600239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211781, 32.297684, 30.725533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048045, -0.856616, -0.513713,
		0.337737, -0.497947, 0.798738,
		-0.940013, -0.135125, 0.313234,
		31.929777, 32.257145, 30.819502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611362, 31.632404, 30.799231>,  <32.587788, 32.351734, 30.600239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611362, 31.632404, 30.799231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234783, 31.747131, 30.728348>,  <32.008835, 31.815968, 30.685818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234783, 31.747131, 30.728348>,  <32.611362, 31.632404, 30.799231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234783, 31.747131, 30.728348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203857, -0.902920, -0.378390,
		-0.268531, -0.320112, 0.908526,
		-0.941453, 0.286818, -0.177205,
		31.952347, 31.833178, 30.675186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121662, 31.069460, 31.043514>,  <32.611362, 31.632404, 30.799231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121662, 31.069460, 31.043514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960247, 31.292372, 30.753246>,  <31.863398, 31.426119, 30.579086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960247, 31.292372, 30.753246>,  <32.121662, 31.069460, 31.043514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960247, 31.292372, 30.753246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157786, -0.823619, -0.544753,
		-0.901255, -0.105329, 0.420293,
		-0.403539, 0.557278, -0.725671,
		31.839186, 31.459555, 30.535545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699106, 30.568913, 30.779703>,  <32.121662, 31.069460, 31.043514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699106, 30.568913, 30.779703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723665, 30.858387, 30.504745>,  <31.738400, 31.032072, 30.339771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723665, 30.858387, 30.504745>,  <31.699106, 30.568913, 30.779703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723665, 30.858387, 30.504745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081903, -0.682718, -0.726077,
		-0.994748, 0.100877, 0.017356,
		0.061396, 0.723685, -0.687395,
		31.742085, 31.075493, 30.298527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208622, 30.432930, 30.224497>,  <31.699106, 30.568913, 30.779703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208622, 30.432930, 30.224497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455399, 30.682558, 30.032696>,  <31.603464, 30.832335, 29.917616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455399, 30.682558, 30.032696>,  <31.208622, 30.432930, 30.224497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455399, 30.682558, 30.032696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137921, -0.514108, -0.846564,
		-0.774829, 0.588414, -0.231102,
		0.616942, 0.624069, -0.479501,
		31.640482, 30.869780, 29.888845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784595, 30.727215, 29.638935>,  <31.208622, 30.432930, 30.224497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784595, 30.727215, 29.638935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176138, 30.756582, 29.562569>,  <31.411064, 30.774202, 29.516748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176138, 30.756582, 29.562569>,  <30.784595, 30.727215, 29.638935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176138, 30.756582, 29.562569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139964, -0.440211, -0.886918,
		-0.149161, 0.894888, -0.420627,
		0.978857, 0.073421, -0.190915,
		31.469795, 30.778608, 29.505295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865124, 30.919724, 28.955118>,  <30.784595, 30.727215, 29.638935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865124, 30.919724, 28.955118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238581, 30.779652, 28.985287>,  <31.462654, 30.695608, 29.003387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238581, 30.779652, 28.985287>,  <30.865124, 30.919724, 28.955118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238581, 30.779652, 28.985287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031476, -0.289939, -0.956527,
		0.356827, 0.890678, -0.281721,
		0.933640, -0.350182, 0.075423,
		31.518673, 30.674597, 29.007914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122568, 31.032705, 28.337883>,  <30.865124, 30.919724, 28.955118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122568, 31.032705, 28.337883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376997, 30.762205, 28.486528>,  <31.529654, 30.599905, 28.575716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376997, 30.762205, 28.486528>,  <31.122568, 31.032705, 28.337883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376997, 30.762205, 28.486528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059838, -0.523376, -0.849998,
		0.769305, 0.518424, -0.373371,
		0.636073, -0.676250, 0.371614,
		31.567820, 30.559330, 28.598013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639616, 30.928886, 27.891077>,  <31.122568, 31.032705, 28.337883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639616, 30.928886, 27.891077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640936, 30.578859, 28.084673>,  <31.641727, 30.368843, 28.200830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640936, 30.578859, 28.084673>,  <31.639616, 30.928886, 27.891077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640936, 30.578859, 28.084673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094956, -0.481532, -0.871269,
		0.995476, 0.048834, 0.081503,
		0.003301, -0.875067, 0.483991,
		31.641926, 30.316339, 28.229870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165257, 30.563921, 27.473225>,  <31.639616, 30.928886, 27.891077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165257, 30.563921, 27.473225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011036, 30.272871, 27.700174>,  <31.918503, 30.098242, 27.836344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011036, 30.272871, 27.700174>,  <32.165257, 30.563921, 27.473225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011036, 30.272871, 27.700174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018372, -0.608739, -0.793158,
		0.922504, -0.316226, 0.221332,
		-0.385551, -0.727625, 0.567373,
		31.895370, 30.054583, 27.870386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435955, 29.960508, 27.188648>,  <32.165257, 30.563921, 27.473225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435955, 29.960508, 27.188648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119209, 29.840803, 27.401587>,  <31.929163, 29.768980, 27.529350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119209, 29.840803, 27.401587>,  <32.435955, 29.960508, 27.188648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119209, 29.840803, 27.401587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134616, -0.764725, -0.630138,
		0.595677, -0.570646, 0.565272,
		-0.791864, -0.299264, 0.532348,
		31.881651, 29.751024, 27.561291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537453, 29.328209, 27.171131>,  <32.435955, 29.960508, 27.188648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537453, 29.328209, 27.171131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148899, 29.399248, 27.234209>,  <31.915766, 29.441872, 27.272057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148899, 29.399248, 27.234209>,  <32.537453, 29.328209, 27.171131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148899, 29.399248, 27.234209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237109, -0.686770, -0.687115,
		-0.013731, -0.704845, 0.709229,
		-0.971386, 0.177599, 0.157695,
		31.857483, 29.452528, 27.281517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168766, 28.686060, 26.987757>,  <32.537453, 29.328209, 27.171131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168766, 28.686060, 26.987757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862738, 28.943411, 26.998640>,  <31.679121, 29.097820, 27.005171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862738, 28.943411, 26.998640>,  <32.168766, 28.686060, 26.987757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862738, 28.943411, 26.998640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366971, -0.400881, -0.839420,
		-0.529156, -0.652197, 0.542801,
		-0.765066, 0.643376, 0.027209,
		31.633217, 29.136423, 27.006804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525913, 28.319641, 26.918285>,  <32.168766, 28.686060, 26.987757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525913, 28.319641, 26.918285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457630, 28.686823, 26.775053>,  <31.416660, 28.907131, 26.689114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457630, 28.686823, 26.775053>,  <31.525913, 28.319641, 26.918285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457630, 28.686823, 26.775053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221648, -0.389875, -0.893795,
		-0.960068, -0.073209, 0.270017,
		-0.170706, 0.917953, -0.358080,
		31.406418, 28.962210, 26.667629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956377, 28.228848, 26.514578>,  <31.525913, 28.319641, 26.918285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956377, 28.228848, 26.514578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123779, 28.574490, 26.402740>,  <31.224220, 28.781876, 26.335638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123779, 28.574490, 26.402740>,  <30.956377, 28.228848, 26.514578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123779, 28.574490, 26.402740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134983, -0.245252, -0.960016,
		-0.898126, 0.439514, 0.014000,
		0.418507, 0.864106, -0.279594,
		31.249332, 28.833721, 26.318863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589626, 28.422266, 25.913774>,  <30.956377, 28.228848, 26.514578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589626, 28.422266, 25.913774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929129, 28.632872, 25.894192>,  <31.132830, 28.759235, 25.882442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929129, 28.632872, 25.894192>,  <30.589626, 28.422266, 25.913774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929129, 28.632872, 25.894192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033870, -0.146529, -0.988626,
		-0.527701, 0.837443, -0.142200,
		0.848754, 0.526516, -0.048959,
		31.183756, 28.790827, 25.879503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607674, 28.706886, 25.201124>,  <30.589626, 28.422266, 25.913774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607674, 28.706886, 25.201124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979929, 28.723532, 25.346552>,  <31.203281, 28.733519, 25.433809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979929, 28.723532, 25.346552>,  <30.607674, 28.706886, 25.201124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979929, 28.723532, 25.346552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364721, -0.186596, -0.912228,
		0.029878, 0.981555, -0.188831,
		0.930637, 0.041615, 0.363569,
		31.259121, 28.736015, 25.455622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997881, 29.164427, 24.773508>,  <30.607674, 28.706886, 25.201124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997881, 29.164427, 24.773508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275703, 28.923620, 24.931070>,  <31.442398, 28.779137, 25.025608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275703, 28.923620, 24.931070>,  <30.997881, 29.164427, 24.773508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275703, 28.923620, 24.931070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361815, -0.180950, -0.914520,
		0.621835, 0.777709, 0.092139,
		0.694558, -0.602018, 0.393908,
		31.484072, 28.743015, 25.049242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495800, 29.255339, 24.366701>,  <30.997881, 29.164427, 24.773508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495800, 29.255339, 24.366701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605108, 28.915197, 24.546579>,  <31.670692, 28.711113, 24.654507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605108, 28.915197, 24.546579>,  <31.495800, 29.255339, 24.366701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605108, 28.915197, 24.546579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314509, -0.362816, -0.877182,
		0.909070, 0.381140, 0.168297,
		0.273268, -0.850351, 0.449697,
		31.687088, 28.660091, 24.681488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189003, 29.148636, 24.138268>,  <31.495800, 29.255339, 24.366701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189003, 29.148636, 24.138268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004585, 28.808664, 24.240295>,  <31.893934, 28.604681, 24.301512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004585, 28.808664, 24.240295>,  <32.189003, 29.148636, 24.138268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004585, 28.808664, 24.240295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170002, -0.366718, -0.914668,
		0.870940, -0.378341, 0.313563,
		-0.461045, -0.849927, 0.255070,
		31.866272, 28.553686, 24.316816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659252, 28.622971, 23.953234>,  <32.189003, 29.148636, 24.138268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659252, 28.622971, 23.953234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302742, 28.441679, 23.959089>,  <32.088837, 28.332905, 23.962603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302742, 28.441679, 23.959089>,  <32.659252, 28.622971, 23.953234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302742, 28.441679, 23.959089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237567, -0.494181, -0.836270,
		0.386255, -0.741868, 0.548123,
		-0.891274, -0.453229, 0.014637,
		32.035358, 28.305710, 23.963480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797600, 27.939793, 23.884552>,  <32.659252, 28.622971, 23.953234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797600, 27.939793, 23.884552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423668, 27.982672, 23.749144>,  <32.199306, 28.008400, 23.667898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423668, 27.982672, 23.749144>,  <32.797600, 27.939793, 23.884552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423668, 27.982672, 23.749144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256278, -0.456197, -0.852177,
		-0.245785, -0.883399, 0.398995,
		-0.934832, 0.107199, -0.338522,
		32.143219, 28.014832, 23.647587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602089, 27.282654, 23.549734>,  <32.797600, 27.939793, 23.884552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602089, 27.282654, 23.549734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286663, 27.485882, 23.411152>,  <32.097408, 27.607819, 23.328003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286663, 27.485882, 23.411152>,  <32.602089, 27.282654, 23.549734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286663, 27.485882, 23.411152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180295, -0.347615, -0.920140,
		-0.587929, -0.788053, 0.182514,
		-0.788564, 0.508071, -0.346455,
		32.050095, 27.638304, 23.307215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271343, 26.805435, 23.050974>,  <32.602089, 27.282654, 23.549734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271343, 26.805435, 23.050974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137711, 27.173967, 22.971432>,  <32.057533, 27.395086, 22.923706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137711, 27.173967, 22.971432>,  <32.271343, 26.805435, 23.050974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137711, 27.173967, 22.971432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160081, -0.152451, -0.975260,
		-0.928852, -0.357646, -0.096557,
		-0.334078, 0.921330, -0.198857,
		32.037487, 27.450367, 22.911774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695993, 26.804552, 22.624418>,  <32.271343, 26.805435, 23.050974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695993, 26.804552, 22.624418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851818, 27.168245, 22.565723>,  <31.945312, 27.386461, 22.530506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851818, 27.168245, 22.565723>,  <31.695993, 26.804552, 22.624418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851818, 27.168245, 22.565723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124877, -0.210000, -0.969694,
		-0.912494, 0.359433, -0.195351,
		0.389564, 0.909235, -0.146739,
		31.968687, 27.441015, 22.521702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469158, 26.883614, 21.940779>,  <31.695993, 26.804552, 22.624418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469158, 26.883614, 21.940779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744389, 27.168020, 21.998758>,  <31.909527, 27.338663, 22.033546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744389, 27.168020, 21.998758>,  <31.469158, 26.883614, 21.940779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744389, 27.168020, 21.998758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360139, -0.161196, -0.918867,
		-0.629963, 0.684451, -0.366979,
		0.688075, 0.711015, 0.144950,
		31.950811, 27.381325, 22.042244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344646, 27.340208, 21.338785>,  <31.469158, 26.883614, 21.940779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344646, 27.340208, 21.338785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713804, 27.335911, 21.492744>,  <31.935299, 27.333332, 21.585119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713804, 27.335911, 21.492744>,  <31.344646, 27.340208, 21.338785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713804, 27.335911, 21.492744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384386, 0.084292, -0.919316,
		-0.022569, 0.996383, 0.081922,
		0.922896, -0.010741, 0.384898,
		31.990673, 27.332689, 21.608213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668339, 27.872158, 21.031616>,  <31.344646, 27.340208, 21.338785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668339, 27.872158, 21.031616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987413, 27.686159, 21.185226>,  <32.178856, 27.574560, 21.277393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987413, 27.686159, 21.185226>,  <31.668339, 27.872158, 21.031616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987413, 27.686159, 21.185226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410006, -0.048830, -0.910775,
		0.442260, 0.883964, 0.151701,
		0.797685, -0.464998, 0.384026,
		32.226719, 27.546659, 21.300434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281826, 28.215454, 20.643023>,  <31.668339, 27.872158, 21.031616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281826, 28.215454, 20.643023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343224, 27.851583, 20.797386>,  <32.380062, 27.633261, 20.890005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343224, 27.851583, 20.797386>,  <32.281826, 28.215454, 20.643023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343224, 27.851583, 20.797386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318742, -0.324081, -0.890716,
		0.935330, 0.259725, 0.240208,
		0.153494, -0.909678, 0.385908,
		32.389271, 27.578680, 20.913158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955624, 28.156189, 20.564592>,  <32.281826, 28.215454, 20.643023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955624, 28.156189, 20.564592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804855, 27.787479, 20.600948>,  <32.714394, 27.566254, 20.622763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804855, 27.787479, 20.600948>,  <32.955624, 28.156189, 20.564592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804855, 27.787479, 20.600948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412707, -0.254985, -0.874446,
		0.829217, -0.292089, 0.476533,
		-0.376924, -0.921774, 0.090891,
		32.691776, 27.510948, 20.628216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483868, 27.663309, 20.353537>,  <32.955624, 28.156189, 20.564592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483868, 27.663309, 20.353537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142216, 27.459068, 20.314034>,  <32.937225, 27.336525, 20.290331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142216, 27.459068, 20.314034>,  <33.483868, 27.663309, 20.353537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142216, 27.459068, 20.314034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328979, -0.383392, -0.863008,
		0.402789, -0.769609, 0.495442,
		-0.854127, -0.510600, -0.098759,
		32.885979, 27.305889, 20.284405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712898, 27.114155, 20.031900>,  <33.483868, 27.663309, 20.353537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712898, 27.114155, 20.031900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318314, 27.104122, 19.967075>,  <33.081562, 27.098103, 19.928181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318314, 27.104122, 19.967075>,  <33.712898, 27.114155, 20.031900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318314, 27.104122, 19.967075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156337, -0.442247, -0.883163,
		-0.049523, -0.896543, 0.440180,
		-0.986461, -0.025080, -0.162065,
		33.022377, 27.096598, 19.918455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554375, 26.471479, 19.899544>,  <33.712898, 27.114155, 20.031900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554375, 26.471479, 19.899544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239590, 26.667324, 19.749359>,  <33.050720, 26.784832, 19.659248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239590, 26.667324, 19.749359>,  <33.554375, 26.471479, 19.899544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239590, 26.667324, 19.749359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232179, -0.328804, -0.915413,
		-0.571652, -0.807568, 0.145078,
		-0.786961, 0.489614, -0.375461,
		33.003502, 26.814207, 19.636721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175320, 26.014172, 19.571053>,  <33.554375, 26.471479, 19.899544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175320, 26.014172, 19.571053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066559, 26.365366, 19.413465>,  <33.001301, 26.576082, 19.318913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066559, 26.365366, 19.413465>,  <33.175320, 26.014172, 19.571053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066559, 26.365366, 19.413465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181083, -0.355400, -0.917006,
		-0.945134, -0.320677, -0.062354,
		-0.271902, 0.877985, -0.393970,
		32.984989, 26.628761, 19.295275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964134, 25.848490, 18.910151>,  <33.175320, 26.014172, 19.571053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964134, 25.848490, 18.910151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002403, 26.243149, 18.857428>,  <33.025364, 26.479944, 18.825794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002403, 26.243149, 18.857428>,  <32.964134, 25.848490, 18.910151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002403, 26.243149, 18.857428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334148, -0.156566, -0.929426,
		-0.937652, 0.044878, -0.344665,
		0.095673, 0.986647, -0.131809,
		33.031105, 26.539143, 18.817884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714497, 26.000412, 18.217636>,  <32.964134, 25.848490, 18.910151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714497, 26.000412, 18.217636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974258, 26.267059, 18.364000>,  <33.130116, 26.427048, 18.451818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974258, 26.267059, 18.364000>,  <32.714497, 26.000412, 18.217636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974258, 26.267059, 18.364000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483882, 0.008954, -0.875088,
		-0.586628, 0.745344, -0.316750,
		0.649404, 0.666621, 0.365911,
		33.169079, 26.467045, 18.473774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922470, 26.573444, 17.689514>,  <32.714497, 26.000412, 18.217636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922470, 26.573444, 17.689514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223343, 26.512754, 17.946012>,  <33.403866, 26.476341, 18.099913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223343, 26.512754, 17.946012>,  <32.922470, 26.573444, 17.689514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223343, 26.512754, 17.946012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653818, 0.050599, -0.754958,
		0.082098, 0.987127, 0.137259,
		0.752185, -0.151723, 0.641247,
		33.448997, 26.467237, 18.138386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659176, 27.273354, 17.541620>,  <32.922470, 26.573444, 17.689514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659176, 27.273354, 17.541620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857056, 27.564329, 17.351416>,  <32.975784, 27.738914, 17.237293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857056, 27.564329, 17.351416>,  <32.659176, 27.273354, 17.541620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857056, 27.564329, 17.351416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170120, -0.455509, -0.873826,
		-0.852253, 0.513172, -0.101586,
		0.494696, 0.727439, -0.475510,
		33.005463, 27.782560, 17.208763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180199, 27.647236, 16.954100>,  <32.659176, 27.273354, 17.541620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180199, 27.647236, 16.954100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577431, 27.643259, 16.907295>,  <32.815769, 27.640873, 16.879211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577431, 27.643259, 16.907295>,  <32.180199, 27.647236, 16.954100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577431, 27.643259, 16.907295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097458, -0.625687, -0.773962,
		-0.065518, 0.780011, -0.622327,
		0.993081, -0.009942, -0.117012,
		32.875355, 27.640276, 16.872192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347515, 27.598433, 16.235355>,  <32.180199, 27.647236, 16.954100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347515, 27.598433, 16.235355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674492, 27.453054, 16.414104>,  <32.870678, 27.365828, 16.521355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674492, 27.453054, 16.414104>,  <32.347515, 27.598433, 16.235355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674492, 27.453054, 16.414104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086792, -0.689233, -0.719322,
		0.569435, 0.626789, -0.531864,
		0.817442, -0.363446, 0.446874,
		32.919724, 27.344021, 16.548166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790508, 27.447380, 15.653622>,  <32.347515, 27.598433, 16.235355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790508, 27.447380, 15.653622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819557, 27.225285, 15.985027>,  <32.836987, 27.092028, 16.183870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819557, 27.225285, 15.985027>,  <32.790508, 27.447380, 15.653622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819557, 27.225285, 15.985027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012153, -0.830153, -0.557402,
		0.997285, 0.050549, -0.053540,
		0.072622, -0.555239, 0.828514,
		32.841343, 27.058714, 16.233582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355434, 26.843439, 15.662887>,  <32.790508, 27.447380, 15.653622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355434, 26.843439, 15.662887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014732, 26.746822, 15.848861>,  <32.810310, 26.688852, 15.960445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014732, 26.746822, 15.848861>,  <33.355434, 26.843439, 15.662887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014732, 26.746822, 15.848861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109771, -0.785429, -0.609141,
		0.512307, -0.569877, 0.642481,
		-0.851758, -0.241541, 0.464936,
		32.759205, 26.674360, 15.988341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900997, 27.247976, 16.184788>,  <33.355434, 26.843439, 15.662887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900997, 27.247976, 16.184788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552414, 27.411213, 16.293612>,  <33.343262, 27.509155, 16.358906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552414, 27.411213, 16.293612>,  <33.900997, 27.247976, 16.184788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552414, 27.411213, 16.293612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461545, 0.494687, 0.736384,
		0.165928, 0.767298, -0.619453,
		-0.871461, 0.408092, 0.272060,
		33.290977, 27.533640, 16.375229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105057, 27.822407, 16.497059>,  <33.900997, 27.247976, 16.184788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105057, 27.822407, 16.497059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730644, 27.771723, 16.628386>,  <33.505997, 27.741312, 16.707182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730644, 27.771723, 16.628386>,  <34.105057, 27.822407, 16.497059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730644, 27.771723, 16.628386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237001, 0.462680, 0.854259,
		-0.260148, 0.877423, -0.403053,
		-0.936031, -0.126710, 0.328316,
		33.449837, 27.733709, 16.726881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846462, 28.475443, 16.540295>,  <34.105057, 27.822407, 16.497059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846462, 28.475443, 16.540295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604538, 28.243490, 16.758631>,  <33.459385, 28.104319, 16.889633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604538, 28.243490, 16.758631>,  <33.846462, 28.475443, 16.540295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604538, 28.243490, 16.758631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014851, 0.677081, 0.735759,
		-0.796230, 0.453101, -0.400895,
		-0.604812, -0.579880, 0.545841,
		33.423096, 28.069527, 16.922382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322285, 28.990389, 16.791565>,  <33.846462, 28.475443, 16.540295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322285, 28.990389, 16.791565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324684, 28.663828, 17.022547>,  <33.326126, 28.467892, 17.161135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324684, 28.663828, 17.022547>,  <33.322285, 28.990389, 16.791565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324684, 28.663828, 17.022547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124691, 0.572346, 0.810477,
		-0.992177, -0.076869, -0.098362,
		0.006003, -0.816402, 0.577453,
		33.326485, 28.418907, 17.195784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746544, 29.073612, 17.247677>,  <33.322285, 28.990389, 16.791565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746544, 29.073612, 17.247677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005711, 28.813967, 17.407104>,  <33.161209, 28.658180, 17.502762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005711, 28.813967, 17.407104>,  <32.746544, 29.073612, 17.247677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005711, 28.813967, 17.407104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055510, 0.481626, 0.874617,
		-0.759687, -0.588803, 0.276021,
		0.647916, -0.649113, 0.398570,
		33.200085, 28.619232, 17.526676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454544, 28.935047, 17.879974>,  <32.746544, 29.073612, 17.247677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454544, 28.935047, 17.879974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832233, 28.811869, 17.926638>,  <33.058849, 28.737963, 17.954636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832233, 28.811869, 17.926638>,  <32.454544, 28.935047, 17.879974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832233, 28.811869, 17.926638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018527, 0.403374, 0.914848,
		-0.328779, -0.861661, 0.386581,
		0.944225, -0.307945, 0.116657,
		33.115501, 28.719484, 17.961636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428028, 28.680962, 18.519007>,  <32.454544, 28.935047, 17.879974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428028, 28.680962, 18.519007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816929, 28.744478, 18.450285>,  <33.050270, 28.782587, 18.409052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816929, 28.744478, 18.450285>,  <32.428028, 28.680962, 18.519007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816929, 28.744478, 18.450285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115268, 0.313905, 0.942431,
		0.203578, -0.936082, 0.286891,
		0.972250, 0.158789, -0.171804,
		33.108604, 28.792116, 18.398743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749424, 28.448446, 19.141678>,  <32.428028, 28.680962, 18.519007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749424, 28.448446, 19.141678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048107, 28.651951, 18.970289>,  <33.227318, 28.774054, 18.867456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048107, 28.651951, 18.970289>,  <32.749424, 28.448446, 19.141678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048107, 28.651951, 18.970289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263596, 0.365087, 0.892876,
		0.610692, -0.779661, 0.138505,
		0.746708, 0.508763, -0.428472,
		33.272121, 28.804579, 18.841747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360043, 28.228109, 19.499086>,  <32.749424, 28.448446, 19.141678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360043, 28.228109, 19.499086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421715, 28.590342, 19.341021>,  <33.458717, 28.807680, 19.246181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421715, 28.590342, 19.341021>,  <33.360043, 28.228109, 19.499086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421715, 28.590342, 19.341021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398720, 0.308906, 0.863481,
		0.904019, -0.290694, -0.313445,
		0.154183, 0.905579, -0.395163,
		33.467968, 28.862015, 19.222471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092167, 28.403858, 19.619402>,  <33.360043, 28.228109, 19.499086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092167, 28.403858, 19.619402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921963, 28.759853, 19.553846>,  <33.819839, 28.973450, 19.514513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921963, 28.759853, 19.553846>,  <34.092167, 28.403858, 19.619402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921963, 28.759853, 19.553846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507863, 0.384747, 0.770743,
		0.749008, 0.244727, -0.615707,
		-0.425513, 0.889988, -0.163891,
		33.794308, 29.026850, 19.504679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579556, 28.900438, 19.662403>,  <34.092167, 28.403858, 19.619402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579556, 28.900438, 19.662403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245205, 29.111658, 19.722368>,  <34.044594, 29.238390, 19.758347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245205, 29.111658, 19.722368>,  <34.579556, 28.900438, 19.662403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245205, 29.111658, 19.722368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455813, 0.515545, 0.725567,
		0.305847, 0.674818, -0.671624,
		-0.835878, 0.528047, 0.149913,
		33.994442, 29.270073, 19.767342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771584, 29.715294, 19.647953>,  <34.579556, 28.900438, 19.662403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771584, 29.715294, 19.647953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422298, 29.668127, 19.837099>,  <34.212727, 29.639828, 19.950586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422298, 29.668127, 19.837099>,  <34.771584, 29.715294, 19.647953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422298, 29.668127, 19.837099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260612, 0.706917, 0.657534,
		-0.411809, 0.697399, -0.586556,
		-0.873210, -0.117915, 0.472865,
		34.160336, 29.632753, 19.978958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571774, 30.337528, 19.911749>,  <34.771584, 29.715294, 19.647953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571774, 30.337528, 19.911749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325912, 30.106150, 20.126263>,  <34.178394, 29.967321, 20.254971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325912, 30.106150, 20.126263>,  <34.571774, 30.337528, 19.911749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325912, 30.106150, 20.126263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208269, 0.536739, 0.817640,
		-0.760807, 0.614255, -0.209435,
		-0.614652, -0.578447, 0.536285,
		34.141518, 29.932615, 20.287148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004314, 30.692575, 20.147543>,  <34.571774, 30.337528, 19.911749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004314, 30.692575, 20.147543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009396, 30.397547, 20.417603>,  <34.012444, 30.220530, 20.579638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009396, 30.397547, 20.417603>,  <34.004314, 30.692575, 20.147543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009396, 30.397547, 20.417603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063262, 0.673258, 0.736696,
		-0.997916, -0.052071, -0.038106,
		0.012706, -0.737571, 0.675149,
		34.013206, 30.176275, 20.620148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354713, 30.854259, 20.670416>,  <34.004314, 30.692575, 20.147543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354713, 30.854259, 20.670416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637539, 30.614513, 20.820518>,  <33.807236, 30.470665, 20.910580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637539, 30.614513, 20.820518>,  <33.354713, 30.854259, 20.670416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637539, 30.614513, 20.820518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014671, 0.542982, 0.839616,
		-0.706995, -0.588159, 0.392717,
		0.707066, -0.599366, 0.375257,
		33.849659, 30.434704, 20.933096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139923, 30.878649, 21.359535>,  <33.354713, 30.854259, 20.670416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139923, 30.878649, 21.359535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499943, 30.709375, 21.401159>,  <33.715954, 30.607811, 21.426134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499943, 30.709375, 21.401159>,  <33.139923, 30.878649, 21.359535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499943, 30.709375, 21.401159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149468, 0.524072, 0.838456,
		-0.409357, -0.739097, 0.534942,
		0.900048, -0.423184, 0.104061,
		33.769958, 30.582420, 21.432377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188713, 30.608042, 22.102539>,  <33.139923, 30.878649, 21.359535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188713, 30.608042, 22.102539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535675, 30.705521, 21.929003>,  <33.743851, 30.764008, 21.824881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535675, 30.705521, 21.929003>,  <33.188713, 30.608042, 22.102539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535675, 30.705521, 21.929003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182307, 0.655604, 0.732767,
		0.463003, -0.714698, 0.524247,
		0.867406, 0.243699, -0.433841,
		33.795898, 30.778631, 21.798851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620945, 30.702604, 22.666708>,  <33.188713, 30.608042, 22.102539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620945, 30.702604, 22.666708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790760, 30.893818, 22.359138>,  <33.892651, 31.008547, 22.174597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790760, 30.893818, 22.359138>,  <33.620945, 30.702604, 22.666708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790760, 30.893818, 22.359138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238953, 0.759992, 0.604412,
		0.873309, -0.440334, 0.208419,
		0.424540, 0.478036, -0.768926,
		33.918121, 31.037230, 22.128460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112019, 31.196415, 23.027868>,  <33.620945, 30.702604, 22.666708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112019, 31.196415, 23.027868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132248, 31.345047, 22.657059>,  <34.144386, 31.434225, 22.434572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132248, 31.345047, 22.657059>,  <34.112019, 31.196415, 23.027868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132248, 31.345047, 22.657059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010104, 0.927973, 0.372510,
		0.998670, -0.028204, 0.043173,
		0.050569, 0.371578, -0.927023,
		34.147419, 31.456520, 22.378952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745411, 31.606161, 22.955563>,  <34.112019, 31.196415, 23.027868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745411, 31.606161, 22.955563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436794, 31.702513, 22.720037>,  <34.251625, 31.760323, 22.578722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436794, 31.702513, 22.720037>,  <34.745411, 31.606161, 22.955563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436794, 31.702513, 22.720037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179895, 0.805164, 0.565109,
		0.610212, 0.541931, -0.577886,
		-0.771544, 0.240877, -0.588811,
		34.205330, 31.774776, 22.543394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752705, 32.350208, 22.857576>,  <34.745411, 31.606161, 22.955563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752705, 32.350208, 22.857576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387627, 32.253143, 22.726061>,  <34.168579, 32.194904, 22.647152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387627, 32.253143, 22.726061>,  <34.752705, 32.350208, 22.857576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387627, 32.253143, 22.726061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370387, 0.831143, 0.414746,
		0.172629, 0.500316, -0.848459,
		-0.912695, -0.242661, -0.328790,
		34.113819, 32.180344, 22.627424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426167, 32.954945, 22.560640>,  <34.752705, 32.350208, 22.857576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426167, 32.954945, 22.560640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097572, 32.739128, 22.634451>,  <33.900417, 32.609638, 22.678738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097572, 32.739128, 22.634451>,  <34.426167, 32.954945, 22.560640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097572, 32.739128, 22.634451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435368, 0.802442, 0.408095,
		-0.368259, 0.254907, -0.894096,
		-0.821487, -0.539545, 0.184529,
		33.851128, 32.577263, 22.689810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913944, 33.413063, 22.486452>,  <34.426167, 32.954945, 22.560640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913944, 33.413063, 22.486452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751240, 33.116238, 22.699577>,  <33.653618, 32.938141, 22.827452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751240, 33.116238, 22.699577>,  <33.913944, 33.413063, 22.486452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751240, 33.116238, 22.699577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605024, 0.655821, 0.451492,
		-0.684465, -0.138715, -0.715728,
		-0.406760, -0.742063, 0.532812,
		33.629211, 32.893620, 22.859421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166336, 33.424488, 22.555555>,  <33.913944, 33.413063, 22.486452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166336, 33.424488, 22.555555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274910, 33.229736, 22.887646>,  <33.340054, 33.112885, 23.086901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274910, 33.229736, 22.887646>,  <33.166336, 33.424488, 22.555555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274910, 33.229736, 22.887646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647258, 0.546070, 0.531850,
		-0.712307, -0.681732, -0.166914,
		0.271433, -0.486877, 0.830226,
		33.356339, 33.083672, 23.136713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547909, 33.439426, 23.005707>,  <33.166336, 33.424488, 22.555555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547909, 33.439426, 23.005707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823536, 33.305714, 23.262903>,  <32.988914, 33.225487, 23.417221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823536, 33.305714, 23.262903>,  <32.547909, 33.439426, 23.005707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823536, 33.305714, 23.262903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482058, 0.451065, 0.751106,
		-0.541109, -0.827525, 0.149675,
		0.689072, -0.334278, 0.642991,
		33.030258, 33.205429, 23.455801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129910, 33.447201, 23.633608>,  <32.547909, 33.439426, 23.005707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129910, 33.447201, 23.633608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507561, 33.413940, 23.761177>,  <32.734150, 33.393982, 23.837719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507561, 33.413940, 23.761177>,  <32.129910, 33.447201, 23.633608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507561, 33.413940, 23.761177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292157, 0.236736, 0.926607,
		-0.152554, -0.968009, 0.199214,
		0.944125, -0.083156, 0.318925,
		32.790798, 33.388992, 23.856855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011871, 33.130196, 24.195105>,  <32.129910, 33.447201, 23.633608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011871, 33.130196, 24.195105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355133, 33.334801, 24.212696>,  <32.561089, 33.457561, 24.223251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355133, 33.334801, 24.212696>,  <32.011871, 33.130196, 24.195105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355133, 33.334801, 24.212696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178036, 0.216150, 0.959991,
		0.481539, -0.831647, 0.276557,
		0.858151, 0.511511, 0.043979,
		32.612579, 33.488255, 24.225889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320602, 32.960705, 24.903265>,  <32.011871, 33.130196, 24.195105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320602, 32.960705, 24.903265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523499, 33.290680, 24.803520>,  <32.645237, 33.488667, 24.743673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523499, 33.290680, 24.803520>,  <32.320602, 32.960705, 24.903265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523499, 33.290680, 24.803520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173413, 0.185731, 0.967177,
		0.844178, -0.533833, -0.048846,
		0.507239, 0.824940, -0.249364,
		32.675671, 33.538162, 24.728712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855721, 32.954185, 25.346905>,  <32.320602, 32.960705, 24.903265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855721, 32.954185, 25.346905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844379, 33.334591, 25.223768>,  <32.837574, 33.562836, 25.149885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844379, 33.334591, 25.223768>,  <32.855721, 32.954185, 25.346905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844379, 33.334591, 25.223768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131244, 0.308841, 0.942015,
		0.990945, -0.013698, -0.133570,
		-0.028348, 0.951015, -0.307842,
		32.835876, 33.619896, 25.131416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239811, 33.285316, 25.793556>,  <32.855721, 32.954185, 25.346905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239811, 33.285316, 25.793556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060558, 33.612522, 25.649321>,  <32.953007, 33.808846, 25.562778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060558, 33.612522, 25.649321>,  <33.239811, 33.285316, 25.793556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060558, 33.612522, 25.649321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086213, 0.361933, 0.928209,
		0.889800, 0.447048, -0.091671,
		-0.448133, 0.818017, -0.360590,
		32.926117, 33.857925, 25.541143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690125, 33.859283, 25.918392>,  <33.239811, 33.285316, 25.793556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690125, 33.859283, 25.918392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310665, 33.978649, 25.876404>,  <33.082989, 34.050266, 25.851212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310665, 33.978649, 25.876404>,  <33.690125, 33.859283, 25.918392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310665, 33.978649, 25.876404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090302, 0.573481, 0.814227,
		0.303172, 0.762935, -0.570979,
		-0.948647, 0.298412, -0.104969,
		33.026070, 34.068172, 25.844913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689342, 34.516487, 26.292368>,  <33.690125, 33.859283, 25.918392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689342, 34.516487, 26.292368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296814, 34.452980, 26.248911>,  <33.061298, 34.414875, 26.222837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296814, 34.452980, 26.248911>,  <33.689342, 34.516487, 26.292368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296814, 34.452980, 26.248911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170733, 0.458495, 0.872143,
		-0.088657, 0.874400, -0.477037,
		-0.981321, -0.158768, -0.108640,
		33.002419, 34.405350, 26.216318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330914, 35.076809, 26.343906>,  <33.689342, 34.516487, 26.292368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330914, 35.076809, 26.343906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054646, 34.812199, 26.460770>,  <32.888885, 34.653435, 26.530888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054646, 34.812199, 26.460770>,  <33.330914, 35.076809, 26.343906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054646, 34.812199, 26.460770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274046, 0.613290, 0.740793,
		-0.669230, 0.431581, -0.604872,
		-0.690674, -0.661523, 0.292159,
		32.847443, 34.613743, 26.548418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715206, 35.431477, 26.585220>,  <33.330914, 35.076809, 26.343906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715206, 35.431477, 26.585220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644035, 35.068497, 26.737469>,  <32.601334, 34.850708, 26.828817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644035, 35.068497, 26.737469>,  <32.715206, 35.431477, 26.585220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644035, 35.068497, 26.737469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254359, 0.416057, 0.873039,
		-0.950602, 0.058522, -0.304846,
		-0.177925, -0.907453, 0.380619,
		32.590656, 34.796261, 26.851654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124817, 35.440575, 26.895988>,  <32.715206, 35.431477, 26.585220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124817, 35.440575, 26.895988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314571, 35.142345, 27.083210>,  <32.428425, 34.963409, 27.195543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314571, 35.142345, 27.083210>,  <32.124817, 35.440575, 26.895988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314571, 35.142345, 27.083210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401061, 0.290260, 0.868849,
		-0.783649, -0.599891, -0.161325,
		0.474389, -0.745574, 0.468055,
		32.456886, 34.918674, 27.223627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686607, 35.208492, 27.433872>,  <32.124817, 35.440575, 26.895988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686607, 35.208492, 27.433872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050011, 35.086246, 27.547859>,  <32.268051, 35.012897, 27.616251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050011, 35.086246, 27.547859>,  <31.686607, 35.208492, 27.433872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050011, 35.086246, 27.547859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225597, 0.215305, 0.950131,
		-0.351733, -0.927492, 0.126660,
		0.908509, -0.305619, 0.284970,
		32.322563, 34.994560, 27.633350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559986, 35.065762, 28.042011>,  <31.686607, 35.208492, 27.433872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559986, 35.065762, 28.042011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959217, 35.044834, 28.028706>,  <32.198757, 35.032276, 28.020721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959217, 35.044834, 28.028706>,  <31.559986, 35.065762, 28.042011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959217, 35.044834, 28.028706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046516, 0.277131, 0.959706,
		-0.040997, -0.959407, 0.279031,
		0.998076, -0.052324, -0.033266,
		32.258640, 35.029137, 28.018726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736691, 34.632271, 28.695242>,  <31.559986, 35.065762, 28.042011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736691, 34.632271, 28.695242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057903, 34.845436, 28.588547>,  <32.250629, 34.973335, 28.524530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057903, 34.845436, 28.588547>,  <31.736691, 34.632271, 28.695242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057903, 34.845436, 28.588547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237089, 0.124956, 0.963418,
		0.546744, -0.836896, -0.026003,
		0.803031, 0.532909, -0.266738,
		32.298813, 35.005310, 28.508526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140919, 34.401485, 29.223949>,  <31.736691, 34.632271, 28.695242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140919, 34.401485, 29.223949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263741, 34.733231, 29.037241>,  <32.337433, 34.932278, 28.925217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263741, 34.733231, 29.037241>,  <32.140919, 34.401485, 29.223949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263741, 34.733231, 29.037241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260645, 0.398427, 0.879386,
		0.915305, -0.391679, -0.093831,
		0.307052, 0.829363, -0.466772,
		32.355858, 34.982040, 28.897209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847763, 34.500477, 29.448105>,  <32.140919, 34.401485, 29.223949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847763, 34.500477, 29.448105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677425, 34.840221, 29.323374>,  <32.575222, 35.044067, 29.248535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677425, 34.840221, 29.323374>,  <32.847763, 34.500477, 29.448105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677425, 34.840221, 29.323374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256636, 0.443872, 0.858554,
		0.867638, 0.285583, -0.406997,
		-0.425843, 0.849364, -0.311830,
		32.549671, 35.095032, 29.229824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370796, 34.962730, 29.631479>,  <32.847763, 34.500477, 29.448105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370796, 34.962730, 29.631479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017117, 35.148544, 29.611925>,  <32.804909, 35.260033, 29.600193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017117, 35.148544, 29.611925>,  <33.370796, 34.962730, 29.631479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017117, 35.148544, 29.611925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201208, 0.473236, 0.857650,
		0.421546, 0.748500, -0.511905,
		-0.884202, 0.464539, -0.048887,
		32.751854, 35.287907, 29.597260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467022, 35.614323, 29.938822>,  <33.370796, 34.962730, 29.631479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467022, 35.614323, 29.938822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067028, 35.612995, 29.940210>,  <32.827030, 35.612198, 29.941044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067028, 35.612995, 29.940210>,  <33.467022, 35.614323, 29.938822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067028, 35.612995, 29.940210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000918, 0.576851, 0.816849,
		-0.004714, 0.816842, -0.576842,
		-0.999989, -0.003321, 0.003469,
		32.767033, 35.612000, 29.941252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130066, 35.794556, 29.632912>,  <33.467022, 35.614323, 29.938822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130066, 35.794556, 29.632912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510807, 35.916786, 29.623108>,  <34.739250, 35.990124, 29.617226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510807, 35.916786, 29.623108>,  <34.130066, 35.794556, 29.632912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510807, 35.916786, 29.623108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156074, -0.551872, -0.819194,
		-0.263852, 0.775926, -0.572993,
		0.951852, 0.305575, -0.024510,
		34.796364, 36.008457, 29.615755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226154, 35.854263, 28.917763>,  <34.130066, 35.794556, 29.632912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226154, 35.854263, 28.917763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589703, 35.834591, 29.083429>,  <34.807831, 35.822788, 29.182831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589703, 35.834591, 29.083429>,  <34.226154, 35.854263, 28.917763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589703, 35.834591, 29.083429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365026, -0.386591, -0.846938,
		0.201769, 0.920939, -0.333408,
		0.908870, -0.049183, 0.414169,
		34.862362, 35.819836, 29.207680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608665, 36.072403, 28.367317>,  <34.226154, 35.854263, 28.917763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608665, 36.072403, 28.367317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849262, 35.863670, 28.609278>,  <34.993618, 35.738430, 28.754454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849262, 35.863670, 28.609278>,  <34.608665, 36.072403, 28.367317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849262, 35.863670, 28.609278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220592, -0.619258, -0.753563,
		0.767823, 0.586696, -0.257364,
		0.601487, -0.521831, 0.604901,
		35.029709, 35.707123, 28.790749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303143, 35.907688, 28.052067>,  <34.608665, 36.072403, 28.367317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303143, 35.907688, 28.052067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262039, 35.624195, 28.331247>,  <35.237377, 35.454098, 28.498756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262039, 35.624195, 28.331247>,  <35.303143, 35.907688, 28.052067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262039, 35.624195, 28.331247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332824, -0.685722, -0.647312,
		0.937373, 0.165779, 0.306348,
		-0.102759, -0.708733, 0.697953,
		35.231213, 35.411575, 28.540634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006954, 35.569759, 28.164867>,  <35.303143, 35.907688, 28.052067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006954, 35.569759, 28.164867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752426, 35.291245, 28.297699>,  <35.599709, 35.124134, 28.377398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752426, 35.291245, 28.297699>,  <36.006954, 35.569759, 28.164867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752426, 35.291245, 28.297699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483695, -0.695465, -0.531383,
		0.600948, -0.177503, 0.779329,
		-0.636318, -0.696291, 0.332081,
		35.561531, 35.082355, 28.397324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464672, 34.991035, 28.448107>,  <36.006954, 35.569759, 28.164867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464672, 34.991035, 28.448107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101418, 34.842762, 28.370255>,  <35.883465, 34.753799, 28.323544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101418, 34.842762, 28.370255>,  <36.464672, 34.991035, 28.448107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101418, 34.842762, 28.370255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406966, -0.672410, -0.618258,
		0.098304, -0.640672, 0.761496,
		-0.908139, -0.370679, -0.194631,
		35.828976, 34.731560, 28.311865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544704, 34.366272, 28.569511>,  <36.464672, 34.991035, 28.448107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544704, 34.366272, 28.569511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228764, 34.371735, 28.324253>,  <36.039200, 34.375011, 28.177097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228764, 34.371735, 28.324253>,  <36.544704, 34.366272, 28.569511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228764, 34.371735, 28.324253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405233, -0.738803, -0.538476,
		-0.460348, -0.673783, 0.578010,
		-0.789852, 0.013658, -0.613146,
		35.991810, 34.375832, 28.140308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384747, 33.767288, 28.351381>,  <36.544704, 34.366272, 28.569511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384747, 33.767288, 28.351381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202583, 33.976379, 28.063114>,  <36.093285, 34.101833, 27.890154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202583, 33.976379, 28.063114>,  <36.384747, 33.767288, 28.351381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202583, 33.976379, 28.063114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361635, -0.631077, -0.686266,
		-0.813526, -0.573150, 0.098361,
		-0.455407, 0.522725, -0.720669,
		36.065960, 34.133198, 27.846914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397861, 33.255859, 27.893950>,  <36.384747, 33.767288, 28.351381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397861, 33.255859, 27.893950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297588, 33.593685, 27.704687>,  <36.237423, 33.796379, 27.591129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297588, 33.593685, 27.704687>,  <36.397861, 33.255859, 27.893950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297588, 33.593685, 27.704687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215323, -0.427872, -0.877816,
		-0.943819, -0.321933, -0.074594,
		-0.250682, 0.844562, -0.473154,
		36.222385, 33.847054, 27.562740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046673, 33.032532, 27.303320>,  <36.397861, 33.255859, 27.893950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046673, 33.032532, 27.303320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163013, 33.403797, 27.210436>,  <36.232819, 33.626556, 27.154705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163013, 33.403797, 27.210436>,  <36.046673, 33.032532, 27.303320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163013, 33.403797, 27.210436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195254, -0.295175, -0.935280,
		-0.936634, 0.226684, -0.267078,
		0.290847, 0.928163, -0.232210,
		36.250267, 33.682247, 27.140774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809410, 33.052963, 26.613558>,  <36.046673, 33.032532, 27.303320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809410, 33.052963, 26.613558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069206, 33.353840, 26.658066>,  <36.225082, 33.534367, 26.684771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069206, 33.353840, 26.658066>,  <35.809410, 33.052963, 26.613558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069206, 33.353840, 26.658066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435337, -0.247870, -0.865472,
		-0.623418, 0.610551, -0.488443,
		0.649486, 0.752188, 0.111269,
		36.264053, 33.579498, 26.691446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877201, 33.405472, 25.941456>,  <35.809410, 33.052963, 26.613558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877201, 33.405472, 25.941456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212601, 33.510448, 26.132471>,  <36.413841, 33.573433, 26.247080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212601, 33.510448, 26.132471>,  <35.877201, 33.405472, 25.941456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212601, 33.510448, 26.132471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523330, -0.143716, -0.839923,
		-0.151798, 0.954187, -0.257847,
		0.838500, 0.262438, 0.477539,
		36.464149, 33.589180, 26.275732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186565, 34.036270, 25.674526>,  <35.877201, 33.405472, 25.941456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186565, 34.036270, 25.674526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486340, 33.808601, 25.809811>,  <36.666203, 33.672001, 25.890982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486340, 33.808601, 25.809811>,  <36.186565, 34.036270, 25.674526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486340, 33.808601, 25.809811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329156, -0.122923, -0.936240,
		0.574458, 0.812977, 0.095224,
		0.749436, -0.569174, 0.338210,
		36.711170, 33.637848, 25.911274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844028, 34.334599, 25.408714>,  <36.186565, 34.036270, 25.674526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844028, 34.334599, 25.408714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890293, 33.946850, 25.495386>,  <36.918053, 33.714203, 25.547388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890293, 33.946850, 25.495386>,  <36.844028, 34.334599, 25.408714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890293, 33.946850, 25.495386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086487, -0.207485, -0.974408,
		0.989516, 0.131444, 0.059839,
		0.115664, -0.969367, 0.216678,
		36.924992, 33.656040, 25.560389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406475, 34.120594, 24.979406>,  <36.844028, 34.334599, 25.408714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406475, 34.120594, 24.979406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217690, 33.783379, 25.082588>,  <37.104420, 33.581051, 25.144497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217690, 33.783379, 25.082588>,  <37.406475, 34.120594, 24.979406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217690, 33.783379, 25.082588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093536, -0.338824, -0.936189,
		0.876645, -0.417715, 0.238765,
		-0.471959, -0.843038, 0.257957,
		37.076103, 33.530468, 25.159975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840088, 33.517021, 24.725430>,  <37.406475, 34.120594, 24.979406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840088, 33.517021, 24.725430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465416, 33.383533, 24.767879>,  <37.240612, 33.303440, 24.793348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465416, 33.383533, 24.767879>,  <37.840088, 33.517021, 24.725430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465416, 33.383533, 24.767879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083339, -0.506771, -0.858043,
		0.340129, -0.794866, 0.502493,
		-0.936678, -0.333723, 0.106124,
		37.184414, 33.283417, 24.799717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938011, 32.872734, 24.762613>,  <37.840088, 33.517021, 24.725430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938011, 32.872734, 24.762613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563915, 32.937935, 24.636915>,  <37.339458, 32.977055, 24.561497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563915, 32.937935, 24.636915>,  <37.938011, 32.872734, 24.762613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563915, 32.937935, 24.636915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112198, -0.705437, -0.699836,
		-0.335758, -0.689774, 0.641466,
		-0.935242, 0.163004, -0.314247,
		37.283344, 32.986835, 24.542641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574261, 32.129749, 24.733227>,  <37.938011, 32.872734, 24.762613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574261, 32.129749, 24.733227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354206, 32.382004, 24.514267>,  <37.222172, 32.533356, 24.382891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354206, 32.382004, 24.514267>,  <37.574261, 32.129749, 24.733227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354206, 32.382004, 24.514267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162509, -0.723824, -0.670574,
		-0.819111, -0.279949, 0.500686,
		-0.550135, 0.630641, -0.547398,
		37.189167, 32.571198, 24.350048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050163, 31.765524, 24.501629>,  <37.574261, 32.129749, 24.733227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050163, 31.765524, 24.501629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044666, 32.082115, 24.257212>,  <37.041367, 32.272072, 24.110561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044666, 32.082115, 24.257212>,  <37.050163, 31.765524, 24.501629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044666, 32.082115, 24.257212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228511, -0.597414, -0.768686,
		-0.973444, 0.129064, 0.189074,
		-0.013746, 0.791479, -0.611042,
		37.040543, 32.319557, 24.073898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441761, 31.640326, 24.017864>,  <37.050163, 31.765524, 24.501629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441761, 31.640326, 24.017864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660389, 31.929344, 23.848543>,  <36.791565, 32.102757, 23.746950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660389, 31.929344, 23.848543>,  <36.441761, 31.640326, 24.017864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660389, 31.929344, 23.848543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130174, -0.426037, -0.895292,
		-0.827233, 0.544445, -0.138803,
		0.546572, 0.722546, -0.423304,
		36.824360, 32.146107, 23.721552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003460, 31.869621, 23.508112>,  <36.441761, 31.640326, 24.017864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003460, 31.869621, 23.508112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388809, 31.922922, 23.415030>,  <36.620018, 31.954903, 23.359180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388809, 31.922922, 23.415030>,  <36.003460, 31.869621, 23.508112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388809, 31.922922, 23.415030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145750, -0.468224, -0.871506,
		-0.225086, 0.873505, -0.431655,
		0.963376, 0.133251, -0.232704,
		36.677822, 31.962896, 23.345219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126011, 32.381397, 22.897579>,  <36.003460, 31.869621, 23.508112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126011, 32.381397, 22.897579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446423, 32.143299, 22.922983>,  <36.638668, 32.000439, 22.938225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446423, 32.143299, 22.922983>,  <36.126011, 32.381397, 22.897579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446423, 32.143299, 22.922983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199817, -0.365877, -0.908959,
		0.564292, 0.715413, -0.412018,
		0.801029, -0.595247, 0.063510,
		36.686729, 31.964725, 22.942036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485706, 32.507648, 22.262329>,  <36.126011, 32.381397, 22.897579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485706, 32.507648, 22.262329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599213, 32.157108, 22.418015>,  <36.667316, 31.946785, 22.511425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599213, 32.157108, 22.418015>,  <36.485706, 32.507648, 22.262329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599213, 32.157108, 22.418015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032160, -0.396972, -0.917267,
		0.958354, 0.272807, -0.084464,
		0.283766, -0.876350, 0.389213,
		36.684341, 31.894203, 22.534779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916443, 32.190914, 21.728968>,  <36.485706, 32.507648, 22.262329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916443, 32.190914, 21.728968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857845, 31.858847, 21.944138>,  <36.822685, 31.659607, 22.073240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857845, 31.858847, 21.944138>,  <36.916443, 32.190914, 21.728968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857845, 31.858847, 21.944138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115802, -0.525660, -0.842776,
		0.982410, -0.185753, -0.019129,
		-0.146493, -0.830167, 0.537925,
		36.813896, 31.609797, 22.105515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212883, 31.654682, 21.372461>,  <36.916443, 32.190914, 21.728968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212883, 31.654682, 21.372461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996674, 31.444370, 21.635181>,  <36.866947, 31.318182, 21.792814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996674, 31.444370, 21.635181>,  <37.212883, 31.654682, 21.372461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996674, 31.444370, 21.635181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152429, -0.706550, -0.691052,
		0.827404, -0.473647, 0.301763,
		-0.540525, -0.525782, 0.656800,
		36.834515, 31.286636, 21.832222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485329, 30.972542, 21.569191>,  <37.212883, 31.654682, 21.372461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485329, 30.972542, 21.569191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087524, 30.965727, 21.610483>,  <36.848843, 30.961637, 21.635258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087524, 30.965727, 21.610483>,  <37.485329, 30.972542, 21.569191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087524, 30.965727, 21.610483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051360, -0.780091, -0.623555,
		0.091153, -0.625435, 0.774934,
		-0.994512, -0.017038, 0.103230,
		36.789169, 30.960615, 21.641453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397358, 30.323040, 21.704216>,  <37.485329, 30.972542, 21.569191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397358, 30.323040, 21.704216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037773, 30.456551, 21.590752>,  <36.822021, 30.536657, 21.522673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037773, 30.456551, 21.590752>,  <37.397358, 30.323040, 21.704216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037773, 30.456551, 21.590752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094275, -0.779835, -0.618846,
		-0.427766, -0.529575, 0.732507,
		-0.898960, 0.333778, -0.283661,
		36.768085, 30.556684, 21.505653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117867, 29.755733, 21.605700>,  <37.397358, 30.323040, 21.704216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117867, 29.755733, 21.605700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888523, 30.002602, 21.390158>,  <36.750919, 30.150723, 21.260832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888523, 30.002602, 21.390158>,  <37.117867, 29.755733, 21.605700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888523, 30.002602, 21.390158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022657, -0.669388, -0.742567,
		-0.818994, -0.413545, 0.397780,
		-0.573354, 0.617170, -0.538856,
		36.716518, 30.187752, 21.228500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607731, 29.298418, 21.437347>,  <37.117867, 29.755733, 21.605700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607731, 29.298418, 21.437347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607227, 29.585850, 21.159170>,  <36.606926, 29.758308, 20.992264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607227, 29.585850, 21.159170>,  <36.607731, 29.298418, 21.437347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607227, 29.585850, 21.159170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066954, -0.693944, -0.716910,
		-0.997755, 0.045658, 0.048988,
		-0.001263, 0.718580, -0.695443,
		36.606850, 29.801424, 20.950537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184231, 29.066015, 20.967690>,  <36.607731, 29.298418, 21.437347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184231, 29.066015, 20.967690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344467, 29.368820, 20.761211>,  <36.440609, 29.550503, 20.637325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344467, 29.368820, 20.761211>,  <36.184231, 29.066015, 20.967690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344467, 29.368820, 20.761211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105699, -0.521433, -0.846721,
		-0.910141, 0.393749, -0.128864,
		0.400589, 0.757014, -0.516196,
		36.464645, 29.595924, 20.606352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784863, 29.157103, 20.379702>,  <36.184231, 29.066015, 20.967690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784863, 29.157103, 20.379702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147133, 29.293730, 20.279240>,  <36.364494, 29.375706, 20.218962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147133, 29.293730, 20.279240>,  <35.784863, 29.157103, 20.379702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147133, 29.293730, 20.279240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005077, -0.601089, -0.799166,
		-0.423937, 0.722512, -0.546126,
		0.905677, 0.341569, -0.251156,
		36.418835, 29.396200, 20.203894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710297, 29.432156, 19.692575>,  <35.784863, 29.157103, 20.379702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710297, 29.432156, 19.692575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097427, 29.349667, 19.750240>,  <36.329704, 29.300173, 19.784840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097427, 29.349667, 19.750240>,  <35.710297, 29.432156, 19.692575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097427, 29.349667, 19.750240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032357, -0.466189, -0.884093,
		0.249525, 0.860314, -0.444518,
		0.967828, -0.206220, 0.144164,
		36.387775, 29.287800, 19.793489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031136, 29.454245, 19.023611>,  <35.710297, 29.432156, 19.692575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031136, 29.454245, 19.023611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312038, 29.253975, 19.226061>,  <36.480579, 29.133814, 19.347530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312038, 29.253975, 19.226061>,  <36.031136, 29.454245, 19.023611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312038, 29.253975, 19.226061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052901, -0.672262, -0.738421,
		0.709957, 0.545334, -0.445614,
		0.702255, -0.500674, 0.506126,
		36.522717, 29.103773, 19.377899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516953, 29.172653, 18.526440>,  <36.031136, 29.454245, 19.023611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516953, 29.172653, 18.526440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625374, 28.967947, 18.852537>,  <36.690426, 28.845123, 19.048195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625374, 28.967947, 18.852537>,  <36.516953, 29.172653, 18.526440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625374, 28.967947, 18.852537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388348, -0.716818, -0.579100,
		0.880747, 0.473567, 0.004447,
		0.271055, -0.511767, 0.815244,
		36.706692, 28.814417, 19.097111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163097, 29.185276, 18.376961>,  <36.516953, 29.172653, 18.526440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163097, 29.185276, 18.376961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080051, 28.874338, 18.614492>,  <37.030224, 28.687775, 18.757011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080051, 28.874338, 18.614492>,  <37.163097, 29.185276, 18.376961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080051, 28.874338, 18.614492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218794, -0.628576, -0.746338,
		0.953429, -0.025022, 0.300578,
		-0.207611, -0.777345, 0.593828,
		37.017769, 28.641134, 18.792641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689205, 28.703367, 18.354733>,  <37.163097, 29.185276, 18.376961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689205, 28.703367, 18.354733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395569, 28.472713, 18.498175>,  <37.219387, 28.334320, 18.584240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395569, 28.472713, 18.498175>,  <37.689205, 28.703367, 18.354733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395569, 28.472713, 18.498175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224072, -0.704223, -0.673693,
		0.641015, -0.414199, 0.646172,
		-0.734092, -0.576637, 0.358607,
		37.175343, 28.299723, 18.605757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998260, 27.909607, 18.381918>,  <37.689205, 28.703367, 18.354733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998260, 27.909607, 18.381918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599655, 27.892822, 18.410746>,  <37.360493, 27.882751, 18.428041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599655, 27.892822, 18.410746>,  <37.998260, 27.909607, 18.381918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599655, 27.892822, 18.410746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004791, -0.833942, -0.551832,
		0.083257, -0.550255, 0.830836,
		-0.996517, -0.041964, 0.072068,
		37.300701, 27.880234, 18.432365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799274, 27.194096, 18.575422>,  <37.998260, 27.909607, 18.381918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799274, 27.194096, 18.575422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498669, 27.376812, 18.385023>,  <37.318306, 27.486443, 18.270784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498669, 27.376812, 18.385023>,  <37.799274, 27.194096, 18.575422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498669, 27.376812, 18.385023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157169, -0.824702, -0.543291,
		-0.640725, -0.333478, 0.691566,
		-0.751512, 0.456793, -0.475995,
		37.273216, 27.513849, 18.242224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183353, 26.715816, 19.054850>,  <37.799274, 27.194096, 18.575422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183353, 26.715816, 19.054850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452366, 26.489212, 19.245329>,  <38.613773, 26.353249, 19.359617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452366, 26.489212, 19.245329>,  <38.183353, 26.715816, 19.054850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452366, 26.489212, 19.245329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109688, 0.560043, 0.821170,
		-0.731895, -0.604496, 0.314506,
		0.672531, -0.566513, 0.476199,
		38.654125, 26.319258, 19.388189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916023, 26.630003, 19.739855>,  <38.183353, 26.715816, 19.054850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916023, 26.630003, 19.739855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306698, 26.564089, 19.794888>,  <38.541103, 26.524540, 19.827908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306698, 26.564089, 19.794888>,  <37.916023, 26.630003, 19.739855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306698, 26.564089, 19.794888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012025, 0.597909, 0.801474,
		-0.214333, -0.784443, 0.581989,
		0.976686, -0.164784, 0.137584,
		38.599705, 26.514654, 19.836163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978836, 26.327585, 20.466181>,  <37.916023, 26.630003, 19.739855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978836, 26.327585, 20.466181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323917, 26.493839, 20.350954>,  <38.530968, 26.593592, 20.281818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323917, 26.493839, 20.350954>,  <37.978836, 26.327585, 20.466181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323917, 26.493839, 20.350954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045415, 0.503660, 0.862707,
		0.503660, -0.757347, 0.415635,
		-0.862707, -0.415635, 0.288068,
		38.582729, 26.618530, 20.264534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520271, 26.189157, 21.027140>,  <37.978836, 26.327585, 20.466181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520271, 26.189157, 21.027140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678692, 26.487755, 20.813263>,  <38.773743, 26.666914, 20.684937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678692, 26.487755, 20.813263>,  <38.520271, 26.189157, 21.027140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678692, 26.487755, 20.813263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269652, 0.462079, 0.844850,
		0.877744, -0.478781, -0.018289,
		0.396047, 0.746493, -0.534691,
		38.797504, 26.711702, 20.652855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135262, 26.382208, 21.364658>,  <38.520271, 26.189157, 21.027140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135262, 26.382208, 21.364658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060490, 26.686384, 21.115889>,  <39.015629, 26.868889, 20.966627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060490, 26.686384, 21.115889>,  <39.135262, 26.382208, 21.364658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060490, 26.686384, 21.115889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080905, 0.642851, 0.761707,
		0.979037, 0.092066, -0.181689,
		-0.186926, 0.760439, -0.621926,
		39.004410, 26.914516, 20.929312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651005, 26.857176, 21.462885>,  <39.135262, 26.382208, 21.364658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651005, 26.857176, 21.462885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338108, 27.052933, 21.308691>,  <39.150372, 27.170387, 21.216175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338108, 27.052933, 21.308691>,  <39.651005, 26.857176, 21.462885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338108, 27.052933, 21.308691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133815, 0.736329, 0.663259,
		0.608438, 0.467243, -0.641473,
		-0.782238, 0.489391, -0.385486,
		39.103436, 27.199751, 21.193045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959148, 27.487040, 21.318624>,  <39.651005, 26.857176, 21.462885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959148, 27.487040, 21.318624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571381, 27.573561, 21.272243>,  <39.338722, 27.625473, 21.244415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571381, 27.573561, 21.272243>,  <39.959148, 27.487040, 21.318624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571381, 27.573561, 21.272243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116386, 0.821130, 0.558748,
		0.216071, 0.528164, -0.821192,
		-0.969416, 0.216305, -0.115952,
		39.280556, 27.638453, 21.237457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858559, 28.180016, 21.068153>,  <39.959148, 27.487040, 21.318624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858559, 28.180016, 21.068153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505543, 28.127321, 21.248718>,  <39.293736, 28.095705, 21.357058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505543, 28.127321, 21.248718>,  <39.858559, 28.180016, 21.068153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505543, 28.127321, 21.248718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168219, 0.807991, 0.564671,
		-0.439125, 0.574279, -0.690922,
		-0.882537, -0.131735, 0.451414,
		39.240780, 28.087801, 21.384142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464462, 28.876020, 21.062943>,  <39.858559, 28.180016, 21.068153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464462, 28.876020, 21.062943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330914, 28.635889, 21.353634>,  <39.250782, 28.491810, 21.528048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330914, 28.635889, 21.353634>,  <39.464462, 28.876020, 21.062943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330914, 28.635889, 21.353634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209804, 0.704299, 0.678193,
		-0.918972, 0.378902, -0.109196,
		-0.333875, -0.600330, 0.726726,
		39.230751, 28.455790, 21.571651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147194, 29.299013, 21.482330>,  <39.464462, 28.876020, 21.062943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147194, 29.299013, 21.482330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193535, 28.982471, 21.722443>,  <39.221340, 28.792547, 21.866510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193535, 28.982471, 21.722443>,  <39.147194, 29.299013, 21.482330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193535, 28.982471, 21.722443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097673, 0.610498, 0.785972,
		-0.988452, -0.032427, 0.148023,
		0.115855, -0.791354, 0.600281,
		39.228291, 28.745066, 21.902527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574883, 29.282757, 22.070150>,  <39.147194, 29.299013, 21.482330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574883, 29.282757, 22.070150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882988, 29.060644, 22.195599>,  <39.067852, 28.927376, 22.270868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882988, 29.060644, 22.195599>,  <38.574883, 29.282757, 22.070150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882988, 29.060644, 22.195599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059877, 0.552580, 0.831306,
		-0.634910, -0.621545, 0.458880,
		0.770262, -0.555281, 0.313622,
		39.114067, 28.894060, 22.289686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499516, 29.212114, 22.856554>,  <38.574883, 29.282757, 22.070150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499516, 29.212114, 22.856554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884056, 29.117706, 22.799849>,  <39.114780, 29.061062, 22.765825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884056, 29.117706, 22.799849>,  <38.499516, 29.212114, 22.856554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884056, 29.117706, 22.799849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241418, 0.475095, 0.846169,
		-0.132361, -0.847691, 0.513713,
		0.961352, -0.236020, -0.141764,
		39.172462, 29.046900, 22.757318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707752, 28.797455, 23.447857>,  <38.499516, 29.212114, 22.856554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707752, 28.797455, 23.447857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046265, 28.946863, 23.295914>,  <39.249371, 29.036509, 23.204748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046265, 28.946863, 23.295914>,  <38.707752, 28.797455, 23.447857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046265, 28.946863, 23.295914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164598, 0.494817, 0.853267,
		0.506684, -0.784622, 0.357268,
		0.846274, 0.373531, -0.379863,
		39.300148, 29.058920, 23.181955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237522, 28.752178, 23.929850>,  <38.707752, 28.797455, 23.447857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237522, 28.752178, 23.929850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354877, 29.054493, 23.695684>,  <39.425293, 29.235882, 23.555185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354877, 29.054493, 23.695684>,  <39.237522, 28.752178, 23.929850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354877, 29.054493, 23.695684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277986, 0.518454, 0.808659,
		0.914683, -0.399990, -0.057988,
		0.293391, 0.755787, -0.585413,
		39.442894, 29.281229, 23.520061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894920, 28.969627, 24.322237>,  <39.237522, 28.752178, 23.929850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894920, 28.969627, 24.322237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810993, 29.272703, 24.075050>,  <39.760639, 29.454548, 23.926739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810993, 29.272703, 24.075050>,  <39.894920, 28.969627, 24.322237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810993, 29.272703, 24.075050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266626, 0.652420, 0.709407,
		0.940685, -0.015922, -0.338908,
		-0.209815, 0.757690, -0.617967,
		39.748047, 29.500010, 23.889660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344936, 29.486769, 24.471495>,  <39.894920, 28.969627, 24.322237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344936, 29.486769, 24.471495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065372, 29.688835, 24.268978>,  <39.897636, 29.810076, 24.147469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065372, 29.688835, 24.268978>,  <40.344936, 29.486769, 24.471495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065372, 29.688835, 24.268978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092693, 0.765902, 0.636241,
		0.709179, 0.397744, -0.582121,
		-0.698908, 0.505167, -0.506294,
		39.855701, 29.840385, 24.117090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649319, 30.153580, 24.374601>,  <40.344936, 29.486769, 24.471495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649319, 30.153580, 24.374601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253265, 30.206810, 24.357073>,  <40.015633, 30.238749, 24.346556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253265, 30.206810, 24.357073>,  <40.649319, 30.153580, 24.374601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253265, 30.206810, 24.357073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062697, 0.700561, 0.710833,
		0.125293, 0.701075, -0.701994,
		-0.990137, 0.133075, -0.043820,
		39.956223, 30.246733, 24.343927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507145, 30.875668, 24.396427>,  <40.649319, 30.153580, 24.374601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507145, 30.875668, 24.396427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155590, 30.717836, 24.503654>,  <39.944656, 30.623138, 24.567991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155590, 30.717836, 24.503654>,  <40.507145, 30.875668, 24.396427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155590, 30.717836, 24.503654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113295, 0.718541, 0.686195,
		-0.463373, 0.572720, -0.676223,
		-0.878891, -0.394577, 0.268066,
		39.891922, 30.599463, 24.584074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010277, 31.415157, 24.348824>,  <40.507145, 30.875668, 24.396427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010277, 31.415157, 24.348824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862839, 31.129238, 24.586548>,  <39.774376, 30.957687, 24.729181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862839, 31.129238, 24.586548>,  <40.010277, 31.415157, 24.348824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862839, 31.129238, 24.586548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331725, 0.698373, 0.634218,
		-0.868387, 0.036623, -0.494533,
		-0.368596, -0.714796, 0.594310,
		39.752258, 30.914799, 24.764841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353195, 31.700417, 24.559292>,  <40.010277, 31.415157, 24.348824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353195, 31.700417, 24.559292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402039, 31.399809, 24.818615>,  <39.431347, 31.219444, 24.974209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402039, 31.399809, 24.818615>,  <39.353195, 31.700417, 24.559292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402039, 31.399809, 24.818615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543443, 0.495956, 0.677272,
		-0.830517, -0.435021, -0.347848,
		0.122110, -0.751521, 0.648309,
		39.438671, 31.174353, 25.013107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716053, 31.686401, 24.899820>,  <39.353195, 31.700417, 24.559292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716053, 31.686401, 24.899820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986557, 31.497107, 25.125639>,  <39.148861, 31.383530, 25.261131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986557, 31.497107, 25.125639>,  <38.716053, 31.686401, 24.899820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986557, 31.497107, 25.125639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471417, 0.310880, 0.825300,
		-0.566069, -0.824258, -0.012855,
		0.676263, -0.473236, 0.564549,
		39.189438, 31.355135, 25.295004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384750, 31.219843, 25.348387>,  <38.716053, 31.686401, 24.899820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384750, 31.219843, 25.348387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740833, 31.266581, 25.524515>,  <38.954483, 31.294624, 25.630192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740833, 31.266581, 25.524515>,  <38.384750, 31.219843, 25.348387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740833, 31.266581, 25.524515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435842, 0.499741, 0.748533,
		-0.132586, -0.858258, 0.495797,
		0.890204, 0.116844, 0.440323,
		39.007893, 31.301634, 25.656612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132942, 31.386269, 26.032099>,  <38.384750, 31.219843, 25.348387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132942, 31.386269, 26.032099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523067, 31.469255, 26.062334>,  <38.757145, 31.519047, 26.080475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523067, 31.469255, 26.062334>,  <38.132942, 31.386269, 26.032099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523067, 31.469255, 26.062334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194580, 0.645734, 0.738354,
		0.104374, -0.734837, 0.670164,
		0.975318, 0.207466, 0.075586,
		38.815662, 31.531496, 26.085011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266571, 31.324438, 26.759798>,  <38.132942, 31.386269, 26.032099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266571, 31.324438, 26.759798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529202, 31.565685, 26.578625>,  <38.686779, 31.710434, 26.469921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529202, 31.565685, 26.578625>,  <38.266571, 31.324438, 26.759798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529202, 31.565685, 26.578625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223303, 0.729020, 0.647044,
		0.720444, -0.323693, 0.613337,
		0.656579, 0.603119, -0.452937,
		38.726177, 31.746620, 26.442743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578754, 31.773073, 27.323126>,  <38.266571, 31.324438, 26.759798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578754, 31.773073, 27.323126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692566, 31.973579, 26.996256>,  <38.760853, 32.093884, 26.800133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692566, 31.973579, 26.996256>,  <38.578754, 31.773073, 27.323126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692566, 31.973579, 26.996256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142871, 0.865061, 0.480893,
		0.947962, -0.020075, 0.317749,
		0.284527, 0.501265, -0.817177,
		38.777924, 32.123959, 26.751102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147736, 32.149849, 27.543282>,  <38.578754, 31.773073, 27.323126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147736, 32.149849, 27.543282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992786, 32.353249, 27.235682>,  <38.899815, 32.475288, 27.051121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992786, 32.353249, 27.235682>,  <39.147736, 32.149849, 27.543282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992786, 32.353249, 27.235682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050019, 0.844493, 0.533225,
		0.920563, 0.168094, -0.352572,
		-0.387377, 0.508503, -0.769002,
		38.876572, 32.505798, 27.004980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574726, 32.608437, 27.343653>,  <39.147736, 32.149849, 27.543282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574726, 32.608437, 27.343653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227482, 32.757534, 27.212532>,  <39.019135, 32.846992, 27.133860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227482, 32.757534, 27.212532>,  <39.574726, 32.608437, 27.343653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227482, 32.757534, 27.212532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147330, 0.824116, 0.546925,
		0.474006, 0.426496, -0.770337,
		-0.868108, 0.372740, -0.327801,
		38.967049, 32.869354, 27.114191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788601, 33.246914, 26.989815>,  <39.574726, 32.608437, 27.343653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788601, 33.246914, 26.989815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400913, 33.259445, 27.087492>,  <39.168301, 33.266964, 27.146099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400913, 33.259445, 27.087492>,  <39.788601, 33.246914, 26.989815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400913, 33.259445, 27.087492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156551, 0.843935, 0.513094,
		-0.190011, 0.535530, -0.822863,
		-0.969220, 0.031327, 0.244195,
		39.110146, 33.268845, 27.160749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769821, 33.950085, 26.979292>,  <39.788601, 33.246914, 26.989815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769821, 33.950085, 26.979292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444305, 33.815632, 27.168928>,  <39.248997, 33.734962, 27.282709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444305, 33.815632, 27.168928>,  <39.769821, 33.950085, 26.979292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444305, 33.815632, 27.168928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059639, 0.763160, 0.643452,
		-0.578089, 0.551910, -0.601006,
		-0.813791, -0.336129, 0.474090,
		39.200169, 33.714794, 27.311155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238503, 34.591198, 27.072105>,  <39.769821, 33.950085, 26.979292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238503, 34.591198, 27.072105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119846, 34.306904, 27.327248>,  <39.048653, 34.136326, 27.480333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119846, 34.306904, 27.327248>,  <39.238503, 34.591198, 27.072105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119846, 34.306904, 27.327248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003572, 0.667089, 0.744969,
		-0.954983, 0.223266, -0.195346,
		-0.296640, -0.710735, 0.637856,
		39.030853, 34.093685, 27.518604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682602, 34.803993, 27.389269>,  <39.238503, 34.591198, 27.072105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682602, 34.803993, 27.389269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866638, 34.548355, 27.635805>,  <38.977058, 34.394974, 27.783728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866638, 34.548355, 27.635805>,  <38.682602, 34.803993, 27.389269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866638, 34.548355, 27.635805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023393, 0.685214, 0.727966,
		-0.887563, -0.349349, 0.300311,
		0.460092, -0.639091, 0.616343,
		39.004665, 34.356628, 27.820707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288685, 34.922363, 28.038528>,  <38.682602, 34.803993, 27.389269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288685, 34.922363, 28.038528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613827, 34.718224, 28.150826>,  <38.808910, 34.595741, 28.218204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613827, 34.718224, 28.150826>,  <38.288685, 34.922363, 28.038528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613827, 34.718224, 28.150826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014218, 0.499229, 0.866353,
		-0.582299, -0.700224, 0.413055,
		0.812850, -0.510349, 0.280745,
		38.857681, 34.565121, 28.235048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061230, 34.609642, 28.695831>,  <38.288685, 34.922363, 28.038528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061230, 34.609642, 28.695831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459835, 34.641502, 28.685850>,  <38.698997, 34.660618, 28.679861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459835, 34.641502, 28.685850>,  <38.061230, 34.609642, 28.695831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459835, 34.641502, 28.685850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006938, 0.376992, 0.926190,
		0.083176, -0.922786, 0.376229,
		0.996511, 0.079647, -0.024954,
		38.758789, 34.665398, 28.678364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214237, 34.337872, 29.335222>,  <38.061230, 34.609642, 28.695831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214237, 34.337872, 29.335222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523510, 34.558376, 29.209814>,  <38.709072, 34.690681, 29.134569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523510, 34.558376, 29.209814>,  <38.214237, 34.337872, 29.335222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523510, 34.558376, 29.209814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096865, 0.385913, 0.917436,
		0.626744, -0.739713, 0.244982,
		0.773181, 0.551267, -0.313521,
		38.755463, 34.723755, 29.115757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535610, 34.237675, 29.857004>,  <38.214237, 34.337872, 29.335222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535610, 34.237675, 29.857004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783264, 34.501705, 29.686844>,  <38.931858, 34.660122, 29.584747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783264, 34.501705, 29.686844>,  <38.535610, 34.237675, 29.857004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783264, 34.501705, 29.686844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204029, 0.387900, 0.898836,
		0.758313, -0.643299, 0.105489,
		0.619139, 0.660076, -0.425402,
		38.969006, 34.699726, 29.559223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092308, 34.225555, 30.216637>,  <38.535610, 34.237675, 29.857004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092308, 34.225555, 30.216637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110542, 34.576897, 30.026304>,  <39.121483, 34.787701, 29.912104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110542, 34.576897, 30.026304>,  <39.092308, 34.225555, 30.216637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110542, 34.576897, 30.026304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147165, 0.465226, 0.872873,
		0.988061, -0.109815, -0.108056,
		0.045584, 0.878354, -0.475832,
		39.124218, 34.840405, 29.883554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818726, 34.494358, 30.334785>,  <39.092308, 34.225555, 30.216637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818726, 34.494358, 30.334785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571163, 34.795418, 30.244911>,  <39.422626, 34.976051, 30.190987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571163, 34.795418, 30.244911>,  <39.818726, 34.494358, 30.334785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571163, 34.795418, 30.244911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272092, 0.473778, 0.837556,
		0.736834, 0.457231, -0.498011,
		-0.618903, 0.752645, -0.224687,
		39.385490, 35.021210, 30.177505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117294, 35.046883, 30.630280>,  <39.818726, 34.494358, 30.334785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117294, 35.046883, 30.630280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759773, 35.195587, 30.529949>,  <39.545261, 35.284809, 30.469751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759773, 35.195587, 30.529949>,  <40.117294, 35.046883, 30.630280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759773, 35.195587, 30.529949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063332, 0.658335, 0.750056,
		0.443967, 0.654516, -0.611966,
		-0.893802, 0.371757, -0.250827,
		39.491634, 35.307114, 30.454700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224720, 35.721039, 30.549755>,  <40.117294, 35.046883, 30.630280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224720, 35.721039, 30.549755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832874, 35.662949, 30.605265>,  <39.597767, 35.628094, 30.638571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832874, 35.662949, 30.605265>,  <40.224720, 35.721039, 30.549755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832874, 35.662949, 30.605265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030876, 0.573787, 0.818422,
		-0.198487, 0.806025, -0.557608,
		-0.979617, -0.145229, 0.138776,
		39.538990, 35.619381, 30.646898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019283, 36.373817, 30.501839>,  <40.224720, 35.721039, 30.549755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019283, 36.373817, 30.501839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775024, 36.143250, 30.719036>,  <39.628468, 36.004910, 30.849354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775024, 36.143250, 30.719036>,  <40.019283, 36.373817, 30.501839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775024, 36.143250, 30.719036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000805, 0.685233, 0.728324,
		-0.791900, 0.445189, -0.417974,
		-0.610651, -0.576423, 0.542994,
		39.591827, 35.970322, 30.881933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428802, 36.823605, 30.707685>,  <40.019283, 36.373817, 30.501839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428802, 36.823605, 30.707685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463383, 36.512550, 30.956781>,  <39.484131, 36.325916, 31.106239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463383, 36.512550, 30.956781>,  <39.428802, 36.823605, 30.707685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463383, 36.512550, 30.956781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019132, 0.623670, 0.781454,
		-0.996072, -0.079474, 0.039042,
		0.086454, -0.777638, 0.622741,
		39.489319, 36.279259, 31.143604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903809, 36.982967, 31.136160>,  <39.428802, 36.823605, 30.707685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903809, 36.982967, 31.136160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150215, 36.751991, 31.350481>,  <39.298058, 36.613403, 31.479074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150215, 36.751991, 31.350481>,  <38.903809, 36.982967, 31.136160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150215, 36.751991, 31.350481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001314, 0.679428, 0.733741,
		-0.787734, -0.452699, 0.417779,
		0.616015, -0.577444, 0.535803,
		39.335018, 36.578758, 31.511223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521988, 36.975212, 31.734659>,  <38.903809, 36.982967, 31.136160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521988, 36.975212, 31.734659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904617, 36.899033, 31.822924>,  <39.134197, 36.853325, 31.875883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904617, 36.899033, 31.822924>,  <38.521988, 36.975212, 31.734659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904617, 36.899033, 31.822924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061565, 0.607948, 0.791586,
		-0.284906, -0.770798, 0.569824,
		0.956576, -0.190446, 0.220662,
		39.191589, 36.841900, 31.889122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701138, 37.459637, 32.295795>,  <38.521988, 36.975212, 31.734659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701138, 37.459637, 32.295795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032574, 37.238178, 32.262527>,  <39.231434, 37.105301, 32.242565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032574, 37.238178, 32.262527>,  <38.701138, 37.459637, 32.295795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032574, 37.238178, 32.262527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444077, 0.559468, 0.699851,
		-0.340939, -0.616822, 0.709430,
		0.828587, -0.553648, -0.083171,
		39.281151, 37.072083, 32.237576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930481, 37.117435, 32.953575>,  <38.701138, 37.459637, 32.295795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930481, 37.117435, 32.953575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221718, 37.196087, 32.690907>,  <39.396461, 37.243279, 32.533306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221718, 37.196087, 32.690907>,  <38.930481, 37.117435, 32.953575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221718, 37.196087, 32.690907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468391, 0.556746, 0.686035,
		0.500490, -0.807077, 0.313267,
		0.728093, 0.196622, -0.656673,
		39.440144, 37.255074, 32.493904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606434, 36.907188, 33.186840>,  <38.930481, 37.117435, 32.953575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606434, 36.907188, 33.186840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606422, 37.223019, 32.941380>,  <39.606415, 37.412518, 32.794102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606422, 37.223019, 32.941380>,  <39.606434, 36.907188, 33.186840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606422, 37.223019, 32.941380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320953, 0.581196, 0.747797,
		0.947095, -0.196935, -0.253431,
		-0.000026, 0.789575, -0.613654,
		39.606415, 37.459892, 32.757282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905247, 37.450596, 33.644215>,  <39.606434, 36.907188, 33.186840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905247, 37.450596, 33.644215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806995, 37.643097, 33.307629>,  <39.748043, 37.758598, 33.105679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806995, 37.643097, 33.307629>,  <39.905247, 37.450596, 33.644215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806995, 37.643097, 33.307629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050962, 0.873269, 0.484566,
		0.968023, 0.076142, -0.239028,
		-0.245631, 0.481252, -0.841464,
		39.733307, 37.787472, 33.055191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435261, 38.004555, 33.577206>,  <39.905247, 37.450596, 33.644215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435261, 38.004555, 33.577206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114143, 38.113731, 33.365158>,  <39.921474, 38.179237, 33.237930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114143, 38.113731, 33.365158>,  <40.435261, 38.004555, 33.577206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114143, 38.113731, 33.365158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161163, 0.955311, 0.247804,
		0.574069, 0.113498, -0.810902,
		-0.802789, 0.272944, -0.530123,
		39.873306, 38.195614, 33.206120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743263, 38.511936, 33.132599>,  <40.435261, 38.004555, 33.577206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743263, 38.511936, 33.132599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346523, 38.562756, 33.136360>,  <40.108479, 38.593246, 33.138618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346523, 38.562756, 33.136360>,  <40.743263, 38.511936, 33.132599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346523, 38.562756, 33.136360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127392, 0.989919, 0.061905,
		-0.001443, 0.062598, -0.998038,
		-0.991851, 0.127053, 0.009403,
		40.048969, 38.600872, 33.139179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626713, 39.150826, 32.900723>,  <40.743263, 38.511936, 33.132599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626713, 39.150826, 32.900723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287128, 39.092602, 33.103928>,  <40.083378, 39.057667, 33.225849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287128, 39.092602, 33.103928>,  <40.626713, 39.150826, 32.900723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287128, 39.092602, 33.103928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062674, 0.982267, 0.176701,
		-0.524725, 0.118173, -0.843029,
		-0.848961, -0.145555, 0.508014,
		40.032440, 39.048935, 33.256332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179283, 39.620365, 32.668472>,  <40.626713, 39.150826, 32.900723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179283, 39.620365, 32.668472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016598, 39.524086, 33.020981>,  <39.918987, 39.466320, 33.232487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016598, 39.524086, 33.020981>,  <40.179283, 39.620365, 32.668472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016598, 39.524086, 33.020981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136964, 0.969829, 0.201674,
		-0.903229, -0.038679, -0.427413,
		-0.406717, -0.240698, 0.881275,
		39.894581, 39.451878, 33.285362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621239, 40.072361, 32.789215>,  <40.179283, 39.620365, 32.668472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621239, 40.072361, 32.789215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720795, 39.930016, 33.149529>,  <39.780529, 39.844608, 33.365719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720795, 39.930016, 33.149529>,  <39.621239, 40.072361, 32.789215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720795, 39.930016, 33.149529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230443, 0.881585, 0.411951,
		-0.940719, -0.310109, 0.137407,
		0.248886, -0.355865, 0.900786,
		39.795460, 39.823257, 33.419765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112713, 40.332153, 33.251240>,  <39.621239, 40.072361, 32.789215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112713, 40.332153, 33.251240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405006, 40.189659, 33.484177>,  <39.580383, 40.104160, 33.623940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405006, 40.189659, 33.484177>,  <39.112713, 40.332153, 33.251240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405006, 40.189659, 33.484177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152172, 0.746583, 0.647655,
		-0.665490, -0.561878, 0.491342,
		0.730731, -0.356239, 0.582346,
		39.624226, 40.082787, 33.658882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736168, 40.228668, 33.953999>,  <39.112713, 40.332153, 33.251240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736168, 40.228668, 33.953999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126953, 40.309227, 33.982250>,  <39.361423, 40.357563, 33.999199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126953, 40.309227, 33.982250>,  <38.736168, 40.228668, 33.953999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126953, 40.309227, 33.982250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203987, 0.783855, 0.586481,
		0.062753, -0.587376, 0.806877,
		0.976960, 0.201396, 0.070627,
		39.420040, 40.369644, 34.003437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915466, 40.303802, 34.677799>,  <38.736168, 40.228668, 33.953999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915466, 40.303802, 34.677799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122917, 40.555077, 34.445797>,  <39.247387, 40.705841, 34.306595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122917, 40.555077, 34.445797>,  <38.915466, 40.303802, 34.677799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122917, 40.555077, 34.445797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436350, 0.777842, 0.452283,
		0.735270, 0.018518, 0.677521,
		0.518629, 0.628187, -0.580004,
		39.278507, 40.743534, 34.271797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031742, 40.774376, 35.116470>,  <38.915466, 40.303802, 34.677799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031742, 40.774376, 35.116470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077797, 40.979023, 34.775887>,  <39.105431, 41.101810, 34.571537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077797, 40.979023, 34.775887>,  <39.031742, 40.774376, 35.116470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077797, 40.979023, 34.775887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297577, 0.835562, 0.461828,
		0.947730, 0.200201, 0.248451,
		0.115138, 0.511621, -0.851462,
		39.112339, 41.132511, 34.520447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204861, 41.431385, 35.363262>,  <39.031742, 40.774376, 35.116470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204861, 41.431385, 35.363262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103298, 41.518074, 34.986206>,  <39.042362, 41.570087, 34.759972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103298, 41.518074, 34.986206>,  <39.204861, 41.431385, 35.363262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103298, 41.518074, 34.986206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342014, 0.891496, 0.297089,
		0.904742, 0.397828, -0.152236,
		-0.253908, 0.216722, -0.942636,
		39.027126, 41.583092, 34.703415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451469, 42.077446, 35.313919>,  <39.204861, 41.431385, 35.363262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451469, 42.077446, 35.313919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182690, 42.037247, 35.020420>,  <39.021423, 42.013126, 34.844318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182690, 42.037247, 35.020420>,  <39.451469, 42.077446, 35.313919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182690, 42.037247, 35.020420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418753, 0.868728, 0.264494,
		0.610847, 0.484986, -0.625823,
		-0.671946, -0.100500, -0.733749,
		38.981106, 42.007095, 34.800297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413277, 42.718529, 35.006222>,  <39.451469, 42.077446, 35.313919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413277, 42.718529, 35.006222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071320, 42.529869, 34.919781>,  <38.866146, 42.416672, 34.867916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071320, 42.529869, 34.919781>,  <39.413277, 42.718529, 35.006222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071320, 42.529869, 34.919781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514903, 0.822326, 0.242187,
		0.063483, 0.318318, -0.945856,
		-0.854895, -0.471650, -0.216107,
		38.814850, 42.388374, 34.854950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034428, 43.214859, 34.711033>,  <39.413277, 42.718529, 35.006222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034428, 43.214859, 34.711033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766655, 42.927006, 34.784786>,  <38.605991, 42.754295, 34.829037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766655, 42.927006, 34.784786>,  <39.034428, 43.214859, 34.711033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766655, 42.927006, 34.784786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639599, 0.684572, 0.349678,
		-0.377861, 0.116155, -0.918547,
		-0.669428, -0.719632, 0.184380,
		38.565826, 42.711117, 34.840099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322998, 43.343071, 34.344910>,  <39.034428, 43.214859, 34.711033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322998, 43.343071, 34.344910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273270, 43.099358, 34.658169>,  <38.243431, 42.953129, 34.846123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273270, 43.099358, 34.658169>,  <38.322998, 43.343071, 34.344910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273270, 43.099358, 34.658169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781433, 0.546516, 0.301136,
		-0.611479, -0.574539, -0.544057,
		-0.124322, -0.609282, 0.783147,
		38.235973, 42.916573, 34.893112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701237, 43.063808, 34.234005>,  <38.322998, 43.343071, 34.344910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701237, 43.063808, 34.234005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826969, 43.113628, 34.610447>,  <37.902409, 43.143520, 34.836311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826969, 43.113628, 34.610447>,  <37.701237, 43.063808, 34.234005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826969, 43.113628, 34.610447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853080, 0.471980, 0.222461,
		-0.416477, -0.872767, 0.254608,
		0.314327, 0.124551, 0.941109,
		37.921268, 43.150993, 34.892780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386349, 42.617146, 34.686378>,  <37.701237, 43.063808, 34.234005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386349, 42.617146, 34.686378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502010, 42.971745, 34.830887>,  <37.571407, 43.184505, 34.917591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502010, 42.971745, 34.830887>,  <37.386349, 42.617146, 34.686378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502010, 42.971745, 34.830887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950996, 0.309193, 0.002443,
		-0.109537, -0.344273, 0.932458,
		0.289151, 0.886496, 0.361270,
		37.588757, 43.237694, 34.939266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966640, 42.854012, 35.326462>,  <37.386349, 42.617146, 34.686378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966640, 42.854012, 35.326462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060852, 43.173828, 35.105457>,  <37.117378, 43.365719, 34.972855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060852, 43.173828, 35.105457>,  <36.966640, 42.854012, 35.326462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060852, 43.173828, 35.105457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971865, 0.192432, -0.135826,
		-0.002277, 0.568956, 0.822365,
		0.235528, 0.799537, -0.552510,
		37.131512, 43.413689, 34.939705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621906, 42.467728, 35.504528>,  <36.966640, 42.854012, 35.326462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621906, 42.467728, 35.504528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754692, 42.627018, 35.162483>,  <37.834362, 42.722591, 34.957256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754692, 42.627018, 35.162483>,  <37.621906, 42.467728, 35.504528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754692, 42.627018, 35.162483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602640, -0.786933, -0.132521,
		-0.725689, -0.471332, -0.501220,
		0.331965, 0.398224, -0.855112,
		37.854282, 42.746487, 34.905949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692272, 41.879139, 35.165798>,  <37.621906, 42.467728, 35.504528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692272, 41.879139, 35.165798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897076, 42.159599, 34.967308>,  <38.019958, 42.327873, 34.848213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897076, 42.159599, 34.967308>,  <37.692272, 41.879139, 35.165798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897076, 42.159599, 34.967308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651171, -0.693573, -0.308113,
		-0.560199, -0.165368, -0.811684,
		0.512010, 0.701149, -0.496222,
		38.050678, 42.369946, 34.818443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787663, 41.703354, 34.439930>,  <37.692272, 41.879139, 35.165798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787663, 41.703354, 34.439930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091095, 41.927952, 34.572159>,  <38.273155, 42.062710, 34.651497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091095, 41.927952, 34.572159>,  <37.787663, 41.703354, 34.439930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091095, 41.927952, 34.572159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651570, -0.651417, -0.388732,
		-0.002927, 0.510278, -0.860004,
		0.758583, 0.561490, 0.330575,
		38.318668, 42.096397, 34.671333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127289, 41.909573, 33.915905>,  <37.787663, 41.703354, 34.439930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127289, 41.909573, 33.915905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404556, 41.902100, 34.204121>,  <38.570915, 41.897617, 34.377048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404556, 41.902100, 34.204121>,  <38.127289, 41.909573, 33.915905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404556, 41.902100, 34.204121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548438, -0.634983, -0.544070,
		0.467692, 0.772300, -0.429903,
		0.693166, -0.018682, 0.720536,
		38.612507, 41.896496, 34.420280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660984, 41.896030, 33.527771>,  <38.127289, 41.909573, 33.915905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660984, 41.896030, 33.527771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795200, 41.802895, 33.892891>,  <38.875729, 41.747013, 34.111961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795200, 41.802895, 33.892891>,  <38.660984, 41.896030, 33.527771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795200, 41.802895, 33.892891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623784, -0.671185, -0.400506,
		0.705908, 0.703774, -0.079969,
		0.335540, -0.232837, 0.912798,
		38.895863, 41.733044, 34.166729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339088, 41.755516, 33.411968>,  <38.660984, 41.896030, 33.527771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339088, 41.755516, 33.411968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291615, 41.593380, 33.774540>,  <39.263130, 41.496098, 33.992085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291615, 41.593380, 33.774540>,  <39.339088, 41.755516, 33.411968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291615, 41.593380, 33.774540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601367, -0.755751, -0.259224,
		0.790109, 0.514331, 0.333453,
		-0.118680, -0.405343, 0.906428,
		39.256012, 41.471779, 34.046467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007267, 41.624069, 33.569302>,  <39.339088, 41.755516, 33.411968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007267, 41.624069, 33.569302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776390, 41.395626, 33.802773>,  <39.637863, 41.258560, 33.942856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776390, 41.395626, 33.802773>,  <40.007267, 41.624069, 33.569302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776390, 41.395626, 33.802773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552694, -0.799383, -0.235616,
		0.601146, 0.186600, 0.777048,
		-0.577193, -0.571110, 0.583679,
		39.603233, 41.224293, 33.977875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426651, 41.292740, 34.044796>,  <40.007267, 41.624069, 33.569302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426651, 41.292740, 34.044796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109100, 41.049915, 34.030727>,  <39.918571, 40.904221, 34.022285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109100, 41.049915, 34.030727>,  <40.426651, 41.292740, 34.044796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109100, 41.049915, 34.030727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595432, -0.764317, -0.247551,
		0.123400, -0.217464, 0.968237,
		-0.793873, -0.607066, -0.035169,
		39.870937, 40.867794, 34.020176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738304, 40.544029, 34.132397>,  <40.426651, 41.292740, 34.044796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738304, 40.544029, 34.132397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342823, 40.490078, 34.106247>,  <40.105534, 40.457706, 34.090557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342823, 40.490078, 34.106247>,  <40.738304, 40.544029, 34.132397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342823, 40.490078, 34.106247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145938, -0.965716, -0.214699,
		-0.034170, -0.221813, 0.974490,
		-0.988703, -0.134879, -0.065370,
		40.046211, 40.449615, 34.086636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535568, 39.941776, 34.547974>,  <40.738304, 40.544029, 34.132397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535568, 39.941776, 34.547974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248425, 39.976761, 34.271706>,  <40.076138, 39.997753, 34.105946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248425, 39.976761, 34.271706>,  <40.535568, 39.941776, 34.547974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248425, 39.976761, 34.271706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035617, -0.995392, -0.089028,
		-0.695277, -0.039310, 0.717666,
		-0.717859, 0.087461, -0.690673,
		40.033066, 40.002998, 34.064503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178646, 39.272335, 34.562675>,  <40.535568, 39.941776, 34.547974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178646, 39.272335, 34.562675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050461, 39.448364, 34.227142>,  <39.973549, 39.553982, 34.025822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050461, 39.448364, 34.227142>,  <40.178646, 39.272335, 34.562675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050461, 39.448364, 34.227142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375748, -0.871943, -0.313893,
		-0.869544, 0.214591, 0.444797,
		-0.320479, 0.440075, -0.838825,
		39.954323, 39.580383, 33.975491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509808, 38.965157, 34.388554>,  <40.178646, 39.272335, 34.562675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509808, 38.965157, 34.388554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659374, 39.110981, 34.047432>,  <39.749115, 39.198475, 33.842758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659374, 39.110981, 34.047432>,  <39.509808, 38.965157, 34.388554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659374, 39.110981, 34.047432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352127, -0.794856, -0.494177,
		-0.858016, 0.485079, -0.168839,
		0.373917, 0.364559, -0.852809,
		39.771549, 39.220348, 33.791588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954502, 38.831150, 33.865116>,  <39.509808, 38.965157, 34.388554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954502, 38.831150, 33.865116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296207, 38.876701, 33.662228>,  <39.501228, 38.904030, 33.540493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296207, 38.876701, 33.662228>,  <38.954502, 38.831150, 33.865116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296207, 38.876701, 33.662228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214511, -0.811551, -0.543479,
		-0.473526, 0.573077, -0.668847,
		0.854259, 0.113876, -0.507222,
		39.552486, 38.910866, 33.510059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712303, 38.745907, 33.184139>,  <38.954502, 38.831150, 33.865116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712303, 38.745907, 33.184139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104961, 38.674591, 33.211231>,  <39.340557, 38.631802, 33.227486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104961, 38.674591, 33.211231>,  <38.712303, 38.745907, 33.184139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104961, 38.674591, 33.211231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114656, -0.835468, -0.537446,
		0.152407, 0.519815, -0.840574,
		0.981645, -0.178288, 0.067731,
		39.399456, 38.621105, 33.231552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889019, 38.575211, 32.540962>,  <38.712303, 38.745907, 33.184139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889019, 38.575211, 32.540962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215099, 38.436714, 32.726677>,  <39.410748, 38.353619, 32.838108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215099, 38.436714, 32.726677>,  <38.889019, 38.575211, 32.540962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215099, 38.436714, 32.726677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028966, -0.776262, -0.629744,
		0.578450, 0.526818, -0.622783,
		0.815203, -0.346236, 0.464288,
		39.459660, 38.332844, 32.865963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325172, 38.405151, 31.979303>,  <38.889019, 38.575211, 32.540962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325172, 38.405151, 31.979303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461384, 38.218063, 32.305561>,  <39.543110, 38.105808, 32.501316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461384, 38.218063, 32.305561>,  <39.325172, 38.405151, 31.979303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461384, 38.218063, 32.305561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266967, -0.783689, -0.560856,
		0.901536, 0.408739, -0.142005,
		0.340532, -0.467722, 0.815644,
		39.563541, 38.077747, 32.550255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030907, 38.202549, 31.824106>,  <39.325172, 38.405151, 31.979303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030907, 38.202549, 31.824106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876095, 37.991550, 32.126617>,  <39.783207, 37.864952, 32.308125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876095, 37.991550, 32.126617>,  <40.030907, 38.202549, 31.824106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876095, 37.991550, 32.126617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256280, -0.849421, -0.461308,
		0.885737, 0.015280, 0.463935,
		-0.387027, -0.527495, 0.756280,
		39.759987, 37.833302, 32.353500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529613, 37.712833, 31.877104>,  <40.030907, 38.202549, 31.824106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529613, 37.712833, 31.877104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191154, 37.565159, 32.030849>,  <39.988079, 37.476555, 32.123096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191154, 37.565159, 32.030849>,  <40.529613, 37.712833, 31.877104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191154, 37.565159, 32.030849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146918, -0.854838, -0.497662,
		0.512303, -0.364624, 0.777557,
		-0.846145, -0.369190, 0.384366,
		39.937309, 37.454403, 32.146160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533798, 37.019501, 31.859350>,  <40.529613, 37.712833, 31.877104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533798, 37.019501, 31.859350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144108, 37.017960, 31.949572>,  <39.910294, 37.017036, 32.003704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144108, 37.017960, 31.949572>,  <40.533798, 37.019501, 31.859350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144108, 37.017960, 31.949572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082643, -0.924244, -0.372752,
		0.209902, -0.381784, 0.900101,
		-0.974223, -0.003854, 0.225552,
		39.851841, 37.016804, 32.017239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437565, 36.370529, 32.223396>,  <40.533798, 37.019501, 31.859350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437565, 36.370529, 32.223396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065361, 36.489998, 32.138596>,  <39.842037, 36.561680, 32.087715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065361, 36.489998, 32.138596>,  <40.437565, 36.370529, 32.223396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065361, 36.489998, 32.138596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163347, -0.856477, -0.489659,
		-0.327822, -0.421003, 0.845748,
		-0.930511, 0.298671, -0.212003,
		39.786209, 36.579597, 32.074993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951557, 35.873123, 32.390736>,  <40.437565, 36.370529, 32.223396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951557, 35.873123, 32.390736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771828, 36.085003, 32.102982>,  <39.663990, 36.212132, 31.930328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771828, 36.085003, 32.102982>,  <39.951557, 35.873123, 32.390736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771828, 36.085003, 32.102982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125033, -0.834616, -0.536454,
		-0.884576, -0.151095, 0.441244,
		-0.449324, 0.529703, -0.719389,
		39.637032, 36.243916, 31.887165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803631, 35.356483, 31.958040>,  <39.951557, 35.873123, 32.390736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803631, 35.356483, 31.958040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650383, 35.637459, 31.718107>,  <39.558434, 35.806046, 31.574146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650383, 35.637459, 31.718107>,  <39.803631, 35.356483, 31.958040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650383, 35.637459, 31.718107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086666, -0.673852, -0.733766,
		-0.919626, -0.229132, 0.319041,
		-0.383115, 0.702440, -0.599833,
		39.535450, 35.848190, 31.538157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490181, 35.162487, 32.346382>,  <39.803631, 35.356483, 31.958040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490181, 35.162487, 32.346382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710247, 35.482235, 32.249779>,  <40.842285, 35.674084, 32.191814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710247, 35.482235, 32.249779>,  <40.490181, 35.162487, 32.346382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710247, 35.482235, 32.249779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610148, -0.582262, -0.537300,
		-0.570125, 0.148244, -0.808073,
		0.550161, 0.799372, -0.241511,
		40.875294, 35.722046, 32.177326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760693, 35.055458, 31.683960>,  <40.490181, 35.162487, 32.346382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760693, 35.055458, 31.683960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053215, 35.299450, 31.806021>,  <41.228729, 35.445847, 31.879257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053215, 35.299450, 31.806021>,  <40.760693, 35.055458, 31.683960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053215, 35.299450, 31.806021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664365, -0.535848, -0.521044,
		-0.154313, 0.583773, -0.797118,
		0.731305, 0.609981, 0.305150,
		41.272606, 35.482445, 31.897566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051266, 35.350605, 30.948347>,  <40.760693, 35.055458, 31.683960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051266, 35.350605, 30.948347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263958, 35.333565, 31.286682>,  <41.391575, 35.323341, 31.489683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263958, 35.333565, 31.286682>,  <41.051266, 35.350605, 30.948347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263958, 35.333565, 31.286682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621662, -0.658619, -0.423978,
		0.575147, 0.751270, -0.323727,
		0.531735, -0.042602, 0.845839,
		41.423477, 35.320786, 31.540434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796329, 35.435730, 30.900209>,  <41.051266, 35.350605, 30.948347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796329, 35.435730, 30.900209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769047, 35.164669, 31.193094>,  <41.752678, 35.002033, 31.368826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769047, 35.164669, 31.193094>,  <41.796329, 35.435730, 30.900209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769047, 35.164669, 31.193094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647653, -0.588331, -0.484163,
		0.758877, 0.441195, 0.479013,
		-0.068208, -0.677653, 0.732212,
		41.748585, 34.961372, 31.412758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422337, 35.359661, 31.137255>,  <41.796329, 35.435730, 30.900209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422337, 35.359661, 31.137255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200462, 35.032867, 31.200325>,  <42.067337, 34.836792, 31.238167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200462, 35.032867, 31.200325>,  <42.422337, 35.359661, 31.137255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200462, 35.032867, 31.200325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712043, -0.564119, -0.418049,
		0.430486, -0.119615, 0.894636,
		-0.554686, -0.816983, 0.157674,
		42.034058, 34.787773, 31.247627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973045, 34.878735, 30.873327>,  <42.422337, 35.359661, 31.137255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973045, 34.878735, 30.873327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695248, 34.642624, 31.037889>,  <42.528568, 34.500957, 31.136627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695248, 34.642624, 31.037889>,  <42.973045, 34.878735, 30.873327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695248, 34.642624, 31.037889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588333, -0.795045, -0.147539,
		0.414176, 0.139580, 0.899431,
		-0.694494, -0.590272, 0.411408,
		42.486900, 34.465542, 31.161312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205807, 34.695374, 31.473131>,  <42.973045, 34.878735, 30.873327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205807, 34.695374, 31.473131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990223, 34.425438, 31.271494>,  <42.860870, 34.263477, 31.150513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990223, 34.425438, 31.271494>,  <43.205807, 34.695374, 31.473131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990223, 34.425438, 31.271494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840950, -0.465328, -0.276175,
		-0.048194, -0.572765, 0.818302,
		-0.538962, -0.674841, -0.504092,
		42.828533, 34.222984, 31.120266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052601, 34.911041, 32.128128>,  <43.205807, 34.695374, 31.473131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052601, 34.911041, 32.128128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086983, 34.669273, 32.444935>,  <43.107613, 34.524212, 32.635017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086983, 34.669273, 32.444935>,  <43.052601, 34.911041, 32.128128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086983, 34.669273, 32.444935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748431, 0.563894, 0.349105,
		-0.657619, 0.562762, 0.500836,
		0.085955, -0.604419, 0.792016,
		43.112770, 34.487949, 32.682541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994114, 35.312851, 32.651192>,  <43.052601, 34.911041, 32.128128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994114, 35.312851, 32.651192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171909, 34.991711, 32.810116>,  <43.278587, 34.799026, 32.905472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171909, 34.991711, 32.810116>,  <42.994114, 35.312851, 32.651192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171909, 34.991711, 32.810116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722148, 0.583597, 0.371371,
		-0.530026, 0.121848, 0.839181,
		0.444493, -0.802850, 0.397314,
		43.305256, 34.750854, 32.929310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338139, 35.511707, 33.344830>,  <42.994114, 35.312851, 32.651192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338139, 35.511707, 33.344830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514084, 35.199223, 33.167637>,  <43.619652, 35.011734, 33.061321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514084, 35.199223, 33.167637>,  <43.338139, 35.511707, 33.344830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514084, 35.199223, 33.167637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876372, 0.481148, 0.021680,
		0.196204, -0.397753, 0.896268,
		0.439860, -0.781210, -0.442983,
		43.646042, 34.964859, 33.034740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846500, 35.235909, 33.865856>,  <43.338139, 35.511707, 33.344830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846500, 35.235909, 33.865856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942749, 35.229679, 33.477657>,  <44.000500, 35.225941, 33.244740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942749, 35.229679, 33.477657>,  <43.846500, 35.235909, 33.865856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942749, 35.229679, 33.477657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828770, 0.523736, 0.197082,
		0.505213, -0.851738, 0.138931,
		0.240625, -0.015573, -0.970493,
		44.014938, 35.225006, 33.186508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462231, 34.915417, 33.699440>,  <43.846500, 35.235909, 33.865856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462231, 34.915417, 33.699440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380642, 35.220131, 33.453487>,  <44.331688, 35.402958, 33.305916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380642, 35.220131, 33.453487>,  <44.462231, 34.915417, 33.699440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380642, 35.220131, 33.453487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819864, 0.476164, 0.317947,
		0.534992, -0.439269, -0.721683,
		-0.203975, 0.761781, -0.614885,
		44.319450, 35.448666, 33.269020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984577, 34.992435, 33.179459>,  <44.462231, 34.915417, 33.699440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984577, 34.992435, 33.179459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777355, 35.311947, 33.301811>,  <44.653023, 35.503654, 33.375221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777355, 35.311947, 33.301811>,  <44.984577, 34.992435, 33.179459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.777355, 35.311947, 33.301811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846694, 0.428167, 0.315884,
		0.121354, 0.422634, -0.898139,
		-0.518057, 0.798783, 0.305882,
		44.621937, 35.551582, 33.393578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.535297, 35.445526, 33.483784>,  <44.984577, 34.992435, 33.179459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.535297, 35.445526, 33.483784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815208, 35.723053, 33.551823>,  <45.983154, 35.889568, 33.592644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815208, 35.723053, 33.551823>,  <45.535297, 35.445526, 33.483784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815208, 35.723053, 33.551823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412517, -0.586867, 0.696719,
		0.583217, -0.417381, -0.696887,
		0.699777, 0.693816, 0.170093,
		46.025143, 35.931198, 33.602852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.250919, 35.204502, 33.495132>,  <45.535297, 35.445526, 33.483784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.250919, 35.204502, 33.495132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276230, 35.556843, 33.682789>,  <46.291416, 35.768250, 33.795383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276230, 35.556843, 33.682789>,  <46.250919, 35.204502, 33.495132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276230, 35.556843, 33.682789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570137, -0.417725, 0.707425,
		0.819109, 0.222712, -0.528639,
		0.063274, 0.880855, 0.469139,
		46.295212, 35.821098, 33.823532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.857872, 35.316059, 33.780037>,  <46.250919, 35.204502, 33.495132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.857872, 35.316059, 33.780037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.637211, 35.539238, 34.028030>,  <46.504814, 35.673145, 34.176826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.637211, 35.539238, 34.028030>,  <46.857872, 35.316059, 33.780037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.637211, 35.539238, 34.028030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483098, -0.392198, 0.782813,
		0.679920, 0.731355, -0.053183,
		-0.551656, 0.557943, 0.619980,
		46.471714, 35.706619, 34.214024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.252117, 35.738274, 34.236958>,  <46.857872, 35.316059, 33.780037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.252117, 35.738274, 34.236958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.904446, 35.643963, 34.410824>,  <46.695843, 35.587376, 34.515144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.904446, 35.643963, 34.410824>,  <47.252117, 35.738274, 34.236958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.904446, 35.643963, 34.410824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492730, -0.338854, 0.801495,
		-0.041685, 0.910817, 0.410700,
		-0.869183, -0.235774, 0.434662,
		46.643692, 35.573231, 34.541222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.242023, 36.019810, 34.885181>,  <47.252117, 35.738274, 34.236958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.242023, 36.019810, 34.885181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.083134, 35.661255, 34.806496>,  <46.987801, 35.446121, 34.759285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.083134, 35.661255, 34.806496>,  <47.242023, 36.019810, 34.885181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.083134, 35.661255, 34.806496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745555, -0.440192, 0.500379,
		-0.535126, 0.052105, 0.843164,
		-0.397226, -0.896391, -0.196711,
		46.963966, 35.392338, 34.747482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.148575, 35.615540, 35.543732>,  <47.242023, 36.019810, 34.885181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.148575, 35.615540, 35.543732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203247, 35.389881, 35.218018>,  <47.236050, 35.254486, 35.022591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203247, 35.389881, 35.218018>,  <47.148575, 35.615540, 35.543732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.203247, 35.389881, 35.218018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888561, -0.293563, 0.352534,
		-0.437925, -0.771725, 0.461154,
		0.136681, -0.564146, -0.814283,
		47.244251, 35.220638, 34.973732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.283630, 34.920151, 35.762634>,  <47.148575, 35.615540, 35.543732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.283630, 34.920151, 35.762634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.437065, 34.992706, 35.400429>,  <47.529125, 35.036240, 35.183105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.437065, 34.992706, 35.400429>,  <47.283630, 34.920151, 35.762634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.437065, 34.992706, 35.400429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890981, -0.330609, 0.311209,
		-0.242923, -0.926173, -0.288429,
		0.383591, 0.181385, -0.905515,
		47.552143, 35.047123, 35.128773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.632702, 34.317799, 35.300907>,  <47.283630, 34.920151, 35.762634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.632702, 34.317799, 35.300907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.780262, 34.683578, 35.234348>,  <47.868797, 34.903046, 35.194412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.780262, 34.683578, 35.234348>,  <47.632702, 34.317799, 35.300907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.780262, 34.683578, 35.234348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903283, -0.310520, 0.296070,
		0.219073, -0.259524, -0.940561,
		0.368901, 0.914453, -0.166397,
		47.890934, 34.957916, 35.184429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.397720, 27.795410, 26.676287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.998024, 27.785908, 26.663887>,  <34.758205, 27.780207, 26.656448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.998024, 27.785908, 26.663887>,  <35.397720, 27.795410, 26.676287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998024, 27.785908, 26.663887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039027, 0.636361, 0.770404,
		0.001425, 0.771026, -0.636803,
		-0.999237, -0.023754, -0.030998,
		34.698254, 27.778782, 26.654587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119610, 28.505268, 26.683903>,  <35.397720, 27.795410, 26.676287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119610, 28.505268, 26.683903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776054, 28.332548, 26.794071>,  <34.569920, 28.228916, 26.860172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776054, 28.332548, 26.794071>,  <35.119610, 28.505268, 26.683903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776054, 28.332548, 26.794071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047010, 0.601959, 0.797142,
		-0.509998, 0.671710, -0.537315,
		-0.858890, -0.431800, 0.275421,
		34.518387, 28.203009, 26.876698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657814, 29.015715, 26.730774>,  <35.119610, 28.505268, 26.683903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657814, 29.015715, 26.730774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.554485, 28.723318, 26.983416>,  <34.492489, 28.547880, 27.135000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.554485, 28.723318, 26.983416>,  <34.657814, 29.015715, 26.730774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554485, 28.723318, 26.983416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087993, 0.668880, 0.738144,
		-0.962044, 0.135100, -0.237107,
		-0.258319, -0.730991, 0.631604,
		34.476990, 28.504021, 27.172897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009449, 29.160574, 27.016281>,  <34.657814, 29.015715, 26.730774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009449, 29.160574, 27.016281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.127045, 28.877886, 27.273691>,  <34.197601, 28.708273, 27.428137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.127045, 28.877886, 27.273691>,  <34.009449, 29.160574, 27.016281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127045, 28.877886, 27.273691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152500, 0.629968, 0.761501,
		-0.943566, -0.322007, 0.077427,
		0.293985, -0.706718, 0.643523,
		34.215240, 28.665871, 27.466747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452000, 29.120041, 27.594723>,  <34.009449, 29.160574, 27.016281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452000, 29.120041, 27.594723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.778931, 28.949835, 27.750114>,  <33.975090, 28.847712, 27.843349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.778931, 28.949835, 27.750114>,  <33.452000, 29.120041, 27.594723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778931, 28.949835, 27.750114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095315, 0.565093, 0.819503,
		-0.568235, -0.706830, 0.421308,
		0.817327, -0.425514, 0.388477,
		34.024128, 28.822180, 27.866657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241451, 28.945784, 28.277063>,  <33.452000, 29.120041, 27.594723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241451, 28.945784, 28.277063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.640339, 28.965338, 28.299564>,  <33.879673, 28.977070, 28.313065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.640339, 28.965338, 28.299564>,  <33.241451, 28.945784, 28.277063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640339, 28.965338, 28.299564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074477, 0.626760, 0.775645,
		0.002659, -0.777678, 0.628657,
		0.997219, 0.048884, 0.056253,
		33.939507, 28.980003, 28.316441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393650, 28.856592, 28.990267>,  <33.241451, 28.945784, 28.277063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393650, 28.856592, 28.990267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699730, 29.034222, 28.803822>,  <33.883377, 29.140799, 28.691954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699730, 29.034222, 28.803822>,  <33.393650, 28.856592, 28.990267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699730, 29.034222, 28.803822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069104, 0.663180, 0.745263,
		0.640062, -0.602492, 0.476785,
		0.765209, 0.444067, -0.466111,
		33.929291, 29.167444, 28.663986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813999, 29.025755, 29.573244>,  <33.393650, 28.856592, 28.990267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813999, 29.025755, 29.573244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.956093, 29.263956, 29.285027>,  <34.041348, 29.406878, 29.112095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.956093, 29.263956, 29.285027>,  <33.813999, 29.025755, 29.573244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956093, 29.263956, 29.285027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219741, 0.696023, 0.683569,
		0.908583, -0.401160, 0.116394,
		0.355233, 0.595502, -0.720546,
		34.062664, 29.442606, 29.068863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361439, 29.299067, 29.817759>,  <33.813999, 29.025755, 29.573244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361439, 29.299067, 29.817759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248772, 29.567293, 29.543242>,  <34.181171, 29.728230, 29.378531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248772, 29.567293, 29.543242>,  <34.361439, 29.299067, 29.817759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248772, 29.567293, 29.543242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069573, 0.727645, 0.682417,
		0.956986, 0.144469, -0.251609,
		-0.281670, 0.670568, -0.686294,
		34.164272, 29.768463, 29.337353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789597, 29.904503, 29.874989>,  <34.361439, 29.299067, 29.817759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789597, 29.904503, 29.874989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.480404, 30.038952, 29.659761>,  <34.294888, 30.119621, 29.530626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.480404, 30.038952, 29.659761>,  <34.789597, 29.904503, 29.874989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480404, 30.038952, 29.659761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042132, 0.873443, 0.485100,
		0.633023, 0.352305, -0.689321,
		-0.772986, 0.336122, -0.538066,
		34.248508, 30.139788, 29.498343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039749, 30.394705, 29.587690>,  <34.789597, 29.904503, 29.874989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039749, 30.394705, 29.587690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.645042, 30.416607, 29.648746>,  <34.408218, 30.429749, 29.685379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.645042, 30.416607, 29.648746>,  <35.039749, 30.394705, 29.587690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645042, 30.416607, 29.648746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128909, 0.835925, 0.533490,
		-0.098384, 0.546105, -0.831919,
		-0.986764, 0.054755, 0.152640,
		34.349014, 30.433033, 29.694538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930580, 31.099224, 29.486366>,  <35.039749, 30.394705, 29.587690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930580, 31.099224, 29.486366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.622112, 30.962490, 29.701193>,  <34.437031, 30.880449, 29.830090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.622112, 30.962490, 29.701193>,  <34.930580, 31.099224, 29.486366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622112, 30.962490, 29.701193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197291, 0.673759, 0.712127,
		-0.605283, 0.655132, -0.452144,
		-0.771174, -0.341835, 0.537066,
		34.390759, 30.859940, 29.862312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722080, 31.677616, 29.905487>,  <34.930580, 31.099224, 29.486366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722080, 31.677616, 29.905487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.533913, 31.363937, 30.067347>,  <34.421013, 31.175730, 30.164461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.533913, 31.363937, 30.067347>,  <34.722080, 31.677616, 29.905487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533913, 31.363937, 30.067347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190900, 0.357258, 0.914288,
		-0.861544, 0.507350, -0.018359,
		-0.470423, -0.784195, 0.404647,
		34.392784, 31.128679, 30.188742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180653, 31.952690, 30.260063>,  <34.722080, 31.677616, 29.905487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180653, 31.952690, 30.260063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.252552, 31.595972, 30.426146>,  <34.295692, 31.381941, 30.525795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.252552, 31.595972, 30.426146>,  <34.180653, 31.952690, 30.260063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252552, 31.595972, 30.426146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150709, 0.442063, 0.884232,
		-0.972100, -0.096360, 0.213860,
		0.179744, -0.891793, 0.415207,
		34.306477, 31.328434, 30.550707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773438, 31.975603, 30.882046>,  <34.180653, 31.952690, 30.260063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773438, 31.975603, 30.882046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.026810, 31.670729, 30.935471>,  <34.178833, 31.487804, 30.967525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.026810, 31.670729, 30.935471>,  <33.773438, 31.975603, 30.882046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026810, 31.670729, 30.935471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156026, 0.294863, 0.942715,
		-0.757908, -0.576303, 0.305696,
		0.633428, -0.762188, 0.133561,
		34.216839, 31.442072, 30.975538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563839, 31.649879, 31.559330>,  <33.773438, 31.975603, 30.882046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563839, 31.649879, 31.559330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.944313, 31.565699, 31.469028>,  <34.172596, 31.515190, 31.414848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.944313, 31.565699, 31.469028>,  <33.563839, 31.649879, 31.559330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944313, 31.565699, 31.469028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279788, 0.279214, 0.918563,
		-0.130280, -0.936883, 0.324465,
		0.951181, -0.210452, -0.225752,
		34.229668, 31.502563, 31.401302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910679, 31.235407, 32.062592>,  <33.563839, 31.649879, 31.559330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910679, 31.235407, 32.062592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.222836, 31.408321, 31.881874>,  <34.410130, 31.512070, 31.773443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.222836, 31.408321, 31.881874>,  <33.910679, 31.235407, 32.062592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222836, 31.408321, 31.881874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371062, 0.261398, 0.891058,
		0.503291, -0.863017, 0.043587,
		0.780392, 0.432288, -0.451792,
		34.456955, 31.538008, 31.746336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396355, 31.144247, 32.518265>,  <33.910679, 31.235407, 32.062592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396355, 31.144247, 32.518265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.558487, 31.442490, 32.306686>,  <34.655766, 31.621435, 32.179741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.558487, 31.442490, 32.306686>,  <34.396355, 31.144247, 32.518265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558487, 31.442490, 32.306686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454431, 0.337718, 0.824281,
		0.793223, -0.574472, -0.201941,
		0.405327, 0.745607, -0.528943,
		34.680084, 31.666172, 32.148003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059914, 31.270182, 32.842957>,  <34.396355, 31.144247, 32.518265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059914, 31.270182, 32.842957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987617, 31.604591, 32.635727>,  <34.944241, 31.805237, 32.511391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987617, 31.604591, 32.635727>,  <35.059914, 31.270182, 32.842957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987617, 31.604591, 32.635727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360373, 0.546405, 0.756024,
		0.915130, -0.050053, -0.400039,
		-0.180742, 0.836024, -0.518070,
		34.933395, 31.855398, 32.480305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705418, 31.754021, 32.826797>,  <35.059914, 31.270182, 32.842957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705418, 31.754021, 32.826797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.448029, 32.038013, 32.712349>,  <35.293594, 32.208408, 32.643681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.448029, 32.038013, 32.712349>,  <35.705418, 31.754021, 32.826797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448029, 32.038013, 32.712349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237503, 0.540521, 0.807112,
		0.727690, 0.451401, -0.516435,
		-0.643475, 0.709982, -0.286122,
		35.254986, 32.251007, 32.626511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097946, 32.449600, 32.706181>,  <35.705418, 31.754021, 32.826797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097946, 32.449600, 32.706181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707081, 32.495037, 32.778004>,  <35.472561, 32.522297, 32.821098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707081, 32.495037, 32.778004>,  <36.097946, 32.449600, 32.706181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707081, 32.495037, 32.778004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211751, 0.590244, 0.778957,
		-0.017503, 0.799193, -0.600819,
		-0.977167, 0.113590, 0.179560,
		35.413929, 32.529114, 32.831871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020947, 33.094185, 32.828869>,  <36.097946, 32.449600, 32.706181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020947, 33.094185, 32.828869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.703102, 32.938160, 33.014961>,  <35.512394, 32.844543, 33.126617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.703102, 32.938160, 33.014961>,  <36.020947, 33.094185, 32.828869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703102, 32.938160, 33.014961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220850, 0.528088, 0.819969,
		-0.565527, 0.754303, -0.333478,
		-0.794610, -0.390066, 0.465235,
		35.464718, 32.821140, 33.154533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476299, 33.689705, 32.839962>,  <36.020947, 33.094185, 32.828869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476299, 33.689705, 32.839962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.804607, 33.917770, 32.854160>,  <36.001591, 34.054607, 32.862679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.804607, 33.917770, 32.854160>,  <35.476299, 33.689705, 32.839962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804607, 33.917770, 32.854160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310982, -0.393824, -0.864982,
		-0.479199, 0.720986, -0.500547,
		0.820767, 0.570160, 0.035493,
		36.050838, 34.088818, 32.864807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495060, 33.900349, 32.204990>,  <35.476299, 33.689705, 32.839962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495060, 33.900349, 32.204990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.863892, 33.943066, 32.353783>,  <36.085190, 33.968697, 32.443058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.863892, 33.943066, 32.353783>,  <35.495060, 33.900349, 32.204990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863892, 33.943066, 32.353783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381122, -0.417513, -0.824881,
		0.067213, 0.902374, -0.425681,
		0.922078, 0.106794, 0.371977,
		36.140514, 33.975105, 32.465374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865864, 34.307438, 31.816168>,  <35.495060, 33.900349, 32.204990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865864, 34.307438, 31.816168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.147755, 34.087143, 31.995071>,  <36.316891, 33.954967, 32.102413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.147755, 34.087143, 31.995071>,  <35.865864, 34.307438, 31.816168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147755, 34.087143, 31.995071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331730, -0.301468, -0.893909,
		0.627144, 0.778334, -0.029757,
		0.704731, -0.550738, 0.447260,
		36.359173, 33.921921, 32.129250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464188, 34.368122, 31.388050>,  <35.865864, 34.307438, 31.816168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464188, 34.368122, 31.388050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.557896, 34.047272, 31.607765>,  <36.614120, 33.854763, 31.739594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.557896, 34.047272, 31.607765>,  <36.464188, 34.368122, 31.388050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557896, 34.047272, 31.607765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371338, -0.448338, -0.813082,
		0.898457, 0.394453, 0.192826,
		0.234271, -0.802123, 0.549287,
		36.628178, 33.806637, 31.772551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114758, 34.162674, 31.198040>,  <36.464188, 34.368122, 31.388050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114758, 34.162674, 31.198040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.967449, 33.819633, 31.341648>,  <36.879066, 33.613808, 31.427813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.967449, 33.819633, 31.341648>,  <37.114758, 34.162674, 31.198040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967449, 33.819633, 31.341648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429402, -0.499402, -0.752470,
		0.824617, -0.122946, 0.552170,
		-0.368268, -0.857602, 0.359022,
		36.856968, 33.562351, 31.449354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645779, 33.653999, 30.912689>,  <37.114758, 34.162674, 31.198040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645779, 33.653999, 30.912689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355145, 33.419510, 31.056028>,  <37.180763, 33.278816, 31.142031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355145, 33.419510, 31.056028>,  <37.645779, 33.653999, 30.912689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355145, 33.419510, 31.056028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273277, -0.725100, -0.632099,
		0.630388, -0.361348, 0.687050,
		-0.726588, -0.586223, 0.358347,
		37.137169, 33.243645, 31.163532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905666, 32.933922, 31.102522>,  <37.645779, 33.653999, 30.912689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905666, 32.933922, 31.102522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.515984, 32.916397, 31.013973>,  <37.282173, 32.905884, 30.960844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.515984, 32.916397, 31.013973>,  <37.905666, 32.933922, 31.102522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515984, 32.916397, 31.013973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148760, -0.862327, -0.484006,
		-0.169689, -0.504452, 0.846601,
		-0.974205, -0.043810, -0.221370,
		37.223721, 32.903255, 30.947561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876263, 32.249817, 31.072832>,  <37.905666, 32.933922, 31.102522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876263, 32.249817, 31.072832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545528, 32.393040, 30.899336>,  <37.347088, 32.478973, 30.795238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545528, 32.393040, 30.899336>,  <37.876263, 32.249817, 31.072832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545528, 32.393040, 30.899336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003502, -0.774442, -0.632635,
		-0.562428, -0.521568, 0.641593,
		-0.826839, 0.358059, -0.433742,
		37.297478, 32.500458, 30.769213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527515, 31.697529, 30.949057>,  <37.876263, 32.249817, 31.072832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527515, 31.697529, 30.949057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.357788, 31.972303, 30.713064>,  <37.255951, 32.137169, 30.571468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.357788, 31.972303, 30.713064>,  <37.527515, 31.697529, 30.949057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357788, 31.972303, 30.713064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210136, -0.559057, -0.802058,
		-0.880795, -0.464302, 0.092867,
		-0.424315, 0.686934, -0.589981,
		37.230492, 32.178383, 30.536070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063316, 31.366076, 30.572811>,  <37.527515, 31.697529, 30.949057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063316, 31.366076, 30.572811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137836, 31.697428, 30.361502>,  <37.182549, 31.896240, 30.234716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137836, 31.697428, 30.361502>,  <37.063316, 31.366076, 30.572811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137836, 31.697428, 30.361502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134088, -0.554094, -0.821584,
		-0.973300, 0.082226, -0.214304,
		0.186300, 0.828383, -0.528275,
		37.193726, 31.945942, 30.203020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685482, 31.277945, 30.012215>,  <37.063316, 31.366076, 30.572811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685482, 31.277945, 30.012215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.958118, 31.553120, 29.912470>,  <37.121700, 31.718224, 29.852623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.958118, 31.553120, 29.912470>,  <36.685482, 31.277945, 30.012215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958118, 31.553120, 29.912470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100224, -0.425339, -0.899467,
		-0.724839, 0.588074, -0.358854,
		0.681588, 0.687935, -0.249363,
		37.162594, 31.759501, 29.837662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588997, 31.763798, 29.412298>,  <36.685482, 31.277945, 30.012215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588997, 31.763798, 29.412298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.970291, 31.656561, 29.468119>,  <37.199066, 31.592218, 29.501612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.970291, 31.656561, 29.468119>,  <36.588997, 31.763798, 29.412298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970291, 31.656561, 29.468119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020424, -0.403540, -0.914734,
		0.301547, 0.874805, -0.379192,
		0.953233, -0.268090, 0.139553,
		37.256260, 31.576134, 29.509985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943832, 31.971632, 28.839674>,  <36.588997, 31.763798, 29.412298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943832, 31.971632, 28.839674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.135406, 31.669279, 29.018229>,  <37.250351, 31.487867, 29.125360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.135406, 31.669279, 29.018229>,  <36.943832, 31.971632, 28.839674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135406, 31.669279, 29.018229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166316, -0.577423, -0.799326,
		0.861949, 0.308588, -0.402266,
		0.478940, -0.755881, 0.446386,
		37.279087, 31.442514, 29.152143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395329, 31.750237, 28.314507>,  <36.943832, 31.971632, 28.839674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395329, 31.750237, 28.314507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.380028, 31.448174, 28.576277>,  <37.370846, 31.266935, 28.733339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.380028, 31.448174, 28.576277>,  <37.395329, 31.750237, 28.314507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380028, 31.448174, 28.576277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024444, -0.654002, -0.756098,
		0.998969, -0.044922, 0.006560,
		-0.038256, -0.755158, 0.654426,
		37.368549, 31.221626, 28.772604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913483, 31.182720, 28.135845>,  <37.395329, 31.750237, 28.314507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913483, 31.182720, 28.135845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.616386, 31.019911, 28.348513>,  <37.438129, 30.922226, 28.476112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.616386, 31.019911, 28.348513>,  <37.913483, 31.182720, 28.135845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616386, 31.019911, 28.348513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033540, -0.770419, -0.636655,
		0.668741, -0.490701, 0.558568,
		-0.742738, -0.407023, 0.531669,
		37.393566, 30.897804, 28.508013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080639, 30.366570, 28.018133>,  <37.913483, 31.182720, 28.135845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080639, 30.366570, 28.018133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.703869, 30.404537, 28.146984>,  <37.477806, 30.427319, 28.224295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.703869, 30.404537, 28.146984>,  <38.080639, 30.366570, 28.018133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703869, 30.404537, 28.146984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195778, -0.934564, -0.297087,
		0.272847, -0.342900, 0.898874,
		-0.941926, 0.094921, 0.322125,
		37.421291, 30.433014, 28.243622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919865, 29.804770, 28.344864>,  <38.080639, 30.366570, 28.018133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919865, 29.804770, 28.344864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.567089, 29.953953, 28.229565>,  <37.355423, 30.043463, 28.160385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.567089, 29.953953, 28.229565>,  <37.919865, 29.804770, 28.344864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567089, 29.953953, 28.229565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186924, -0.838102, -0.512489,
		-0.432717, -0.398103, 0.808869,
		-0.881938, 0.372960, -0.288246,
		37.302509, 30.065842, 28.143091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418304, 29.279373, 28.414904>,  <37.919865, 29.804770, 28.344864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418304, 29.279373, 28.414904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.245312, 29.514727, 28.141623>,  <37.141518, 29.655939, 27.977654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.245312, 29.514727, 28.141623>,  <37.418304, 29.279373, 28.414904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245312, 29.514727, 28.141623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206851, -0.802267, -0.559982,
		-0.877595, -0.100861, 0.468673,
		-0.432481, 0.588383, -0.683203,
		37.115566, 29.691242, 27.936663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.811863, 28.907001, 28.288162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853207, 29.145700, 27.969864>,  <36.878014, 29.288919, 27.778885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853207, 29.145700, 27.969864>,  <36.811863, 28.907001, 28.288162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853207, 29.145700, 27.969864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175911, -0.776451, -0.605127,
		-0.978965, 0.202526, 0.024721,
		0.103359, 0.596747, -0.795745,
		36.884212, 29.324724, 27.731140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250721, 28.780611, 27.802511>,  <36.811863, 28.907001, 28.288162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250721, 28.780611, 27.802511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537281, 28.931929, 27.568020>,  <36.709217, 29.022718, 27.427324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537281, 28.931929, 27.568020>,  <36.250721, 28.780611, 27.802511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537281, 28.931929, 27.568020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229006, -0.666193, -0.709749,
		-0.659036, 0.642714, -0.390629,
		0.716400, 0.378294, -0.586230,
		36.752201, 29.045416, 27.392151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969536, 28.702261, 27.185410>,  <36.250721, 28.780611, 27.802511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969536, 28.702261, 27.185410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.351566, 28.766117, 27.085541>,  <36.580784, 28.804430, 27.025620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.351566, 28.766117, 27.085541>,  <35.969536, 28.702261, 27.185410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351566, 28.766117, 27.085541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102613, -0.612240, -0.783985,
		-0.278015, 0.774388, -0.568357,
		0.955080, 0.159639, -0.249674,
		36.638092, 28.814009, 27.010639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939159, 28.762291, 26.511972>,  <35.969536, 28.702261, 27.185410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939159, 28.762291, 26.511972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328644, 28.708218, 26.585306>,  <36.562336, 28.675774, 26.629307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328644, 28.708218, 26.585306>,  <35.939159, 28.762291, 26.511972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328644, 28.708218, 26.585306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083714, -0.536158, -0.839956,
		0.211847, 0.833222, -0.510746,
		0.973711, -0.135185, 0.183336,
		36.620758, 28.667662, 26.640306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276211, 28.918798, 25.886616>,  <35.939159, 28.762291, 26.511972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276211, 28.918798, 25.886616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535248, 28.702929, 26.101793>,  <36.690670, 28.573406, 26.230900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535248, 28.702929, 26.101793>,  <36.276211, 28.918798, 25.886616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535248, 28.702929, 26.101793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284748, -0.483434, -0.827774,
		0.706787, 0.689235, -0.159396,
		0.647589, -0.539673, 0.537943,
		36.729523, 28.541027, 26.263176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742359, 28.965893, 25.465469>,  <36.276211, 28.918798, 25.886616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742359, 28.965893, 25.465469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.812618, 28.668961, 25.724112>,  <36.854774, 28.490801, 25.879297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.812618, 28.668961, 25.724112>,  <36.742359, 28.965893, 25.465469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812618, 28.668961, 25.724112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197823, -0.616803, -0.761853,
		0.964373, 0.261730, 0.038510,
		0.175646, -0.742329, 0.646604,
		36.865311, 28.446262, 25.918093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486542, 28.629505, 25.406685>,  <36.742359, 28.965893, 25.465469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486542, 28.629505, 25.406685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285458, 28.322636, 25.566048>,  <37.164806, 28.138514, 25.661665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285458, 28.322636, 25.566048>,  <37.486542, 28.629505, 25.406685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285458, 28.322636, 25.566048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261332, -0.574182, -0.775900,
		0.824009, -0.285933, 0.489133,
		-0.502707, -0.767175, 0.398408,
		37.134647, 28.092484, 25.685570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866833, 28.087978, 25.541689>,  <37.486542, 28.629505, 25.406685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866833, 28.087978, 25.541689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.520435, 27.888309, 25.553581>,  <37.312595, 27.768509, 25.560717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.520435, 27.888309, 25.553581>,  <37.866833, 28.087978, 25.541689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520435, 27.888309, 25.553581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350379, -0.648127, -0.676140,
		0.356779, -0.575116, 0.736173,
		-0.865993, -0.499172, 0.029730,
		37.260639, 27.738558, 25.562500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993221, 27.298031, 25.690790>,  <37.866833, 28.087978, 25.541689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993221, 27.298031, 25.690790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.644138, 27.356182, 25.504349>,  <37.434689, 27.391073, 25.392485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.644138, 27.356182, 25.504349>,  <37.993221, 27.298031, 25.690790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644138, 27.356182, 25.504349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248100, -0.690168, -0.679790,
		-0.420516, -0.708896, 0.566245,
		-0.872704, 0.145378, -0.466104,
		37.382328, 27.399796, 25.364517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843571, 26.671476, 25.497984>,  <37.993221, 27.298031, 25.690790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843571, 26.671476, 25.497984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.590069, 26.903658, 25.293465>,  <37.437965, 27.042967, 25.170753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.590069, 26.903658, 25.293465>,  <37.843571, 26.671476, 25.497984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590069, 26.903658, 25.293465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008248, -0.666024, -0.745885,
		-0.773488, -0.468493, 0.426885,
		-0.633758, 0.580453, -0.511297,
		37.399940, 27.077793, 25.140076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304474, 26.262558, 25.242397>,  <37.843571, 26.671476, 25.497984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304474, 26.262558, 25.242397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296555, 26.583704, 25.004065>,  <37.291801, 26.776392, 24.861065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296555, 26.583704, 25.004065>,  <37.304474, 26.262558, 25.242397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296555, 26.583704, 25.004065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001902, -0.595917, -0.803043,
		-0.999802, -0.017033, 0.010271,
		-0.019799, 0.802865, -0.595832,
		37.290615, 26.824564, 24.825315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659138, 26.264952, 24.737122>,  <37.304474, 26.262558, 25.242397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659138, 26.264952, 24.737122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.946243, 26.499918, 24.587582>,  <37.118507, 26.640898, 24.497858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.946243, 26.499918, 24.587582>,  <36.659138, 26.264952, 24.737122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946243, 26.499918, 24.587582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062007, -0.480858, -0.874603,
		-0.693524, 0.650937, -0.308716,
		0.717760, 0.587416, -0.373850,
		37.161572, 26.676144, 24.475428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499638, 26.307495, 24.113485>,  <36.659138, 26.264952, 24.737122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499638, 26.307495, 24.113485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879986, 26.419710, 24.061098>,  <37.108192, 26.487040, 24.029667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879986, 26.419710, 24.061098>,  <36.499638, 26.307495, 24.113485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879986, 26.419710, 24.061098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040406, -0.306952, -0.950867,
		-0.306952, 0.909440, -0.280535,
		0.950867, 0.280535, -0.130966,
		37.165245, 26.503870, 24.021809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509914, 26.624384, 23.500235>,  <36.499638, 26.307495, 24.113485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509914, 26.624384, 23.500235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898624, 26.552446, 23.561308>,  <37.131851, 26.509283, 23.597952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898624, 26.552446, 23.561308>,  <36.509914, 26.624384, 23.500235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898624, 26.552446, 23.561308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058443, -0.443511, -0.894361,
		0.228563, 0.878040, -0.420481,
		0.971773, -0.179844, 0.152686,
		37.190155, 26.498493, 23.607113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840546, 26.918869, 22.939007>,  <36.509914, 26.624384, 23.500235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840546, 26.918869, 22.939007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.092815, 26.648710, 23.091892>,  <37.244179, 26.486614, 23.183624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.092815, 26.648710, 23.091892>,  <36.840546, 26.918869, 22.939007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092815, 26.648710, 23.091892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007431, -0.497746, -0.867291,
		0.776012, 0.544138, -0.318935,
		0.630675, -0.675398, 0.382213,
		37.282017, 26.446091, 23.206556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418243, 26.785749, 22.423584>,  <36.840546, 26.918869, 22.939007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418243, 26.785749, 22.423584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.439449, 26.455856, 22.648798>,  <37.452171, 26.257921, 22.783926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.439449, 26.455856, 22.648798>,  <37.418243, 26.785749, 22.423584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439449, 26.455856, 22.648798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122852, -0.554158, -0.823296,
		0.991008, 0.112816, 0.071941,
		0.053015, -0.824731, 0.563035,
		37.455353, 26.208437, 22.817709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975582, 26.419094, 22.146313>,  <37.418243, 26.785749, 22.423584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975582, 26.419094, 22.146313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749996, 26.139439, 22.322109>,  <37.614643, 25.971645, 22.427588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749996, 26.139439, 22.322109>,  <37.975582, 26.419094, 22.146313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749996, 26.139439, 22.322109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064439, -0.567834, -0.820617,
		0.823280, -0.434479, 0.365290,
		-0.563965, -0.699137, 0.439489,
		37.580807, 25.929697, 22.453957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288513, 25.835779, 21.970882>,  <37.975582, 26.419094, 22.146313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288513, 25.835779, 21.970882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.921581, 25.732843, 22.092400>,  <37.701424, 25.671082, 22.165310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.921581, 25.732843, 22.092400>,  <38.288513, 25.835779, 21.970882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921581, 25.732843, 22.092400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059017, -0.666718, -0.742970,
		0.393741, -0.699474, 0.596410,
		-0.917325, -0.257339, 0.303795,
		37.646385, 25.655642, 22.183538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350994, 25.096315, 22.040094>,  <38.288513, 25.835779, 21.970882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350994, 25.096315, 22.040094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967621, 25.201675, 21.996237>,  <37.737595, 25.264891, 21.969923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967621, 25.201675, 21.996237>,  <38.350994, 25.096315, 22.040094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967621, 25.201675, 21.996237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037208, -0.496409, -0.867291,
		-0.282870, -0.827164, 0.485577,
		-0.958436, 0.263398, -0.109642,
		37.680092, 25.280695, 21.963345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084030, 24.539553, 21.722631>,  <38.350994, 25.096315, 22.040094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084030, 24.539553, 21.722631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782330, 24.795565, 21.664028>,  <37.601311, 24.949173, 21.628866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782330, 24.795565, 21.664028>,  <38.084030, 24.539553, 21.722631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782330, 24.795565, 21.664028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196103, -0.432544, -0.880028,
		-0.626617, -0.635032, 0.451759,
		-0.754251, 0.640032, -0.146508,
		37.556053, 24.987574, 21.620075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514114, 24.103535, 21.720837>,  <38.084030, 24.539553, 21.722631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514114, 24.103535, 21.720837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470924, 24.448807, 21.523550>,  <37.445011, 24.655970, 21.405178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470924, 24.448807, 21.523550>,  <37.514114, 24.103535, 21.720837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470924, 24.448807, 21.523550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272653, -0.502808, -0.820271,
		-0.956034, 0.045906, 0.289641,
		-0.107979, 0.863178, -0.493217,
		37.438530, 24.707760, 21.375586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778816, 24.072218, 21.274786>,  <37.514114, 24.103535, 21.720837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778816, 24.072218, 21.274786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011154, 24.341808, 21.092194>,  <37.150558, 24.503563, 20.982637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011154, 24.341808, 21.092194>,  <36.778816, 24.072218, 21.274786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011154, 24.341808, 21.092194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181698, -0.439283, -0.879782,
		-0.793477, 0.593958, -0.132695,
		0.580844, 0.673976, -0.456482,
		37.185406, 24.544001, 20.955250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457901, 24.476610, 20.704790>,  <36.778816, 24.072218, 21.274786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457901, 24.476610, 20.704790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.844891, 24.397139, 20.642162>,  <37.077084, 24.349457, 20.604586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.844891, 24.397139, 20.642162>,  <36.457901, 24.476610, 20.704790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844891, 24.397139, 20.642162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218206, -0.342401, -0.913864,
		0.127955, 0.918307, -0.374618,
		0.967478, -0.198677, -0.156568,
		37.135136, 24.337536, 20.595192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401787, 24.291420, 19.928419>,  <36.457901, 24.476610, 20.704790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401787, 24.291420, 19.928419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.126144, 24.310457, 19.639179>,  <35.960762, 24.321878, 19.465635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.126144, 24.310457, 19.639179>,  <36.401787, 24.291420, 19.928419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126144, 24.310457, 19.639179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491844, 0.702096, 0.514927,
		0.532193, 0.710490, -0.460408,
		-0.689101, 0.047592, -0.723101,
		35.919415, 24.324736, 19.422249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447918, 24.949223, 19.536663>,  <36.401787, 24.291420, 19.928419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447918, 24.949223, 19.536663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076187, 24.801991, 19.548401>,  <35.853149, 24.713652, 19.555443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076187, 24.801991, 19.548401>,  <36.447918, 24.949223, 19.536663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076187, 24.801991, 19.548401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305915, 0.812000, 0.497064,
		-0.206786, 0.452960, -0.867218,
		-0.929331, -0.368081, 0.029343,
		35.797386, 24.691566, 19.557203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003704, 25.499676, 19.375147>,  <36.447918, 24.949223, 19.536663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003704, 25.499676, 19.375147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763485, 25.244871, 19.568459>,  <35.619354, 25.091988, 19.684446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763485, 25.244871, 19.568459>,  <36.003704, 25.499676, 19.375147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763485, 25.244871, 19.568459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277111, 0.732763, 0.621504,
		-0.750035, 0.239322, -0.616582,
		-0.600548, -0.637011, 0.483279,
		35.583321, 25.053768, 19.713442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306042, 25.787285, 19.569176>,  <36.003704, 25.499676, 19.375147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306042, 25.787285, 19.569176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299820, 25.475624, 19.819832>,  <35.296085, 25.288628, 19.970226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299820, 25.475624, 19.819832>,  <35.306042, 25.787285, 19.569176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299820, 25.475624, 19.819832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522123, 0.540812, 0.659477,
		-0.852728, -0.316926, -0.415225,
		-0.015553, -0.779154, 0.626640,
		35.295155, 25.241879, 20.007824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578598, 25.585308, 19.794018>,  <35.306042, 25.787285, 19.569176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578598, 25.585308, 19.794018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.828964, 25.458733, 20.079142>,  <34.979183, 25.382788, 20.250216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.828964, 25.458733, 20.079142>,  <34.578598, 25.585308, 19.794018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828964, 25.458733, 20.079142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556332, 0.459367, 0.692443,
		-0.546556, -0.829969, 0.111481,
		0.625917, -0.316438, 0.712808,
		35.016739, 25.363802, 20.292984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058872, 25.682535, 20.291389>,  <34.578598, 25.585308, 19.794018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058872, 25.682535, 20.291389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.399494, 25.609228, 20.487864>,  <34.603867, 25.565243, 20.605749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.399494, 25.609228, 20.487864>,  <34.058872, 25.682535, 20.291389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399494, 25.609228, 20.487864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396116, 0.388826, 0.831809,
		-0.343431, -0.902899, 0.258512,
		0.851556, -0.183269, 0.491187,
		34.654961, 25.554247, 20.635220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905479, 25.353685, 21.020512>,  <34.058872, 25.682535, 20.291389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905479, 25.353685, 21.020512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.270287, 25.517315, 21.032423>,  <34.489170, 25.615494, 21.039570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.270287, 25.517315, 21.032423>,  <33.905479, 25.353685, 21.020512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270287, 25.517315, 21.032423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233376, 0.457851, 0.857851,
		0.337290, -0.789323, 0.513035,
		0.912015, 0.409075, 0.029781,
		34.543892, 25.640038, 21.041357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003494, 25.323105, 21.632755>,  <33.905479, 25.353685, 21.020512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003494, 25.323105, 21.632755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289837, 25.584917, 21.535479>,  <34.461643, 25.742004, 21.477112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289837, 25.584917, 21.535479>,  <34.003494, 25.323105, 21.632755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289837, 25.584917, 21.535479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055736, 0.400741, 0.914494,
		0.696024, -0.641088, 0.323352,
		0.715852, 0.654532, -0.243194,
		34.504593, 25.781277, 21.462521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513256, 25.248182, 22.137403>,  <34.003494, 25.323105, 21.632755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513256, 25.248182, 22.137403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.567356, 25.611164, 21.978289>,  <34.599815, 25.828953, 21.882820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.567356, 25.611164, 21.978289>,  <34.513256, 25.248182, 22.137403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567356, 25.611164, 21.978289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016016, 0.399419, 0.916629,
		0.990682, -0.130346, 0.039489,
		0.135251, 0.907455, -0.397785,
		34.607933, 25.883400, 21.858953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063107, 25.577152, 22.442738>,  <34.513256, 25.248182, 22.137403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063107, 25.577152, 22.442738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.862358, 25.894642, 22.305258>,  <34.741909, 26.085136, 22.222771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.862358, 25.894642, 22.305258>,  <35.063107, 25.577152, 22.442738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862358, 25.894642, 22.305258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158135, 0.474869, 0.865733,
		0.850366, 0.380133, -0.363837,
		-0.501868, 0.793725, -0.343700,
		34.711796, 26.132759, 22.202148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471321, 26.109957, 22.598438>,  <35.063107, 25.577152, 22.442738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471321, 26.109957, 22.598438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.104431, 26.263229, 22.554861>,  <34.884296, 26.355192, 22.528715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.104431, 26.263229, 22.554861>,  <35.471321, 26.109957, 22.598438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104431, 26.263229, 22.554861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151181, 0.587838, 0.794727,
		0.368565, 0.712474, -0.597110,
		-0.917226, 0.383180, -0.108945,
		34.829262, 26.378183, 22.522177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524918, 26.775322, 22.865765>,  <35.471321, 26.109957, 22.598438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524918, 26.775322, 22.865765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.126015, 26.756126, 22.843206>,  <34.886673, 26.744610, 22.829672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.126015, 26.756126, 22.843206>,  <35.524918, 26.775322, 22.865765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126015, 26.756126, 22.843206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073793, 0.580871, 0.810644,
		-0.006143, 0.812580, -0.582818,
		-0.997255, -0.047988, -0.056395,
		34.826839, 26.741730, 22.826288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338585, 27.404289, 23.153448>,  <35.524918, 26.775322, 22.865765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338585, 27.404289, 23.153448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050205, 27.131569, 23.203064>,  <34.877178, 26.967937, 23.232834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050205, 27.131569, 23.203064>,  <35.338585, 27.404289, 23.153448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050205, 27.131569, 23.203064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211920, 0.387324, 0.897257,
		-0.659792, 0.620588, -0.423727,
		-0.720947, -0.681800, 0.124038,
		34.833920, 26.927029, 23.240276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790230, 27.776806, 23.542374>,  <35.338585, 27.404289, 23.153448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790230, 27.776806, 23.542374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690952, 27.391758, 23.585766>,  <34.631386, 27.160730, 23.611801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690952, 27.391758, 23.585766>,  <34.790230, 27.776806, 23.542374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690952, 27.391758, 23.585766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276098, 0.177632, 0.944572,
		-0.928532, 0.204484, -0.309864,
		-0.248191, -0.962618, 0.108480,
		34.616493, 27.102972, 23.618309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144276, 27.786289, 23.884132>,  <34.790230, 27.776806, 23.542374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144276, 27.786289, 23.884132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.324379, 27.436035, 23.954025>,  <34.432442, 27.225883, 23.995960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.324379, 27.436035, 23.954025>,  <34.144276, 27.786289, 23.884132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324379, 27.436035, 23.954025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249489, 0.064519, 0.966226,
		-0.857334, -0.478647, -0.189411,
		0.450261, -0.875634, 0.174731,
		34.459457, 27.173346, 24.006445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661507, 27.430056, 24.295113>,  <34.144276, 27.786289, 23.884132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661507, 27.430056, 24.295113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.019310, 27.260738, 24.352623>,  <34.233994, 27.159149, 24.387129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.019310, 27.260738, 24.352623>,  <33.661507, 27.430056, 24.295113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019310, 27.260738, 24.352623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112728, 0.097639, 0.988817,
		-0.432596, -0.900717, 0.039623,
		0.894513, -0.423292, 0.143774,
		34.287663, 27.133751, 24.395756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642136, 27.040207, 24.859880>,  <33.661507, 27.430056, 24.295113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642136, 27.040207, 24.859880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.038776, 27.091137, 24.850861>,  <34.276760, 27.121695, 24.845449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.038776, 27.091137, 24.850861>,  <33.642136, 27.040207, 24.859880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038776, 27.091137, 24.850861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011000, 0.090678, 0.995820,
		0.128845, -0.987706, 0.088516,
		0.991603, 0.127333, -0.022548,
		34.336258, 27.129335, 24.844097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863750, 26.569075, 25.332317>,  <33.642136, 27.040207, 24.859880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863750, 26.569075, 25.332317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178913, 26.809885, 25.280521>,  <34.368011, 26.954370, 25.249443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178913, 26.809885, 25.280521>,  <33.863750, 26.569075, 25.332317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178913, 26.809885, 25.280521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063188, 0.130131, 0.989481,
		0.612544, -0.787802, 0.064490,
		0.787907, 0.602025, -0.129490,
		34.415287, 26.990492, 25.241674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364204, 26.388380, 25.809523>,  <33.863750, 26.569075, 25.332317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364204, 26.388380, 25.809523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481895, 26.759979, 25.719727>,  <34.552509, 26.982939, 25.665850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481895, 26.759979, 25.719727>,  <34.364204, 26.388380, 25.809523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481895, 26.759979, 25.719727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062355, 0.253045, 0.965443,
		0.953699, -0.270061, 0.132380,
		0.294227, 0.928997, -0.224489,
		34.570164, 27.038679, 25.652380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685955, 26.600744, 26.446869>,  <34.364204, 26.388380, 25.809523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685955, 26.600744, 26.446869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.653763, 26.941439, 26.239767>,  <34.634449, 27.145855, 26.115507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.653763, 26.941439, 26.239767>,  <34.685955, 26.600744, 26.446869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653763, 26.941439, 26.239767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213147, 0.492717, 0.843681,
		0.973700, 0.178259, 0.141890,
		-0.080482, 0.851736, -0.517753,
		34.629620, 27.196959, 26.084440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187542, 27.061125, 26.752256>,  <34.685955, 26.600744, 26.446869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187542, 27.061125, 26.752256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.905163, 27.277859, 26.569803>,  <34.735737, 27.407898, 26.460331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.905163, 27.277859, 26.569803>,  <35.187542, 27.061125, 26.752256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905163, 27.277859, 26.569803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185109, 0.480481, 0.857247,
		0.683648, 0.689604, -0.238895,
		-0.705946, 0.541834, -0.456132,
		34.693378, 27.440409, 26.432964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.463219, 32.031895, 29.052462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.165092, 32.256332, 28.908415>,  <37.986217, 32.390995, 28.821987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.165092, 32.256332, 28.908415>,  <38.463219, 32.031895, 29.052462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165092, 32.256332, 28.908415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652503, -0.502932, 0.566833,
		0.136934, 0.657443, 0.740958,
		-0.745312, 0.561096, -0.360115,
		37.941498, 32.424660, 28.800381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961864, 32.652626, 29.377672>,  <38.463219, 32.031895, 29.052462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961864, 32.652626, 29.377672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.705658, 32.380188, 29.519573>,  <37.551933, 32.216724, 29.604713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.705658, 32.380188, 29.519573>,  <37.961864, 32.652626, 29.377672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705658, 32.380188, 29.519573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358417, 0.673683, 0.646288,
		-0.679177, 0.286805, -0.675619,
		-0.640512, -0.681098, 0.354754,
		37.513504, 32.175858, 29.625999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389973, 33.084457, 29.521338>,  <37.961864, 32.652626, 29.377672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389973, 33.084457, 29.521338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.300270, 32.748203, 29.718536>,  <37.246449, 32.546452, 29.836857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.300270, 32.748203, 29.718536>,  <37.389973, 33.084457, 29.521338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300270, 32.748203, 29.718536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331180, 0.541516, 0.772710,
		-0.916530, 0.010017, -0.399840,
		-0.224260, -0.840631, 0.492998,
		37.232994, 32.496014, 29.866436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660202, 33.005161, 29.664347>,  <37.389973, 33.084457, 29.521338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660202, 33.005161, 29.664347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.840473, 32.774376, 29.936819>,  <36.948635, 32.635906, 30.100302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.840473, 32.774376, 29.936819>,  <36.660202, 33.005161, 29.664347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840473, 32.774376, 29.936819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486026, 0.481466, 0.729362,
		-0.748780, -0.659776, -0.063435,
		0.450673, -0.576963, 0.681181,
		36.975674, 32.601288, 30.141172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203964, 32.955894, 30.134777>,  <36.660202, 33.005161, 29.664347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203964, 32.955894, 30.134777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.541553, 32.839546, 30.315050>,  <36.744106, 32.769737, 30.423214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.541553, 32.839546, 30.315050>,  <36.203964, 32.955894, 30.134777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541553, 32.839546, 30.315050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292125, 0.455428, 0.840981,
		-0.449866, -0.841416, 0.299397,
		0.843969, -0.290867, 0.450680,
		36.794743, 32.752285, 30.450254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963337, 32.678005, 30.801168>,  <36.203964, 32.955894, 30.134777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963337, 32.678005, 30.801168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.353210, 32.762802, 30.829611>,  <36.587135, 32.813679, 30.846676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.353210, 32.762802, 30.829611>,  <35.963337, 32.678005, 30.801168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353210, 32.762802, 30.829611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155322, 0.413168, 0.897311,
		0.160841, -0.885637, 0.435634,
		0.974682, 0.211988, 0.071105,
		36.645615, 32.826397, 30.850943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079784, 32.511269, 31.469610>,  <35.963337, 32.678005, 30.801168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079784, 32.511269, 31.469610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.379532, 32.749516, 31.353899>,  <36.559380, 32.892464, 31.284472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.379532, 32.749516, 31.353899>,  <36.079784, 32.511269, 31.469610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379532, 32.749516, 31.353899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057882, 0.494131, 0.867458,
		0.659617, -0.633303, 0.404763,
		0.749370, 0.595618, -0.289280,
		36.604343, 32.928200, 31.267115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467762, 32.477478, 31.998442>,  <36.079784, 32.511269, 31.469610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467762, 32.477478, 31.998442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.576767, 32.828850, 31.841419>,  <36.642170, 33.039673, 31.747206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.576767, 32.828850, 31.841419>,  <36.467762, 32.477478, 31.998442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576767, 32.828850, 31.841419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081757, 0.385382, 0.919128,
		0.958673, -0.282568, 0.033203,
		0.272512, 0.878429, -0.392557,
		36.658520, 33.092377, 31.723652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879051, 32.712299, 32.495346>,  <36.467762, 32.477478, 31.998442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879051, 32.712299, 32.495346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.808514, 33.031906, 32.265396>,  <36.766190, 33.223671, 32.127426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.808514, 33.031906, 32.265396>,  <36.879051, 32.712299, 32.495346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808514, 33.031906, 32.265396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203578, 0.541791, 0.815487,
		0.963047, 0.260837, 0.067121,
		-0.176344, 0.799016, -0.574870,
		36.755611, 33.271610, 32.092934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243416, 33.263218, 32.721203>,  <36.879051, 32.712299, 32.495346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243416, 33.263218, 32.721203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.955940, 33.466316, 32.531178>,  <36.783455, 33.588173, 32.417164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.955940, 33.466316, 32.531178>,  <37.243416, 33.263218, 32.721203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955940, 33.466316, 32.531178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126066, 0.576743, 0.807140,
		0.683807, 0.639972, -0.350491,
		-0.718690, 0.507743, -0.475060,
		36.740334, 33.618641, 32.388660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334343, 33.990349, 33.009792>,  <37.243416, 33.263218, 32.721203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334343, 33.990349, 33.009792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.970783, 33.980007, 32.843304>,  <36.752647, 33.973801, 32.743412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.970783, 33.980007, 32.843304>,  <37.334343, 33.990349, 33.009792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970783, 33.980007, 32.843304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357714, 0.561349, 0.746276,
		0.214349, 0.827176, -0.519457,
		-0.908898, -0.025854, -0.416217,
		36.698112, 33.972252, 32.718437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149002, 34.670246, 33.056427>,  <37.334343, 33.990349, 33.009792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149002, 34.670246, 33.056427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.810169, 34.462833, 33.009808>,  <36.606869, 34.338387, 32.981834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.810169, 34.462833, 33.009808>,  <37.149002, 34.670246, 33.056427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810169, 34.462833, 33.009808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431088, 0.542098, 0.721314,
		-0.310841, 0.661253, -0.682732,
		-0.847078, -0.518531, -0.116552,
		36.556046, 34.307274, 32.974842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727646, 35.186604, 32.652187>,  <37.149002, 34.670246, 33.056427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727646, 35.186604, 32.652187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.604374, 35.518742, 32.466480>,  <37.530411, 35.718025, 32.355057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.604374, 35.518742, 32.466480>,  <37.727646, 35.186604, 32.652187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604374, 35.518742, 32.466480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945075, 0.211360, -0.249318,
		-0.108892, -0.515605, -0.849878,
		-0.308180, 0.830348, -0.464270,
		37.511921, 35.767845, 32.327198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001987, 35.154991, 31.924646>,  <37.727646, 35.186604, 32.652187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001987, 35.154991, 31.924646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.914776, 35.527546, 32.041248>,  <37.862450, 35.751080, 32.111210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.914776, 35.527546, 32.041248>,  <38.001987, 35.154991, 31.924646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914776, 35.527546, 32.041248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945542, 0.275563, -0.173250,
		-0.241692, 0.237858, -0.940749,
		-0.218027, 0.931391, 0.291506,
		37.849369, 35.806965, 32.128700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602501, 35.445839, 31.591705>,  <38.001987, 35.154991, 31.924646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602501, 35.445839, 31.591705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.887783, 35.613167, 31.366724>,  <39.058952, 35.713562, 31.231735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.887783, 35.613167, 31.366724>,  <38.602501, 35.445839, 31.591705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887783, 35.613167, 31.366724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427047, -0.376994, -0.821892,
		-0.555851, 0.826370, -0.090233,
		0.713204, 0.418316, -0.562451,
		39.101746, 35.738663, 31.197989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352493, 35.735683, 31.003248>,  <38.602501, 35.445839, 31.591705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352493, 35.735683, 31.003248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.728645, 35.698318, 30.872433>,  <38.954338, 35.675900, 30.793943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.728645, 35.698318, 30.872433>,  <38.352493, 35.735683, 31.003248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728645, 35.698318, 30.872433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339520, -0.314858, -0.886336,
		-0.020172, 0.944530, -0.327804,
		0.940383, -0.093416, -0.327038,
		39.010761, 35.670292, 30.774321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236588, 35.575802, 30.244888>,  <38.352493, 35.735683, 31.003248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236588, 35.575802, 30.244888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.632767, 35.553997, 30.295546>,  <38.870476, 35.540913, 30.325941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.632767, 35.553997, 30.295546>,  <38.236588, 35.575802, 30.244888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632767, 35.553997, 30.295546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102605, -0.322158, -0.941109,
		0.092104, 0.945115, -0.313488,
		0.990449, -0.054514, 0.126645,
		38.929901, 35.537643, 30.333540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489273, 35.915028, 29.730610>,  <38.236588, 35.575802, 30.244888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489273, 35.915028, 29.730610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.775055, 35.666294, 29.858908>,  <38.946526, 35.517056, 29.935886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.775055, 35.666294, 29.858908>,  <38.489273, 35.915028, 29.730610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775055, 35.666294, 29.858908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105418, -0.357515, -0.927939,
		0.691696, 0.696782, -0.189875,
		0.714454, -0.621835, 0.320745,
		38.989391, 35.479744, 29.955132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092716, 36.035751, 29.280407>,  <38.489273, 35.915028, 29.730610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092716, 36.035751, 29.280407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.090244, 35.669991, 29.442308>,  <39.088760, 35.450535, 29.539450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.090244, 35.669991, 29.442308>,  <39.092716, 36.035751, 29.280407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090244, 35.669991, 29.442308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136371, -0.401751, -0.905538,
		0.990638, 0.049600, 0.127181,
		-0.006181, -0.914405, 0.404754,
		39.088390, 35.395668, 29.563734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543568, 35.644928, 28.837051>,  <39.092716, 36.035751, 29.280407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543568, 35.644928, 28.837051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.372139, 35.373116, 29.075230>,  <39.269279, 35.210026, 29.218138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.372139, 35.373116, 29.075230>,  <39.543568, 35.644928, 28.837051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372139, 35.373116, 29.075230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003656, -0.660339, -0.750959,
		0.903499, -0.319665, 0.285489,
		-0.428575, -0.679534, 0.595447,
		39.243568, 35.169254, 29.253864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954914, 35.047321, 28.714756>,  <39.543568, 35.644928, 28.837051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954914, 35.047321, 28.714756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.600353, 34.930874, 28.858727>,  <39.387619, 34.861004, 28.945108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.600353, 34.930874, 28.858727>,  <39.954914, 35.047321, 28.714756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600353, 34.930874, 28.858727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024208, -0.805596, -0.591971,
		0.462290, -0.516009, 0.721126,
		-0.886398, -0.291119, 0.359927,
		39.334435, 34.843536, 28.966705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053917, 34.404453, 28.759451>,  <39.954914, 35.047321, 28.714756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053917, 34.404453, 28.759451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.664131, 34.489460, 28.730463>,  <39.430260, 34.540462, 28.713070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.664131, 34.489460, 28.730463>,  <40.053917, 34.404453, 28.759451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664131, 34.489460, 28.730463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123498, -0.776837, -0.617472,
		-0.187519, -0.592757, 0.783247,
		-0.974467, 0.212517, -0.072468,
		39.371792, 34.553215, 28.708723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840763, 33.869225, 28.626968>,  <40.053917, 34.404453, 28.759451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840763, 33.869225, 28.626968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.512554, 34.068569, 28.514977>,  <39.315628, 34.188175, 28.447783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.512554, 34.068569, 28.514977>,  <39.840763, 33.869225, 28.626968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512554, 34.068569, 28.514977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058058, -0.559922, -0.826508,
		-0.568669, -0.661907, 0.488359,
		-0.820515, 0.498363, -0.279981,
		39.266399, 34.218075, 28.430983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392120, 33.342022, 28.511927>,  <39.840763, 33.869225, 28.626968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392120, 33.342022, 28.511927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.259705, 33.658245, 28.305845>,  <39.180256, 33.847980, 28.182196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.259705, 33.658245, 28.305845>,  <39.392120, 33.342022, 28.511927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259705, 33.658245, 28.305845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349045, -0.609849, -0.711514,
		-0.876689, -0.055707, 0.477821,
		-0.331035, 0.790558, -0.515204,
		39.160393, 33.895412, 28.151285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627808, 33.089741, 28.337044>,  <39.392120, 33.342022, 28.511927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627808, 33.089741, 28.337044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.774597, 33.378098, 28.101875>,  <38.862671, 33.551109, 27.960773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.774597, 33.378098, 28.101875>,  <38.627808, 33.089741, 28.337044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774597, 33.378098, 28.101875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181429, -0.564413, -0.805309,
		-0.912367, 0.402193, -0.076335,
		0.366974, 0.720888, -0.587921,
		38.884689, 33.594364, 27.925499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115479, 33.187599, 27.898806>,  <38.627808, 33.089741, 28.337044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115479, 33.187599, 27.898806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.424381, 33.355091, 27.707685>,  <38.609722, 33.455585, 27.593014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.424381, 33.355091, 27.707685>,  <38.115479, 33.187599, 27.898806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424381, 33.355091, 27.707685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209504, -0.542161, -0.813738,
		-0.599778, 0.728513, -0.330960,
		0.772253, 0.418725, -0.477803,
		38.656055, 33.480709, 27.564344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840385, 33.326168, 27.357828>,  <38.115479, 33.187599, 27.898806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840385, 33.326168, 27.357828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.231663, 33.325871, 27.274752>,  <38.466431, 33.325691, 27.224905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.231663, 33.325871, 27.274752>,  <37.840385, 33.326168, 27.357828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231663, 33.325871, 27.274752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180236, -0.499942, -0.847097,
		-0.103204, 0.866059, -0.489175,
		0.978194, -0.000744, -0.207691,
		38.525120, 33.325649, 27.212444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849113, 33.392372, 26.702404>,  <37.840385, 33.326168, 27.357828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849113, 33.392372, 26.702404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.183975, 33.216476, 26.832512>,  <38.384892, 33.110939, 26.910576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.183975, 33.216476, 26.832512>,  <37.849113, 33.392372, 26.702404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183975, 33.216476, 26.832512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044610, -0.647586, -0.760685,
		0.545145, 0.622301, -0.561746,
		0.837154, -0.439743, 0.325268,
		38.435120, 33.084553, 26.930092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573246, 34.018532, 26.827211>,  <37.849113, 33.392372, 26.702404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573246, 34.018532, 26.827211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.227146, 33.920563, 26.652235>,  <37.019485, 33.861782, 26.547249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.227146, 33.920563, 26.652235>,  <37.573246, 34.018532, 26.827211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227146, 33.920563, 26.652235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501304, 0.412073, 0.760848,
		-0.006091, 0.877615, -0.479327,
		-0.865250, -0.244923, -0.437442,
		36.967571, 33.847084, 26.521002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132141, 34.610920, 26.794333>,  <37.573246, 34.018532, 26.827211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132141, 34.610920, 26.794333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.868294, 34.310848, 26.775871>,  <36.709984, 34.130806, 26.764793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.868294, 34.310848, 26.775871>,  <37.132141, 34.610920, 26.794333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868294, 34.310848, 26.775871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569029, 0.458328, 0.682746,
		-0.491031, 0.476615, -0.729197,
		-0.659618, -0.750183, -0.046155,
		36.670410, 34.085793, 26.762024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489796, 34.959373, 26.843298>,  <37.132141, 34.610920, 26.794333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489796, 34.959373, 26.843298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.432297, 34.575714, 26.940767>,  <36.397797, 34.345520, 26.999249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.432297, 34.575714, 26.940767>,  <36.489796, 34.959373, 26.843298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432297, 34.575714, 26.940767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574796, 0.281357, 0.768406,
		-0.805573, -0.029606, -0.591757,
		-0.143745, -0.959146, 0.243671,
		36.389172, 34.287971, 27.013868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782852, 34.856499, 26.935123>,  <36.489796, 34.959373, 26.843298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782852, 34.856499, 26.935123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.940807, 34.561604, 27.154411>,  <36.035580, 34.384666, 27.285984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.940807, 34.561604, 27.154411>,  <35.782852, 34.856499, 26.935123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940807, 34.561604, 27.154411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709511, 0.134372, 0.691764,
		-0.583662, -0.662134, -0.470018,
		0.394884, -0.737240, 0.548220,
		36.059273, 34.340431, 27.318878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183178, 34.482307, 26.946749>,  <35.782852, 34.856499, 26.935123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183178, 34.482307, 26.946749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.455215, 34.422207, 27.233776>,  <35.618439, 34.386147, 27.405993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.455215, 34.422207, 27.233776>,  <35.183178, 34.482307, 26.946749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455215, 34.422207, 27.233776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691564, 0.193408, 0.695941,
		-0.243349, -0.969545, 0.027626,
		0.680089, -0.150251, 0.717567,
		35.659241, 34.377132, 27.449047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840073, 34.379963, 27.551910>,  <35.183178, 34.482307, 26.946749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840073, 34.379963, 27.551910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.196518, 34.381363, 27.733419>,  <35.410385, 34.382202, 27.842325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.196518, 34.381363, 27.733419>,  <34.840073, 34.379963, 27.551910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196518, 34.381363, 27.733419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420046, 0.384736, 0.821912,
		-0.171706, -0.923020, 0.344313,
		0.891111, 0.003500, 0.453772,
		35.463852, 34.382412, 27.869551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628799, 34.216465, 28.190237>,  <34.840073, 34.379963, 27.551910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628799, 34.216465, 28.190237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.994446, 34.375961, 28.219601>,  <35.213833, 34.471661, 28.237219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.994446, 34.375961, 28.219601>,  <34.628799, 34.216465, 28.190237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994446, 34.375961, 28.219601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305355, 0.557967, 0.771642,
		0.266724, -0.727790, 0.631807,
		0.914121, 0.398741, 0.073411,
		35.268681, 34.495583, 28.241623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759979, 34.197453, 28.894480>,  <34.628799, 34.216465, 28.190237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759979, 34.197453, 28.894480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.013008, 34.466652, 28.741156>,  <35.164825, 34.628170, 28.649160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.013008, 34.466652, 28.741156>,  <34.759979, 34.197453, 28.894480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013008, 34.466652, 28.741156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255902, 0.648735, 0.716699,
		0.731003, -0.355274, 0.582593,
		0.632573, 0.672996, -0.383312,
		35.202782, 34.668549, 28.626162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192123, 34.504108, 29.404207>,  <34.759979, 34.197453, 28.894480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192123, 34.504108, 29.404207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.212536, 34.786312, 29.121464>,  <35.224781, 34.955635, 28.951818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.212536, 34.786312, 29.121464>,  <35.192123, 34.504108, 29.404207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212536, 34.786312, 29.121464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069491, 0.708574, 0.702206,
		0.996277, 0.013289, 0.085183,
		0.051027, 0.705511, -0.706859,
		35.227844, 34.997967, 28.909407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767281, 34.991779, 29.598408>,  <35.192123, 34.504108, 29.404207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767281, 34.991779, 29.598408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.538071, 35.197624, 29.343277>,  <35.400543, 35.321129, 29.190199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.538071, 35.197624, 29.343277>,  <35.767281, 34.991779, 29.598408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538071, 35.197624, 29.343277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228870, 0.646824, 0.727487,
		0.786932, 0.562847, -0.252868,
		-0.573025, 0.514609, -0.637825,
		35.366165, 35.352005, 29.151930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072224, 35.738186, 29.678951>,  <35.767281, 34.991779, 29.598408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072224, 35.738186, 29.678951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.695400, 35.750366, 29.545330>,  <35.469307, 35.757675, 29.465157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.695400, 35.750366, 29.545330>,  <36.072224, 35.738186, 29.678951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695400, 35.750366, 29.545330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229482, 0.667846, 0.708040,
		0.244659, 0.743677, -0.622163,
		-0.942062, 0.030453, -0.334055,
		35.412781, 35.759502, 29.445114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008663, 36.392658, 29.650555>,  <36.072224, 35.738186, 29.678951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008663, 36.392658, 29.650555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629803, 36.265182, 29.635891>,  <35.402485, 36.188698, 29.627092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629803, 36.265182, 29.635891>,  <36.008663, 36.392658, 29.650555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629803, 36.265182, 29.635891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288540, 0.796419, 0.531471,
		-0.140177, 0.513961, -0.846283,
		-0.947151, -0.318686, -0.036659,
		35.345657, 36.169575, 29.624893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.896862, 32.214233, 22.998648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527290, 32.119911, 23.119148>,  <37.305546, 32.063316, 23.191448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527290, 32.119911, 23.119148>,  <37.896862, 32.214233, 22.998648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527290, 32.119911, 23.119148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046824, 0.711821, 0.700798,
		-0.379690, 0.661593, -0.646630,
		-0.923928, -0.235808, 0.301250,
		37.250111, 32.049168, 23.209524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521645, 32.893379, 23.034060>,  <37.896862, 32.214233, 22.998648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521645, 32.893379, 23.034060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313736, 32.631245, 23.253288>,  <37.188992, 32.473965, 23.384825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313736, 32.631245, 23.253288>,  <37.521645, 32.893379, 23.034060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313736, 32.631245, 23.253288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005087, 0.639152, 0.769064,
		-0.854293, 0.402523, -0.328876,
		-0.519767, -0.655333, 0.548070,
		37.157806, 32.434647, 23.417709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113361, 33.345936, 23.311518>,  <37.521645, 32.893379, 23.034060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113361, 33.345936, 23.311518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070641, 33.024818, 23.546162>,  <37.045010, 32.832146, 23.686949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070641, 33.024818, 23.546162>,  <37.113361, 33.345936, 23.311518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070641, 33.024818, 23.546162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056359, 0.593923, 0.802545,
		-0.992682, 0.052652, -0.108677,
		-0.106801, -0.802797, 0.586609,
		37.038601, 32.783978, 23.722145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407162, 33.359146, 23.683327>,  <37.113361, 33.345936, 23.311518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407162, 33.359146, 23.683327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667675, 33.123440, 23.874577>,  <36.823982, 32.982018, 23.989326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667675, 33.123440, 23.874577>,  <36.407162, 33.359146, 23.683327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667675, 33.123440, 23.874577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111511, 0.548917, 0.828405,
		-0.750601, -0.592839, 0.291788,
		0.651279, -0.589264, 0.478125,
		36.863060, 32.946659, 24.018015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998474, 33.140514, 24.225910>,  <36.407162, 33.359146, 23.683327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998474, 33.140514, 24.225910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383339, 33.085564, 24.320042>,  <36.614258, 33.052593, 24.376520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383339, 33.085564, 24.320042>,  <35.998474, 33.140514, 24.225910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383339, 33.085564, 24.320042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169609, 0.374004, 0.911786,
		-0.213267, -0.917197, 0.336552,
		0.962159, -0.137372, 0.235328,
		36.671986, 33.044353, 24.390640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029297, 32.737724, 24.868565>,  <35.998474, 33.140514, 24.225910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029297, 32.737724, 24.868565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379944, 32.930195, 24.868034>,  <36.590332, 33.045677, 24.867716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379944, 32.930195, 24.868034>,  <36.029297, 32.737724, 24.868565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379944, 32.930195, 24.868034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194975, 0.357724, 0.913246,
		0.439913, -0.800310, 0.407406,
		0.876619, 0.481184, -0.001327,
		36.642929, 33.074551, 24.867638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504711, 32.408672, 25.372215>,  <36.029297, 32.737724, 24.868565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504711, 32.408672, 25.372215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714897, 32.743958, 25.313866>,  <36.841011, 32.945129, 25.278856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714897, 32.743958, 25.313866>,  <36.504711, 32.408672, 25.372215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714897, 32.743958, 25.313866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032386, 0.151621, 0.987908,
		0.850196, -0.523840, 0.052526,
		0.525469, 0.838214, -0.145872,
		36.872540, 32.995422, 25.270103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126842, 32.416393, 25.910769>,  <36.504711, 32.408672, 25.372215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126842, 32.416393, 25.910769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062416, 32.791779, 25.788561>,  <37.023762, 33.017010, 25.715237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062416, 32.791779, 25.788561>,  <37.126842, 32.416393, 25.910769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062416, 32.791779, 25.788561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050021, 0.301402, 0.952184,
		0.985675, 0.168648, -0.001603,
		-0.161067, 0.938464, -0.305520,
		37.014095, 33.073318, 25.696905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640701, 32.752182, 26.229660>,  <37.126842, 32.416393, 25.910769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640701, 32.752182, 26.229660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348236, 33.016998, 26.163803>,  <37.172756, 33.175888, 26.124289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348236, 33.016998, 26.163803>,  <37.640701, 32.752182, 26.229660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348236, 33.016998, 26.163803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092116, 0.334935, 0.937728,
		0.675956, 0.670465, -0.305876,
		-0.731162, 0.662039, -0.164641,
		37.128887, 33.215611, 26.114410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268585, 32.987747, 25.958595>,  <37.640701, 32.752182, 26.229660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268585, 32.987747, 25.958595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465820, 32.843479, 26.275274>,  <38.584160, 32.756920, 26.465281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465820, 32.843479, 26.275274>,  <38.268585, 32.987747, 25.958595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465820, 32.843479, 26.275274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290911, -0.789277, -0.540752,
		0.819899, 0.496952, -0.284262,
		0.493089, -0.360667, 0.791696,
		38.613747, 32.735279, 26.512783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902321, 32.821243, 25.681320>,  <38.268585, 32.987747, 25.958595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902321, 32.821243, 25.681320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893520, 32.609276, 26.020426>,  <38.888241, 32.482094, 26.223888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893520, 32.609276, 26.020426>,  <38.902321, 32.821243, 25.681320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893520, 32.609276, 26.020426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446018, -0.764109, -0.466053,
		0.894753, 0.367863, 0.253168,
		-0.022004, -0.529920, 0.847762,
		38.886921, 32.450298, 26.274754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566257, 32.519283, 25.831118>,  <38.902321, 32.821243, 25.681320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566257, 32.519283, 25.831118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330334, 32.281036, 26.049246>,  <39.188782, 32.138088, 26.180122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330334, 32.281036, 26.049246>,  <39.566257, 32.519283, 25.831118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330334, 32.281036, 26.049246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534621, -0.794102, -0.289107,
		0.605236, 0.121023, 0.786793,
		-0.589805, -0.595614, 0.545321,
		39.153393, 32.102352, 26.212843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012993, 32.021492, 26.146141>,  <39.566257, 32.519283, 25.831118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012993, 32.021492, 26.146141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648308, 31.858587, 26.124537>,  <39.429497, 31.760845, 26.111574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648308, 31.858587, 26.124537>,  <40.012993, 32.021492, 26.146141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648308, 31.858587, 26.124537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385078, -0.801341, -0.457785,
		0.143158, -0.438166, 0.887421,
		-0.911713, -0.407262, -0.054010,
		39.374794, 31.736408, 26.108334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084774, 31.422239, 26.379408>,  <40.012993, 32.021492, 26.146141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084774, 31.422239, 26.379408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754932, 31.394011, 26.154890>,  <39.557030, 31.377073, 26.020180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754932, 31.394011, 26.154890>,  <40.084774, 31.422239, 26.379408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754932, 31.394011, 26.154890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404289, -0.767532, -0.497439,
		-0.395704, -0.637114, 0.661441,
		-0.824602, -0.070575, -0.561293,
		39.507553, 31.372839, 25.986502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943230, 30.724483, 26.193586>,  <40.084774, 31.422239, 26.379408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943230, 30.724483, 26.193586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714996, 30.910858, 25.923080>,  <39.578056, 31.022684, 25.760777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714996, 30.910858, 25.923080>,  <39.943230, 30.724483, 26.193586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714996, 30.910858, 25.923080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158914, -0.745261, -0.647558,
		-0.805717, -0.476955, 0.351190,
		-0.570584, 0.465940, -0.676265,
		39.543819, 31.050640, 25.720201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565357, 30.193756, 25.860620>,  <39.943230, 30.724483, 26.193586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565357, 30.193756, 25.860620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503819, 30.492113, 25.601398>,  <39.466896, 30.671127, 25.445866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503819, 30.492113, 25.601398>,  <39.565357, 30.193756, 25.860620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503819, 30.492113, 25.601398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168714, -0.626401, -0.761023,
		-0.973585, -0.226416, -0.029473,
		-0.153846, 0.745893, -0.648054,
		39.457664, 30.715881, 25.406982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078857, 29.960270, 25.406162>,  <39.565357, 30.193756, 25.860620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078857, 29.960270, 25.406162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275066, 30.259468, 25.227325>,  <39.392792, 30.438988, 25.120024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275066, 30.259468, 25.227325>,  <39.078857, 29.960270, 25.406162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275066, 30.259468, 25.227325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028645, -0.526617, -0.849620,
		-0.870959, 0.403948, -0.279743,
		0.490520, 0.747997, -0.447091,
		39.422222, 30.483868, 25.093199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654354, 30.112316, 24.853292>,  <39.078857, 29.960270, 25.406162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654354, 30.112316, 24.853292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012302, 30.269783, 24.769173>,  <39.227074, 30.364264, 24.718700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012302, 30.269783, 24.769173>,  <38.654354, 30.112316, 24.853292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012302, 30.269783, 24.769173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003761, -0.477816, -0.878452,
		-0.446303, 0.785313, -0.429066,
		0.894874, 0.393669, -0.210297,
		39.280766, 30.387884, 24.706083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737682, 30.503897, 24.203533>,  <38.654354, 30.112316, 24.853292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737682, 30.503897, 24.203533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114536, 30.382309, 24.260086>,  <39.340649, 30.309357, 24.294018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114536, 30.382309, 24.260086>,  <38.737682, 30.503897, 24.203533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114536, 30.382309, 24.260086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025559, -0.485638, -0.873786,
		0.334265, 0.819609, -0.465305,
		0.942133, -0.303969, 0.141383,
		39.397175, 30.291119, 24.302502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026142, 30.692295, 23.543510>,  <38.737682, 30.503897, 24.203533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026142, 30.692295, 23.543510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241783, 30.412273, 23.730825>,  <39.371166, 30.244261, 23.843214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241783, 30.412273, 23.730825>,  <39.026142, 30.692295, 23.543510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241783, 30.412273, 23.730825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010609, -0.550315, -0.834890,
		0.842176, 0.455055, -0.289247,
		0.539098, -0.700056, 0.468290,
		39.403511, 30.202257, 23.871313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352032, 30.427441, 23.044136>,  <39.026142, 30.692295, 23.543510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352032, 30.427441, 23.044136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490059, 30.156155, 23.303659>,  <39.572876, 29.993383, 23.459373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490059, 30.156155, 23.303659>,  <39.352032, 30.427441, 23.044136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490059, 30.156155, 23.303659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135601, -0.647992, -0.749480,
		0.928731, 0.346600, -0.131635,
		0.345068, -0.678215, 0.648809,
		39.593578, 29.952690, 23.498302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973156, 30.186712, 22.836197>,  <39.352032, 30.427441, 23.044136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973156, 30.186712, 22.836197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809433, 29.897123, 23.058308>,  <39.711197, 29.723370, 23.191574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809433, 29.897123, 23.058308>,  <39.973156, 30.186712, 22.836197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809433, 29.897123, 23.058308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104499, -0.641784, -0.759732,
		0.906391, -0.252941, 0.338344,
		-0.409311, -0.723971, 0.555275,
		39.686638, 29.679932, 23.224890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336967, 29.583755, 22.605976>,  <39.973156, 30.186712, 22.836197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336967, 29.583755, 22.605976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044540, 29.391413, 22.799603>,  <39.869083, 29.276007, 22.915779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044540, 29.391413, 22.799603>,  <40.336967, 29.583755, 22.605976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044540, 29.391413, 22.799603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061559, -0.660077, -0.748671,
		0.679523, -0.577127, 0.452959,
		-0.731067, -0.480856, 0.484066,
		39.825222, 29.247156, 22.944822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.299303, 27.475191, 24.701872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.485651, 27.807625, 24.580372>,  <31.597460, 28.007086, 24.507473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.485651, 27.807625, 24.580372>,  <31.299303, 27.475191, 24.701872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485651, 27.807625, 24.580372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230385, 0.217511, 0.948479,
		0.854335, -0.511846, -0.090138,
		0.465869, 0.831085, -0.303749,
		31.625412, 28.056950, 24.489246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962402, 27.494446, 25.161774>,  <31.299303, 27.475191, 24.701872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962402, 27.494446, 25.161774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.880056, 27.863682, 25.031836>,  <31.830648, 28.085224, 24.953873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.880056, 27.863682, 25.031836>,  <31.962402, 27.494446, 25.161774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880056, 27.863682, 25.031836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017829, 0.328363, 0.944384,
		0.978418, 0.200208, -0.051140,
		-0.205866, 0.923090, -0.324845,
		31.818296, 28.140608, 24.934381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299767, 27.998222, 25.639812>,  <31.962402, 27.494446, 25.161774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299767, 27.998222, 25.639812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.051102, 28.246284, 25.448420>,  <31.901903, 28.395123, 25.333584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.051102, 28.246284, 25.448420>,  <32.299767, 27.998222, 25.639812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051102, 28.246284, 25.448420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127300, 0.522751, 0.842927,
		0.772873, 0.584926, -0.246028,
		-0.621661, 0.620156, -0.478481,
		31.864603, 28.432331, 25.304874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497993, 28.695894, 25.829748>,  <32.299767, 27.998222, 25.639812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497993, 28.695894, 25.829748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.116871, 28.710066, 25.709150>,  <31.888197, 28.718569, 25.636791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.116871, 28.710066, 25.709150>,  <32.497993, 28.695894, 25.829748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116871, 28.710066, 25.709150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246762, 0.488079, 0.837190,
		0.176813, 0.872080, -0.456303,
		-0.952809, 0.035428, -0.301495,
		31.831028, 28.720694, 25.618702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290844, 29.470894, 25.808552>,  <32.497993, 28.695894, 25.829748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290844, 29.470894, 25.808552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.956129, 29.254057, 25.839327>,  <31.755299, 29.123955, 25.857792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.956129, 29.254057, 25.839327>,  <32.290844, 29.470894, 25.808552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956129, 29.254057, 25.839327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227333, 0.471823, 0.851882,
		-0.498099, 0.695356, -0.518052,
		-0.836790, -0.542092, 0.076937,
		31.705091, 29.091429, 25.862408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690205, 29.979132, 25.913303>,  <32.290844, 29.470894, 25.808552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690205, 29.979132, 25.913303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.579674, 29.619106, 26.048080>,  <31.513355, 29.403091, 26.128946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.579674, 29.619106, 26.048080>,  <31.690205, 29.979132, 25.913303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579674, 29.619106, 26.048080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073071, 0.369255, 0.926451,
		-0.958282, 0.231384, -0.167804,
		-0.276328, -0.900063, 0.336943,
		31.496775, 29.349087, 26.149162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139471, 30.174747, 26.315975>,  <31.690205, 29.979132, 25.913303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139471, 30.174747, 26.315975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.225275, 29.798809, 26.422312>,  <31.276756, 29.573246, 26.486115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.225275, 29.798809, 26.422312>,  <31.139471, 30.174747, 26.315975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225275, 29.798809, 26.422312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050452, 0.261152, 0.963978,
		-0.975418, -0.220193, 0.008602,
		0.214508, -0.939848, 0.265842,
		31.289627, 29.516855, 26.502064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683865, 30.032602, 26.919273>,  <31.139471, 30.174747, 26.315975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683865, 30.032602, 26.919273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.969423, 29.754751, 26.954710>,  <31.140759, 29.588041, 26.975971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.969423, 29.754751, 26.954710>,  <30.683865, 30.032602, 26.919273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969423, 29.754751, 26.954710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070034, 0.196705, 0.977958,
		-0.696743, -0.691954, 0.189074,
		0.713894, -0.694627, 0.088592,
		31.183592, 29.546364, 26.981287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513195, 29.630510, 27.424038>,  <30.683865, 30.032602, 26.919273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513195, 29.630510, 27.424038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.912731, 29.613724, 27.414577>,  <31.152452, 29.603653, 27.408901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.912731, 29.613724, 27.414577>,  <30.513195, 29.630510, 27.424038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912731, 29.613724, 27.414577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028349, 0.115083, 0.992951,
		-0.038948, -0.992469, 0.116139,
		0.998839, -0.041966, -0.023653,
		31.212383, 29.601135, 27.407482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720785, 29.350409, 27.998562>,  <30.513195, 29.630510, 27.424038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720785, 29.350409, 27.998562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.068874, 29.500143, 27.870447>,  <31.277727, 29.589983, 27.793579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.068874, 29.500143, 27.870447>,  <30.720785, 29.350409, 27.998562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068874, 29.500143, 27.870447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264475, 0.193534, 0.944774,
		0.415650, -0.906872, 0.069415,
		0.870223, 0.374337, -0.320287,
		31.329941, 29.612444, 27.774361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133627, 29.150730, 28.536562>,  <30.720785, 29.350409, 27.998562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133627, 29.150730, 28.536562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.353573, 29.427444, 28.349337>,  <31.485540, 29.593473, 28.237001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.353573, 29.427444, 28.349337>,  <31.133627, 29.150730, 28.536562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353573, 29.427444, 28.349337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206898, 0.430112, 0.878748,
		0.809225, -0.580032, 0.093373,
		0.549863, 0.691785, -0.468064,
		31.518532, 29.634979, 28.208918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690739, 29.233299, 28.935020>,  <31.133627, 29.150730, 28.536562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690739, 29.233299, 28.935020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.703049, 29.563225, 28.709194>,  <31.710434, 29.761181, 28.573698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.703049, 29.563225, 28.709194>,  <31.690739, 29.233299, 28.935020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703049, 29.563225, 28.709194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380816, 0.512555, 0.769588,
		0.924138, -0.238679, -0.298329,
		0.030774, 0.824815, -0.564565,
		31.712280, 29.810669, 28.539825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360344, 29.624870, 29.084360>,  <31.690739, 29.233299, 28.935020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360344, 29.624870, 29.084360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.129307, 29.913549, 28.931763>,  <31.990685, 30.086758, 28.840204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.129307, 29.913549, 28.931763>,  <32.360344, 29.624870, 29.084360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129307, 29.913549, 28.931763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252133, 0.602199, 0.757486,
		0.776410, 0.341334, -0.529792,
		-0.577596, 0.721698, -0.381492,
		31.956028, 30.130058, 28.817316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747204, 30.269146, 29.111057>,  <32.360344, 29.624870, 29.084360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747204, 30.269146, 29.111057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.365631, 30.387764, 29.092806>,  <32.136688, 30.458935, 29.081856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.365631, 30.387764, 29.092806>,  <32.747204, 30.269146, 29.111057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365631, 30.387764, 29.092806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207232, 0.761180, 0.614540,
		0.216969, 0.576772, -0.787565,
		-0.953928, 0.296545, -0.045627,
		32.079453, 30.476728, 29.079119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262428, 30.610977, 28.766859>,  <32.747204, 30.269146, 29.111057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262428, 30.610977, 28.766859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.559269, 30.471329, 28.995733>,  <33.737373, 30.387539, 29.133059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.559269, 30.471329, 28.995733>,  <33.262428, 30.610977, 28.766859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559269, 30.471329, 28.995733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161774, -0.735121, -0.658351,
		0.650471, 0.581129, -0.489056,
		0.742103, -0.349122, 0.572187,
		33.781898, 30.366592, 29.167389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989788, 30.447813, 28.269587>,  <33.262428, 30.610977, 28.766859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989788, 30.447813, 28.269587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.032352, 30.239447, 28.608366>,  <34.057892, 30.114426, 28.811634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.032352, 30.239447, 28.608366>,  <33.989788, 30.447813, 28.269587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032352, 30.239447, 28.608366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407650, -0.754053, -0.515001,
		0.906917, 0.400060, 0.132112,
		0.106412, -0.520918, 0.846948,
		34.064278, 30.083172, 28.862450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492043, 30.108051, 28.029028>,  <33.989788, 30.447813, 28.269587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492043, 30.108051, 28.029028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.385834, 29.928898, 28.370529>,  <34.322109, 29.821405, 28.575430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.385834, 29.928898, 28.370529>,  <34.492043, 30.108051, 28.029028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385834, 29.928898, 28.370529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301878, -0.879635, -0.367576,
		0.915624, 0.160131, 0.368768,
		-0.265521, -0.447884, 0.853755,
		34.306179, 29.794533, 28.626656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086716, 29.670578, 28.337614>,  <34.492043, 30.108051, 28.029028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086716, 29.670578, 28.337614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.730026, 29.509270, 28.419790>,  <34.516014, 29.412485, 28.469095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.730026, 29.509270, 28.419790>,  <35.086716, 29.670578, 28.337614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730026, 29.509270, 28.419790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253988, -0.821607, -0.510344,
		0.374598, -0.402906, 0.835071,
		-0.891721, -0.403272, 0.205439,
		34.462509, 29.388288, 28.481422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248978, 28.960789, 28.329245>,  <35.086716, 29.670578, 28.337614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248978, 28.960789, 28.329245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848999, 28.957146, 28.326982>,  <34.609013, 28.954960, 28.325626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848999, 28.957146, 28.326982>,  <35.248978, 28.960789, 28.329245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848999, 28.957146, 28.326982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010694, -0.812230, -0.583239,
		0.000720, -0.583266, 0.812281,
		-0.999943, -0.009107, -0.005653,
		34.549015, 28.954414, 28.325287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072823, 28.183706, 28.382677>,  <35.248978, 28.960789, 28.329245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072823, 28.183706, 28.382677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.761555, 28.382837, 28.229511>,  <34.574795, 28.502316, 28.137611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.761555, 28.382837, 28.229511>,  <35.072823, 28.183706, 28.382677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761555, 28.382837, 28.229511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018266, -0.591484, -0.806110,
		-0.627795, -0.634280, 0.451178,
		-0.778164, 0.497830, -0.382917,
		34.528103, 28.532185, 28.114637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414276, 27.850822, 28.382099>,  <35.072823, 28.183706, 28.382677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414276, 27.850822, 28.382099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.382694, 28.109415, 28.078566>,  <34.363747, 28.264570, 27.896446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.382694, 28.109415, 28.078566>,  <34.414276, 27.850822, 28.382099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382694, 28.109415, 28.078566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187458, -0.757258, -0.625636,
		-0.979094, 0.092853, 0.180976,
		-0.078954, 0.646482, -0.758833,
		34.359009, 28.303360, 27.850916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998150, 27.518915, 27.886864>,  <34.414276, 27.850822, 28.382099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998150, 27.518915, 27.886864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.139454, 27.830160, 27.679115>,  <34.224236, 28.016907, 27.554466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.139454, 27.830160, 27.679115>,  <33.998150, 27.518915, 27.886864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139454, 27.830160, 27.679115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050843, -0.538379, -0.841168,
		-0.934143, 0.323556, -0.150625,
		0.353258, 0.778113, -0.519373,
		34.245430, 28.063595, 27.523304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667038, 27.379683, 27.267450>,  <33.998150, 27.518915, 27.886864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667038, 27.379683, 27.267450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.932522, 27.662458, 27.169701>,  <34.091812, 27.832125, 27.111052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.932522, 27.662458, 27.169701>,  <33.667038, 27.379683, 27.267450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932522, 27.662458, 27.169701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049809, -0.284211, -0.957467,
		-0.746327, 0.647655, -0.153423,
		0.663713, 0.706942, -0.244373,
		34.131638, 27.874540, 27.096388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402840, 27.755766, 26.598324>,  <33.667038, 27.379683, 27.267450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402840, 27.755766, 26.598324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.802425, 27.772871, 26.604595>,  <34.042175, 27.783134, 26.608358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.802425, 27.772871, 26.604595>,  <33.402840, 27.755766, 26.598324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802425, 27.772871, 26.604595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022840, -0.172479, -0.984748,
		-0.039408, 0.984084, -0.173277,
		0.998962, 0.042765, 0.015679,
		34.102116, 27.785700, 26.609299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600731, 27.958397, 25.900194>,  <33.402840, 27.755766, 26.598324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600731, 27.958397, 25.900194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.942825, 27.827158, 26.060656>,  <34.148083, 27.748415, 26.156933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.942825, 27.827158, 26.060656>,  <33.600731, 27.958397, 25.900194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942825, 27.827158, 26.060656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340265, -0.228341, -0.912184,
		0.390884, 0.916631, -0.083646,
		0.855236, -0.328097, 0.401152,
		34.199398, 27.728729, 26.181002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283142, 28.327354, 25.554171>,  <33.600731, 27.958397, 25.900194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283142, 28.327354, 25.554171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.403461, 27.980721, 25.713444>,  <34.475655, 27.772741, 25.809008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.403461, 27.980721, 25.713444>,  <34.283142, 28.327354, 25.554171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403461, 27.980721, 25.713444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437590, -0.245560, -0.864994,
		0.847368, 0.434434, 0.305343,
		0.300803, -0.866584, 0.398183,
		34.493702, 27.720745, 25.832899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999168, 28.208000, 25.301451>,  <34.283142, 28.327354, 25.554171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999168, 28.208000, 25.301451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848896, 27.853786, 25.410769>,  <34.758732, 27.641258, 25.476358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848896, 27.853786, 25.410769>,  <34.999168, 28.208000, 25.301451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848896, 27.853786, 25.410769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291411, -0.392814, -0.872225,
		0.879740, -0.248038, 0.405628,
		-0.375681, -0.885536, 0.273294,
		34.736191, 27.588125, 25.492756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575039, 27.645256, 25.300558>,  <34.999168, 28.208000, 25.301451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575039, 27.645256, 25.300558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218433, 27.468929, 25.258816>,  <35.004471, 27.363134, 25.233770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218433, 27.468929, 25.258816>,  <35.575039, 27.645256, 25.300558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218433, 27.468929, 25.258816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315509, -0.438924, -0.841308,
		0.325058, -0.782961, 0.530387,
		-0.891511, -0.440816, -0.104356,
		34.950981, 27.336685, 25.227509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120544, 27.226080, 25.626009>,  <35.575039, 27.645256, 25.300558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120544, 27.226080, 25.626009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.479717, 27.398245, 25.589226>,  <36.695221, 27.501543, 25.567156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.479717, 27.398245, 25.589226>,  <36.120544, 27.226080, 25.626009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479717, 27.398245, 25.589226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094004, 0.391672, 0.915290,
		0.429972, -0.813227, 0.392157,
		0.897935, 0.430413, -0.091961,
		36.749100, 27.527369, 25.561638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496132, 27.169474, 26.260103>,  <36.120544, 27.226080, 25.626009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496132, 27.169474, 26.260103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.700481, 27.463037, 26.081047>,  <36.823090, 27.639175, 25.973614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.700481, 27.463037, 26.081047>,  <36.496132, 27.169474, 26.260103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700481, 27.463037, 26.081047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201751, 0.403819, 0.892315,
		0.835646, -0.546173, 0.058233,
		0.510874, 0.733911, -0.447641,
		36.853745, 27.683210, 25.946754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055214, 27.341074, 26.644691>,  <36.496132, 27.169474, 26.260103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055214, 27.341074, 26.644691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.019432, 27.683626, 26.441275>,  <36.997963, 27.889156, 26.319225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.019432, 27.683626, 26.441275>,  <37.055214, 27.341074, 26.644691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019432, 27.683626, 26.441275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107914, 0.515916, 0.849815,
		0.990127, 0.021142, -0.138567,
		-0.089456, 0.856378, -0.508541,
		36.992596, 27.940540, 26.288712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276966, 27.776205, 27.083721>,  <37.055214, 27.341074, 26.644691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276966, 27.776205, 27.083721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.158779, 28.020908, 26.790203>,  <37.087868, 28.167730, 26.614092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.158779, 28.020908, 26.790203>,  <37.276966, 27.776205, 27.083721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158779, 28.020908, 26.790203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085288, 0.748128, 0.658051,
		0.951539, 0.257015, -0.168869,
		-0.295465, 0.611758, -0.733793,
		37.070141, 28.204435, 26.570065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783810, 28.324675, 26.957638>,  <37.276966, 27.776205, 27.083721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783810, 28.324675, 26.957638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.418739, 28.457056, 26.861727>,  <37.199696, 28.536486, 26.804180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.418739, 28.457056, 26.861727>,  <37.783810, 28.324675, 26.957638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418739, 28.457056, 26.861727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125376, 0.785148, 0.606485,
		0.388981, 0.523461, -0.758078,
		-0.912674, 0.330955, -0.239778,
		37.144936, 28.556343, 26.789793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907047, 29.070930, 26.958834>,  <37.783810, 28.324675, 26.957638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907047, 29.070930, 26.958834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.510868, 29.016724, 26.948614>,  <37.273163, 28.984200, 26.942482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.510868, 29.016724, 26.948614>,  <37.907047, 29.070930, 26.958834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510868, 29.016724, 26.948614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127181, 0.825960, 0.549195,
		-0.053323, 0.547197, -0.835304,
		-0.990445, -0.135519, -0.025550,
		37.213734, 28.976068, 26.940948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558712, 29.716024, 26.627806>,  <37.907047, 29.070930, 26.958834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558712, 29.716024, 26.627806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.308887, 29.513422, 26.865589>,  <37.158993, 29.391861, 27.008259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.308887, 29.513422, 26.865589>,  <37.558712, 29.716024, 26.627806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308887, 29.513422, 26.865589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133866, 0.819336, 0.557467,
		-0.769421, 0.268592, -0.579525,
		-0.624557, -0.506505, 0.594459,
		37.121521, 29.361471, 27.043926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114227, 30.157595, 26.791243>,  <37.558712, 29.716024, 26.627806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114227, 30.157595, 26.791243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034184, 29.894842, 27.082024>,  <36.986156, 29.737190, 27.256493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034184, 29.894842, 27.082024>,  <37.114227, 30.157595, 26.791243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034184, 29.894842, 27.082024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031632, 0.745906, 0.665300,
		-0.979262, 0.110139, -0.170043,
		-0.200111, -0.656882, 0.726954,
		36.974152, 29.697777, 27.300110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534657, 30.460022, 27.124334>,  <37.114227, 30.157595, 26.791243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534657, 30.460022, 27.124334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714355, 30.222363, 27.391214>,  <36.822174, 30.079767, 27.551342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714355, 30.222363, 27.391214>,  <36.534657, 30.460022, 27.124334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714355, 30.222363, 27.391214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068815, 0.767602, 0.637222,
		-0.890751, -0.240359, 0.385733,
		0.449252, -0.594150, 0.667202,
		36.849133, 30.044117, 27.591375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140568, 30.485373, 27.781731>,  <36.534657, 30.460022, 27.124334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140568, 30.485373, 27.781731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.514343, 30.375282, 27.872137>,  <36.738609, 30.309229, 27.926380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.514343, 30.375282, 27.872137>,  <36.140568, 30.485373, 27.781731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514343, 30.375282, 27.872137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023676, 0.681241, 0.731676,
		-0.355347, -0.678352, 0.643091,
		0.934435, -0.275225, 0.226017,
		36.794674, 30.292715, 27.939941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197586, 30.464849, 28.529509>,  <36.140568, 30.485373, 27.781731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197586, 30.464849, 28.529509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588638, 30.488646, 28.448818>,  <36.823269, 30.502922, 28.400404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588638, 30.488646, 28.448818>,  <36.197586, 30.464849, 28.529509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588638, 30.488646, 28.448818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149030, 0.480840, 0.864050,
		0.148399, -0.874788, 0.461220,
		0.977634, 0.059488, -0.201726,
		36.881927, 30.506493, 28.388300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498692, 30.297020, 29.182655>,  <36.197586, 30.464849, 28.529509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498692, 30.297020, 29.182655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.775066, 30.484901, 28.962845>,  <36.940891, 30.597630, 28.830959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.775066, 30.484901, 28.962845>,  <36.498692, 30.297020, 29.182655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775066, 30.484901, 28.962845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272507, 0.534853, 0.799795,
		0.669582, -0.702361, 0.241554,
		0.690941, 0.469703, -0.549527,
		36.982349, 30.625813, 28.797987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048908, 30.321049, 29.633953>,  <36.498692, 30.297020, 29.182655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048908, 30.321049, 29.633953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.161999, 30.592497, 29.362795>,  <37.229855, 30.755365, 29.200100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.161999, 30.592497, 29.362795>,  <37.048908, 30.321049, 29.633953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161999, 30.592497, 29.362795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469158, 0.518587, 0.714813,
		0.836634, -0.520136, -0.171762,
		0.282726, 0.678621, -0.677894,
		37.246815, 30.796083, 29.159428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804214, 30.438448, 29.784658>,  <37.048908, 30.321049, 29.633953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804214, 30.438448, 29.784658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.660881, 30.750307, 29.579233>,  <37.574879, 30.937422, 29.455978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.660881, 30.750307, 29.579233>,  <37.804214, 30.438448, 29.784658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660881, 30.750307, 29.579233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368922, 0.623573, 0.689242,
		0.857607, 0.057518, -0.511079,
		-0.358338, 0.779647, -0.513561,
		37.553379, 30.984201, 29.425165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.442242, 28.776115, 22.557178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.057602, 28.840755, 22.645912>,  <39.826817, 28.879539, 22.699152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.057602, 28.840755, 22.645912>,  <40.442242, 28.776115, 22.557178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057602, 28.840755, 22.645912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269348, -0.710849, -0.649728,
		0.052695, -0.684529, 0.727079,
		-0.961600, 0.161600, 0.221835,
		39.769123, 28.889235, 22.712463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051453, 28.222710, 22.827953>,  <40.442242, 28.776115, 22.557178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051453, 28.222710, 22.827953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.765484, 28.432091, 22.642529>,  <39.593903, 28.557720, 22.531273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.765484, 28.432091, 22.642529>,  <40.051453, 28.222710, 22.827953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765484, 28.432091, 22.642529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261307, -0.814963, -0.517257,
		-0.648547, -0.248663, 0.719412,
		-0.714917, 0.523452, -0.463564,
		39.551010, 28.589127, 22.503460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400116, 27.773380, 22.798832>,  <40.051453, 28.222710, 22.827953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400116, 27.773380, 22.798832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.353397, 28.053555, 22.517195>,  <39.325367, 28.221659, 22.348211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.353397, 28.053555, 22.517195>,  <39.400116, 27.773380, 22.798832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353397, 28.053555, 22.517195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259719, -0.705818, -0.659065,
		-0.958595, 0.105890, 0.264354,
		-0.116798, 0.700435, -0.704095,
		39.318359, 28.263685, 22.305965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922169, 27.393269, 22.338194>,  <39.400116, 27.773380, 22.798832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922169, 27.393269, 22.338194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.992386, 27.741131, 22.153637>,  <39.034515, 27.949848, 22.042902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.992386, 27.741131, 22.153637>,  <38.922169, 27.393269, 22.338194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992386, 27.741131, 22.153637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336294, -0.387509, -0.858338,
		-0.925252, 0.305836, 0.224437,
		0.175539, 0.869656, -0.461394,
		39.045048, 28.002028, 22.015219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240528, 27.698732, 22.124474>,  <38.922169, 27.393269, 22.338194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240528, 27.698732, 22.124474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.539951, 27.826265, 21.891920>,  <38.719604, 27.902784, 21.752388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.539951, 27.826265, 21.891920>,  <38.240528, 27.698732, 22.124474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539951, 27.826265, 21.891920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382548, -0.508505, -0.771414,
		-0.541586, 0.799856, -0.258678,
		0.748559, 0.318831, -0.581383,
		38.764519, 27.921915, 21.717505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003792, 27.794188, 21.359125>,  <38.240528, 27.698732, 22.124474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003792, 27.794188, 21.359125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.399673, 27.768896, 21.307753>,  <38.637203, 27.753721, 21.276930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.399673, 27.768896, 21.307753>,  <38.003792, 27.794188, 21.359125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399673, 27.768896, 21.307753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142359, -0.528950, -0.836627,
		-0.015034, 0.846294, -0.532504,
		0.989701, -0.063229, -0.128430,
		38.696583, 27.749928, 21.269224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223763, 27.918036, 20.595203>,  <38.003792, 27.794188, 21.359125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223763, 27.918036, 20.595203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.501087, 27.699081, 20.782684>,  <38.667484, 27.567709, 20.895174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.501087, 27.699081, 20.782684>,  <38.223763, 27.918036, 20.595203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501087, 27.699081, 20.782684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197068, -0.481597, -0.853948,
		0.693166, 0.684422, -0.226026,
		0.693315, -0.547385, 0.468705,
		38.709080, 27.534866, 20.923296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834629, 27.977806, 20.179279>,  <38.223763, 27.918036, 20.595203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834629, 27.977806, 20.179279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.850857, 27.639956, 20.392805>,  <38.860592, 27.437244, 20.520920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.850857, 27.639956, 20.392805>,  <38.834629, 27.977806, 20.179279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850857, 27.639956, 20.392805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047842, -0.531998, -0.845393,
		0.998031, 0.059834, 0.018827,
		0.040567, -0.844629, 0.533813,
		38.863026, 27.386566, 20.552950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526810, 27.574663, 20.093702>,  <38.834629, 27.977806, 20.179279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526810, 27.574663, 20.093702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.262589, 27.310518, 20.236584>,  <39.104057, 27.152031, 20.322311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.262589, 27.310518, 20.236584>,  <39.526810, 27.574663, 20.093702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262589, 27.310518, 20.236584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109184, -0.555208, -0.824514,
		0.742801, -0.505631, 0.438844,
		-0.660549, -0.660365, 0.357202,
		39.064423, 27.112410, 20.343744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741238, 26.956423, 19.837780>,  <39.526810, 27.574663, 20.093702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741238, 26.956423, 19.837780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.385284, 26.855440, 19.989769>,  <39.171715, 26.794851, 20.080963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.385284, 26.855440, 19.989769>,  <39.741238, 26.956423, 19.837780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385284, 26.855440, 19.989769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080696, -0.732676, -0.675777,
		0.449003, -0.632022, 0.631621,
		-0.889879, -0.252457, 0.379975,
		39.118320, 26.779703, 20.103762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788010, 26.215059, 20.008810>,  <39.741238, 26.956423, 19.837780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788010, 26.215059, 20.008810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.397606, 26.293715, 19.971413>,  <39.163364, 26.340908, 19.948975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.397606, 26.293715, 19.971413>,  <39.788010, 26.215059, 20.008810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397606, 26.293715, 19.971413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075747, -0.709217, -0.700909,
		-0.204132, -0.677011, 0.707097,
		-0.976009, 0.196639, -0.093492,
		39.104805, 26.352707, 19.943365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401596, 25.607878, 20.125357>,  <39.788010, 26.215059, 20.008810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401596, 25.607878, 20.125357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.204456, 25.840904, 19.866833>,  <39.086174, 25.980721, 19.711718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.204456, 25.840904, 19.866833>,  <39.401596, 25.607878, 20.125357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204456, 25.840904, 19.866833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029348, -0.753495, -0.656798,
		-0.869620, -0.304735, 0.388456,
		-0.492848, 0.582565, -0.646311,
		39.056602, 26.015675, 19.672939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816521, 25.207769, 19.931820>,  <39.401596, 25.607878, 20.125357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816521, 25.207769, 19.931820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.888870, 25.484838, 19.652538>,  <38.932281, 25.651081, 19.484970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.888870, 25.484838, 19.652538>,  <38.816521, 25.207769, 19.931820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888870, 25.484838, 19.652538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105608, -0.719485, -0.686431,
		-0.977820, 0.050421, -0.203287,
		0.180873, 0.692675, -0.698202,
		38.943130, 25.692640, 19.443077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157333, 24.944494, 20.197451>,  <38.816521, 25.207769, 19.931820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157333, 24.944494, 20.197451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776596, 24.851175, 20.277012>,  <37.548153, 24.795185, 20.324749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776596, 24.851175, 20.277012>,  <38.157333, 24.944494, 20.197451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776596, 24.851175, 20.277012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049774, 0.522585, 0.851133,
		-0.302510, 0.820047, -0.485808,
		-0.951846, -0.233296, 0.198905,
		37.491043, 24.781187, 20.336683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744286, 25.543242, 20.499542>,  <38.157333, 24.944494, 20.197451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744286, 25.543242, 20.499542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.541065, 25.228872, 20.640518>,  <37.419132, 25.040251, 20.725103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.541065, 25.228872, 20.640518>,  <37.744286, 25.543242, 20.499542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541065, 25.228872, 20.640518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053533, 0.437201, 0.897769,
		-0.859663, 0.437244, -0.264192,
		-0.508049, -0.785922, 0.352439,
		37.388649, 24.993095, 20.746250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184254, 25.871876, 20.904688>,  <37.744286, 25.543242, 20.499542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184254, 25.871876, 20.904688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.243698, 25.498938, 21.036535>,  <37.279366, 25.275175, 21.115644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.243698, 25.498938, 21.036535>,  <37.184254, 25.871876, 20.904688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243698, 25.498938, 21.036535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027045, 0.329364, 0.943816,
		-0.988526, -0.149178, 0.023733,
		0.148613, -0.932344, 0.329619,
		37.288280, 25.219234, 21.135422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559193, 25.734261, 21.380772>,  <37.184254, 25.871876, 20.904688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559193, 25.734261, 21.380772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.880192, 25.514803, 21.474564>,  <37.072792, 25.383129, 21.530838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.880192, 25.514803, 21.474564>,  <36.559193, 25.734261, 21.380772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880192, 25.514803, 21.474564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039754, 0.342952, 0.938511,
		-0.595324, -0.762478, 0.253409,
		0.802501, -0.548644, 0.234479,
		37.120941, 25.350210, 21.544907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407494, 25.598261, 21.977137>,  <36.559193, 25.734261, 21.380772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407494, 25.598261, 21.977137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.787239, 25.474260, 21.956728>,  <37.015087, 25.399860, 21.944483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.787239, 25.474260, 21.956728>,  <36.407494, 25.598261, 21.977137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787239, 25.474260, 21.956728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148024, 0.298113, 0.942984,
		-0.277117, -0.902789, 0.328906,
		0.949366, -0.310003, -0.051022,
		37.072048, 25.381260, 21.941422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457607, 25.243576, 22.517509>,  <36.407494, 25.598261, 21.977137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457607, 25.243576, 22.517509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828514, 25.360985, 22.424541>,  <37.051060, 25.431429, 22.368761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828514, 25.360985, 22.424541>,  <36.457607, 25.243576, 22.517509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828514, 25.360985, 22.424541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078865, 0.453726, 0.887645,
		0.365996, -0.841415, 0.397577,
		0.927269, 0.293520, -0.232420,
		37.106693, 25.449041, 22.354815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867199, 25.176786, 23.175308>,  <36.457607, 25.243576, 22.517509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867199, 25.176786, 23.175308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.100277, 25.398687, 22.937746>,  <37.240124, 25.531828, 22.795210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.100277, 25.398687, 22.937746>,  <36.867199, 25.176786, 23.175308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100277, 25.398687, 22.937746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247959, 0.574583, 0.779981,
		0.773943, -0.601752, 0.197249,
		0.582691, 0.554751, -0.593904,
		37.275085, 25.565113, 22.759575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556290, 25.164343, 23.533480>,  <36.867199, 25.176786, 23.175308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556290, 25.164343, 23.533480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.541706, 25.501795, 23.319206>,  <37.532955, 25.704266, 23.190641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.541706, 25.501795, 23.319206>,  <37.556290, 25.164343, 23.533480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541706, 25.501795, 23.319206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138434, 0.535135, 0.833346,
		0.989700, -0.043771, -0.136299,
		-0.036462, 0.843632, -0.535683,
		37.530766, 25.754885, 23.158501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149895, 25.568722, 23.708033>,  <37.556290, 25.164343, 23.533480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149895, 25.568722, 23.708033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895382, 25.839983, 23.560923>,  <37.742676, 26.002739, 23.472656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895382, 25.839983, 23.560923>,  <38.149895, 25.568722, 23.708033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895382, 25.839983, 23.560923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186720, 0.597928, 0.779498,
		0.748521, 0.427308, -0.507074,
		-0.636280, 0.678152, -0.367775,
		37.704498, 26.043428, 23.450590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416622, 26.233665, 23.921312>,  <38.149895, 25.568722, 23.708033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416622, 26.233665, 23.921312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.038502, 26.307516, 23.813742>,  <37.811630, 26.351826, 23.749199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.038502, 26.307516, 23.813742>,  <38.416622, 26.233665, 23.921312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038502, 26.307516, 23.813742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038462, 0.755580, 0.653926,
		0.323926, 0.628500, -0.707149,
		-0.945300, 0.184625, -0.268926,
		37.754913, 26.362904, 23.733065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339703, 26.960434, 23.793432>,  <38.416622, 26.233665, 23.921312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339703, 26.960434, 23.793432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.968067, 26.833193, 23.868917>,  <37.745087, 26.756847, 23.914207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.968067, 26.833193, 23.868917>,  <38.339703, 26.960434, 23.793432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968067, 26.833193, 23.868917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092800, 0.694377, 0.713603,
		-0.358037, 0.645485, -0.674655,
		-0.929084, -0.318104, 0.188712,
		37.689342, 26.737762, 23.925531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981152, 27.559427, 23.956882>,  <38.339703, 26.960434, 23.793432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981152, 27.559427, 23.956882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.725700, 27.290133, 24.105963>,  <37.572430, 27.128555, 24.195412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.725700, 27.290133, 24.105963>,  <37.981152, 27.559427, 23.956882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725700, 27.290133, 24.105963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250403, 0.639786, 0.726617,
		-0.727633, 0.370713, -0.577167,
		-0.638630, -0.673235, 0.372702,
		37.534111, 27.088161, 24.217773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365189, 27.926060, 24.159460>,  <37.981152, 27.559427, 23.956882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365189, 27.926060, 24.159460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.332424, 27.578838, 24.355328>,  <37.312763, 27.370506, 24.472847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.332424, 27.578838, 24.355328>,  <37.365189, 27.926060, 24.159460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332424, 27.578838, 24.355328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322762, 0.487945, 0.811009,
		-0.942929, -0.091613, -0.320143,
		-0.081913, -0.868053, 0.489666,
		37.307850, 27.318422, 24.502228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742115, 27.767206, 24.259909>,  <37.365189, 27.926060, 24.159460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742115, 27.767206, 24.259909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.923340, 27.557762, 24.548510>,  <37.032074, 27.432095, 24.721670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.923340, 27.557762, 24.548510>,  <36.742115, 27.767206, 24.259909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923340, 27.557762, 24.548510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413043, 0.593928, 0.690395,
		-0.790019, -0.610804, 0.052813,
		0.453063, -0.523611, 0.721502,
		37.059258, 27.400679, 24.764959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237728, 27.630560, 24.769478>,  <36.742115, 27.767206, 24.259909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237728, 27.630560, 24.769478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.588459, 27.568552, 24.951527>,  <36.798897, 27.531347, 25.060757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.588459, 27.568552, 24.951527>,  <36.237728, 27.630560, 24.769478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588459, 27.568552, 24.951527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366561, 0.397015, 0.841435,
		-0.311129, -0.904626, 0.291291,
		0.876831, -0.155019, 0.455123,
		36.851509, 27.522047, 25.088064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619503, 27.188259, 24.712719>,  <36.237728, 27.630560, 24.769478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619503, 27.188259, 24.712719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.227680, 27.135754, 24.773693>,  <34.992588, 27.104250, 24.810278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.227680, 27.135754, 24.773693>,  <35.619503, 27.188259, 24.712719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227680, 27.135754, 24.773693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099540, -0.342215, -0.934334,
		0.174808, -0.930408, 0.322154,
		-0.979558, -0.131262, 0.152435,
		34.933811, 27.096375, 24.819424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438549, 26.499008, 24.477438>,  <35.619503, 27.188259, 24.712719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438549, 26.499008, 24.477438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.089130, 26.693258, 24.464279>,  <34.879478, 26.809809, 24.456385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.089130, 26.693258, 24.464279>,  <35.438549, 26.499008, 24.477438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089130, 26.693258, 24.464279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148282, -0.329887, -0.932302,
		-0.463605, -0.809530, 0.360181,
		-0.873546, 0.485628, -0.032898,
		34.827065, 26.838947, 24.454411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858608, 25.977423, 24.261501>,  <35.438549, 26.499008, 24.477438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858608, 25.977423, 24.261501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763920, 26.356009, 24.173708>,  <34.707108, 26.583160, 24.121033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763920, 26.356009, 24.173708>,  <34.858608, 25.977423, 24.261501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763920, 26.356009, 24.173708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211623, -0.270706, -0.939113,
		-0.948252, -0.175856, 0.264374,
		-0.236717, 0.946463, -0.219482,
		34.692905, 26.639948, 24.107862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271713, 25.895824, 23.873837>,  <34.858608, 25.977423, 24.261501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271713, 25.895824, 23.873837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.383919, 26.270969, 23.792131>,  <34.451244, 26.496056, 23.743109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.383919, 26.270969, 23.792131>,  <34.271713, 25.895824, 23.873837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383919, 26.270969, 23.792131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128201, -0.174292, -0.976313,
		-0.951249, 0.300059, 0.071343,
		0.280517, 0.937863, -0.204263,
		34.468075, 26.552328, 23.730852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734108, 26.251698, 23.499447>,  <34.271713, 25.895824, 23.873837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734108, 26.251698, 23.499447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.081867, 26.422964, 23.400806>,  <34.290524, 26.525724, 23.341623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.081867, 26.422964, 23.400806>,  <33.734108, 26.251698, 23.499447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081867, 26.422964, 23.400806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228886, -0.093313, -0.968970,
		-0.437893, 0.898868, 0.016875,
		0.869402, 0.428168, -0.246599,
		34.342690, 26.551414, 23.326826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569923, 26.500486, 22.910688>,  <33.734108, 26.251698, 23.499447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569923, 26.500486, 22.910688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.964367, 26.563665, 22.890097>,  <34.201031, 26.601572, 22.877741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.964367, 26.563665, 22.890097>,  <33.569923, 26.500486, 22.910688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964367, 26.563665, 22.890097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026263, -0.157780, -0.987125,
		-0.164037, 0.974760, -0.151440,
		0.986105, 0.157948, -0.051481,
		34.260197, 26.611050, 22.874653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652672, 26.993914, 22.368380>,  <33.569923, 26.500486, 22.910688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652672, 26.993914, 22.368380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.001949, 26.804293, 22.413651>,  <34.211517, 26.690521, 22.440813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.001949, 26.804293, 22.413651>,  <33.652672, 26.993914, 22.368380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001949, 26.804293, 22.413651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057061, -0.330056, -0.942235,
		0.484021, 0.816296, -0.315252,
		0.873194, -0.474050, 0.113175,
		34.263908, 26.662077, 22.447603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185436, 27.565125, 22.149792>,  <33.652672, 26.993914, 22.368380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185436, 27.565125, 22.149792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.828514, 27.505064, 21.979504>,  <32.614361, 27.469027, 21.877331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.828514, 27.505064, 21.979504>,  <33.185436, 27.565125, 22.149792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828514, 27.505064, 21.979504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436591, 0.526823, 0.729278,
		0.114777, 0.836608, -0.535644,
		-0.892309, -0.150153, -0.425722,
		32.560822, 27.460018, 21.851788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877048, 28.252522, 21.982914>,  <33.185436, 27.565125, 22.149792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877048, 28.252522, 21.982914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.589279, 27.981060, 22.042042>,  <32.416618, 27.818182, 22.077518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.589279, 27.981060, 22.042042>,  <32.877048, 28.252522, 21.982914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589279, 27.981060, 22.042042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288446, 0.485529, 0.825264,
		-0.631841, 0.551079, -0.545059,
		-0.719427, -0.678655, 0.147821,
		32.373451, 27.777464, 22.086388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496391, 28.600357, 22.393240>,  <32.877048, 28.252522, 21.982914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496391, 28.600357, 22.393240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.350948, 28.228436, 22.416046>,  <32.263683, 28.005283, 22.429729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.350948, 28.228436, 22.416046>,  <32.496391, 28.600357, 22.393240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350948, 28.228436, 22.416046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341750, 0.190083, 0.920367,
		-0.866599, 0.315171, -0.386877,
		-0.363612, -0.929804, 0.057016,
		32.241863, 27.949493, 22.433151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769325, 28.655231, 22.542372>,  <32.496391, 28.600357, 22.393240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769325, 28.655231, 22.542372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.855808, 28.282669, 22.659494>,  <31.907698, 28.059132, 22.729769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.855808, 28.282669, 22.659494>,  <31.769325, 28.655231, 22.542372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855808, 28.282669, 22.659494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357417, 0.203579, 0.911487,
		-0.908574, -0.301725, -0.288885,
		0.216208, -0.931406, 0.292808,
		31.920671, 28.003246, 22.747337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187231, 28.561594, 22.987663>,  <31.769325, 28.655231, 22.542372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187231, 28.561594, 22.987663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.439493, 28.259998, 23.061176>,  <31.590851, 28.079041, 23.105284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.439493, 28.259998, 23.061176>,  <31.187231, 28.561594, 22.987663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439493, 28.259998, 23.061176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191807, 0.078034, 0.978326,
		-0.751987, -0.652237, -0.095407,
		0.630655, -0.753987, 0.183784,
		31.628691, 28.033802, 23.116312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831797, 28.050579, 23.410002>,  <31.187231, 28.561594, 22.987663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831797, 28.050579, 23.410002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.226963, 28.033144, 23.469500>,  <31.464062, 28.022682, 23.505199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.226963, 28.033144, 23.469500>,  <30.831797, 28.050579, 23.410002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226963, 28.033144, 23.469500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134279, 0.238668, 0.961773,
		-0.077425, -0.970123, 0.229930,
		0.987914, -0.043590, 0.148745,
		31.523338, 28.020067, 23.514124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820688, 27.764404, 24.007513>,  <30.831797, 28.050579, 23.410002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820688, 27.764404, 24.007513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.184132, 27.927963, 23.973499>,  <31.402199, 28.026098, 23.953091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.184132, 27.927963, 23.973499>,  <30.820688, 27.764404, 24.007513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184132, 27.927963, 23.973499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122937, 0.456432, 0.881224,
		0.399143, -0.790235, 0.464987,
		0.908610, 0.408899, -0.085033,
		31.456715, 28.050632, 23.947990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.180408, 28.002029, 17.699289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.509289, 27.843451, 17.862665>,  <36.706615, 27.748304, 17.960690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.509289, 27.843451, 17.862665>,  <36.180408, 28.002029, 17.699289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509289, 27.843451, 17.862665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043718, 0.671460, 0.739750,
		-0.567520, -0.626077, 0.534741,
		0.822198, -0.396445, 0.408438,
		36.755947, 27.724518, 17.985197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993671, 27.838408, 18.389273>,  <36.180408, 28.002029, 17.699289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993671, 27.838408, 18.389273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.393417, 27.846853, 18.400753>,  <36.633266, 27.851921, 18.407640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.393417, 27.846853, 18.400753>,  <35.993671, 27.838408, 18.389273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393417, 27.846853, 18.400753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035565, 0.542769, 0.839128,
		0.002140, -0.839616, 0.543176,
		0.999365, 0.021114, 0.028699,
		36.693226, 27.853188, 18.409363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158653, 27.721296, 19.085302>,  <35.993671, 27.838408, 18.389273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158653, 27.721296, 19.085302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.481010, 27.903576, 18.934111>,  <36.674427, 28.012943, 18.843395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.481010, 27.903576, 18.934111>,  <36.158653, 27.721296, 19.085302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481010, 27.903576, 18.934111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022724, 0.614143, 0.788867,
		0.591615, -0.644337, 0.484583,
		0.805900, 0.455694, -0.377978,
		36.722778, 28.040285, 18.820717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746178, 27.663416, 19.650103>,  <36.158653, 27.721296, 19.085302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746178, 27.663416, 19.650103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.813118, 27.957867, 19.387772>,  <36.853283, 28.134537, 19.230373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.813118, 27.957867, 19.387772>,  <36.746178, 27.663416, 19.650103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813118, 27.957867, 19.387772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003030, 0.664820, 0.746997,
		0.985893, -0.126995, 0.109026,
		0.167348, 0.736129, -0.655827,
		36.863323, 28.178705, 19.191023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920345, 28.095636, 20.147781>,  <36.746178, 27.663416, 19.650103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920345, 28.095636, 20.147781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.867191, 28.320095, 19.820990>,  <36.835297, 28.454771, 19.624914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.867191, 28.320095, 19.820990>,  <36.920345, 28.095636, 20.147781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867191, 28.320095, 19.820990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203971, 0.822129, 0.531508,
		0.969916, -0.096009, -0.223708,
		-0.132887, 0.561148, -0.816979,
		36.827324, 28.488440, 19.575895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398392, 28.519609, 20.089619>,  <36.920345, 28.095636, 20.147781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398392, 28.519609, 20.089619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.089035, 28.694574, 19.906082>,  <36.903419, 28.799553, 19.795961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.089035, 28.694574, 19.906082>,  <37.398392, 28.519609, 20.089619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089035, 28.694574, 19.906082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087747, 0.790704, 0.605878,
		0.627825, 0.428320, -0.649906,
		-0.773392, 0.437413, -0.458840,
		36.857018, 28.825798, 19.768431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642723, 29.215311, 20.036879>,  <37.398392, 28.519609, 20.089619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642723, 29.215311, 20.036879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.252075, 29.225031, 19.951433>,  <37.017689, 29.230862, 19.900166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.252075, 29.225031, 19.951433>,  <37.642723, 29.215311, 20.036879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252075, 29.225031, 19.951433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116428, 0.775504, 0.620514,
		0.180734, 0.630875, -0.754541,
		-0.976617, 0.024298, -0.213611,
		36.959091, 29.232321, 19.887350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527050, 29.936077, 19.836027>,  <37.642723, 29.215311, 20.036879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527050, 29.936077, 19.836027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.186443, 29.767706, 19.961084>,  <36.982079, 29.666683, 20.036118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.186443, 29.767706, 19.961084>,  <37.527050, 29.936077, 19.836027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186443, 29.767706, 19.961084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120973, 0.737893, 0.663988,
		-0.510188, 0.527573, -0.679246,
		-0.851513, -0.420929, 0.312642,
		36.930988, 29.641428, 20.054876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099735, 30.604082, 20.012226>,  <37.527050, 29.936077, 19.836027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099735, 30.604082, 20.012226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.906586, 30.288857, 20.164955>,  <36.790695, 30.099722, 20.256594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.906586, 30.288857, 20.164955>,  <37.099735, 30.604082, 20.012226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906586, 30.288857, 20.164955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399096, 0.586158, 0.705083,
		-0.779460, 0.188080, -0.597552,
		-0.482872, -0.788064, 0.381824,
		36.761723, 30.052437, 20.279503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329910, 30.668549, 19.986921>,  <37.099735, 30.604082, 20.012226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329910, 30.668549, 19.986921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.435387, 30.432348, 20.292017>,  <36.498672, 30.290628, 20.475075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.435387, 30.432348, 20.292017>,  <36.329910, 30.668549, 19.986921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435387, 30.432348, 20.292017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415043, 0.644334, 0.642319,
		-0.870751, -0.485944, -0.075178,
		0.263691, -0.590502, 0.762741,
		36.514496, 30.255198, 20.520840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886990, 30.873348, 20.483799>,  <36.329910, 30.668549, 19.986921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886990, 30.873348, 20.483799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.138542, 30.655945, 20.706188>,  <36.289474, 30.525503, 20.839621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.138542, 30.655945, 20.706188>,  <35.886990, 30.873348, 20.483799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138542, 30.655945, 20.706188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196233, 0.580971, 0.789915,
		-0.752327, -0.605865, 0.258710,
		0.628885, -0.543507, 0.555971,
		36.327209, 30.492893, 20.872980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469116, 30.724630, 21.051962>,  <35.886990, 30.873348, 20.483799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469116, 30.724630, 21.051962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.842346, 30.683744, 21.189903>,  <36.066284, 30.659214, 21.272667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.842346, 30.683744, 21.189903>,  <35.469116, 30.724630, 21.051962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842346, 30.683744, 21.189903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234641, 0.553685, 0.798985,
		-0.272606, -0.826430, 0.492646,
		0.933075, -0.102213, 0.344852,
		36.122269, 30.653080, 21.293360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010170, 30.234409, 21.443523>,  <35.469116, 30.724630, 21.051962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010170, 30.234409, 21.443523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.624527, 30.340614, 21.443470>,  <34.393143, 30.404337, 21.443438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.624527, 30.340614, 21.443470>,  <35.010170, 30.234409, 21.443523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624527, 30.340614, 21.443470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213908, -0.777023, -0.592012,
		-0.157288, -0.570735, 0.805929,
		-0.964108, 0.265511, -0.000131,
		34.335293, 30.420267, 21.443430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575191, 29.579327, 21.597467>,  <35.010170, 30.234409, 21.443523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575191, 29.579327, 21.597467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.361748, 29.846018, 21.389338>,  <34.233681, 30.006033, 21.264460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.361748, 29.846018, 21.389338>,  <34.575191, 29.579327, 21.597467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361748, 29.846018, 21.389338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365414, -0.736602, -0.569113,
		-0.762719, -0.113545, 0.636684,
		-0.533603, 0.666727, -0.520330,
		34.201664, 30.046036, 21.233240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065117, 29.167856, 21.409956>,  <34.575191, 29.579327, 21.597467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065117, 29.167856, 21.409956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.024879, 29.490408, 21.176844>,  <34.000736, 29.683939, 21.036976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.024879, 29.490408, 21.176844>,  <34.065117, 29.167856, 21.409956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024879, 29.490408, 21.176844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222179, -0.589167, -0.776865,
		-0.969803, 0.051333, 0.238427,
		-0.100594, 0.806379, -0.582781,
		33.994701, 29.732321, 21.002010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406654, 29.202591, 21.020937>,  <34.065117, 29.167856, 21.409956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406654, 29.202591, 21.020937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.628864, 29.443230, 20.791338>,  <33.762192, 29.587612, 20.653580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.628864, 29.443230, 20.791338>,  <33.406654, 29.202591, 21.020937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628864, 29.443230, 20.791338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166754, -0.595685, -0.785717,
		-0.814606, 0.532203, -0.230600,
		0.555526, 0.601597, -0.573996,
		33.795521, 29.623709, 20.619139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006382, 29.473234, 20.552246>,  <33.406654, 29.202591, 21.020937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006382, 29.473234, 20.552246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.354721, 29.552217, 20.372187>,  <33.563725, 29.599607, 20.264151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.354721, 29.552217, 20.372187>,  <33.006382, 29.473234, 20.552246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354721, 29.552217, 20.372187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335673, -0.430101, -0.838056,
		-0.359091, 0.880922, -0.308270,
		0.870849, 0.197460, -0.450147,
		33.615974, 29.611456, 20.237143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935062, 29.996243, 19.943808>,  <33.006382, 29.473234, 20.552246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935062, 29.996243, 19.943808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.267941, 29.784031, 19.879320>,  <33.467667, 29.656704, 19.840628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.267941, 29.784031, 19.879320>,  <32.935062, 29.996243, 19.943808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267941, 29.784031, 19.879320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272196, -0.137566, -0.952358,
		0.483076, 0.836429, -0.258889,
		0.832194, -0.530530, -0.161218,
		33.517597, 29.624872, 19.830956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230888, 30.244793, 19.290306>,  <32.935062, 29.996243, 19.943808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230888, 30.244793, 19.290306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.397545, 29.887005, 19.355219>,  <33.497540, 29.672333, 19.394167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.397545, 29.887005, 19.355219>,  <33.230888, 30.244793, 19.290306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397545, 29.887005, 19.355219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158782, -0.247375, -0.955821,
		0.895097, 0.372467, -0.245092,
		0.416642, -0.894468, 0.162283,
		33.522537, 29.618664, 19.403904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694614, 30.026543, 18.716019>,  <33.230888, 30.244793, 19.290306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694614, 30.026543, 18.716019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.612370, 29.668224, 18.873636>,  <33.563023, 29.453232, 18.968206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.612370, 29.668224, 18.873636>,  <33.694614, 30.026543, 18.716019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612370, 29.668224, 18.873636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027760, -0.397144, -0.917336,
		0.978240, -0.199554, 0.056790,
		-0.205612, -0.895798, 0.394042,
		33.550686, 29.399485, 18.991848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206474, 29.626642, 18.424690>,  <33.694614, 30.026543, 18.716019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206474, 29.626642, 18.424690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.912865, 29.386282, 18.551266>,  <33.736698, 29.242065, 18.627211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.912865, 29.386282, 18.551266>,  <34.206474, 29.626642, 18.424690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912865, 29.386282, 18.551266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015550, -0.480697, -0.876749,
		0.678951, -0.638630, 0.362185,
		-0.734019, -0.600901, 0.316438,
		33.692657, 29.206011, 18.646196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350605, 29.039589, 18.142328>,  <34.206474, 29.626642, 18.424690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350605, 29.039589, 18.142328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.980503, 28.948189, 18.263445>,  <33.758442, 28.893349, 18.336115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.980503, 28.948189, 18.263445>,  <34.350605, 29.039589, 18.142328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980503, 28.948189, 18.263445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159964, -0.488746, -0.857635,
		0.343959, -0.841971, 0.415665,
		-0.925258, -0.228500, 0.302794,
		33.702927, 28.879639, 18.354282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316551, 28.365849, 18.250347>,  <34.350605, 29.039589, 18.142328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316551, 28.365849, 18.250347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.945786, 28.487555, 18.162483>,  <33.723324, 28.560577, 18.109764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.945786, 28.487555, 18.162483>,  <34.316551, 28.365849, 18.250347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945786, 28.487555, 18.162483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034944, -0.652776, -0.756745,
		-0.373638, -0.693764, 0.615700,
		-0.926916, 0.304264, -0.219659,
		33.667709, 28.578835, 18.096586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958752, 27.753868, 18.170326>,  <34.316551, 28.365849, 18.250347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958752, 27.753868, 18.170326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.705433, 28.010220, 17.996796>,  <33.553440, 28.164030, 17.892677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.705433, 28.010220, 17.996796>,  <33.958752, 27.753868, 18.170326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705433, 28.010220, 17.996796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084024, -0.614191, -0.784671,
		-0.769332, -0.460481, 0.442816,
		-0.633300, 0.640880, -0.433826,
		33.515442, 28.202484, 17.866648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312428, 27.303366, 17.955080>,  <33.958752, 27.753868, 18.170326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312428, 27.303366, 17.955080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.287487, 27.643398, 17.745903>,  <33.272522, 27.847418, 17.620396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.287487, 27.643398, 17.745903>,  <33.312428, 27.303366, 17.955080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287487, 27.643398, 17.745903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260173, -0.519693, -0.813775,
		-0.963547, 0.085316, 0.253572,
		-0.062352, 0.850083, -0.522945,
		33.268780, 27.898422, 17.589020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084801, 27.758442, 18.424393>,  <33.312428, 27.303366, 17.955080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084801, 27.758442, 18.424393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.010513, 27.379704, 18.529459>,  <32.965939, 27.152460, 18.592499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.010513, 27.379704, 18.529459>,  <33.084801, 27.758442, 18.424393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010513, 27.379704, 18.529459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392728, 0.316566, 0.863453,
		-0.900706, 0.057206, -0.430646,
		-0.185722, -0.946844, 0.262667,
		32.954796, 27.095650, 18.608259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474075, 27.721333, 18.766172>,  <33.084801, 27.758442, 18.424393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474075, 27.721333, 18.766172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.637711, 27.390079, 18.919453>,  <32.735893, 27.191328, 19.011421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.637711, 27.390079, 18.919453>,  <32.474075, 27.721333, 18.766172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637711, 27.390079, 18.919453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269094, 0.291785, 0.917851,
		-0.871913, -0.478602, -0.103479,
		0.409092, -0.828132, 0.383200,
		32.760437, 27.141640, 19.034412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962866, 27.524998, 19.273510>,  <32.474075, 27.721333, 18.766172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962866, 27.524998, 19.273510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.306396, 27.342381, 19.366449>,  <32.512516, 27.232809, 19.422213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.306396, 27.342381, 19.366449>,  <31.962866, 27.524998, 19.273510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306396, 27.342381, 19.366449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185273, 0.146037, 0.971775,
		-0.477590, -0.877633, 0.040835,
		0.858826, -0.456545, 0.232347,
		32.564045, 27.205418, 19.436153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736069, 27.295826, 19.883472>,  <31.962866, 27.524998, 19.273510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736069, 27.295826, 19.883472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.123032, 27.194944, 19.874386>,  <32.355209, 27.134415, 19.868933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.123032, 27.194944, 19.874386>,  <31.736069, 27.295826, 19.883472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123032, 27.194944, 19.874386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016871, -0.025322, 0.999537,
		-0.252664, -0.967342, -0.020242,
		0.967407, -0.252206, -0.022718,
		32.413254, 27.119284, 19.867571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800772, 26.625845, 20.171730>,  <31.736069, 27.295826, 19.883472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800772, 26.625845, 20.171730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.133179, 26.841604, 20.226086>,  <32.332623, 26.971060, 20.258699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.133179, 26.841604, 20.226086>,  <31.800772, 26.625845, 20.171730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133179, 26.841604, 20.226086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135426, -0.040750, 0.989949,
		0.539513, -0.841065, 0.039185,
		0.831015, 0.539397, 0.135887,
		32.382484, 27.003424, 20.266851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329708, 26.258930, 20.715311>,  <31.800772, 26.625845, 20.171730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329708, 26.258930, 20.715311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.412601, 26.649431, 20.690060>,  <32.462337, 26.883732, 20.674910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.412601, 26.649431, 20.690060>,  <32.329708, 26.258930, 20.715311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412601, 26.649431, 20.690060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051630, 0.075353, 0.995819,
		0.976928, -0.203109, 0.066020,
		0.207235, 0.976252, -0.063127,
		32.474773, 26.942307, 20.671122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883316, 26.440536, 21.276812>,  <32.329708, 26.258930, 20.715311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883316, 26.440536, 21.276812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.700687, 26.780619, 21.171978>,  <32.591110, 26.984669, 21.109077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.700687, 26.780619, 21.171978>,  <32.883316, 26.440536, 21.276812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700687, 26.780619, 21.171978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044286, 0.272496, 0.961137,
		0.888583, 0.450437, -0.086762,
		-0.456574, 0.850208, -0.262083,
		32.563717, 27.035681, 21.093353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260460, 26.909294, 21.667641>,  <32.883316, 26.440536, 21.276812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260460, 26.909294, 21.667641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.914875, 27.081142, 21.562574>,  <32.707523, 27.184252, 21.499535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.914875, 27.081142, 21.562574>,  <33.260460, 26.909294, 21.667641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914875, 27.081142, 21.562574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088649, 0.383710, 0.919189,
		0.495689, 0.817431, -0.293426,
		-0.863964, 0.429619, -0.262666,
		32.655685, 27.210028, 21.483774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062580, 27.008673, 21.600798>,  <33.260460, 26.909294, 21.667641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062580, 27.008673, 21.600798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.318520, 26.772480, 21.797539>,  <34.472084, 26.630764, 21.915585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.318520, 26.772480, 21.797539>,  <34.062580, 27.008673, 21.600798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318520, 26.772480, 21.797539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284472, -0.412570, -0.865368,
		0.713908, 0.693626, -0.096008,
		0.639852, -0.590482, 0.491854,
		34.510475, 26.595335, 21.945095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702236, 27.014616, 21.220057>,  <34.062580, 27.008673, 21.600798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702236, 27.014616, 21.220057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.695843, 26.678782, 21.437254>,  <34.692005, 26.477282, 21.567572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.695843, 26.678782, 21.437254>,  <34.702236, 27.014616, 21.220057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695843, 26.678782, 21.437254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248468, -0.529363, -0.811195,
		0.968508, 0.121947, 0.217074,
		-0.015988, -0.839585, 0.542993,
		34.691048, 26.426907, 21.600151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339901, 26.664625, 20.977533>,  <34.702236, 27.014616, 21.220057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339901, 26.664625, 20.977533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.117504, 26.378916, 21.147562>,  <34.984066, 26.207489, 21.249578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.117504, 26.378916, 21.147562>,  <35.339901, 26.664625, 20.977533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117504, 26.378916, 21.147562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384991, -0.674538, -0.629905,
		0.736652, -0.186573, 0.650026,
		-0.555991, -0.714275, 0.425071,
		34.950706, 26.164633, 21.275084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770893, 25.976572, 21.185812>,  <35.339901, 26.664625, 20.977533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770893, 25.976572, 21.185812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.390331, 25.858768, 21.149830>,  <35.161995, 25.788086, 21.128241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.390331, 25.858768, 21.149830>,  <35.770893, 25.976572, 21.185812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390331, 25.858768, 21.149830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280762, -0.709598, -0.646254,
		0.126496, -0.640105, 0.757802,
		-0.951405, -0.294510, -0.089956,
		35.104908, 25.770416, 21.122843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749409, 25.272459, 21.314430>,  <35.770893, 25.976572, 21.185812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749409, 25.272459, 21.314430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.433212, 25.368979, 21.089254>,  <35.243496, 25.426889, 20.954149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.433212, 25.368979, 21.089254>,  <35.749409, 25.272459, 21.314430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433212, 25.368979, 21.089254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195602, -0.771532, -0.605375,
		-0.580400, -0.588655, 0.562691,
		-0.790491, 0.241296, -0.562939,
		35.196064, 25.441368, 20.920372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507023, 24.624422, 21.188478>,  <35.749409, 25.272459, 21.314430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507023, 24.624422, 21.188478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.344990, 24.858946, 20.907866>,  <35.247768, 24.999660, 20.739498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.344990, 24.858946, 20.907866>,  <35.507023, 24.624422, 21.188478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344990, 24.858946, 20.907866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199808, -0.691987, -0.693708,
		-0.892180, -0.421180, 0.163162,
		-0.405082, 0.586311, -0.701532,
		35.223465, 25.034840, 20.697405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198566, 24.177450, 20.703243>,  <35.507023, 24.624422, 21.188478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198566, 24.177450, 20.703243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.212223, 24.509691, 20.480917>,  <35.220417, 24.709036, 20.347521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.212223, 24.509691, 20.480917>,  <35.198566, 24.177450, 20.703243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212223, 24.509691, 20.480917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218923, -0.548851, -0.806744,
		-0.975144, -0.094134, -0.200580,
		0.034146, 0.830603, -0.555817,
		35.222466, 24.758873, 20.314173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759140, 24.024076, 20.140810>,  <35.198566, 24.177450, 20.703243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759140, 24.024076, 20.140810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.010029, 24.317574, 20.036333>,  <35.160561, 24.493671, 19.973648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.010029, 24.317574, 20.036333>,  <34.759140, 24.024076, 20.140810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010029, 24.317574, 20.036333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193187, -0.471445, -0.860475,
		-0.754504, 0.489247, -0.437448,
		0.627218, 0.733741, -0.261191,
		35.198193, 24.537697, 19.957975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598057, 24.192303, 19.543840>,  <34.759140, 24.024076, 20.140810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598057, 24.192303, 19.543840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.966728, 24.347429, 19.539785>,  <35.187931, 24.440506, 19.537352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.966728, 24.347429, 19.539785>,  <34.598057, 24.192303, 19.543840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966728, 24.347429, 19.539785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214415, -0.531003, -0.819794,
		-0.323315, 0.753414, -0.572569,
		0.921680, 0.387819, -0.010138,
		35.243233, 24.463776, 19.536743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.288181, 32.576900, 33.710148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631027, 32.675396, 33.529167>,  <34.836735, 32.734493, 33.420578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631027, 32.675396, 33.529167>,  <34.288181, 32.576900, 33.710148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631027, 32.675396, 33.529167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328796, -0.414632, -0.848513,
		-0.396537, 0.876041, -0.274427,
		0.857118, 0.246236, -0.452456,
		34.888165, 32.749268, 33.393429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263039, 33.020626, 33.091537>,  <34.288181, 32.576900, 33.710148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263039, 33.020626, 33.091537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.600300, 32.825317, 33.001488>,  <34.802658, 32.708134, 32.947456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.600300, 32.825317, 33.001488>,  <34.263039, 33.020626, 33.091537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600300, 32.825317, 33.001488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360081, -0.201849, -0.910823,
		0.399286, 0.849028, -0.346007,
		0.843156, -0.488270, -0.225124,
		34.853245, 32.678837, 32.933952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288982, 32.986553, 32.339844>,  <34.263039, 33.020626, 33.091537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288982, 32.986553, 32.339844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605766, 32.755821, 32.419914>,  <34.795837, 32.617382, 32.467957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605766, 32.755821, 32.419914>,  <34.288982, 32.986553, 32.339844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605766, 32.755821, 32.419914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111646, -0.459130, -0.881325,
		0.600283, 0.675623, -0.428012,
		0.791957, -0.576831, 0.200178,
		34.843353, 32.582771, 32.479969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754242, 32.941811, 31.795490>,  <34.288982, 32.986553, 32.339844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754242, 32.941811, 31.795490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806324, 32.598808, 31.994583>,  <34.837574, 32.393009, 32.114037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806324, 32.598808, 31.994583>,  <34.754242, 32.941811, 31.795490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806324, 32.598808, 31.994583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102801, -0.510974, -0.853427,
		0.986143, 0.059956, -0.154685,
		0.130208, -0.857503, 0.497730,
		34.845387, 32.341557, 32.143902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128002, 32.558975, 31.325571>,  <34.754242, 32.941811, 31.795490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128002, 32.558975, 31.325571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.006374, 32.277443, 31.582371>,  <34.933399, 32.108524, 31.736450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.006374, 32.277443, 31.582371>,  <35.128002, 32.558975, 31.325571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006374, 32.277443, 31.582371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155703, -0.628128, -0.762372,
		0.939840, -0.331774, 0.081404,
		-0.304067, -0.703833, 0.641998,
		34.915154, 32.066292, 31.774971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543964, 31.955750, 31.221264>,  <35.128002, 32.558975, 31.325571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543964, 31.955750, 31.221264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.193279, 31.835381, 31.371368>,  <34.982868, 31.763159, 31.461432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.193279, 31.835381, 31.371368>,  <35.543964, 31.955750, 31.221264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193279, 31.835381, 31.371368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081217, -0.676336, -0.732102,
		0.474107, -0.672321, 0.568513,
		-0.876713, -0.300922, 0.375259,
		34.930264, 31.745104, 31.483946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479919, 31.274624, 31.005957>,  <35.543964, 31.955750, 31.221264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479919, 31.274624, 31.005957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.107143, 31.346851, 31.131741>,  <34.883480, 31.390188, 31.207211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.107143, 31.346851, 31.131741>,  <35.479919, 31.274624, 31.005957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107143, 31.346851, 31.131741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352101, -0.657940, -0.665688,
		0.086694, -0.731102, 0.676738,
		-0.931938, 0.180569, 0.314462,
		34.827560, 31.401022, 31.226080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157978, 30.560347, 31.224096>,  <35.479919, 31.274624, 31.005957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157978, 30.560347, 31.224096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873329, 30.828888, 31.141260>,  <34.702541, 30.990013, 31.091558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873329, 30.828888, 31.141260>,  <35.157978, 30.560347, 31.224096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873329, 30.828888, 31.141260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378831, -0.614902, -0.691652,
		-0.591680, -0.413742, 0.691905,
		-0.711619, 0.671352, -0.207088,
		34.659843, 31.030294, 31.079134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642712, 30.179298, 31.020432>,  <35.157978, 30.560347, 31.224096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642712, 30.179298, 31.020432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.517288, 30.533108, 30.882271>,  <34.442032, 30.745394, 30.799376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.517288, 30.533108, 30.882271>,  <34.642712, 30.179298, 31.020432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517288, 30.533108, 30.882271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379868, -0.450215, -0.808088,
		-0.870276, -0.122179, 0.477171,
		-0.313561, 0.884522, -0.345400,
		34.423222, 30.798464, 30.778650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919910, 30.103111, 30.803495>,  <34.642712, 30.179298, 31.020432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919910, 30.103111, 30.803495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067184, 30.418198, 30.605932>,  <34.155548, 30.607248, 30.487394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067184, 30.418198, 30.605932>,  <33.919910, 30.103111, 30.803495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067184, 30.418198, 30.605932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359615, -0.369224, -0.856943,
		-0.857389, 0.493132, 0.147330,
		0.368188, 0.787715, -0.493906,
		34.177639, 30.654512, 30.457760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356659, 30.306252, 30.585297>,  <33.919910, 30.103111, 30.803495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356659, 30.306252, 30.585297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642056, 30.483322, 30.368052>,  <33.813293, 30.589565, 30.237705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642056, 30.483322, 30.368052>,  <33.356659, 30.306252, 30.585297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642056, 30.483322, 30.368052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324626, -0.478072, -0.816128,
		-0.620927, 0.758607, -0.197395,
		0.713489, 0.442676, -0.543112,
		33.856102, 30.616125, 30.205118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110554, 30.576132, 29.907627>,  <33.356659, 30.306252, 30.585297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110554, 30.576132, 29.907627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497536, 30.486088, 29.861404>,  <33.729725, 30.432060, 29.833672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497536, 30.486088, 29.861404>,  <33.110554, 30.576132, 29.907627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497536, 30.486088, 29.861404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216268, -0.498538, -0.839457,
		0.131364, 0.837128, -0.530999,
		0.967456, -0.225112, -0.115555,
		33.787773, 30.418554, 29.826738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802776, 31.011740, 29.520893>,  <33.110554, 30.576132, 29.907627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802776, 31.011740, 29.520893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.420502, 30.918770, 29.448627>,  <32.191135, 30.862988, 29.405268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.420502, 30.918770, 29.448627>,  <32.802776, 31.011740, 29.520893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420502, 30.918770, 29.448627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293401, 0.802101, 0.520145,
		0.024015, 0.550103, -0.834752,
		-0.955688, -0.232425, -0.180663,
		32.133797, 30.849043, 29.394428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438145, 31.684381, 29.316036>,  <32.802776, 31.011740, 29.520893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438145, 31.684381, 29.316036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181694, 31.425726, 29.481356>,  <32.027824, 31.270533, 29.580547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181694, 31.425726, 29.481356>,  <32.438145, 31.684381, 29.316036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181694, 31.425726, 29.481356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426592, 0.747961, 0.508501,
		-0.637950, 0.149701, -0.755387,
		-0.641123, -0.646640, 0.413301,
		31.989357, 31.231733, 29.605347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790905, 31.923357, 29.322779>,  <32.438145, 31.684381, 29.316036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790905, 31.923357, 29.322779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.764465, 31.667974, 29.629505>,  <31.748602, 31.514746, 29.813541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.764465, 31.667974, 29.629505>,  <31.790905, 31.923357, 29.322779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764465, 31.667974, 29.629505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532252, 0.672594, 0.514126,
		-0.844002, -0.374155, -0.384278,
		-0.066100, -0.638456, 0.766815,
		31.744635, 31.476439, 29.859550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170248, 32.224060, 29.763334>,  <31.790905, 31.923357, 29.322779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170248, 32.224060, 29.763334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361769, 31.966648, 30.002207>,  <31.476681, 31.812201, 30.145531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361769, 31.966648, 30.002207>,  <31.170248, 32.224060, 29.763334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361769, 31.966648, 30.002207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167332, 0.600854, 0.781649,
		-0.861830, -0.474180, 0.180006,
		0.478800, -0.643528, 0.597180,
		31.505409, 31.773590, 30.181360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776218, 32.244087, 30.324762>,  <31.170248, 32.224060, 29.763334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776218, 32.244087, 30.324762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.128178, 32.096031, 30.443941>,  <31.339354, 32.007198, 30.515450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.128178, 32.096031, 30.443941>,  <30.776218, 32.244087, 30.324762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128178, 32.096031, 30.443941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070241, 0.518832, 0.851985,
		-0.469941, -0.770589, 0.430520,
		0.879899, -0.370143, 0.297948,
		31.392147, 31.984989, 30.533325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688496, 32.042202, 31.156576>,  <30.776218, 32.244087, 30.324762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688496, 32.042202, 31.156576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.061625, 32.125179, 31.038721>,  <31.285501, 32.174965, 30.968008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.061625, 32.125179, 31.038721>,  <30.688496, 32.042202, 31.156576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061625, 32.125179, 31.038721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092564, 0.652285, 0.752301,
		0.348243, -0.729036, 0.589265,
		0.932823, 0.207439, -0.294636,
		31.341471, 32.187412, 30.950331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083082, 32.040688, 31.777824>,  <30.688496, 32.042202, 31.156576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083082, 32.040688, 31.777824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.312616, 32.245159, 31.521885>,  <31.450336, 32.367844, 31.368320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.312616, 32.245159, 31.521885>,  <31.083082, 32.040688, 31.777824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312616, 32.245159, 31.521885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235173, 0.645531, 0.726625,
		0.784479, -0.567439, 0.250213,
		0.573835, 0.511179, -0.639851,
		31.484768, 32.398514, 31.329929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679886, 32.245300, 32.182194>,  <31.083082, 32.040688, 31.777824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679886, 32.245300, 32.182194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684082, 32.498337, 31.872427>,  <31.686600, 32.650158, 31.686567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684082, 32.498337, 31.872427>,  <31.679886, 32.245300, 32.182194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684082, 32.498337, 31.872427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228961, 0.752366, 0.617675,
		0.973379, -0.183792, -0.136944,
		0.010492, 0.632587, -0.774418,
		31.687229, 32.688114, 31.640102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184719, 32.690453, 32.364803>,  <31.679886, 32.245300, 32.182194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184719, 32.690453, 32.364803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058548, 32.923714, 32.065353>,  <31.982845, 33.063671, 31.885683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058548, 32.923714, 32.065353>,  <32.184719, 32.690453, 32.364803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058548, 32.923714, 32.065353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320406, 0.808015, 0.494420,
		0.893223, -0.083911, -0.441715,
		-0.315425, 0.583156, -0.748623,
		31.963921, 33.098660, 31.840767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806595, 33.024437, 32.134411>,  <32.184719, 32.690453, 32.364803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806595, 33.024437, 32.134411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480480, 33.235924, 32.039959>,  <32.284809, 33.362816, 31.983290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480480, 33.235924, 32.039959>,  <32.806595, 33.024437, 32.134411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480480, 33.235924, 32.039959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405206, 0.812234, 0.419623,
		0.413652, 0.246436, -0.876448,
		-0.815291, 0.528721, -0.236125,
		32.235893, 33.394539, 31.969122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111305, 33.649773, 31.938765>,  <32.806595, 33.024437, 32.134411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111305, 33.649773, 31.938765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.724998, 33.734585, 31.998539>,  <32.493214, 33.785473, 32.034405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.724998, 33.734585, 31.998539>,  <33.111305, 33.649773, 31.938765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724998, 33.734585, 31.998539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255927, 0.872822, 0.415551,
		-0.042320, 0.439571, -0.897210,
		-0.965769, 0.212034, 0.149436,
		32.435268, 33.798195, 32.043369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047462, 34.376476, 31.663385>,  <33.111305, 33.649773, 31.938765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047462, 34.376476, 31.663385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725384, 34.286259, 31.882763>,  <32.532135, 34.232128, 32.014389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725384, 34.286259, 31.882763>,  <33.047462, 34.376476, 31.663385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725384, 34.286259, 31.882763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089874, 0.960579, 0.263078,
		-0.586158, 0.162539, -0.793725,
		-0.805196, -0.225541, 0.548443,
		32.483826, 34.218597, 32.047295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689159, 34.948677, 31.593262>,  <33.047462, 34.376476, 31.663385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689159, 34.948677, 31.593262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.533978, 34.769482, 31.915453>,  <32.440868, 34.661964, 32.108768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.533978, 34.769482, 31.915453>,  <32.689159, 34.948677, 31.593262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533978, 34.769482, 31.915453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091157, 0.888290, 0.450145,
		-0.917158, 0.101213, -0.385457,
		-0.387958, -0.447991, 0.805477,
		32.417591, 34.635086, 32.157097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119823, 35.402866, 31.815819>,  <32.689159, 34.948677, 31.593262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119823, 35.402866, 31.815819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259544, 35.173470, 32.112221>,  <32.343376, 35.035831, 32.290062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259544, 35.173470, 32.112221>,  <32.119823, 35.402866, 31.815819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259544, 35.173470, 32.112221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034361, 0.798128, 0.601508,
		-0.936380, -0.184646, 0.298494,
		0.349302, -0.573496, 0.741006,
		32.364334, 35.001419, 32.334522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006001, 35.315186, 31.103117>,  <32.119823, 35.402866, 31.815819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006001, 35.315186, 31.103117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224670, 35.616032, 30.955894>,  <32.355873, 35.796539, 30.867561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224670, 35.616032, 30.955894>,  <32.006001, 35.315186, 31.103117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224670, 35.616032, 30.955894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261817, -0.263977, -0.928315,
		-0.795361, 0.603849, 0.052607,
		0.546675, 0.752119, -0.368055,
		32.388672, 35.841667, 30.845478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644560, 35.569225, 30.517460>,  <32.006001, 35.315186, 31.103117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644560, 35.569225, 30.517460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024979, 35.654274, 30.427750>,  <32.253231, 35.705303, 30.373924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024979, 35.654274, 30.427750>,  <31.644560, 35.569225, 30.517460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024979, 35.654274, 30.427750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187300, -0.180679, -0.965543,
		-0.245818, 0.960285, -0.132010,
		0.951048, 0.212623, -0.224275,
		32.310291, 35.718060, 30.360468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470463, 35.607834, 29.866400>,  <31.644560, 35.569225, 30.517460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470463, 35.607834, 29.866400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.869333, 35.604511, 29.896255>,  <32.108654, 35.602516, 29.914169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.869333, 35.604511, 29.896255>,  <31.470463, 35.607834, 29.866400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869333, 35.604511, 29.896255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065638, -0.386481, -0.919959,
		0.036492, 0.922260, -0.384844,
		0.997176, -0.008311, 0.074638,
		32.168488, 35.602016, 29.918648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661440, 35.946339, 29.286324>,  <31.470463, 35.607834, 29.866400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661440, 35.946339, 29.286324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.985241, 35.739780, 29.398069>,  <32.179520, 35.615845, 29.465117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.985241, 35.739780, 29.398069>,  <31.661440, 35.946339, 29.286324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985241, 35.739780, 29.398069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119603, -0.320804, -0.939564,
		0.574805, 0.793992, -0.197930,
		0.809502, -0.516393, 0.279364,
		32.228092, 35.584862, 29.481878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154686, 36.263439, 28.779509>,  <31.661440, 35.946339, 29.286324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154686, 36.263439, 28.779509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.312485, 35.922161, 28.915995>,  <32.407166, 35.717396, 28.997887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.312485, 35.922161, 28.915995>,  <32.154686, 36.263439, 28.779509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312485, 35.922161, 28.915995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150600, -0.306278, -0.939954,
		0.906471, 0.422199, 0.007664,
		0.394501, -0.853195, 0.341215,
		32.430836, 35.666203, 29.018360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907108, 36.059792, 28.484411>,  <32.154686, 36.263439, 28.779509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907108, 36.059792, 28.484411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715828, 35.725914, 28.593674>,  <32.601059, 35.525589, 28.659231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715828, 35.725914, 28.593674>,  <32.907108, 36.059792, 28.484411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715828, 35.725914, 28.593674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220152, -0.415014, -0.882777,
		0.850212, -0.362005, 0.382218,
		-0.478196, -0.834695, 0.273154,
		32.572369, 35.475506, 28.675619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379917, 35.613819, 28.214298>,  <32.907108, 36.059792, 28.484411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379917, 35.613819, 28.214298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035374, 35.428585, 28.297825>,  <32.828648, 35.317444, 28.347940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035374, 35.428585, 28.297825>,  <33.379917, 35.613819, 28.214298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035374, 35.428585, 28.297825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087860, -0.540680, -0.836628,
		0.500334, -0.702294, 0.506408,
		-0.861363, -0.463086, 0.208817,
		32.776966, 35.289658, 28.360470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555965, 35.000378, 27.990606>,  <33.379917, 35.613819, 28.214298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555965, 35.000378, 27.990606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156765, 34.985542, 28.011084>,  <32.917244, 34.976639, 28.023371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156765, 34.985542, 28.011084>,  <33.555965, 35.000378, 27.990606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156765, 34.985542, 28.011084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020579, -0.575071, -0.817845,
		0.059775, -0.817263, 0.573157,
		-0.998000, -0.037092, 0.051193,
		32.857365, 34.974415, 28.026442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426003, 34.357513, 27.938646>,  <33.555965, 35.000378, 27.990606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426003, 34.357513, 27.938646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.100750, 34.566826, 27.836670>,  <32.905598, 34.692413, 27.775484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.100750, 34.566826, 27.836670>,  <33.426003, 34.357513, 27.938646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100750, 34.566826, 27.836670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012641, -0.422006, -0.906505,
		-0.581945, -0.740329, 0.336531,
		-0.813130, 0.523282, -0.254943,
		32.856812, 34.723808, 27.760187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874447, 33.897266, 27.837065>,  <33.426003, 34.357513, 27.938646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874447, 33.897266, 27.837065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775875, 34.221939, 27.625235>,  <32.716732, 34.416744, 27.498137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775875, 34.221939, 27.625235>,  <32.874447, 33.897266, 27.837065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775875, 34.221939, 27.625235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144022, -0.571027, -0.808199,
		-0.958401, -0.122892, 0.257616,
		-0.246427, 0.811681, -0.529574,
		32.701946, 34.465443, 27.466362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461472, 33.608479, 27.310276>,  <32.874447, 33.897266, 27.837065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461472, 33.608479, 27.310276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476067, 33.984074, 27.173473>,  <32.484825, 34.209431, 27.091393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476067, 33.984074, 27.173473>,  <32.461472, 33.608479, 27.310276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476067, 33.984074, 27.173473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199817, -0.328466, -0.923138,
		-0.979154, 0.102025, 0.175640,
		0.036491, 0.938989, -0.342005,
		32.487015, 34.265770, 27.070871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024426, 33.696915, 26.806408>,  <32.461472, 33.608479, 27.310276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024426, 33.696915, 26.806408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.276035, 33.994648, 26.716690>,  <32.427002, 34.173286, 26.662859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.276035, 33.994648, 26.716690>,  <32.024426, 33.696915, 26.806408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276035, 33.994648, 26.716690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028662, -0.266121, -0.963513,
		-0.776860, 0.612498, -0.146062,
		0.629020, 0.744329, -0.224294,
		32.464741, 34.217945, 26.649403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705622, 34.099960, 26.298985>,  <32.024426, 33.696915, 26.806408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705622, 34.099960, 26.298985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092224, 34.199303, 26.273106>,  <32.324184, 34.258907, 26.257578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092224, 34.199303, 26.273106>,  <31.705622, 34.099960, 26.298985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092224, 34.199303, 26.273106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016789, -0.190358, -0.981571,
		-0.256095, 0.949780, -0.179812,
		0.966506, 0.248357, -0.064696,
		32.382175, 34.273811, 26.253696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780888, 34.439426, 25.650711>,  <31.705622, 34.099960, 26.298985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780888, 34.439426, 25.650711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.165314, 34.347446, 25.711994>,  <32.395969, 34.292259, 25.748764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.165314, 34.347446, 25.711994>,  <31.780888, 34.439426, 25.650711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165314, 34.347446, 25.711994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151603, -0.024743, -0.988132,
		0.231010, 0.972888, 0.011081,
		0.961067, -0.229948, 0.153209,
		32.453632, 34.278461, 25.757957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136436, 34.782131, 25.186752>,  <31.780888, 34.439426, 25.650711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136436, 34.782131, 25.186752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.375774, 34.479641, 25.292667>,  <32.519379, 34.298149, 25.356216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.375774, 34.479641, 25.292667>,  <32.136436, 34.782131, 25.186752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375774, 34.479641, 25.292667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240180, -0.145991, -0.959688,
		0.764394, 0.637819, 0.094277,
		0.598344, -0.756223, 0.264786,
		32.555279, 34.252773, 25.372103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751961, 34.877316, 24.772179>,  <32.136436, 34.782131, 25.186752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751961, 34.877316, 24.772179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.764465, 34.494789, 24.888439>,  <32.771969, 34.265274, 24.958195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.764465, 34.494789, 24.888439>,  <32.751961, 34.877316, 24.772179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764465, 34.494789, 24.888439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223441, -0.276747, -0.934604,
		0.974216, 0.094165, 0.205028,
		0.031266, -0.956318, 0.290652,
		32.773846, 34.207893, 24.975636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338425, 34.634205, 24.484077>,  <32.751961, 34.877316, 24.772179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338425, 34.634205, 24.484077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.119385, 34.309128, 24.563742>,  <32.987961, 34.114082, 24.611540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.119385, 34.309128, 24.563742>,  <33.338425, 34.634205, 24.484077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119385, 34.309128, 24.563742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376052, -0.451660, -0.809066,
		0.747475, -0.368151, 0.552944,
		-0.547601, -0.812692, 0.199161,
		32.955105, 34.065319, 24.623489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766426, 34.097595, 24.508797>,  <33.338425, 34.634205, 24.484077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766426, 34.097595, 24.508797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.421238, 33.927261, 24.400028>,  <33.214123, 33.825062, 24.334766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.421238, 33.927261, 24.400028>,  <33.766426, 34.097595, 24.508797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421238, 33.927261, 24.400028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483306, -0.538869, -0.689953,
		0.147275, -0.726833, 0.670838,
		-0.862975, -0.425833, -0.271921,
		33.162346, 33.799511, 24.318451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001732, 33.460583, 24.291174>,  <33.766426, 34.097595, 24.508797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001732, 33.460583, 24.291174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630959, 33.446442, 24.141756>,  <33.408493, 33.437958, 24.052105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630959, 33.446442, 24.141756>,  <34.001732, 33.460583, 24.291174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630959, 33.446442, 24.141756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305851, -0.647896, -0.697629,
		-0.217353, -0.760908, 0.611373,
		-0.926937, -0.035358, -0.373546,
		33.352879, 33.435833, 24.029692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936741, 32.803864, 24.259811>,  <34.001732, 33.460583, 24.291174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936741, 32.803864, 24.259811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661545, 32.952637, 24.010544>,  <33.496429, 33.041901, 23.860983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661545, 32.952637, 24.010544>,  <33.936741, 32.803864, 24.259811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661545, 32.952637, 24.010544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361654, -0.568759, -0.738729,
		-0.629192, -0.733606, 0.256786,
		-0.687985, 0.371934, -0.623170,
		33.455151, 33.064217, 23.823593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718468, 32.176777, 24.058699>,  <33.936741, 32.803864, 24.259811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718468, 32.176777, 24.058699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619701, 32.465096, 23.799629>,  <33.560440, 32.638088, 23.644188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619701, 32.465096, 23.799629>,  <33.718468, 32.176777, 24.058699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619701, 32.465096, 23.799629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141203, -0.634473, -0.759938,
		-0.958694, -0.279093, 0.054881,
		-0.246914, 0.720799, -0.647675,
		33.545628, 32.681335, 23.605328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216000, 31.916660, 23.649548>,  <33.718468, 32.176777, 24.058699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216000, 31.916660, 23.649548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344193, 32.202507, 23.400833>,  <33.421108, 32.374016, 23.251604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344193, 32.202507, 23.400833>,  <33.216000, 31.916660, 23.649548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344193, 32.202507, 23.400833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205058, -0.693181, -0.690978,
		-0.924792, 0.093947, -0.368692,
		0.320486, 0.714614, -0.621784,
		33.440338, 32.416893, 23.214298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877563, 31.845415, 22.982670>,  <33.216000, 31.916660, 23.649548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877563, 31.845415, 22.982670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202579, 32.064423, 22.902662>,  <33.397587, 32.195827, 22.854658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202579, 32.064423, 22.902662>,  <32.877563, 31.845415, 22.982670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202579, 32.064423, 22.902662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287254, -0.674684, -0.679917,
		-0.507215, 0.495002, -0.705483,
		0.812538, 0.547517, -0.200019,
		33.446342, 32.228676, 22.842657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956989, 31.739773, 22.327898>,  <32.877563, 31.845415, 22.982670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956989, 31.739773, 22.327898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314957, 31.896534, 22.413260>,  <33.529736, 31.990591, 22.464476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314957, 31.896534, 22.413260>,  <32.956989, 31.739773, 22.327898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314957, 31.896534, 22.413260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441984, -0.712586, -0.544859,
		-0.061465, 0.581923, -0.810918,
		0.894914, 0.391903, 0.213401,
		33.583431, 32.014107, 22.477280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217453, 31.860458, 21.735449>,  <32.956989, 31.739773, 22.327898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217453, 31.860458, 21.735449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.526123, 31.835276, 21.988605>,  <33.711327, 31.820166, 22.140499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.526123, 31.835276, 21.988605>,  <33.217453, 31.860458, 21.735449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526123, 31.835276, 21.988605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525002, -0.498641, -0.689731,
		0.359010, 0.864519, -0.351737,
		0.771677, -0.062957, 0.632891,
		33.757626, 31.816389, 22.178473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839798, 31.949846, 21.271830>,  <33.217453, 31.860458, 21.735449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839798, 31.949846, 21.271830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.906418, 31.753962, 21.614161>,  <33.946388, 31.636431, 21.819559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.906418, 31.753962, 21.614161>,  <33.839798, 31.949846, 21.271830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906418, 31.753962, 21.614161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382686, -0.767814, -0.513821,
		0.908742, 0.413090, 0.059528,
		0.166548, -0.489712, 0.855829,
		33.956383, 31.607048, 21.870909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563660, 31.728464, 21.228731>,  <33.839798, 31.949846, 21.271830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563660, 31.728464, 21.228731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.390732, 31.497704, 21.505941>,  <34.286976, 31.359247, 21.672268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.390732, 31.497704, 21.505941>,  <34.563660, 31.728464, 21.228731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390732, 31.497704, 21.505941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211191, -0.811964, -0.544163,
		0.876639, -0.088893, 0.472866,
		-0.432322, -0.576900, 0.693026,
		34.261036, 31.324635, 21.713850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994637, 31.109241, 21.414042>,  <34.563660, 31.728464, 21.228731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994637, 31.109241, 21.414042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632412, 30.985922, 21.530605>,  <34.415077, 30.911930, 21.600544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632412, 30.985922, 21.530605>,  <34.994637, 31.109241, 21.414042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632412, 30.985922, 21.530605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058349, -0.770907, -0.634270,
		0.420193, -0.557364, 0.716089,
		-0.905557, -0.308299, 0.291408,
		34.360744, 30.893433, 21.618029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523739, 30.944605, 21.894836>,  <34.994637, 31.109241, 21.414042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523739, 30.944605, 21.894836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.918201, 30.928839, 21.830414>,  <36.154881, 30.919378, 21.791761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.918201, 30.928839, 21.830414>,  <35.523739, 30.944605, 21.894836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918201, 30.928839, 21.830414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151674, 0.606881, 0.780186,
		0.066987, -0.793815, 0.604459,
		0.986158, -0.039418, -0.161054,
		36.214050, 30.917013, 21.782097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893784, 30.745104, 22.544785>,  <35.523739, 30.944605, 21.894836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893784, 30.745104, 22.544785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177067, 30.919031, 22.322298>,  <36.347034, 31.023388, 22.188807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177067, 30.919031, 22.322298>,  <35.893784, 30.745104, 22.544785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177067, 30.919031, 22.322298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354056, 0.462871, 0.812647,
		0.610811, -0.772453, 0.173857,
		0.708205, 0.434819, -0.556218,
		36.389530, 31.049477, 22.155434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496071, 30.658508, 22.897457>,  <35.893784, 30.745104, 22.544785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496071, 30.658508, 22.897457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.583214, 30.960012, 22.649464>,  <36.635498, 31.140915, 22.500668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.583214, 30.960012, 22.649464>,  <36.496071, 30.658508, 22.897457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583214, 30.960012, 22.649464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422645, 0.499730, 0.756070,
		0.879722, -0.426746, -0.209706,
		0.217854, 0.753762, -0.619985,
		36.648571, 31.186142, 22.463469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143272, 30.775154, 22.990845>,  <36.496071, 30.658508, 22.897457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143272, 30.775154, 22.990845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.983986, 31.113247, 22.848291>,  <36.888416, 31.316103, 22.762758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.983986, 31.113247, 22.848291>,  <37.143272, 30.775154, 22.990845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983986, 31.113247, 22.848291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409008, 0.511367, 0.755789,
		0.821060, 0.155200, -0.549339,
		-0.398212, 0.845232, -0.356385,
		36.864521, 31.366817, 22.741377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745014, 31.229807, 22.994514>,  <37.143272, 30.775154, 22.990845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745014, 31.229807, 22.994514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.401649, 31.434990, 22.995022>,  <37.195629, 31.558100, 22.995325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.401649, 31.434990, 22.995022>,  <37.745014, 31.229807, 22.994514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401649, 31.434990, 22.995022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376520, 0.628412, 0.680684,
		0.348365, 0.584785, -0.732576,
		-0.858414, 0.512957, 0.001267,
		37.144127, 31.588877, 22.995401>
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
