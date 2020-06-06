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
	<24.353785, 34.695503, 35.133804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.516182, 35.052124, 35.053493>,  <24.613621, 35.266094, 35.005306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.516182, 35.052124, 35.053493>,  <24.353785, 34.695503, 35.133804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.516182, 35.052124, 35.053493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623684, 0.430887, 0.652192,
		0.667973, -0.139564, 0.730982,
		0.405993, 0.891548, -0.200777,
		24.637980, 35.319588, 34.993259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.761072, 34.918797, 35.709229>,  <24.353785, 34.695503, 35.133804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.761072, 34.918797, 35.709229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543442, 35.180885, 35.499596>,  <24.412865, 35.338139, 35.373817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543442, 35.180885, 35.499596>,  <24.761072, 34.918797, 35.709229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543442, 35.180885, 35.499596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620346, 0.106430, 0.777074,
		0.564937, 0.747898, 0.348561,
		-0.544074, 0.655226, -0.524082,
		24.380219, 35.377453, 35.342373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.620056, 35.536015, 36.084476>,  <24.761072, 34.918797, 35.709229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.620056, 35.536015, 36.084476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327311, 35.491810, 35.815502>,  <24.151663, 35.465286, 35.654118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327311, 35.491810, 35.815502>,  <24.620056, 35.536015, 36.084476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.327311, 35.491810, 35.815502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681327, 0.099808, 0.725142,
		-0.013022, 0.988851, -0.148339,
		-0.731863, -0.110510, -0.672431,
		24.107752, 35.458656, 35.613773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.915585, 35.952160, 36.607876>,  <24.620056, 35.536015, 36.084476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.915585, 35.952160, 36.607876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.042877, 35.573578, 36.586166>,  <25.119253, 35.346428, 36.573139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.042877, 35.573578, 36.586166>,  <24.915585, 35.952160, 36.607876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.042877, 35.573578, 36.586166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878211, 0.315879, -0.359119,
		0.357036, 0.066616, 0.931712,
		0.318231, -0.946458, -0.054277,
		25.138346, 35.289642, 36.569881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.566574, 36.152538, 36.442726>,  <24.915585, 35.952160, 36.607876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.566574, 36.152538, 36.442726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684151, 36.497204, 36.277256>,  <25.754696, 36.704002, 36.177975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684151, 36.497204, 36.277256>,  <25.566574, 36.152538, 36.442726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684151, 36.497204, 36.277256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688532, 0.491072, 0.533640,
		0.662965, 0.127971, 0.737632,
		0.293940, 0.861668, -0.413675,
		25.772333, 36.755703, 36.153152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126219, 36.300976, 35.803986>,  <25.566574, 36.152538, 36.442726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.126219, 36.300976, 35.803986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.753988, 36.447269, 35.810558>,  <24.530651, 36.535046, 35.814503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.753988, 36.447269, 35.810558>,  <25.126219, 36.300976, 35.803986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.753988, 36.447269, 35.810558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073544, -0.230722, 0.970236,
		0.358641, 0.901668, 0.241601,
		-0.930574, 0.365735, 0.016434,
		24.474815, 36.556992, 35.815487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834391, 36.536530, 35.585194>,  <25.126219, 36.300976, 35.803986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834391, 36.536530, 35.585194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678045, 36.603065, 35.947311>,  <25.584238, 36.642986, 36.164581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678045, 36.603065, 35.947311>,  <25.834391, 36.536530, 35.585194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678045, 36.603065, 35.947311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299078, 0.907218, -0.295818,
		-0.870505, -0.386378, -0.304851,
		-0.390864, 0.166337, 0.905294,
		25.560785, 36.652966, 36.218899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222441, 36.924957, 35.463749>,  <25.834391, 36.536530, 35.585194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222441, 36.924957, 35.463749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332792, 37.008408, 35.839062>,  <25.399004, 37.058475, 36.064247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332792, 37.008408, 35.839062>,  <25.222441, 36.924957, 35.463749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.332792, 37.008408, 35.839062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176931, 0.970503, -0.163764,
		-0.944768, -0.120832, 0.304653,
		0.275879, 0.208621, 0.938279,
		25.415556, 37.070995, 36.120544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.788218, 37.378613, 35.891109>,  <25.222441, 36.924957, 35.463749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.788218, 37.378613, 35.891109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168659, 37.463596, 35.980789>,  <25.396925, 37.514587, 36.034595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168659, 37.463596, 35.980789>,  <24.788218, 37.378613, 35.891109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.168659, 37.463596, 35.980789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146036, 0.948914, -0.279707,
		-0.272168, 0.233290, 0.933542,
		0.951103, 0.212459, 0.224195,
		25.453991, 37.527332, 36.048046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.809658, 38.108582, 36.188038>,  <24.788218, 37.378613, 35.891109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.809658, 38.108582, 36.188038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173887, 38.024685, 36.045567>,  <25.392426, 37.974346, 35.960083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173887, 38.024685, 36.045567>,  <24.809658, 38.108582, 36.188038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.173887, 38.024685, 36.045567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054284, 0.914918, -0.399974,
		0.409764, 0.344871, 0.844487,
		0.910575, -0.209737, -0.356179,
		25.447060, 37.961765, 35.938713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259769, 38.717579, 36.315563>,  <24.809658, 38.108582, 36.188038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.259769, 38.717579, 36.315563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413012, 38.509258, 36.010406>,  <25.504957, 38.384266, 35.827312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413012, 38.509258, 36.010406>,  <25.259769, 38.717579, 36.315563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.413012, 38.509258, 36.010406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103769, 0.844938, -0.524701,
		0.917857, 0.121852, 0.377744,
		0.383106, -0.520799, -0.762888,
		25.527943, 38.353020, 35.781540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790678, 39.094448, 36.023396>,  <25.259769, 38.717579, 36.315563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790678, 39.094448, 36.023396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734060, 38.833244, 35.725796>,  <25.700090, 38.676521, 35.547234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734060, 38.833244, 35.725796>,  <25.790678, 39.094448, 36.023396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734060, 38.833244, 35.725796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084446, 0.740865, -0.666324,
		0.986323, -0.157143, -0.049722,
		-0.141545, -0.653013, -0.744003,
		25.691597, 38.637341, 35.502594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469620, 39.052422, 35.596626>,  <25.790678, 39.094448, 36.023396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469620, 39.052422, 35.596626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132372, 38.978886, 35.394497>,  <25.930023, 38.934765, 35.273220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132372, 38.978886, 35.394497>,  <26.469620, 39.052422, 35.596626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132372, 38.978886, 35.394497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284777, 0.644472, -0.709618,
		0.456122, -0.742198, -0.491014,
		-0.843122, -0.183842, -0.505319,
		25.879435, 38.923733, 35.242901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685812, 39.282547, 34.892982>,  <26.469620, 39.052422, 35.596626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685812, 39.282547, 34.892982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304651, 39.187828, 34.817188>,  <26.075954, 39.130997, 34.771709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304651, 39.187828, 34.817188>,  <26.685812, 39.282547, 34.892982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304651, 39.187828, 34.817188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111811, 0.306497, -0.945282,
		0.281909, -0.921950, -0.265587,
		-0.952904, -0.236788, -0.189488,
		26.018782, 39.116791, 34.760342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781610, 38.931664, 34.305050>,  <26.685812, 39.282547, 34.892982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781610, 38.931664, 34.305050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387671, 38.996056, 34.330837>,  <26.151306, 39.034691, 34.346310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387671, 38.996056, 34.330837>,  <26.781610, 38.931664, 34.305050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387671, 38.996056, 34.330837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020030, 0.263693, -0.964399,
		-0.172248, -0.951079, -0.256474,
		-0.984850, 0.160978, 0.064471,
		26.092215, 39.044350, 34.350178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565781, 38.519386, 33.801659>,  <26.781610, 38.931664, 34.305050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.565781, 38.519386, 33.801659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298132, 38.807312, 33.875561>,  <26.137543, 38.980068, 33.919903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298132, 38.807312, 33.875561>,  <26.565781, 38.519386, 33.801659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298132, 38.807312, 33.875561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010730, 0.257947, -0.966099,
		-0.743074, -0.644457, -0.180322,
		-0.669123, 0.719818, 0.184759,
		26.097395, 39.023258, 33.930988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.927307, 38.334938, 33.399494>,  <26.565781, 38.519386, 33.801659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.927307, 38.334938, 33.399494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952143, 38.732311, 33.437943>,  <25.967045, 38.970734, 33.461010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952143, 38.732311, 33.437943>,  <25.927307, 38.334938, 33.399494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952143, 38.732311, 33.437943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034337, 0.098372, -0.994557,
		-0.997480, 0.058451, 0.040219,
		0.062089, 0.993431, 0.096117,
		25.970770, 39.030342, 33.466778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604040, 38.636452, 32.749672>,  <25.927307, 38.334938, 33.399494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604040, 38.636452, 32.749672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779036, 38.971645, 32.880142>,  <25.884033, 39.172760, 32.958424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779036, 38.971645, 32.880142>,  <25.604040, 38.636452, 32.749672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779036, 38.971645, 32.880142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160951, 0.283897, -0.945250,
		-0.884703, 0.466034, -0.010672,
		0.437489, 0.837983, 0.326173,
		25.910282, 39.223042, 32.977993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.214514, 39.258663, 32.416256>,  <25.604040, 38.636452, 32.749672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.214514, 39.258663, 32.416256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586382, 39.360508, 32.522755>,  <25.809502, 39.421616, 32.586655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586382, 39.360508, 32.522755>,  <25.214514, 39.258663, 32.416256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586382, 39.360508, 32.522755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206663, 0.237854, -0.949061,
		-0.304968, 0.937337, 0.168507,
		0.929669, 0.254609, 0.266250,
		25.865282, 39.436890, 32.602631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295525, 39.899971, 32.110596>,  <25.214514, 39.258663, 32.416256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295525, 39.899971, 32.110596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656641, 39.758541, 32.208538>,  <25.873310, 39.673683, 32.267303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656641, 39.758541, 32.208538>,  <25.295525, 39.899971, 32.110596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656641, 39.758541, 32.208538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329166, 0.201624, -0.922495,
		0.276803, 0.913418, 0.298409,
		0.902790, -0.353575, 0.244856,
		25.927479, 39.652470, 32.281994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769606, 40.443207, 31.931501>,  <25.295525, 39.899971, 32.110596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769606, 40.443207, 31.931501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977068, 40.102642, 31.962723>,  <26.101545, 39.898304, 31.981455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977068, 40.102642, 31.962723>,  <25.769606, 40.443207, 31.931501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977068, 40.102642, 31.962723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246344, 0.061394, -0.967236,
		0.818725, 0.520890, 0.241583,
		0.518656, -0.851413, 0.078053,
		26.132666, 39.847218, 31.986139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462387, 40.624577, 31.552885>,  <25.769606, 40.443207, 31.931501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462387, 40.624577, 31.552885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433676, 40.225948, 31.569387>,  <26.416449, 39.986771, 31.579288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433676, 40.225948, 31.569387>,  <26.462387, 40.624577, 31.552885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433676, 40.225948, 31.569387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302563, -0.061169, -0.951164,
		0.950423, -0.055790, 0.305915,
		-0.071778, -0.996567, 0.041256,
		26.412142, 39.926979, 31.581764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948729, 40.531956, 31.115688>,  <26.462387, 40.624577, 31.552885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948729, 40.531956, 31.115688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728842, 40.198071, 31.128765>,  <26.596910, 39.997738, 31.136610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728842, 40.198071, 31.128765>,  <26.948729, 40.531956, 31.115688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728842, 40.198071, 31.128765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259467, -0.207814, -0.943128,
		0.794034, -0.509970, 0.330819,
		-0.549715, -0.834712, 0.032691,
		26.563927, 39.947659, 31.138573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383345, 40.022984, 30.832531>,  <26.948729, 40.531956, 31.115688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383345, 40.022984, 30.832531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003023, 39.903988, 30.797947>,  <26.774830, 39.832592, 30.777197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003023, 39.903988, 30.797947>,  <27.383345, 40.022984, 30.832531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003023, 39.903988, 30.797947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105521, -0.048587, -0.993229,
		0.291270, -0.953489, 0.077588,
		-0.950804, -0.297485, -0.086461,
		26.717783, 39.814743, 30.772009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418205, 39.542953, 30.270565>,  <27.383345, 40.022984, 30.832531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418205, 39.542953, 30.270565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024908, 39.615051, 30.281479>,  <26.788929, 39.658310, 30.288027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024908, 39.615051, 30.281479>,  <27.418205, 39.542953, 30.270565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024908, 39.615051, 30.281479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050165, -0.123629, -0.991060,
		-0.175269, -0.975820, 0.130600,
		-0.983242, 0.180254, 0.027283,
		26.729935, 39.669125, 30.289663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038130, 39.030006, 29.857170>,  <27.418205, 39.542953, 30.270565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038130, 39.030006, 29.857170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819941, 39.364414, 29.880919>,  <26.689026, 39.565060, 29.895166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819941, 39.364414, 29.880919>,  <27.038130, 39.030006, 29.857170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819941, 39.364414, 29.880919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053474, 0.035977, -0.997921,
		-0.836419, -0.547516, 0.025080,
		-0.545475, 0.836022, 0.059370,
		26.656298, 39.615219, 29.898729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318369, 38.901379, 29.635611>,  <27.038130, 39.030006, 29.857170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318369, 38.901379, 29.635611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476114, 39.266949, 29.597206>,  <26.570761, 39.486290, 29.574163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476114, 39.266949, 29.597206>,  <26.318369, 38.901379, 29.635611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476114, 39.266949, 29.597206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040325, -0.087165, -0.995377,
		-0.918069, 0.396412, 0.002480,
		0.394364, 0.913925, -0.096009,
		26.594423, 39.541126, 29.568403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872398, 39.269772, 29.151962>,  <26.318369, 38.901379, 29.635611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872398, 39.269772, 29.151962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240952, 39.425007, 29.143555>,  <26.462084, 39.518147, 29.138510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240952, 39.425007, 29.143555>,  <25.872398, 39.269772, 29.151962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240952, 39.425007, 29.143555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007964, -0.072920, -0.997306,
		-0.388574, 0.918733, -0.070278,
		0.921383, 0.388087, -0.021018,
		26.517366, 39.541431, 29.137249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186375, 39.125553, 28.557877>,  <25.872398, 39.269772, 29.151962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186375, 39.125553, 28.557877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897837, 38.948189, 28.770685>,  <25.724714, 38.841770, 28.898371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897837, 38.948189, 28.770685>,  <26.186375, 39.125553, 28.557877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897837, 38.948189, 28.770685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589957, -0.008984, -0.807384,
		0.362782, -0.896273, -0.255113,
		-0.721345, -0.443411, 0.532022,
		25.681433, 38.815166, 28.930292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934072, 38.458862, 28.213711>,  <26.186375, 39.125553, 28.557877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934072, 38.458862, 28.213711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654902, 38.660267, 28.417425>,  <25.487400, 38.781109, 28.539654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654902, 38.660267, 28.417425>,  <25.934072, 38.458862, 28.213711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.654902, 38.660267, 28.417425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592460, -0.006406, -0.805575,
		-0.402357, -0.863962, 0.302784,
		-0.697926, 0.503515, 0.509285,
		25.445524, 38.811321, 28.570211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285067, 39.017666, 27.744223>,  <25.934072, 38.458862, 28.213711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285067, 39.017666, 27.744223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555204, 38.724857, 27.780121>,  <26.717287, 38.549171, 27.801661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555204, 38.724857, 27.780121>,  <26.285067, 39.017666, 27.744223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555204, 38.724857, 27.780121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595514, -0.613052, -0.519163,
		0.435058, 0.297168, -0.849950,
		0.675343, -0.732023, 0.089746,
		26.757807, 38.505249, 27.807045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460299, 38.689804, 27.027081>,  <26.285067, 39.017666, 27.744223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460299, 38.689804, 27.027081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509995, 38.453285, 27.345812>,  <26.539812, 38.311375, 27.537050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509995, 38.453285, 27.345812>,  <26.460299, 38.689804, 27.027081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509995, 38.453285, 27.345812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390397, -0.767413, -0.508594,
		0.912225, -0.247891, -0.326183,
		0.124242, -0.591293, 0.796829,
		26.547268, 38.275898, 27.584860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669031, 38.108269, 26.859489>,  <26.460299, 38.689804, 27.027081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669031, 38.108269, 26.859489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466837, 38.026024, 27.194679>,  <26.345520, 37.976677, 27.395794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466837, 38.026024, 27.194679>,  <26.669031, 38.108269, 26.859489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466837, 38.026024, 27.194679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459902, -0.757525, -0.463298,
		0.730050, -0.619579, 0.288356,
		-0.505487, -0.205615, 0.837977,
		26.315191, 37.964340, 27.446072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648272, 37.408577, 26.748964>,  <26.669031, 38.108269, 26.859489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648272, 37.408577, 26.748964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362236, 37.584000, 26.966703>,  <26.190615, 37.689255, 27.097347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362236, 37.584000, 26.966703>,  <26.648272, 37.408577, 26.748964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362236, 37.584000, 26.966703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677398, -0.626983, -0.384739,
		0.172565, -0.643863, 0.745427,
		-0.715089, 0.438559, 0.544347,
		26.147709, 37.715569, 27.130007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303938, 36.882412, 27.123367>,  <26.648272, 37.408577, 26.748964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303938, 36.882412, 27.123367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068007, 37.194977, 27.041885>,  <25.926447, 37.382515, 26.992996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068007, 37.194977, 27.041885>,  <26.303938, 36.882412, 27.123367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068007, 37.194977, 27.041885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676241, -0.615834, -0.404285,
		-0.441363, -0.100704, 0.891660,
		-0.589828, 0.781413, -0.203706,
		25.891058, 37.429401, 26.980774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385521, 36.459595, 27.765959>,  <26.303938, 36.882412, 27.123367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385521, 36.459595, 27.765959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771881, 36.486519, 27.665951>,  <27.003696, 36.502670, 27.605946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771881, 36.486519, 27.665951>,  <26.385521, 36.459595, 27.765959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771881, 36.486519, 27.665951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258564, -0.200178, 0.945026,
		0.013558, -0.977445, -0.210755,
		0.965899, 0.067307, -0.250018,
		27.061651, 36.506710, 27.590944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713388, 35.837429, 28.088383>,  <26.385521, 36.459595, 27.765959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713388, 35.837429, 28.088383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975336, 36.135448, 28.037714>,  <27.132505, 36.314262, 28.007313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975336, 36.135448, 28.037714>,  <26.713388, 35.837429, 28.088383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975336, 36.135448, 28.037714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334065, -0.135032, 0.932827,
		0.677898, -0.653197, -0.337324,
		0.654870, 0.745050, -0.126673,
		27.171797, 36.358963, 27.999712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357002, 35.637249, 28.378197>,  <26.713388, 35.837429, 28.088383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357002, 35.637249, 28.378197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384853, 36.036270, 28.380587>,  <27.401564, 36.275684, 28.382021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384853, 36.036270, 28.380587>,  <27.357002, 35.637249, 28.378197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384853, 36.036270, 28.380587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276950, -0.025084, 0.960557,
		0.958358, -0.065228, -0.278019,
		0.069629, 0.997555, 0.005974,
		27.405743, 36.335537, 28.382380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859371, 35.723797, 28.772549>,  <27.357002, 35.637249, 28.378197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859371, 35.723797, 28.772549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661266, 36.070366, 28.797932>,  <27.542404, 36.278309, 28.813162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661266, 36.070366, 28.797932>,  <27.859371, 35.723797, 28.772549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661266, 36.070366, 28.797932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074237, -0.030567, 0.996772,
		0.865566, 0.498374, -0.049182,
		-0.495262, 0.866423, 0.063456,
		27.512688, 36.330292, 28.816969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145918, 35.980858, 29.391415>,  <27.859371, 35.723797, 28.772549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145918, 35.980858, 29.391415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826109, 36.210636, 29.321243>,  <27.634224, 36.348503, 29.279140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826109, 36.210636, 29.321243>,  <28.145918, 35.980858, 29.391415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826109, 36.210636, 29.321243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089868, 0.174374, 0.980570,
		0.593876, 0.799753, -0.087792,
		-0.799522, 0.574447, -0.175429,
		27.586252, 36.382969, 29.268614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160250, 36.527351, 29.863766>,  <28.145918, 35.980858, 29.391415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160250, 36.527351, 29.863766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774651, 36.525352, 29.757420>,  <27.543291, 36.524155, 29.693613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774651, 36.525352, 29.757420>,  <28.160250, 36.527351, 29.863766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774651, 36.525352, 29.757420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265892, 0.030050, 0.963534,
		0.003173, 0.999536, -0.030297,
		-0.963997, -0.004998, -0.265864,
		27.485451, 36.523853, 29.677660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828922, 37.133739, 30.116701>,  <28.160250, 36.527351, 29.863766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828922, 37.133739, 30.116701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579641, 36.821518, 30.097279>,  <27.430073, 36.634186, 30.085625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579641, 36.821518, 30.097279>,  <27.828922, 37.133739, 30.116701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579641, 36.821518, 30.097279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090455, 0.010269, 0.995848,
		-0.776811, 0.625008, -0.077004,
		-0.623204, -0.780551, -0.048558,
		27.392681, 36.587353, 30.082710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335527, 37.278179, 30.621651>,  <27.828922, 37.133739, 30.116701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335527, 37.278179, 30.621651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251925, 36.892193, 30.558218>,  <27.201763, 36.660599, 30.520159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251925, 36.892193, 30.558218>,  <27.335527, 37.278179, 30.621651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251925, 36.892193, 30.558218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220020, -0.111606, 0.969090,
		-0.952841, 0.237440, -0.188986,
		-0.209008, -0.964970, -0.158584,
		27.189222, 36.602703, 30.510643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766447, 37.126305, 31.018799>,  <27.335527, 37.278179, 30.621651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766447, 37.126305, 31.018799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883343, 36.748646, 30.957899>,  <26.953480, 36.522049, 30.921360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883343, 36.748646, 30.957899>,  <26.766447, 37.126305, 31.018799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883343, 36.748646, 30.957899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140922, -0.199974, 0.969614,
		-0.945906, -0.261903, -0.191492,
		0.292238, -0.944149, -0.152249,
		26.971014, 36.465401, 30.912224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246586, 36.697823, 31.335810>,  <26.766447, 37.126305, 31.018799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246586, 36.697823, 31.335810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.587208, 36.489235, 31.314190>,  <26.791580, 36.364082, 31.301218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.587208, 36.489235, 31.314190>,  <26.246586, 36.697823, 31.335810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.587208, 36.489235, 31.314190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087031, -0.242276, 0.966296,
		-0.516992, -0.818150, -0.251695,
		0.851554, -0.521472, -0.054050,
		26.842674, 36.332794, 31.297976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081703, 35.982300, 31.649929>,  <26.246586, 36.697823, 31.335810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081703, 35.982300, 31.649929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476463, 36.045895, 31.660889>,  <26.713320, 36.084053, 31.667463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476463, 36.045895, 31.660889>,  <26.081703, 35.982300, 31.649929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476463, 36.045895, 31.660889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026141, -0.009993, 0.999608,
		0.159203, -0.987229, -0.005706,
		0.986899, 0.158992, 0.027398,
		26.772533, 36.093590, 31.669107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252071, 35.536232, 32.130165>,  <26.081703, 35.982300, 31.649929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252071, 35.536232, 32.130165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566046, 35.782829, 32.105453>,  <26.754431, 35.930786, 32.090626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566046, 35.782829, 32.105453>,  <26.252071, 35.536232, 32.130165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566046, 35.782829, 32.105453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191790, -0.146950, 0.970372,
		0.589146, -0.773529, -0.233582,
		0.784936, 0.616489, -0.061780,
		26.801527, 35.967777, 32.086918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855455, 35.164867, 32.465740>,  <26.252071, 35.536232, 32.130165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855455, 35.164867, 32.465740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888704, 35.563110, 32.482979>,  <26.908653, 35.802055, 32.493324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888704, 35.563110, 32.482979>,  <26.855455, 35.164867, 32.465740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888704, 35.563110, 32.482979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156359, -0.055743, 0.986126,
		0.984196, -0.075232, -0.160306,
		0.083125, 0.995607, 0.043099,
		26.913641, 35.861794, 32.495907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448996, 35.216820, 32.794277>,  <26.855455, 35.164867, 32.465740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448996, 35.216820, 32.794277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278234, 35.577175, 32.825668>,  <27.175777, 35.793388, 32.844501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278234, 35.577175, 32.825668>,  <27.448996, 35.216820, 32.794277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278234, 35.577175, 32.825668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248029, 0.033197, 0.968184,
		0.869617, 0.432785, -0.237618,
		-0.426904, 0.900886, 0.078475,
		27.150164, 35.847443, 32.849209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002581, 35.663975, 32.998066>,  <27.448996, 35.216820, 32.794277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002581, 35.663975, 32.998066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676786, 35.874500, 33.095722>,  <27.481310, 36.000816, 33.154316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676786, 35.874500, 33.095722>,  <28.002581, 35.663975, 32.998066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676786, 35.874500, 33.095722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391236, 0.187514, 0.900984,
		0.428421, 0.829357, -0.358640,
		-0.814488, 0.526313, 0.244140,
		27.432440, 36.032394, 33.168964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274181, 36.293385, 33.408150>,  <28.002581, 35.663975, 32.998066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274181, 36.293385, 33.408150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888149, 36.265942, 33.509274>,  <27.656530, 36.249477, 33.569950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888149, 36.265942, 33.509274>,  <28.274181, 36.293385, 33.408150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888149, 36.265942, 33.509274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237556, 0.177524, 0.955015,
		-0.110400, 0.981722, -0.155027,
		-0.965080, -0.068607, 0.252812,
		27.598625, 36.245361, 33.585117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204781, 36.852329, 33.898834>,  <28.274181, 36.293385, 33.408150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204781, 36.852329, 33.898834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913429, 36.581821, 33.942883>,  <27.738619, 36.419518, 33.969311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913429, 36.581821, 33.942883>,  <28.204781, 36.852329, 33.898834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913429, 36.581821, 33.942883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090315, 0.064549, 0.993819,
		-0.679196, 0.733822, 0.014061,
		-0.728379, -0.676268, 0.110117,
		27.694916, 36.378941, 33.975918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860668, 37.219345, 34.461636>,  <28.204781, 36.852329, 33.898834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860668, 37.219345, 34.461636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740717, 36.837830, 34.454029>,  <27.668745, 36.608921, 34.449463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740717, 36.837830, 34.454029>,  <27.860668, 37.219345, 34.461636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740717, 36.837830, 34.454029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066964, 0.001159, 0.997755,
		-0.951624, 0.300481, -0.064217,
		-0.299880, -0.953787, -0.019019,
		27.650753, 36.551693, 34.448322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212389, 37.232697, 34.829773>,  <27.860668, 37.219345, 34.461636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212389, 37.232697, 34.829773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354425, 36.861622, 34.875916>,  <27.439648, 36.638977, 34.903603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354425, 36.861622, 34.875916>,  <27.212389, 37.232697, 34.829773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354425, 36.861622, 34.875916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001573, 0.122804, 0.992430,
		-0.934831, -0.352583, 0.042147,
		0.355089, -0.927688, 0.115355,
		27.460953, 36.583317, 34.910522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.847834, 36.920319, 35.425503>,  <27.212389, 37.232697, 34.829773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.847834, 36.920319, 35.425503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179594, 36.702152, 35.377148>,  <27.378651, 36.571251, 35.348133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179594, 36.702152, 35.377148>,  <26.847834, 36.920319, 35.425503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179594, 36.702152, 35.377148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053114, -0.138429, 0.988947,
		-0.556125, -0.826654, -0.085844,
		0.829400, -0.545419, -0.120891,
		27.428413, 36.538528, 35.340881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585875, 36.173321, 35.679302>,  <26.847834, 36.920319, 35.425503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585875, 36.173321, 35.679302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981812, 36.227184, 35.697559>,  <27.219374, 36.259502, 35.708515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981812, 36.227184, 35.697559>,  <26.585875, 36.173321, 35.679302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981812, 36.227184, 35.697559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037168, -0.064811, 0.997205,
		0.137239, -0.988770, -0.059148,
		0.989840, 0.134657, 0.045645,
		27.278763, 36.267582, 35.711254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695639, 35.801964, 36.191994>,  <26.585875, 36.173321, 35.679302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695639, 35.801964, 36.191994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036486, 36.006874, 36.149151>,  <27.240993, 36.129818, 36.123444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036486, 36.006874, 36.149151>,  <26.695639, 35.801964, 36.191994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036486, 36.006874, 36.149151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096308, 0.047680, 0.994209,
		0.514411, -0.857499, -0.008707,
		0.852118, 0.512271, -0.107111,
		27.292122, 36.160557, 36.117016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013845, 35.571259, 36.699360>,  <26.695639, 35.801964, 36.191994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013845, 35.571259, 36.699360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227495, 35.898602, 36.614502>,  <27.355684, 36.095009, 36.563587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227495, 35.898602, 36.614502>,  <27.013845, 35.571259, 36.699360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227495, 35.898602, 36.614502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230215, 0.100656, 0.967920,
		0.813458, -0.565826, -0.134636,
		0.534122, 0.818358, -0.212141,
		27.387732, 36.144108, 36.550861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759230, 35.565613, 36.847931>,  <27.013845, 35.571259, 36.699360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759230, 35.565613, 36.847931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665913, 35.946270, 36.927883>,  <27.609922, 36.174664, 36.975853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665913, 35.946270, 36.927883>,  <27.759230, 35.565613, 36.847931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665913, 35.946270, 36.927883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551973, -0.039628, 0.832920,
		0.800563, 0.304641, -0.516036,
		-0.233292, 0.951642, 0.199878,
		27.595924, 36.231762, 36.987846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422915, 35.933144, 37.051529>,  <27.759230, 35.565613, 36.847931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422915, 35.933144, 37.051529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106565, 36.126072, 37.202206>,  <27.916756, 36.241829, 37.292610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106565, 36.126072, 37.202206>,  <28.422915, 35.933144, 37.051529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106565, 36.126072, 37.202206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448831, 0.038709, 0.892778,
		0.416021, 0.875141, -0.247093,
		-0.790871, 0.482317, 0.376687,
		27.869305, 36.270767, 37.315212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596350, 36.582840, 37.291954>,  <28.422915, 35.933144, 37.051529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596350, 36.582840, 37.291954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298344, 36.447853, 37.522106>,  <28.119539, 36.366859, 37.660198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298344, 36.447853, 37.522106>,  <28.596350, 36.582840, 37.291954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298344, 36.447853, 37.522106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554730, 0.165576, 0.815389,
		-0.370437, 0.926660, 0.063847,
		-0.745017, -0.337468, 0.575382,
		28.074839, 36.346611, 37.694721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379875, 36.470520, 37.067345>,  <28.596350, 36.582840, 37.291954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379875, 36.470520, 37.067345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653234, 36.653156, 36.839489>,  <29.817249, 36.762737, 36.702774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653234, 36.653156, 36.839489>,  <29.379875, 36.470520, 37.067345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653234, 36.653156, 36.839489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492747, 0.287254, 0.821392,
		0.538675, -0.842026, -0.028677,
		0.683396, 0.456594, -0.569642,
		29.858253, 36.790134, 36.668598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199261, 36.299065, 37.066185>,  <29.379875, 36.470520, 37.067345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199261, 36.299065, 37.066185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085724, 36.678169, 37.007977>,  <30.017601, 36.905632, 36.973053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085724, 36.678169, 37.007977>,  <30.199261, 36.299065, 37.066185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085724, 36.678169, 37.007977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429455, 0.261344, 0.864447,
		0.857323, 0.182871, -0.481202,
		-0.283842, 0.947764, -0.145521,
		30.000572, 36.962498, 36.964321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802902, 36.594170, 37.253227>,  <30.199261, 36.299065, 37.066185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802902, 36.594170, 37.253227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521070, 36.873627, 37.302975>,  <30.351971, 37.041302, 37.332821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521070, 36.873627, 37.302975>,  <30.802902, 36.594170, 37.253227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521070, 36.873627, 37.302975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493158, 0.356058, 0.793737,
		0.510257, 0.620582, -0.595413,
		-0.704580, 0.698642, 0.124364,
		30.309696, 37.083218, 37.340282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039442, 37.236462, 37.265240>,  <30.802902, 36.594170, 37.253227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039442, 37.236462, 37.265240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706961, 37.223583, 37.487255>,  <30.507473, 37.215855, 37.620464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706961, 37.223583, 37.487255>,  <31.039442, 37.236462, 37.265240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706961, 37.223583, 37.487255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530344, 0.253692, 0.808935,
		-0.166854, 0.966749, -0.193793,
		-0.831201, -0.032197, 0.555039,
		30.457600, 37.213924, 37.653767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259447, 36.875538, 37.967789>,  <31.039442, 37.236462, 37.265240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259447, 36.875538, 37.967789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598490, 37.077591, 38.032791>,  <31.801916, 37.198822, 38.071793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598490, 37.077591, 38.032791>,  <31.259447, 36.875538, 37.967789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598490, 37.077591, 38.032791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340503, -0.752656, 0.563531,
		0.406963, -0.422320, -0.809955,
		0.847608, 0.505128, 0.162502,
		31.852772, 37.229130, 38.081543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631477, 36.323715, 38.229950>,  <31.259447, 36.875538, 37.967789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631477, 36.323715, 38.229950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884766, 36.624866, 38.301727>,  <32.036739, 36.805557, 38.344795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884766, 36.624866, 38.301727>,  <31.631477, 36.323715, 38.229950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884766, 36.624866, 38.301727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366460, -0.495862, 0.787291,
		0.681717, -0.432770, -0.589891,
		0.633221, 0.752882, 0.179445,
		32.074734, 36.850731, 38.355560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289902, 36.083298, 38.291874>,  <31.631477, 36.323715, 38.229950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289902, 36.083298, 38.291874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308197, 36.427311, 38.495148>,  <32.319176, 36.633720, 38.617111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308197, 36.427311, 38.495148>,  <32.289902, 36.083298, 38.291874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308197, 36.427311, 38.495148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406267, -0.480760, 0.777057,
		0.912609, 0.170917, -0.371392,
		0.045738, 0.860033, 0.508184,
		32.321918, 36.685322, 38.647602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987164, 36.150986, 38.572376>,  <32.289902, 36.083298, 38.291874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987164, 36.150986, 38.572376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740677, 36.366299, 38.802341>,  <32.592785, 36.495487, 38.940319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740677, 36.366299, 38.802341>,  <32.987164, 36.150986, 38.572376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740677, 36.366299, 38.802341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397923, -0.417151, 0.817094,
		0.679653, 0.732280, 0.042862,
		-0.616221, 0.538285, 0.574909,
		32.555809, 36.527782, 38.974815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473167, 36.369820, 39.162453>,  <32.987164, 36.150986, 38.572376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473167, 36.369820, 39.162453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107510, 36.441086, 39.308105>,  <32.888115, 36.483845, 39.395496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107510, 36.441086, 39.308105>,  <33.473167, 36.369820, 39.162453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107510, 36.441086, 39.308105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292591, -0.331713, 0.896859,
		0.280577, 0.926403, 0.251105,
		-0.914148, 0.178167, 0.364129,
		32.833263, 36.494537, 39.417343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559734, 36.724789, 39.788296>,  <33.473167, 36.369820, 39.162453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559734, 36.724789, 39.788296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179390, 36.603985, 39.815575>,  <32.951183, 36.531502, 39.831944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179390, 36.603985, 39.815575>,  <33.559734, 36.724789, 39.788296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179390, 36.603985, 39.815575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151819, -0.262828, 0.952823,
		-0.269836, 0.916358, 0.295764,
		-0.950863, -0.302008, 0.068200,
		32.894131, 36.513382, 39.836033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319725, 37.000248, 40.398041>,  <33.559734, 36.724789, 39.788296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319725, 37.000248, 40.398041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048565, 36.715881, 40.323158>,  <32.885868, 36.545261, 40.278229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048565, 36.715881, 40.323158>,  <33.319725, 37.000248, 40.398041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048565, 36.715881, 40.323158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070830, -0.316622, 0.945904,
		-0.731733, 0.627970, 0.264993,
		-0.677902, -0.710918, -0.187204,
		32.845196, 36.502605, 40.266998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798931, 37.054138, 40.839989>,  <33.319725, 37.000248, 40.398041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798931, 37.054138, 40.839989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769814, 36.669926, 40.732601>,  <32.752342, 36.439396, 40.668171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769814, 36.669926, 40.732601>,  <32.798931, 37.054138, 40.839989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769814, 36.669926, 40.732601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041162, -0.266057, 0.963078,
		-0.996497, 0.081160, -0.020169,
		-0.072797, -0.960535, -0.268466,
		32.747974, 36.381763, 40.652061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436249, 36.826385, 41.368259>,  <32.798931, 37.054138, 40.839989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436249, 36.826385, 41.368259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555435, 36.479130, 41.209488>,  <32.626945, 36.270775, 41.114223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555435, 36.479130, 41.209488>,  <32.436249, 36.826385, 41.368259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555435, 36.479130, 41.209488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025456, -0.422896, 0.905820,
		-0.954237, -0.259799, -0.148108,
		0.297966, -0.868137, -0.396930,
		32.644825, 36.218689, 41.090408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114334, 36.258198, 41.762947>,  <32.436249, 36.826385, 41.368259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114334, 36.258198, 41.762947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414059, 36.081718, 41.565411>,  <32.593895, 35.975830, 41.446888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414059, 36.081718, 41.565411>,  <32.114334, 36.258198, 41.762947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414059, 36.081718, 41.565411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184863, -0.576729, 0.795745,
		-0.635888, -0.687556, -0.350591,
		0.749315, -0.441193, -0.493839,
		32.638851, 35.949360, 41.417259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997839, 35.608391, 41.583454>,  <32.114334, 36.258198, 41.762947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997839, 35.608391, 41.583454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396858, 35.629433, 41.601913>,  <32.636269, 35.642056, 41.612988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396858, 35.629433, 41.601913>,  <31.997839, 35.608391, 41.583454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396858, 35.629433, 41.601913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006127, -0.722584, 0.691256,
		0.069706, -0.689279, -0.721135,
		0.997549, 0.052603, 0.046145,
		32.696121, 35.645214, 41.615757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172668, 34.945591, 41.591457>,  <31.997839, 35.608391, 41.583454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172668, 34.945591, 41.591457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489326, 35.137802, 41.742393>,  <32.679321, 35.253128, 41.832954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489326, 35.137802, 41.742393>,  <32.172668, 34.945591, 41.591457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489326, 35.137802, 41.742393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090515, -0.703027, 0.705379,
		0.604235, -0.524257, -0.600045,
		0.791648, 0.480528, 0.377341,
		32.726822, 35.281960, 41.855595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596313, 34.460835, 41.758598>,  <32.172668, 34.945591, 41.591457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596313, 34.460835, 41.758598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738552, 34.760765, 41.981781>,  <32.823895, 34.940723, 42.115692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738552, 34.760765, 41.981781>,  <32.596313, 34.460835, 41.758598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738552, 34.760765, 41.981781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128826, -0.630600, 0.765342,
		0.925720, -0.200271, -0.320834,
		0.355594, 0.749824, 0.557959,
		32.845230, 34.985714, 42.149170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159763, 34.169044, 42.141651>,  <32.596313, 34.460835, 41.758598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159763, 34.169044, 42.141651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043858, 34.501240, 42.331947>,  <32.974312, 34.700558, 42.446125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043858, 34.501240, 42.331947>,  <33.159763, 34.169044, 42.141651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043858, 34.501240, 42.331947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191721, -0.436625, 0.878977,
		0.937698, 0.345908, -0.032702,
		-0.289767, 0.830485, 0.475741,
		32.956928, 34.750385, 42.474670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689247, 34.313011, 42.585453>,  <33.159763, 34.169044, 42.141651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689247, 34.313011, 42.585453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357471, 34.488567, 42.723675>,  <33.158405, 34.593903, 42.806606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357471, 34.488567, 42.723675>,  <33.689247, 34.313011, 42.585453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357471, 34.488567, 42.723675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028163, -0.584968, 0.810567,
		0.557888, 0.682047, 0.472835,
		-0.829439, 0.438889, 0.345555,
		33.108639, 34.620235, 42.827343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758583, 34.322865, 43.279713>,  <33.689247, 34.313011, 42.585453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758583, 34.322865, 43.279713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372246, 34.426006, 43.289940>,  <33.140442, 34.487892, 43.296074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372246, 34.426006, 43.289940>,  <33.758583, 34.322865, 43.279713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372246, 34.426006, 43.289940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052552, -0.291539, 0.955114,
		0.253731, 0.921150, 0.295133,
		-0.965846, 0.257852, 0.025564,
		33.082493, 34.503361, 43.297607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563900, 34.707035, 43.962944>,  <33.758583, 34.322865, 43.279713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563900, 34.707035, 43.962944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209396, 34.568817, 43.839561>,  <32.996696, 34.485886, 43.765533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209396, 34.568817, 43.839561>,  <33.563900, 34.707035, 43.962944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209396, 34.568817, 43.839561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180049, -0.356564, 0.916757,
		-0.426769, 0.868020, 0.253791,
		-0.886256, -0.345549, -0.308457,
		32.943520, 34.465153, 43.747025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158321, 34.957016, 44.395493>,  <33.563900, 34.707035, 43.962944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158321, 34.957016, 44.395493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959454, 34.646946, 44.239578>,  <32.840134, 34.460903, 44.146030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959454, 34.646946, 44.239578>,  <33.158321, 34.957016, 44.395493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959454, 34.646946, 44.239578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345063, -0.235543, 0.908543,
		-0.796088, 0.586200, -0.150379,
		-0.497167, -0.775171, -0.389789,
		32.810303, 34.414394, 44.122643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481174, 35.019955, 44.668465>,  <33.158321, 34.957016, 44.395493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481174, 35.019955, 44.668465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514767, 34.634579, 44.566689>,  <32.534924, 34.403355, 44.505623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514767, 34.634579, 44.566689>,  <32.481174, 35.019955, 44.668465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514767, 34.634579, 44.566689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503686, -0.261362, 0.823401,
		-0.859794, 0.059003, -0.507220,
		0.083984, -0.963436, -0.254436,
		32.539963, 34.345547, 44.490356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860794, 34.757545, 44.923317>,  <32.481174, 35.019955, 44.668465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860794, 34.757545, 44.923317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042152, 34.409184, 44.847462>,  <32.150967, 34.200169, 44.801949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042152, 34.409184, 44.847462>,  <31.860794, 34.757545, 44.923317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042152, 34.409184, 44.847462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531908, -0.435101, 0.726472,
		-0.715195, -0.228512, -0.660513,
		0.453398, -0.870901, -0.189634,
		32.178173, 34.147915, 44.790573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413307, 34.225613, 44.654652>,  <31.860794, 34.757545, 44.923317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413307, 34.225613, 44.654652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716824, 34.038097, 44.835529>,  <31.898933, 33.925591, 44.944057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716824, 34.038097, 44.835529>,  <31.413307, 34.225613, 44.654652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716824, 34.038097, 44.835529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646345, -0.456164, 0.611680,
		-0.080470, -0.756410, -0.649129,
		0.758790, -0.468783, 0.452194,
		31.944460, 33.897461, 44.971188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203066, 33.551277, 44.714882>,  <31.413307, 34.225613, 44.654652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203066, 33.551277, 44.714882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507032, 33.568001, 44.974350>,  <31.689413, 33.578037, 45.130032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507032, 33.568001, 44.974350>,  <31.203066, 33.551277, 44.714882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507032, 33.568001, 44.974350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524974, -0.548994, 0.650390,
		0.383312, -0.834780, -0.395240,
		0.759917, 0.041812, 0.648674,
		31.735008, 33.580544, 45.168953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335653, 32.894474, 44.877193>,  <31.203066, 33.551277, 44.714882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335653, 32.894474, 44.877193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505295, 33.081108, 45.187660>,  <31.607079, 33.193089, 45.373940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505295, 33.081108, 45.187660>,  <31.335653, 32.894474, 44.877193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505295, 33.081108, 45.187660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501193, -0.592915, 0.630283,
		0.754283, -0.656313, -0.017605,
		0.424102, 0.466589, 0.776166,
		31.632524, 33.221085, 45.420509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648159, 32.391632, 45.247940>,  <31.335653, 32.894474, 44.877193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648159, 32.391632, 45.247940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586817, 32.693829, 45.502724>,  <31.550011, 32.875145, 45.655594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586817, 32.693829, 45.502724>,  <31.648159, 32.391632, 45.247940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586817, 32.693829, 45.502724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368336, -0.641836, 0.672589,
		0.916957, -0.131470, 0.376703,
		-0.153356, 0.755488, 0.636961,
		31.540810, 32.920475, 45.693813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900402, 32.119492, 45.832321>,  <31.648159, 32.391632, 45.247940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900402, 32.119492, 45.832321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680534, 32.414398, 45.989449>,  <31.548613, 32.591343, 46.083725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680534, 32.414398, 45.989449>,  <31.900402, 32.119492, 45.832321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680534, 32.414398, 45.989449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276559, -0.604310, 0.747212,
		0.788275, 0.302083, 0.536068,
		-0.549671, 0.737262, 0.392819,
		31.515633, 32.635578, 46.107296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062977, 32.138954, 46.564152>,  <31.900402, 32.119492, 45.832321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062977, 32.138954, 46.564152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720097, 32.343464, 46.539486>,  <31.514368, 32.466171, 46.524685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720097, 32.343464, 46.539486>,  <32.062977, 32.138954, 46.564152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720097, 32.343464, 46.539486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319278, -0.433670, 0.842610,
		0.404062, 0.741977, 0.534981,
		-0.857202, 0.511274, -0.061667,
		31.462936, 32.496845, 46.520985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982138, 32.327557, 47.267471>,  <32.062977, 32.138954, 46.564152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982138, 32.327557, 47.267471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635283, 32.367153, 47.072220>,  <31.427170, 32.390911, 46.955067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635283, 32.367153, 47.072220>,  <31.982138, 32.327557, 47.267471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635283, 32.367153, 47.072220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436606, -0.622694, 0.649328,
		-0.239681, 0.776179, 0.583180,
		-0.867138, 0.098988, -0.488133,
		31.375141, 32.396851, 46.925781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507256, 32.537395, 47.766636>,  <31.982138, 32.327557, 47.267471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507256, 32.537395, 47.766636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271486, 32.414433, 47.467815>,  <31.130024, 32.340656, 47.288525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271486, 32.414433, 47.467815>,  <31.507256, 32.537395, 47.766636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271486, 32.414433, 47.467815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502656, -0.584369, 0.637064,
		-0.632390, 0.751008, 0.189920,
		-0.589423, -0.307408, -0.747048,
		31.094660, 32.322208, 47.243702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782909, 32.771751, 47.930344>,  <31.507256, 32.537395, 47.766636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782909, 32.771751, 47.930344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793394, 32.440845, 47.705864>,  <30.799685, 32.242302, 47.571178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793394, 32.440845, 47.705864>,  <30.782909, 32.771751, 47.930344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793394, 32.440845, 47.705864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636010, -0.446913, 0.629094,
		-0.771235, 0.340436, -0.537866,
		0.026213, -0.827268, -0.561196,
		30.801258, 32.192665, 47.537506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130768, 32.509430, 47.995033>,  <30.782909, 32.771751, 47.930344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130768, 32.509430, 47.995033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295925, 32.193634, 47.813385>,  <30.395020, 32.004158, 47.704395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295925, 32.193634, 47.813385>,  <30.130768, 32.509430, 47.995033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295925, 32.193634, 47.813385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485651, -0.612655, 0.623536,
		-0.770495, -0.036908, -0.636376,
		0.412893, -0.789488, -0.454124,
		30.419794, 31.956787, 47.677147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616497, 32.101765, 47.898655>,  <30.130768, 32.509430, 47.995033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616497, 32.101765, 47.898655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936790, 31.862289, 47.890739>,  <30.128967, 31.718603, 47.885990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936790, 31.862289, 47.890739>,  <29.616497, 32.101765, 47.898655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936790, 31.862289, 47.890739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467976, -0.645844, 0.603229,
		-0.373928, -0.473766, -0.797323,
		0.800735, -0.598692, -0.019788,
		30.177011, 31.682682, 47.884804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333620, 31.425863, 47.840439>,  <29.616497, 32.101765, 47.898655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333620, 31.425863, 47.840439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711592, 31.358742, 47.952831>,  <29.938374, 31.318468, 48.020267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711592, 31.358742, 47.952831>,  <29.333620, 31.425863, 47.840439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711592, 31.358742, 47.952831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318357, -0.670376, 0.670257,
		0.075893, -0.722798, -0.686879,
		0.944928, -0.167805, 0.280985,
		29.995070, 31.308401, 48.037128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342432, 30.676432, 48.109558>,  <29.333620, 31.425863, 47.840439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342432, 30.676432, 48.109558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662395, 30.863615, 48.259842>,  <29.854374, 30.975925, 48.350014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662395, 30.863615, 48.259842>,  <29.342432, 30.676432, 48.109558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662395, 30.863615, 48.259842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121875, -0.486337, 0.865230,
		0.587614, -0.737896, -0.331994,
		0.799910, 0.467959, 0.375710,
		29.902369, 31.004004, 48.372555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625410, 30.193684, 48.449749>,  <29.342432, 30.676432, 48.109558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625410, 30.193684, 48.449749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781567, 30.525291, 48.609909>,  <29.875259, 30.724257, 48.706005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781567, 30.525291, 48.609909>,  <29.625410, 30.193684, 48.449749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781567, 30.525291, 48.609909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129263, -0.479960, 0.867715,
		0.911530, -0.286990, -0.294533,
		0.390390, 0.829020, 0.400401,
		29.898684, 30.773998, 48.730030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256359, 29.953665, 48.638676>,  <29.625410, 30.193684, 48.449749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256359, 29.953665, 48.638676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159090, 30.286842, 48.837498>,  <30.100729, 30.486750, 48.956791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159090, 30.286842, 48.837498>,  <30.256359, 29.953665, 48.638676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159090, 30.286842, 48.837498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121633, -0.482210, 0.867570,
		0.962326, 0.271430, 0.015947,
		-0.243174, 0.832946, 0.497058,
		30.086138, 30.536726, 48.986614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533901, 29.845112, 49.196323>,  <30.256359, 29.953665, 48.638676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533901, 29.845112, 49.196323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289732, 30.143093, 49.303970>,  <30.143230, 30.321882, 49.368561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289732, 30.143093, 49.303970>,  <30.533901, 29.845112, 49.196323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289732, 30.143093, 49.303970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003049, -0.341975, 0.939704,
		0.792069, 0.572798, 0.211021,
		-0.610424, 0.744954, 0.269121,
		30.106606, 30.366579, 49.384708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789917, 30.252407, 49.752426>,  <30.533901, 29.845112, 49.196323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789917, 30.252407, 49.752426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394093, 30.296202, 49.789913>,  <30.156597, 30.322477, 49.812405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394093, 30.296202, 49.789913>,  <30.789917, 30.252407, 49.752426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394093, 30.296202, 49.789913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049632, -0.351609, 0.934830,
		0.135302, 0.929722, 0.342505,
		-0.989560, 0.109486, 0.093718,
		30.097225, 30.329048, 49.818027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677572, 30.362156, 50.441132>,  <30.789917, 30.252407, 49.752426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677572, 30.362156, 50.441132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307032, 30.267878, 50.323612>,  <30.084707, 30.211311, 50.253101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307032, 30.267878, 50.323612>,  <30.677572, 30.362156, 50.441132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307032, 30.267878, 50.323612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151257, -0.481570, 0.863257,
		-0.344950, 0.844120, 0.410453,
		-0.926354, -0.235696, -0.293796,
		30.029125, 30.197168, 50.235474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410967, 30.381645, 51.068497>,  <30.677572, 30.362156, 50.441132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410967, 30.381645, 51.068497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159430, 30.189407, 50.824009>,  <30.008507, 30.074064, 50.677319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159430, 30.189407, 50.824009>,  <30.410967, 30.381645, 51.068497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159430, 30.189407, 50.824009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245713, -0.622980, 0.742645,
		-0.737686, 0.617191, 0.273669,
		-0.628844, -0.480595, -0.611215,
		29.970776, 30.045229, 50.640644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785513, 30.253428, 51.483761>,  <30.410967, 30.381645, 51.068497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785513, 30.253428, 51.483761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759598, 30.002903, 51.173012>,  <29.744049, 29.852589, 50.986561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759598, 30.002903, 51.173012>,  <29.785513, 30.253428, 51.483761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759598, 30.002903, 51.173012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306644, -0.728348, 0.612764,
		-0.949617, 0.277925, -0.144865,
		-0.064790, -0.626312, -0.776875,
		29.740160, 29.815010, 50.939949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194740, 29.848377, 51.570477>,  <29.785513, 30.253428, 51.483761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194740, 29.848377, 51.570477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431316, 29.631948, 51.331333>,  <29.573263, 29.502092, 51.187847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431316, 29.631948, 51.331333>,  <29.194740, 29.848377, 51.570477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431316, 29.631948, 51.331333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110228, -0.788736, 0.604768,
		-0.798786, -0.291777, -0.526125,
		0.591431, -0.541074, -0.597869,
		29.608749, 29.469627, 51.151974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774073, 29.318321, 51.283119>,  <29.194740, 29.848377, 51.570477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774073, 29.318321, 51.283119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152563, 29.189077, 51.276711>,  <29.379658, 29.111530, 51.272865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152563, 29.189077, 51.276711>,  <28.774073, 29.318321, 51.283119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152563, 29.189077, 51.276711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268442, -0.811845, 0.518504,
		-0.180544, -0.486319, -0.854925,
		0.946226, -0.323111, -0.016025,
		29.436430, 29.092144, 51.271904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747963, 28.599144, 51.183311>,  <28.774073, 29.318321, 51.283119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747963, 28.599144, 51.183311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052608, 28.725208, 51.409805>,  <29.235395, 28.800846, 51.545700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052608, 28.725208, 51.409805>,  <28.747963, 28.599144, 51.183311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052608, 28.725208, 51.409805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245876, -0.667897, 0.702466,
		0.599574, -0.674231, -0.431189,
		0.761614, 0.315161, 0.566231,
		29.281094, 28.819757, 51.579674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238813, 28.047058, 51.349857>,  <28.747963, 28.599144, 51.183311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238813, 28.047058, 51.349857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225508, 28.334667, 51.627533>,  <29.217524, 28.507233, 51.794140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225508, 28.334667, 51.627533>,  <29.238813, 28.047058, 51.349857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225508, 28.334667, 51.627533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375258, -0.652740, 0.658112,
		0.926323, -0.238608, 0.291533,
		-0.033264, 0.719025, 0.694188,
		29.215528, 28.550375, 51.835789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406309, 27.665737, 51.893860>,  <29.238813, 28.047058, 51.349857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406309, 27.665737, 51.893860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199648, 27.985867, 52.015549>,  <29.075651, 28.177944, 52.088562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199648, 27.985867, 52.015549>,  <29.406309, 27.665737, 51.893860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199648, 27.985867, 52.015549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492069, -0.568329, 0.659447,
		0.700670, 0.191005, 0.687443,
		-0.516652, 0.800324, 0.304224,
		29.044653, 28.225964, 52.106815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011889, 27.892290, 52.481796>,  <29.406309, 27.665737, 51.893860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011889, 27.892290, 52.481796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304852, 27.630230, 52.407650>,  <29.480629, 27.472994, 52.363163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304852, 27.630230, 52.407650>,  <29.011889, 27.892290, 52.481796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304852, 27.630230, 52.407650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595201, 0.748275, -0.292951,
		0.330631, 0.104230, 0.937987,
		0.732407, -0.655149, -0.185365,
		29.524574, 27.433685, 52.352039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559740, 28.356453, 52.242180>,  <29.011889, 27.892290, 52.481796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559740, 28.356453, 52.242180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723969, 27.993576, 52.205441>,  <29.822506, 27.775850, 52.183399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723969, 27.993576, 52.205441>,  <29.559740, 28.356453, 52.242180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723969, 27.993576, 52.205441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828066, 0.413129, -0.378987,
		0.381758, 0.079545, 0.920833,
		0.410570, -0.907192, -0.091846,
		29.847139, 27.721418, 52.177887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250921, 28.464933, 52.189560>,  <29.559740, 28.356453, 52.242180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250921, 28.464933, 52.189560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236761, 28.101097, 52.023964>,  <30.228266, 27.882795, 51.924606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236761, 28.101097, 52.023964>,  <30.250921, 28.464933, 52.189560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236761, 28.101097, 52.023964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835111, 0.200619, -0.512193,
		0.548941, -0.363859, 0.752509,
		-0.035399, -0.909593, -0.413990,
		30.226141, 27.828218, 51.899765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921387, 28.228451, 52.296268>,  <30.250921, 28.464933, 52.189560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921387, 28.228451, 52.296268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770931, 28.035595, 51.979771>,  <30.680658, 27.919882, 51.789871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770931, 28.035595, 51.979771>,  <30.921387, 28.228451, 52.296268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770931, 28.035595, 51.979771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842148, 0.178229, -0.508941,
		0.386403, -0.857774, 0.338994,
		-0.376138, -0.482139, -0.791241,
		30.658091, 27.890953, 51.742397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487432, 28.004330, 51.830818>,  <30.921387, 28.228451, 52.296268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487432, 28.004330, 51.830818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192966, 27.916836, 51.574627>,  <31.016287, 27.864340, 51.420910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192966, 27.916836, 51.574627>,  <31.487432, 28.004330, 51.830818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192966, 27.916836, 51.574627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629817, 0.125048, -0.766611,
		0.247775, -0.967739, 0.045707,
		-0.736164, -0.218734, -0.640483,
		30.972116, 27.851215, 51.382481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775309, 27.653576, 51.272240>,  <31.487432, 28.004330, 51.830818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775309, 27.653576, 51.272240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448019, 27.843382, 51.142414>,  <31.251646, 27.957266, 51.064518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448019, 27.843382, 51.142414>,  <31.775309, 27.653576, 51.272240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448019, 27.843382, 51.142414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420584, 0.109176, -0.900661,
		-0.391943, -0.873450, -0.288904,
		-0.818223, 0.474517, -0.324568,
		31.202553, 27.985737, 51.045044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552780, 27.335531, 50.567158>,  <31.775309, 27.653576, 51.272240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552780, 27.335531, 50.567158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409370, 27.708658, 50.581650>,  <31.323324, 27.932535, 50.590347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409370, 27.708658, 50.581650>,  <31.552780, 27.335531, 50.567158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409370, 27.708658, 50.581650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238586, 0.129085, -0.962504,
		-0.902518, -0.336435, -0.268837,
		-0.358523, 0.932817, 0.036233,
		31.301813, 27.988504, 50.592522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262503, 27.407175, 49.915260>,  <31.552780, 27.335531, 50.567158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262503, 27.407175, 49.915260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326965, 27.772213, 50.065563>,  <31.365643, 27.991236, 50.155746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326965, 27.772213, 50.065563>,  <31.262503, 27.407175, 49.915260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326965, 27.772213, 50.065563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316857, 0.312739, -0.895430,
		-0.934682, 0.263366, -0.238763,
		0.161155, 0.912597, 0.375761,
		31.375311, 28.045992, 50.178291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980150, 27.811768, 49.423004>,  <31.262503, 27.407175, 49.915260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980150, 27.811768, 49.423004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218731, 28.063660, 49.622078>,  <31.361879, 28.214794, 49.741524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218731, 28.063660, 49.622078>,  <30.980150, 27.811768, 49.423004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218731, 28.063660, 49.622078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317849, 0.384052, -0.866877,
		-0.737034, 0.675237, 0.028910,
		0.596451, 0.629729, 0.497683,
		31.397667, 28.252579, 49.771381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807234, 28.484026, 49.170090>,  <30.980150, 27.811768, 49.423004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807234, 28.484026, 49.170090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167513, 28.517828, 49.340549>,  <31.383680, 28.538109, 49.442825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167513, 28.517828, 49.340549>,  <30.807234, 28.484026, 49.170090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167513, 28.517828, 49.340549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375169, 0.343316, -0.861035,
		-0.219064, 0.935410, 0.277521,
		0.900699, 0.084505, 0.426145,
		31.437723, 28.543179, 49.468391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976368, 29.231947, 49.128162>,  <30.807234, 28.484026, 49.170090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976368, 29.231947, 49.128162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324326, 29.038258, 49.165710>,  <31.533100, 28.922045, 49.188240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324326, 29.038258, 49.165710>,  <30.976368, 29.231947, 49.128162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324326, 29.038258, 49.165710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354286, 0.481004, -0.801946,
		0.343168, 0.730865, 0.589976,
		0.869895, -0.484223, 0.093870,
		31.585295, 28.892990, 49.193871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668566, 29.687578, 49.056782>,  <30.976368, 29.231947, 49.128162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668566, 29.687578, 49.056782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783438, 29.315767, 48.964256>,  <31.852360, 29.092680, 48.908741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783438, 29.315767, 48.964256>,  <31.668566, 29.687578, 49.056782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783438, 29.315767, 48.964256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650982, 0.366541, -0.664733,
		0.702675, 0.040315, 0.710368,
		0.287178, -0.929528, -0.231315,
		31.869591, 29.036909, 48.894863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403419, 29.775997, 48.963146>,  <31.668566, 29.687578, 49.056782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403419, 29.775997, 48.963146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283501, 29.442877, 48.777000>,  <32.211548, 29.243004, 48.665314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283501, 29.442877, 48.777000>,  <32.403419, 29.775997, 48.963146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283501, 29.442877, 48.777000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519716, 0.266492, -0.811713,
		0.800011, -0.485206, 0.352926,
		-0.299796, -0.832800, -0.465366,
		32.193562, 29.193037, 48.637390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041386, 29.434687, 48.647079>,  <32.403419, 29.775997, 48.963146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041386, 29.434687, 48.647079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741859, 29.262196, 48.445755>,  <32.562145, 29.158701, 48.324959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741859, 29.262196, 48.445755>,  <33.041386, 29.434687, 48.647079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741859, 29.262196, 48.445755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533564, 0.058277, -0.843750,
		0.393182, -0.900358, 0.186450,
		-0.748811, -0.431230, -0.503312,
		32.517216, 29.132826, 48.294762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320305, 29.083208, 48.145763>,  <33.041386, 29.434687, 48.647079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320305, 29.083208, 48.145763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946064, 29.105579, 48.006325>,  <32.721519, 29.119001, 47.922661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946064, 29.105579, 48.006325>,  <33.320305, 29.083208, 48.145763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946064, 29.105579, 48.006325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351715, 0.233535, -0.906509,
		0.030710, -0.970739, -0.238167,
		-0.935603, 0.055928, -0.348595,
		32.665382, 29.122358, 47.901745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311787, 28.690430, 47.471268>,  <33.320305, 29.083208, 48.145763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311787, 28.690430, 47.471268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008804, 28.951221, 47.457489>,  <32.827015, 29.107697, 47.449223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008804, 28.951221, 47.457489>,  <33.311787, 28.690430, 47.471268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008804, 28.951221, 47.457489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361477, 0.374851, -0.853710,
		-0.543692, -0.659096, -0.519607,
		-0.757452, 0.651981, -0.034444,
		32.781570, 29.146816, 47.447155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203499, 28.764641, 46.787830>,  <33.311787, 28.690430, 47.471268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203499, 28.764641, 46.787830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035149, 29.082581, 46.962677>,  <32.934139, 29.273344, 47.067585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035149, 29.082581, 46.962677>,  <33.203499, 28.764641, 46.787830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035149, 29.082581, 46.962677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185905, 0.547228, -0.816077,
		-0.887863, -0.262207, -0.378083,
		-0.420878, 0.794852, 0.437118,
		32.908886, 29.321035, 47.093811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744427, 29.021666, 46.224854>,  <33.203499, 28.764641, 46.787830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744427, 29.021666, 46.224854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767769, 29.326557, 46.482723>,  <32.781776, 29.509493, 46.637444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767769, 29.326557, 46.482723>,  <32.744427, 29.021666, 46.224854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767769, 29.326557, 46.482723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119691, 0.646455, -0.753505,
		-0.991094, -0.033188, 0.128957,
		0.058358, 0.762229, 0.644671,
		32.785275, 29.555225, 46.676125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134350, 29.597944, 46.057556>,  <32.744427, 29.021666, 46.224854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134350, 29.597944, 46.057556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430897, 29.765190, 46.267529>,  <32.608826, 29.865538, 46.393513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430897, 29.765190, 46.267529>,  <32.134350, 29.597944, 46.057556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430897, 29.765190, 46.267529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075647, 0.725144, -0.684429,
		-0.666818, 0.547125, 0.505971,
		0.741371, 0.418115, 0.524928,
		32.653309, 29.890625, 46.425007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892864, 30.251278, 46.146259>,  <32.134350, 29.597944, 46.057556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892864, 30.251278, 46.146259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287838, 30.269768, 46.206707>,  <32.524822, 30.280863, 46.242973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287838, 30.269768, 46.206707>,  <31.892864, 30.251278, 46.146259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287838, 30.269768, 46.206707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090211, 0.620252, -0.779198,
		-0.129749, 0.783040, 0.608288,
		0.987435, 0.046226, 0.151116,
		32.584068, 30.283636, 46.252041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099522, 30.986301, 46.109764>,  <31.892864, 30.251278, 46.146259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099522, 30.986301, 46.109764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415970, 30.765999, 46.003338>,  <32.605839, 30.633818, 45.939480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415970, 30.765999, 46.003338>,  <32.099522, 30.986301, 46.109764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415970, 30.765999, 46.003338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116289, 0.562494, -0.818583,
		0.600502, 0.616658, 0.509048,
		0.791122, -0.550757, -0.266068,
		32.653305, 30.600771, 45.923519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673710, 31.532160, 45.967220>,  <32.099522, 30.986301, 46.109764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673710, 31.532160, 45.967220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779484, 31.185690, 45.797600>,  <32.842949, 30.977808, 45.695827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779484, 31.185690, 45.797600>,  <32.673710, 31.532160, 45.967220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779484, 31.185690, 45.797600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273158, 0.488964, -0.828431,
		0.924911, 0.103232, 0.365901,
		0.264433, -0.866174, -0.424050,
		32.858814, 30.925838, 45.670383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170757, 31.754444, 45.520115>,  <32.673710, 31.532160, 45.967220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170757, 31.754444, 45.520115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117378, 31.388124, 45.368587>,  <33.085350, 31.168333, 45.277672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117378, 31.388124, 45.368587>,  <33.170757, 31.754444, 45.520115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117378, 31.388124, 45.368587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382269, 0.305096, -0.872231,
		0.914365, -0.261204, 0.309368,
		-0.133443, -0.915799, -0.378819,
		33.077347, 31.113384, 45.254940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726410, 31.667788, 45.078018>,  <33.170757, 31.754444, 45.520115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726410, 31.667788, 45.078018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467236, 31.379971, 44.978073>,  <33.311729, 31.207279, 44.918106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467236, 31.379971, 44.978073>,  <33.726410, 31.667788, 45.078018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467236, 31.379971, 44.978073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228007, 0.129769, -0.964973,
		0.726765, -0.682214, 0.079978,
		-0.647939, -0.719545, -0.249861,
		33.272854, 31.164106, 44.903114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101334, 31.146559, 44.688351>,  <33.726410, 31.667788, 45.078018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101334, 31.146559, 44.688351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710911, 31.110430, 44.609207>,  <33.476658, 31.088753, 44.561722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710911, 31.110430, 44.609207>,  <34.101334, 31.146559, 44.688351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710911, 31.110430, 44.609207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183045, 0.150217, -0.971560,
		0.117474, -0.984519, -0.130088,
		-0.976061, -0.090321, -0.197857,
		33.418091, 31.083332, 44.549850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078457, 30.732668, 44.086250>,  <34.101334, 31.146559, 44.688351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078457, 30.732668, 44.086250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728897, 30.926332, 44.103619>,  <33.519161, 31.042532, 44.114040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728897, 30.926332, 44.103619>,  <34.078457, 30.732668, 44.086250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728897, 30.926332, 44.103619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095829, 0.259164, -0.961068,
		-0.476567, -0.835715, -0.272880,
		-0.873900, 0.484163, 0.043423,
		33.466728, 31.071581, 44.116646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739620, 30.523928, 43.537128>,  <34.078457, 30.732668, 44.086250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739620, 30.523928, 43.537128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516880, 30.838614, 43.643707>,  <33.383236, 31.027426, 43.707657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516880, 30.838614, 43.643707>,  <33.739620, 30.523928, 43.537128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516880, 30.838614, 43.643707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322804, 0.090598, -0.942120,
		-0.765320, -0.610631, 0.203506,
		-0.556850, 0.786716, 0.266450,
		33.349827, 31.074629, 43.723644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036648, 30.491930, 43.167995>,  <33.739620, 30.523928, 43.537128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036648, 30.491930, 43.167995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116081, 30.871956, 43.264278>,  <33.163742, 31.099972, 43.322048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116081, 30.871956, 43.264278>,  <33.036648, 30.491930, 43.167995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116081, 30.871956, 43.264278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414114, 0.303935, -0.857982,
		-0.888298, 0.070703, 0.453793,
		0.198585, 0.950066, 0.240706,
		33.175655, 31.156975, 43.336491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514538, 30.872112, 42.824585>,  <33.036648, 30.491930, 43.167995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514538, 30.872112, 42.824585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770653, 31.158617, 42.935581>,  <32.924320, 31.330521, 43.002178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770653, 31.158617, 42.935581>,  <32.514538, 30.872112, 42.824585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770653, 31.158617, 42.935581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294706, 0.562673, -0.772365,
		-0.709355, 0.412754, 0.571358,
		0.640284, 0.716264, 0.277494,
		32.962738, 31.373497, 43.018829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109951, 31.543533, 42.681400>,  <32.514538, 30.872112, 42.824585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109951, 31.543533, 42.681400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498928, 31.635904, 42.694267>,  <32.732315, 31.691328, 42.701988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498928, 31.635904, 42.694267>,  <32.109951, 31.543533, 42.681400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498928, 31.635904, 42.694267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147728, 0.716969, -0.681273,
		-0.180387, 0.657744, 0.731323,
		0.972439, 0.230929, 0.032165,
		32.790661, 31.705183, 42.703918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161079, 32.304111, 42.511177>,  <32.109951, 31.543533, 42.681400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161079, 32.304111, 42.511177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523018, 32.149574, 42.439621>,  <32.740181, 32.056850, 42.396687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523018, 32.149574, 42.439621>,  <32.161079, 32.304111, 42.511177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523018, 32.149574, 42.439621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181143, 0.729594, -0.659454,
		0.385290, 0.564298, 0.730150,
		0.904842, -0.386342, -0.178887,
		32.794472, 32.033672, 42.385956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580299, 32.836269, 42.701725>,  <32.161079, 32.304111, 42.511177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580299, 32.836269, 42.701725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781719, 32.587082, 42.462276>,  <32.902573, 32.437569, 42.318607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781719, 32.587082, 42.462276>,  <32.580299, 32.836269, 42.701725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781719, 32.587082, 42.462276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285283, 0.773904, -0.565408,
		0.815505, 0.113938, 0.567424,
		0.503553, -0.622970, -0.598618,
		32.932785, 32.400192, 42.282692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132164, 33.264061, 42.496605>,  <32.580299, 32.836269, 42.701725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132164, 33.264061, 42.496605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118649, 32.974102, 42.221394>,  <33.110538, 32.800125, 42.056267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118649, 32.974102, 42.221394>,  <33.132164, 33.264061, 42.496605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118649, 32.974102, 42.221394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348693, 0.636609, -0.687853,
		0.936628, -0.263151, 0.231258,
		-0.033788, -0.724900, -0.688025,
		33.108513, 32.756634, 42.014988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825184, 33.184643, 42.279331>,  <33.132164, 33.264061, 42.496605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825184, 33.184643, 42.279331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551567, 33.091927, 42.002678>,  <33.387398, 33.036297, 41.836685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551567, 33.091927, 42.002678>,  <33.825184, 33.184643, 42.279331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551567, 33.091927, 42.002678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479809, 0.571191, -0.665976,
		0.549418, -0.787411, -0.279509,
		-0.684049, -0.231788, -0.691629,
		33.346352, 33.022388, 41.795189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220879, 32.963566, 41.762920>,  <33.825184, 33.184643, 42.279331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220879, 32.963566, 41.762920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867680, 33.049530, 41.596001>,  <33.655762, 33.101109, 41.495850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867680, 33.049530, 41.596001>,  <34.220879, 32.963566, 41.762920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867680, 33.049530, 41.596001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464486, 0.528184, -0.710827,
		0.067642, -0.821483, -0.566207,
		-0.882993, 0.214913, -0.417295,
		33.602783, 33.114002, 41.470814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285931, 32.583759, 41.158066>,  <34.220879, 32.963566, 41.762920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285931, 32.583759, 41.158066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031990, 32.892460, 41.143314>,  <33.879623, 33.077679, 41.134464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031990, 32.892460, 41.143314>,  <34.285931, 32.583759, 41.158066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031990, 32.892460, 41.143314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494080, 0.368811, -0.787314,
		-0.594009, -0.518051, -0.615448,
		-0.634853, 0.771752, -0.036882,
		33.841534, 33.123985, 41.132248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345825, 32.716808, 40.527657>,  <34.285931, 32.583759, 41.158066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345825, 32.716808, 40.527657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166149, 33.041264, 40.677471>,  <34.058342, 33.235935, 40.767361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166149, 33.041264, 40.677471>,  <34.345825, 32.716808, 40.527657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166149, 33.041264, 40.677471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384519, 0.553919, -0.738457,
		-0.806456, -0.187692, -0.560714,
		-0.449193, 0.811138, 0.374541,
		34.031391, 33.284607, 40.789833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150585, 33.098942, 39.996887>,  <34.345825, 32.716808, 40.527657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150585, 33.098942, 39.996887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158936, 33.390896, 40.270187>,  <34.163944, 33.566067, 40.434166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158936, 33.390896, 40.270187>,  <34.150585, 33.098942, 39.996887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158936, 33.390896, 40.270187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597851, 0.538640, -0.593668,
		-0.801336, 0.420874, -0.425119,
		0.020874, 0.729885, 0.683252,
		34.165199, 33.609859, 40.475163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114529, 33.666271, 39.627872>,  <34.150585, 33.098942, 39.996887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114529, 33.666271, 39.627872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242840, 33.803783, 39.980896>,  <34.319828, 33.886292, 40.192711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242840, 33.803783, 39.980896>,  <34.114529, 33.666271, 39.627872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242840, 33.803783, 39.980896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554843, 0.686981, -0.469262,
		-0.767625, 0.640214, 0.029627,
		0.320781, 0.343779, 0.882562,
		34.339073, 33.906918, 40.245667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080780, 34.392700, 39.570438>,  <34.114529, 33.666271, 39.627872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080780, 34.392700, 39.570438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340706, 34.320221, 39.865711>,  <34.496662, 34.276733, 40.042873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340706, 34.320221, 39.865711>,  <34.080780, 34.392700, 39.570438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340706, 34.320221, 39.865711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649850, 0.636184, -0.415891,
		-0.394258, 0.749957, 0.531154,
		0.649812, -0.181202, 0.738180,
		34.535648, 34.265862, 40.087166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160301, 35.033527, 39.847500>,  <34.080780, 34.392700, 39.570438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160301, 35.033527, 39.847500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472195, 34.810863, 39.962143>,  <34.659332, 34.677265, 40.030930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472195, 34.810863, 39.962143>,  <34.160301, 35.033527, 39.847500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472195, 34.810863, 39.962143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626086, 0.696859, -0.349862,
		-0.004972, 0.452241, 0.891882,
		0.779738, -0.556655, 0.286607,
		34.706116, 34.643867, 40.048126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548309, 35.653835, 40.142586>,  <34.160301, 35.033527, 39.847500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548309, 35.653835, 40.142586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768574, 35.321175, 40.113941>,  <34.900734, 35.121578, 40.096756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768574, 35.321175, 40.113941>,  <34.548309, 35.653835, 40.142586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768574, 35.321175, 40.113941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779219, 0.542908, -0.313159,
		0.299318, 0.116643, 0.946997,
		0.550660, -0.831652, -0.071611,
		34.933773, 35.071678, 40.092457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246094, 35.715374, 40.584606>,  <34.548309, 35.653835, 40.142586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246094, 35.715374, 40.584606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291981, 35.428192, 40.309978>,  <35.319515, 35.255882, 40.145203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291981, 35.428192, 40.309978>,  <35.246094, 35.715374, 40.584606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291981, 35.428192, 40.309978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877509, 0.397195, -0.268728,
		0.465637, -0.571641, 0.675580,
		0.114721, -0.717957, -0.686569,
		35.326397, 35.212807, 40.104008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972694, 35.457016, 40.527416>,  <35.246094, 35.715374, 40.584606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972694, 35.457016, 40.527416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813061, 35.385460, 40.167698>,  <35.717281, 35.342525, 39.951866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813061, 35.385460, 40.167698>,  <35.972694, 35.457016, 40.527416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813061, 35.385460, 40.167698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783464, 0.443012, -0.435803,
		0.476361, -0.878486, -0.036642,
		-0.399080, -0.178892, -0.899296,
		35.693336, 35.331791, 39.897911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368664, 35.007660, 40.152935>,  <35.972694, 35.457016, 40.527416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368664, 35.007660, 40.152935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176682, 35.255077, 39.904083>,  <36.061493, 35.403526, 39.754772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176682, 35.255077, 39.904083>,  <36.368664, 35.007660, 40.152935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176682, 35.255077, 39.904083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876998, 0.319945, -0.358484,
		-0.022688, -0.717666, -0.696018,
		-0.479959, 0.618539, -0.622132,
		36.032696, 35.440639, 39.717445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374760, 34.711067, 39.402134>,  <36.368664, 35.007660, 40.152935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374760, 34.711067, 39.402134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686852, 34.602520, 39.176712>,  <36.874107, 34.537392, 39.041458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686852, 34.602520, 39.176712>,  <36.374760, 34.711067, 39.402134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686852, 34.602520, 39.176712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210007, -0.735030, 0.644692,
		-0.589183, -0.621360, -0.516503,
		0.780231, -0.271372, -0.563557,
		36.920921, 34.521107, 39.007645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231689, 34.011513, 39.145199>,  <36.374760, 34.711067, 39.402134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231689, 34.011513, 39.145199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615967, 34.119057, 39.172871>,  <36.846535, 34.183582, 39.189472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615967, 34.119057, 39.172871>,  <36.231689, 34.011513, 39.145199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615967, 34.119057, 39.172871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197036, -0.835881, 0.512327,
		0.195565, -0.478559, -0.856000,
		0.960693, 0.268856, 0.069175,
		36.904175, 34.199715, 39.193623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635071, 33.508980, 38.958511>,  <36.231689, 34.011513, 39.145199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635071, 33.508980, 38.958511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836254, 33.730839, 39.223660>,  <36.956963, 33.863956, 39.382748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836254, 33.730839, 39.223660>,  <36.635071, 33.508980, 38.958511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836254, 33.730839, 39.223660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072917, -0.791430, 0.606896,
		0.861231, -0.256907, -0.438497,
		0.502955, 0.554651, 0.662871,
		36.987141, 33.897236, 39.422520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814354, 33.054749, 39.349960>,  <36.635071, 33.508980, 38.958511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814354, 33.054749, 39.349960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913456, 33.366642, 39.579964>,  <36.972916, 33.553780, 39.717968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913456, 33.366642, 39.579964>,  <36.814354, 33.054749, 39.349960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913456, 33.366642, 39.579964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160629, -0.618359, 0.769305,
		0.955415, -0.098232, -0.278447,
		0.247751, 0.779732, 0.575011,
		36.987782, 33.600563, 39.752468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461079, 32.987297, 39.589565>,  <36.814354, 33.054749, 39.349960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461079, 32.987297, 39.589565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278793, 33.242031, 39.838329>,  <37.169422, 33.394871, 39.987587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278793, 33.242031, 39.838329>,  <37.461079, 32.987297, 39.589565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278793, 33.242031, 39.838329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195289, -0.610119, 0.767865,
		0.868442, 0.471375, 0.153670,
		-0.455709, 0.636836, 0.621907,
		37.142082, 33.433083, 40.024902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947079, 33.142727, 40.130028>,  <37.461079, 32.987297, 39.589565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947079, 33.142727, 40.130028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593704, 33.247410, 40.285488>,  <37.381680, 33.310219, 40.378765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593704, 33.247410, 40.285488>,  <37.947079, 33.142727, 40.130028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593704, 33.247410, 40.285488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262474, -0.410692, 0.873178,
		0.388129, 0.873409, 0.294131,
		-0.883438, 0.261704, 0.388649,
		37.328674, 33.325920, 40.402084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146206, 33.464085, 40.737526>,  <37.947079, 33.142727, 40.130028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146206, 33.464085, 40.737526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757442, 33.405483, 40.811214>,  <37.524185, 33.370323, 40.855427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757442, 33.405483, 40.811214>,  <38.146206, 33.464085, 40.737526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757442, 33.405483, 40.811214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231929, -0.462610, 0.855688,
		-0.040136, 0.874374, 0.483590,
		-0.971904, -0.146502, 0.184225,
		37.465870, 33.361534, 40.866482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979954, 33.698483, 41.413418>,  <38.146206, 33.464085, 40.737526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979954, 33.698483, 41.413418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687805, 33.437332, 41.333103>,  <37.512516, 33.280643, 41.284916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687805, 33.437332, 41.333103>,  <37.979954, 33.698483, 41.413418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687805, 33.437332, 41.333103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213991, -0.497859, 0.840443,
		-0.648667, 0.570867, 0.503331,
		-0.730369, -0.652876, -0.200785,
		37.468693, 33.241470, 41.272869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502167, 33.687042, 41.935181>,  <37.979954, 33.698483, 41.413418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502167, 33.687042, 41.935181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447220, 33.334377, 41.754601>,  <37.414253, 33.122780, 41.646252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447220, 33.334377, 41.754601>,  <37.502167, 33.687042, 41.935181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447220, 33.334377, 41.754601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088674, -0.464889, 0.880917,
		-0.986543, 0.080974, 0.142040,
		-0.137364, -0.881658, -0.451453,
		37.406010, 33.069881, 41.619164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166065, 33.227383, 42.375729>,  <37.502167, 33.687042, 41.935181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166065, 33.227383, 42.375729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251873, 32.945049, 42.105682>,  <37.303356, 32.775650, 41.943657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251873, 32.945049, 42.105682>,  <37.166065, 33.227383, 42.375729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251873, 32.945049, 42.105682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147602, -0.706694, 0.691952,
		-0.965502, -0.048790, -0.255784,
		0.214521, -0.705835, -0.675113,
		37.316231, 32.733299, 41.903149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582973, 32.875889, 42.344372>,  <37.166065, 33.227383, 42.375729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582973, 32.875889, 42.344372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880436, 32.645649, 42.208336>,  <37.058914, 32.507504, 42.126717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880436, 32.645649, 42.208336>,  <36.582973, 32.875889, 42.344372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880436, 32.645649, 42.208336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272843, -0.725688, 0.631612,
		-0.610351, -0.376913, -0.696712,
		0.743659, -0.575599, -0.340086,
		37.103535, 32.472969, 42.106308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312286, 32.222183, 42.135960>,  <36.582973, 32.875889, 42.344372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312286, 32.222183, 42.135960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692852, 32.143795, 42.230961>,  <36.921192, 32.096760, 42.287964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692852, 32.143795, 42.230961>,  <36.312286, 32.222183, 42.135960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692852, 32.143795, 42.230961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307606, -0.570122, 0.761801,
		-0.013884, -0.797845, -0.602703,
		0.951412, -0.195972, 0.237506,
		36.978275, 32.085003, 42.302212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299355, 31.576061, 42.238029>,  <36.312286, 32.222183, 42.135960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299355, 31.576061, 42.238029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656982, 31.679878, 42.384064>,  <36.871559, 31.742168, 42.471684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656982, 31.679878, 42.384064>,  <36.299355, 31.576061, 42.238029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656982, 31.679878, 42.384064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108622, -0.665086, 0.738825,
		0.434566, -0.700214, -0.566439,
		0.894066, 0.259540, 0.365082,
		36.925201, 31.757740, 42.493587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719662, 30.889997, 42.316738>,  <36.299355, 31.576061, 42.238029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719662, 30.889997, 42.316738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886051, 31.150587, 42.570526>,  <36.985886, 31.306940, 42.722797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886051, 31.150587, 42.570526>,  <36.719662, 30.889997, 42.316738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886051, 31.150587, 42.570526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189804, -0.620133, 0.761190,
		0.889350, -0.437057, -0.134305,
		0.415970, 0.651472, 0.634470,
		37.010841, 31.346029, 42.760868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176716, 30.543699, 42.808239>,  <36.719662, 30.889997, 42.316738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176716, 30.543699, 42.808239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086369, 30.885969, 42.994488>,  <37.032158, 31.091331, 43.106236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086369, 30.885969, 42.994488>,  <37.176716, 30.543699, 42.808239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086369, 30.885969, 42.994488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255719, -0.513290, 0.819232,
		0.939995, 0.065974, 0.334751,
		-0.225872, 0.855676, 0.465619,
		37.018608, 31.142672, 43.134174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489750, 30.447407, 43.512238>,  <37.176716, 30.543699, 42.808239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489750, 30.447407, 43.512238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212982, 30.735985, 43.523354>,  <37.046921, 30.909132, 43.530022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212982, 30.735985, 43.523354>,  <37.489750, 30.447407, 43.512238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212982, 30.735985, 43.523354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435033, -0.447327, 0.781438,
		0.576194, 0.528600, 0.623364,
		-0.691916, 0.721443, 0.027789,
		37.005409, 30.952417, 43.531689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467155, 30.705614, 44.183964>,  <37.489750, 30.447407, 43.512238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467155, 30.705614, 44.183964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111732, 30.809753, 44.032867>,  <36.898479, 30.872236, 43.942207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111732, 30.809753, 44.032867>,  <37.467155, 30.705614, 44.183964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111732, 30.809753, 44.032867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457196, -0.434340, 0.776093,
		0.037984, 0.862304, 0.504965,
		-0.888554, 0.260347, -0.377744,
		36.845165, 30.887857, 43.919544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140778, 31.140526, 44.705544>,  <37.467155, 30.705614, 44.183964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140778, 31.140526, 44.705544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850826, 30.991186, 44.473972>,  <36.676857, 30.901583, 44.335030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850826, 30.991186, 44.473972>,  <37.140778, 31.140526, 44.705544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850826, 30.991186, 44.473972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473243, -0.340810, 0.812336,
		-0.500591, 0.862820, 0.070360,
		-0.724879, -0.373351, -0.578930,
		36.633362, 30.879181, 44.300293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433720, 31.434574, 44.894577>,  <37.140778, 31.140526, 44.705544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433720, 31.434574, 44.894577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360123, 31.087511, 44.709831>,  <36.315964, 30.879274, 44.598984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360123, 31.087511, 44.709831>,  <36.433720, 31.434574, 44.894577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360123, 31.087511, 44.709831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619783, -0.262293, 0.739643,
		-0.762899, 0.422345, -0.489499,
		-0.183993, -0.867656, -0.461865,
		36.304924, 30.827213, 44.571270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781212, 31.418301, 45.030247>,  <36.433720, 31.434574, 44.894577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781212, 31.418301, 45.030247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867992, 31.055073, 44.886951>,  <35.920063, 30.837135, 44.800972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867992, 31.055073, 44.886951>,  <35.781212, 31.418301, 45.030247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867992, 31.055073, 44.886951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619317, -0.411711, 0.668536,
		-0.754570, 0.076823, -0.651707,
		0.216956, -0.908071, -0.358243,
		35.933079, 30.782652, 44.779480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107796, 31.083279, 44.994118>,  <35.781212, 31.418301, 45.030247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107796, 31.083279, 44.994118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399345, 30.809460, 44.998741>,  <35.574276, 30.645168, 45.001514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399345, 30.809460, 44.998741>,  <35.107796, 31.083279, 44.994118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399345, 30.809460, 44.998741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468179, -0.486040, 0.737953,
		-0.499556, -0.543278, -0.674754,
		0.728871, -0.684554, 0.011547,
		35.618008, 30.604095, 45.002209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780342, 30.456022, 45.132374>,  <35.107796, 31.083279, 44.994118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780342, 30.456022, 45.132374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161915, 30.374834, 45.220749>,  <35.390858, 30.326122, 45.273773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161915, 30.374834, 45.220749>,  <34.780342, 30.456022, 45.132374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161915, 30.374834, 45.220749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291014, -0.446970, 0.845889,
		-0.072936, -0.871218, -0.485447,
		0.953934, -0.202968, 0.220936,
		35.448093, 30.313944, 45.287029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771439, 29.750233, 45.233334>,  <34.780342, 30.456022, 45.132374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771439, 29.750233, 45.233334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099339, 29.885227, 45.418423>,  <35.296078, 29.966225, 45.529476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099339, 29.885227, 45.418423>,  <34.771439, 29.750233, 45.233334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099339, 29.885227, 45.418423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286913, -0.457257, 0.841782,
		0.495676, -0.822811, -0.278006,
		0.819748, 0.337488, 0.462726,
		35.345264, 29.986473, 45.557240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087170, 29.184193, 45.602634>,  <34.771439, 29.750233, 45.233334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087170, 29.184193, 45.602634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226536, 29.518906, 45.771584>,  <35.310154, 29.719734, 45.872955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226536, 29.518906, 45.771584>,  <35.087170, 29.184193, 45.602634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226536, 29.518906, 45.771584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321704, -0.316488, 0.892380,
		0.880405, -0.446800, 0.158926,
		0.348417, 0.836782, 0.422375,
		35.331062, 29.769941, 45.898296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268383, 28.927160, 46.271851>,  <35.087170, 29.184193, 45.602634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268383, 28.927160, 46.271851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282124, 29.324205, 46.318398>,  <35.290367, 29.562433, 46.346325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282124, 29.324205, 46.318398>,  <35.268383, 28.927160, 46.271851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282124, 29.324205, 46.318398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455477, -0.088092, 0.885878,
		0.889584, -0.083430, 0.449087,
		0.034348, 0.992612, 0.116366,
		35.292427, 29.621988, 46.353306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805344, 28.989134, 46.797958>,  <35.268383, 28.927160, 46.271851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805344, 28.989134, 46.797958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513706, 29.261713, 46.823429>,  <35.338726, 29.425261, 46.838711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513706, 29.261713, 46.823429>,  <35.805344, 28.989134, 46.797958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513706, 29.261713, 46.823429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105306, -0.203624, 0.973369,
		0.676266, 0.702970, 0.220222,
		-0.729092, 0.681447, 0.063677,
		35.294979, 29.466146, 46.842533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986629, 29.423635, 47.273354>,  <35.805344, 28.989134, 46.797958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986629, 29.423635, 47.273354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604225, 29.539488, 47.254787>,  <35.374783, 29.608999, 47.243649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604225, 29.539488, 47.254787>,  <35.986629, 29.423635, 47.273354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604225, 29.539488, 47.254787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075240, -0.089175, 0.993170,
		0.283514, 0.952975, 0.107044,
		-0.956012, 0.289632, -0.046420,
		35.317421, 29.626377, 47.240860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896889, 29.943802, 47.699005>,  <35.986629, 29.423635, 47.273354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896889, 29.943802, 47.699005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524750, 29.797150, 47.696583>,  <35.301468, 29.709158, 47.695129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524750, 29.797150, 47.696583>,  <35.896889, 29.943802, 47.699005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524750, 29.797150, 47.696583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026800, 0.051507, 0.998313,
		-0.365701, 0.928939, -0.057745,
		-0.930347, -0.366631, -0.006059,
		35.245647, 29.687160, 47.694763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626793, 30.457531, 48.172928>,  <35.896889, 29.943802, 47.699005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626793, 30.457531, 48.172928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343410, 30.179146, 48.126080>,  <35.173382, 30.012114, 48.097969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343410, 30.179146, 48.126080>,  <35.626793, 30.457531, 48.172928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343410, 30.179146, 48.126080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213763, 0.053447, 0.975422,
		-0.672599, 0.716085, -0.186636,
		-0.708461, -0.695964, -0.117124,
		35.130871, 29.970356, 48.090942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996403, 30.701054, 48.346741>,  <35.626793, 30.457531, 48.172928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996403, 30.701054, 48.346741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923981, 30.308548, 48.373085>,  <34.880527, 30.073044, 48.388893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923981, 30.308548, 48.373085>,  <34.996403, 30.701054, 48.346741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923981, 30.308548, 48.373085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137591, 0.091583, 0.986246,
		-0.973800, 0.169504, -0.151595,
		-0.181056, -0.981265, 0.065861,
		34.869663, 30.014168, 48.392845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400726, 30.746862, 48.687183>,  <34.996403, 30.701054, 48.346741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400726, 30.746862, 48.687183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556305, 30.380934, 48.730679>,  <34.649651, 30.161377, 48.756775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556305, 30.380934, 48.730679>,  <34.400726, 30.746862, 48.687183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556305, 30.380934, 48.730679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118848, 0.067225, 0.990634,
		-0.913563, -0.398227, -0.082577,
		0.388946, -0.914821, 0.108743,
		34.672989, 30.106487, 48.763302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953880, 30.388391, 49.064312>,  <34.400726, 30.746862, 48.687183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953880, 30.388391, 49.064312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290806, 30.180319, 49.120766>,  <34.492962, 30.055475, 49.154636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290806, 30.180319, 49.120766>,  <33.953880, 30.388391, 49.064312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290806, 30.180319, 49.120766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266855, -0.174982, 0.947718,
		-0.468290, -0.835938, -0.286202,
		0.842314, -0.520181, 0.141132,
		34.543499, 30.024265, 49.163105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761047, 29.839792, 49.465992>,  <33.953880, 30.388391, 49.064312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761047, 29.839792, 49.465992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156132, 29.865259, 49.523098>,  <34.393181, 29.880539, 49.557362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156132, 29.865259, 49.523098>,  <33.761047, 29.839792, 49.465992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156132, 29.865259, 49.523098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114341, -0.328465, 0.937570,
		0.106585, -0.942368, -0.317148,
		0.987707, 0.063668, 0.142761,
		34.452442, 29.884359, 49.565926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857536, 29.240002, 49.806229>,  <33.761047, 29.839792, 49.465992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857536, 29.240002, 49.806229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199856, 29.437647, 49.867493>,  <34.405247, 29.556234, 49.904251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199856, 29.437647, 49.867493>,  <33.857536, 29.240002, 49.806229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199856, 29.437647, 49.867493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043760, -0.364156, 0.930310,
		0.515449, -0.789459, -0.333268,
		0.855802, 0.494111, 0.153157,
		34.456596, 29.585880, 49.913441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446114, 28.723125, 50.030792>,  <33.857536, 29.240002, 49.806229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446114, 28.723125, 50.030792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563190, 29.082083, 50.162861>,  <34.633438, 29.297457, 50.242104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563190, 29.082083, 50.162861>,  <34.446114, 28.723125, 50.030792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563190, 29.082083, 50.162861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050390, -0.359291, 0.931864,
		0.954878, -0.256111, -0.150380,
		0.292691, 0.897395, 0.330173,
		34.650997, 29.351301, 50.261913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078773, 28.705713, 50.454426>,  <34.446114, 28.723125, 50.030792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078773, 28.705713, 50.454426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920513, 29.055386, 50.567047>,  <34.825558, 29.265188, 50.634621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920513, 29.055386, 50.567047>,  <35.078773, 28.705713, 50.454426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920513, 29.055386, 50.567047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051015, -0.285176, 0.957117,
		0.916984, 0.393045, 0.068233,
		-0.395648, 0.874180, 0.281553,
		34.801819, 29.317640, 50.651512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345158, 29.007444, 50.991585>,  <35.078773, 28.705713, 50.454426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345158, 29.007444, 50.991585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974041, 29.151068, 51.032158>,  <34.751373, 29.237242, 51.056499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974041, 29.151068, 51.032158>,  <35.345158, 29.007444, 50.991585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974041, 29.151068, 51.032158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054378, -0.138825, 0.988823,
		0.369126, 0.922933, 0.109275,
		-0.927787, 0.359058, 0.101431,
		34.695705, 29.258785, 51.062588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419762, 29.106037, 51.728001>,  <35.345158, 29.007444, 50.991585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419762, 29.106037, 51.728001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033352, 29.179193, 51.654949>,  <34.801506, 29.223087, 51.611118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033352, 29.179193, 51.654949>,  <35.419762, 29.106037, 51.728001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033352, 29.179193, 51.654949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210287, -0.145352, 0.966774,
		0.150271, 0.972329, 0.178873,
		-0.966022, 0.182893, -0.182626,
		34.743546, 29.234062, 51.600163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333202, 29.563618, 52.318619>,  <35.419762, 29.106037, 51.728001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333202, 29.563618, 52.318619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636726, 29.760426, 52.489326>,  <35.818840, 29.878510, 52.591751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636726, 29.760426, 52.489326>,  <35.333202, 29.563618, 52.318619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636726, 29.760426, 52.489326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429030, 0.115410, -0.895887,
		-0.490047, 0.862901, -0.123517,
		0.758807, 0.492019, 0.426766,
		35.864368, 29.908031, 52.617355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361561, 30.171890, 51.930267>,  <35.333202, 29.563618, 52.318619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361561, 30.171890, 51.930267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712925, 30.097383, 52.106312>,  <35.923744, 30.052679, 52.211941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712925, 30.097383, 52.106312>,  <35.361561, 30.171890, 51.930267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712925, 30.097383, 52.106312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467384, 0.142635, -0.872472,
		0.099738, 0.972090, 0.212351,
		0.878410, -0.186268, 0.440114,
		35.976448, 30.041504, 52.238346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757347, 30.703648, 51.698875>,  <35.361561, 30.171890, 51.930267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757347, 30.703648, 51.698875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029305, 30.446493, 51.839985>,  <36.192478, 30.292200, 51.924648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029305, 30.446493, 51.839985>,  <35.757347, 30.703648, 51.698875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029305, 30.446493, 51.839985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607846, 0.224968, -0.761520,
		0.410206, 0.732181, 0.543729,
		0.679892, -0.642884, 0.352770,
		36.233273, 30.253628, 51.945816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326069, 31.035778, 51.663326>,  <35.757347, 30.703648, 51.698875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326069, 31.035778, 51.663326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414028, 30.645576, 51.665844>,  <36.466805, 30.411455, 51.667355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414028, 30.645576, 51.665844>,  <36.326069, 31.035778, 51.663326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414028, 30.645576, 51.665844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653583, 0.142533, -0.743312,
		0.724207, 0.167564, 0.668915,
		0.219895, -0.975503, 0.006293,
		36.479996, 30.352926, 51.667732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044724, 31.030031, 51.577400>,  <36.326069, 31.035778, 51.663326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044724, 31.030031, 51.577400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948742, 30.651531, 51.490650>,  <36.891151, 30.424431, 51.438599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948742, 30.651531, 51.490650>,  <37.044724, 31.030031, 51.577400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948742, 30.651531, 51.490650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553591, 0.050140, -0.831278,
		0.797470, -0.319531, 0.511803,
		-0.239958, -0.946248, -0.216875,
		36.876755, 30.367657, 51.425587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667866, 30.706602, 51.463661>,  <37.044724, 31.030031, 51.577400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667866, 30.706602, 51.463661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401005, 30.485117, 51.264336>,  <37.240887, 30.352226, 51.144741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401005, 30.485117, 51.264336>,  <37.667866, 30.706602, 51.463661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401005, 30.485117, 51.264336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603033, -0.008720, -0.797668,
		0.437333, -0.832663, 0.339724,
		-0.667151, -0.553712, -0.498310,
		37.200859, 30.319004, 51.114841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092461, 30.168194, 51.030712>,  <37.667866, 30.706602, 51.463661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092461, 30.168194, 51.030712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731342, 30.200411, 50.861729>,  <37.514671, 30.219740, 50.760338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731342, 30.200411, 50.861729>,  <38.092461, 30.168194, 51.030712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731342, 30.200411, 50.861729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428987, 0.099038, -0.897865,
		-0.030477, -0.991819, -0.123963,
		-0.902797, 0.080543, -0.422459,
		37.460503, 30.224573, 50.734989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132336, 29.812082, 50.422752>,  <38.092461, 30.168194, 51.030712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132336, 29.812082, 50.422752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804798, 30.030750, 50.352722>,  <37.608276, 30.161951, 50.310703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804798, 30.030750, 50.352722>,  <38.132336, 29.812082, 50.422752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804798, 30.030750, 50.352722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270364, 0.098256, -0.957731,
		-0.506363, -0.831562, -0.228257,
		-0.818840, 0.546672, -0.175071,
		37.559147, 30.194752, 50.300201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727108, 29.438534, 49.826675>,  <38.132336, 29.812082, 50.422752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727108, 29.438534, 49.826675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638683, 29.828541, 49.835388>,  <37.585629, 30.062544, 49.840618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638683, 29.828541, 49.835388>,  <37.727108, 29.438534, 49.826675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638683, 29.828541, 49.835388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348724, 0.099886, -0.931887,
		-0.910782, -0.198406, -0.362093,
		-0.221061, 0.975017, 0.021785,
		37.572365, 30.121046, 49.841923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690319, 29.509096, 49.145283>,  <37.727108, 29.438534, 49.826675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690319, 29.509096, 49.145283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700340, 29.883596, 49.285458>,  <37.706352, 30.108297, 49.369564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700340, 29.883596, 49.285458>,  <37.690319, 29.509096, 49.145283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700340, 29.883596, 49.285458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277820, 0.330218, -0.902093,
		-0.960306, 0.119955, -0.251838,
		0.025049, 0.936251, 0.350436,
		37.707855, 30.164473, 49.390587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175381, 29.961494, 48.845276>,  <37.690319, 29.509096, 49.145283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175381, 29.961494, 48.845276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465984, 30.202877, 48.976749>,  <37.640347, 30.347706, 49.055634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465984, 30.202877, 48.976749>,  <37.175381, 29.961494, 48.845276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465984, 30.202877, 48.976749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266971, 0.192867, -0.944208,
		-0.633179, 0.773720, -0.020986,
		0.726506, 0.603456, 0.328680,
		37.683937, 30.383913, 49.075352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017757, 30.576426, 48.598106>,  <37.175381, 29.961494, 48.845276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017757, 30.576426, 48.598106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411320, 30.623667, 48.651737>,  <37.647457, 30.652012, 48.683914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411320, 30.623667, 48.651737>,  <37.017757, 30.576426, 48.598106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411320, 30.623667, 48.651737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076298, 0.400805, -0.912981,
		-0.161564, 0.908519, 0.385344,
		0.983908, 0.118104, 0.134074,
		37.706493, 30.659098, 48.691959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130867, 31.190077, 48.334400>,  <37.017757, 30.576426, 48.598106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130867, 31.190077, 48.334400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514042, 31.076019, 48.347347>,  <37.743946, 31.007586, 48.355114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514042, 31.076019, 48.347347>,  <37.130867, 31.190077, 48.334400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514042, 31.076019, 48.347347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193624, 0.558955, -0.806274,
		0.211810, 0.778629, 0.590655,
		0.957938, -0.285142, 0.032369,
		37.801422, 30.990477, 48.357059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584469, 31.777424, 48.259216>,  <37.130867, 31.190077, 48.334400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584469, 31.777424, 48.259216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812351, 31.472490, 48.136395>,  <37.949081, 31.289530, 48.062702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812351, 31.472490, 48.136395>,  <37.584469, 31.777424, 48.259216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812351, 31.472490, 48.136395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125975, 0.450198, -0.883997,
		0.812138, 0.464936, 0.352515,
		0.569704, -0.762336, -0.307053,
		37.983261, 31.243790, 48.044277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076279, 32.068150, 48.061035>,  <37.584469, 31.777424, 48.259216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076279, 32.068150, 48.061035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150425, 31.720779, 47.877087>,  <38.194912, 31.512358, 47.766716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150425, 31.720779, 47.877087>,  <38.076279, 32.068150, 48.061035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150425, 31.720779, 47.877087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321123, 0.495822, -0.806871,
		0.928720, 0.001889, 0.370778,
		0.185364, -0.868422, -0.459873,
		38.206036, 31.460253, 47.739124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773956, 32.134399, 47.681011>,  <38.076279, 32.068150, 48.061035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773956, 32.134399, 47.681011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589622, 31.829639, 47.498962>,  <38.479023, 31.646784, 47.389732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589622, 31.829639, 47.498962>,  <38.773956, 32.134399, 47.681011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589622, 31.829639, 47.498962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432947, 0.254659, -0.864700,
		0.774717, -0.595528, 0.212507,
		-0.460836, -0.761902, -0.455121,
		38.451370, 31.601068, 47.362427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227921, 31.834703, 47.269920>,  <38.773956, 32.134399, 47.681011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227921, 31.834703, 47.269920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893383, 31.701708, 47.095573>,  <38.692661, 31.621910, 46.990963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893383, 31.701708, 47.095573>,  <39.227921, 31.834703, 47.269920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893383, 31.701708, 47.095573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422302, 0.116231, -0.898973,
		0.349561, -0.935917, 0.043202,
		-0.836342, -0.332490, -0.435869,
		38.642479, 31.601961, 46.964813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400948, 31.338394, 46.757885>,  <39.227921, 31.834703, 47.269920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400948, 31.338394, 46.757885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029469, 31.455713, 46.667107>,  <38.806583, 31.526104, 46.612640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029469, 31.455713, 46.667107>,  <39.400948, 31.338394, 46.757885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029469, 31.455713, 46.667107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279835, 0.152673, -0.947831,
		-0.243348, -0.943752, -0.223861,
		-0.928695, 0.293297, -0.226943,
		38.750858, 31.543703, 46.599022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284790, 31.166237, 46.026405>,  <39.400948, 31.338394, 46.757885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284790, 31.166237, 46.026405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972363, 31.411133, 46.075546>,  <38.784904, 31.558071, 46.105030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972363, 31.411133, 46.075546>,  <39.284790, 31.166237, 46.026405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972363, 31.411133, 46.075546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115821, 0.335363, -0.934942,
		-0.613609, -0.716026, -0.332852,
		-0.781069, 0.612241, 0.122851,
		38.738041, 31.594805, 46.112400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715321, 30.985138, 45.475864>,  <39.284790, 31.166237, 46.026405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715321, 30.985138, 45.475864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666439, 31.361732, 45.601513>,  <38.637108, 31.587688, 45.676903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666439, 31.361732, 45.601513>,  <38.715321, 30.985138, 45.475864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666439, 31.361732, 45.601513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047551, 0.310578, -0.949358,
		-0.991365, -0.130956, 0.006813,
		-0.122208, 0.941484, 0.314123,
		38.629776, 31.644178, 45.695751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046886, 31.242437, 45.097511>,  <38.715321, 30.985138, 45.475864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046886, 31.242437, 45.097511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284946, 31.541843, 45.214493>,  <38.427780, 31.721487, 45.284679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284946, 31.541843, 45.214493>,  <38.046886, 31.242437, 45.097511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284946, 31.541843, 45.214493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083741, 0.419703, -0.903790,
		-0.799242, 0.513398, 0.312466,
		0.595147, 0.748513, 0.292452,
		38.463490, 31.766397, 45.302227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808037, 31.813200, 44.576794>,  <38.046886, 31.242437, 45.097511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808037, 31.813200, 44.576794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105385, 31.974281, 44.790421>,  <38.283794, 32.070930, 44.918594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105385, 31.974281, 44.790421>,  <37.808037, 31.813200, 44.576794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105385, 31.974281, 44.790421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201284, 0.626756, -0.752769,
		-0.637872, 0.667087, 0.384856,
		0.743373, 0.402705, 0.534065,
		38.328396, 32.095093, 44.950642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804283, 32.583347, 44.568787>,  <37.808037, 31.813200, 44.576794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804283, 32.583347, 44.568787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187649, 32.499081, 44.645798>,  <38.417667, 32.448521, 44.692005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187649, 32.499081, 44.645798>,  <37.804283, 32.583347, 44.568787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187649, 32.499081, 44.645798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279768, 0.560326, -0.779593,
		0.056357, 0.801034, 0.595961,
		0.958412, -0.210666, 0.192525,
		38.475174, 32.435883, 44.703556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121670, 33.161316, 44.366280>,  <37.804283, 32.583347, 44.568787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121670, 33.161316, 44.366280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424530, 32.901199, 44.391056>,  <38.606247, 32.745129, 44.405922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424530, 32.901199, 44.391056>,  <38.121670, 33.161316, 44.366280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424530, 32.901199, 44.391056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414217, 0.404622, -0.815295,
		0.505119, 0.642959, 0.575724,
		0.757152, -0.650295, 0.061942,
		38.651676, 32.706112, 44.409637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756256, 33.565865, 44.292313>,  <38.121670, 33.161316, 44.366280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756256, 33.565865, 44.292313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849968, 33.188026, 44.200356>,  <38.906193, 32.961323, 44.145184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849968, 33.188026, 44.200356>,  <38.756256, 33.565865, 44.292313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849968, 33.188026, 44.200356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500030, 0.319875, -0.804767,
		0.833717, 0.073585, 0.547266,
		0.234275, -0.944598, -0.229891,
		38.920250, 32.904648, 44.131390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498234, 33.548920, 44.101353>,  <38.756256, 33.565865, 44.292313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498234, 33.548920, 44.101353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329655, 33.241802, 43.908329>,  <39.228508, 33.057529, 43.792515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329655, 33.241802, 43.908329>,  <39.498234, 33.548920, 44.101353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329655, 33.241802, 43.908329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424276, 0.303356, -0.853209,
		0.801480, -0.564323, 0.197909,
		-0.421449, -0.767798, -0.482563,
		39.203220, 33.011463, 43.763561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028446, 33.285828, 43.793152>,  <39.498234, 33.548920, 44.101353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028446, 33.285828, 43.793152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719845, 33.150902, 43.577377>,  <39.534683, 33.069946, 43.447910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719845, 33.150902, 43.577377>,  <40.028446, 33.285828, 43.793152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719845, 33.150902, 43.577377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470688, 0.267841, -0.840663,
		0.428056, -0.902483, -0.047869,
		-0.771506, -0.337320, -0.539439,
		39.488392, 33.049706, 43.415546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419094, 33.044170, 43.267929>,  <40.028446, 33.285828, 43.793152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419094, 33.044170, 43.267929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038853, 33.080719, 43.149273>,  <39.810707, 33.102650, 43.078079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038853, 33.080719, 43.149273>,  <40.419094, 33.044170, 43.267929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038853, 33.080719, 43.149273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308654, 0.379335, -0.872260,
		0.032825, -0.920736, -0.388802,
		-0.950608, 0.091373, -0.296640,
		39.753670, 33.108131, 43.060280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446716, 32.822910, 42.623253>,  <40.419094, 33.044170, 43.267929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446716, 32.822910, 42.623253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115543, 33.046635, 42.639763>,  <39.916840, 33.180870, 42.649670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115543, 33.046635, 42.639763>,  <40.446716, 32.822910, 42.623253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115543, 33.046635, 42.639763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164744, 0.312890, -0.935392,
		-0.536086, -0.767642, -0.351195,
		-0.827932, 0.559308, 0.041272,
		39.867165, 33.214428, 42.652145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123005, 32.753513, 41.892612>,  <40.446716, 32.822910, 42.623253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123005, 32.753513, 41.892612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951626, 33.078957, 42.049828>,  <39.848797, 33.274223, 42.144157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951626, 33.078957, 42.049828>,  <40.123005, 32.753513, 41.892612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951626, 33.078957, 42.049828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261626, 0.528058, -0.807902,
		-0.864860, -0.243315, -0.439106,
		-0.428448, 0.813604, 0.393039,
		39.823090, 33.323036, 42.167740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711628, 33.032898, 41.378517>,  <40.123005, 32.753513, 41.892612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711628, 33.032898, 41.378517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764702, 33.367836, 41.590649>,  <39.796547, 33.568798, 41.717926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764702, 33.367836, 41.590649>,  <39.711628, 33.032898, 41.378517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764702, 33.367836, 41.590649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139032, 0.514046, -0.846420,
		-0.981358, 0.186041, -0.048211,
		0.132687, 0.837344, 0.530329,
		39.804508, 33.619038, 41.749748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300968, 33.510849, 41.130486>,  <39.711628, 33.032898, 41.378517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300968, 33.510849, 41.130486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599392, 33.713078, 41.303825>,  <39.778446, 33.834415, 41.407829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599392, 33.713078, 41.303825>,  <39.300968, 33.510849, 41.130486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599392, 33.713078, 41.303825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107990, 0.550315, -0.827944,
		-0.657062, 0.664494, 0.355973,
		0.746061, 0.505570, 0.433350,
		39.823212, 33.864750, 41.433830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605942, 33.961773, 40.637943>,  <39.300968, 33.510849, 41.130486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605942, 33.961773, 40.637943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804302, 34.141319, 40.935291>,  <39.923317, 34.249046, 41.113701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804302, 34.141319, 40.935291>,  <39.605942, 33.961773, 40.637943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804302, 34.141319, 40.935291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050279, 0.839765, -0.540617,
		-0.866922, 0.305468, 0.393871,
		0.495901, 0.448870, 0.743370,
		39.953072, 34.275982, 41.158302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279858, 34.695171, 40.872593>,  <39.605942, 33.961773, 40.637943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279858, 34.695171, 40.872593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675323, 34.654251, 40.916538>,  <39.912605, 34.629700, 40.942905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675323, 34.654251, 40.916538>,  <39.279858, 34.695171, 40.872593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675323, 34.654251, 40.916538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149114, 0.753705, -0.640073,
		-0.017324, 0.649202, 0.760419,
		0.988668, -0.102300, 0.109862,
		39.971924, 34.623562, 40.949497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536739, 35.349762, 40.734646>,  <39.279858, 34.695171, 40.872593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536739, 35.349762, 40.734646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879211, 35.143410, 40.746178>,  <40.084694, 35.019600, 40.753098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879211, 35.143410, 40.746178>,  <39.536739, 35.349762, 40.734646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879211, 35.143410, 40.746178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325754, 0.495645, -0.805121,
		0.401055, 0.698717, 0.592409,
		0.856177, -0.515878, 0.028829,
		40.136063, 34.988647, 40.754826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070950, 35.849659, 40.871849>,  <39.536739, 35.349762, 40.734646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070950, 35.849659, 40.871849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204159, 35.528316, 40.674377>,  <40.284084, 35.335510, 40.555897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204159, 35.528316, 40.674377>,  <40.070950, 35.849659, 40.871849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204159, 35.528316, 40.674377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411273, 0.594890, -0.690624,
		0.848499, 0.026958, 0.528510,
		0.333023, -0.803355, -0.493676,
		40.304066, 35.287312, 40.526276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748657, 35.937592, 40.711433>,  <40.070950, 35.849659, 40.871849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748657, 35.937592, 40.711433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644585, 35.649212, 40.454517>,  <40.582142, 35.476185, 40.300369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644585, 35.649212, 40.454517>,  <40.748657, 35.937592, 40.711433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644585, 35.649212, 40.454517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415120, 0.517063, -0.748546,
		0.871769, -0.461385, 0.164751,
		-0.260181, -0.720950, -0.642290,
		40.566528, 35.432926, 40.261829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361065, 35.771057, 40.425198>,  <40.748657, 35.937592, 40.711433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361065, 35.771057, 40.425198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078743, 35.649364, 40.169296>,  <40.909351, 35.576347, 40.015755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078743, 35.649364, 40.169296>,  <41.361065, 35.771057, 40.425198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078743, 35.649364, 40.169296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482832, 0.454236, -0.748694,
		0.518378, -0.837324, -0.173706,
		-0.705803, -0.304236, -0.639753,
		40.867001, 35.558094, 39.977371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695641, 35.404419, 39.931389>,  <41.361065, 35.771057, 40.425198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695641, 35.404419, 39.931389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353947, 35.532150, 39.767288>,  <41.148930, 35.608791, 39.668827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353947, 35.532150, 39.767288>,  <41.695641, 35.404419, 39.931389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353947, 35.532150, 39.767288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497560, 0.273427, -0.823208,
		-0.150704, -0.907339, -0.392459,
		-0.854238, 0.319333, -0.410250,
		41.097675, 35.627949, 39.644215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748947, 35.151279, 39.293499>,  <41.695641, 35.404419, 39.931389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748947, 35.151279, 39.293499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492123, 35.457909, 39.289078>,  <41.338028, 35.641884, 39.286427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492123, 35.457909, 39.289078>,  <41.748947, 35.151279, 39.293499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492123, 35.457909, 39.289078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494484, 0.403068, -0.770079,
		-0.585864, -0.499907, -0.637853,
		-0.642066, 0.766570, -0.011053,
		41.299503, 35.687881, 39.285763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658577, 35.312706, 38.644756>,  <41.748947, 35.151279, 39.293499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658577, 35.312706, 38.644756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563999, 35.637093, 38.858829>,  <41.507252, 35.831726, 38.987274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563999, 35.637093, 38.858829>,  <41.658577, 35.312706, 38.644756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563999, 35.637093, 38.858829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584709, 0.558667, -0.588223,
		-0.776021, 0.173844, -0.606275,
		-0.236447, 0.810968, 0.535186,
		41.493065, 35.880383, 39.019386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432846, 35.844994, 38.160553>,  <41.658577, 35.312706, 38.644756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432846, 35.844994, 38.160553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606678, 35.976166, 38.496078>,  <41.710979, 36.054867, 38.697392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606678, 35.976166, 38.496078>,  <41.432846, 35.844994, 38.160553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606678, 35.976166, 38.496078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740942, 0.399289, -0.539975,
		-0.511999, 0.856174, -0.069451,
		0.434582, 0.327926, 0.838811,
		41.737053, 36.074543, 38.747723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806866, 36.385406, 37.987164>,  <41.432846, 35.844994, 38.160553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806866, 36.385406, 37.987164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986343, 36.297455, 38.333649>,  <42.094028, 36.244682, 38.541542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986343, 36.297455, 38.333649>,  <41.806866, 36.385406, 37.987164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986343, 36.297455, 38.333649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887927, 0.219535, -0.404215,
		-0.101287, 0.950504, 0.293740,
		0.448694, -0.219878, 0.866214,
		42.120953, 36.231491, 38.593513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225822, 36.989948, 38.136612>,  <41.806866, 36.385406, 37.987164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225822, 36.989948, 38.136612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376614, 36.654198, 38.293243>,  <42.467087, 36.452747, 38.387222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376614, 36.654198, 38.293243>,  <42.225822, 36.989948, 38.136612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376614, 36.654198, 38.293243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914263, 0.269498, -0.302479,
		0.148363, 0.472037, 0.869005,
		0.376976, -0.839376, 0.391582,
		42.489708, 36.402386, 38.410717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880775, 37.096561, 38.586994>,  <42.225822, 36.989948, 38.136612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880775, 37.096561, 38.586994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923653, 36.739506, 38.411854>,  <42.949379, 36.525272, 38.306770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923653, 36.739506, 38.411854>,  <42.880775, 37.096561, 38.586994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923653, 36.739506, 38.411854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891586, 0.281190, -0.354974,
		0.439981, -0.352328, 0.826003,
		0.107196, -0.892635, -0.437849,
		42.955811, 36.471714, 38.280499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473877, 36.651958, 38.768814>,  <42.880775, 37.096561, 38.586994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473877, 36.651958, 38.768814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367908, 36.569138, 38.392101>,  <43.304325, 36.519447, 38.166073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367908, 36.569138, 38.392101>,  <43.473877, 36.651958, 38.768814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367908, 36.569138, 38.392101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904662, 0.284694, -0.317074,
		0.333768, -0.935991, 0.111888,
		-0.264924, -0.207050, -0.941778,
		43.288429, 36.507023, 38.109570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020432, 36.401672, 38.306210>,  <43.473877, 36.651958, 38.768814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020432, 36.401672, 38.306210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757351, 36.610909, 38.089394>,  <43.599503, 36.736450, 37.959305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757351, 36.610909, 38.089394>,  <44.020432, 36.401672, 38.306210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757351, 36.610909, 38.089394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746100, 0.551489, -0.373089,
		0.103767, -0.649795, -0.752993,
		-0.657699, 0.523094, -0.542038,
		43.560040, 36.767838, 37.926781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321476, 36.626015, 38.936283>,  <44.020432, 36.401672, 38.306210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321476, 36.626015, 38.936283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651970, 36.550991, 38.723812>,  <44.850266, 36.505978, 38.596329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651970, 36.550991, 38.723812>,  <44.321476, 36.626015, 38.936283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651970, 36.550991, 38.723812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169438, 0.816530, -0.551878,
		0.537234, 0.545985, 0.642869,
		0.826239, -0.187561, -0.531179,
		44.899841, 36.494724, 38.564457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733433, 37.222977, 38.964855>,  <44.321476, 36.626015, 38.936283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733433, 37.222977, 38.964855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.784607, 37.004208, 38.633915>,  <44.815311, 36.872944, 38.435352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.784607, 37.004208, 38.633915>,  <44.733433, 37.222977, 38.964855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.784607, 37.004208, 38.633915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160022, 0.811889, -0.561453,
		0.978787, 0.204226, 0.016352,
		0.127940, -0.546927, -0.827347,
		44.822990, 36.840130, 38.385712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026878, 37.675655, 38.536308>,  <44.733433, 37.222977, 38.964855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026878, 37.675655, 38.536308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942772, 37.406590, 38.252529>,  <44.892307, 37.245152, 38.082260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942772, 37.406590, 38.252529>,  <45.026878, 37.675655, 38.536308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.942772, 37.406590, 38.252529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107885, 0.737202, -0.667004,
		0.971674, -0.063709, -0.227578,
		-0.210265, -0.672662, -0.709447,
		44.879692, 37.204792, 38.039696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458244, 37.837002, 37.976894>,  <45.026878, 37.675655, 38.536308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.458244, 37.837002, 37.976894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156563, 37.639942, 37.803242>,  <44.975552, 37.521706, 37.699051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156563, 37.639942, 37.803242>,  <45.458244, 37.837002, 37.976894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156563, 37.639942, 37.803242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033790, 0.631146, -0.774927,
		0.655770, -0.599123, -0.459366,
		-0.754204, -0.492653, -0.434131,
		44.930302, 37.492149, 37.673004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656876, 37.770309, 37.263409>,  <45.458244, 37.837002, 37.976894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656876, 37.770309, 37.263409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258774, 37.735394, 37.280605>,  <45.019913, 37.714443, 37.290924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258774, 37.735394, 37.280605>,  <45.656876, 37.770309, 37.263409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.258774, 37.735394, 37.280605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081461, 0.505796, -0.858798,
		0.053222, -0.858225, -0.510507,
		-0.995254, -0.087293, 0.042992,
		44.960197, 37.709206, 37.293503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498280, 37.800705, 36.592422>,  <45.656876, 37.770309, 37.263409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498280, 37.800705, 36.592422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.151146, 37.854240, 36.783813>,  <44.942863, 37.886364, 36.898647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.151146, 37.854240, 36.783813>,  <45.498280, 37.800705, 36.592422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151146, 37.854240, 36.783813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302575, 0.621486, -0.722637,
		-0.394089, -0.771908, -0.498851,
		-0.867838, 0.133843, 0.478481,
		44.890793, 37.894394, 36.927357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024464, 37.890324, 36.060024>,  <45.498280, 37.800705, 36.592422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024464, 37.890324, 36.060024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848850, 38.050289, 36.381847>,  <44.743481, 38.146267, 36.574944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848850, 38.050289, 36.381847>,  <45.024464, 37.890324, 36.060024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848850, 38.050289, 36.381847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336334, 0.757219, -0.559910,
		-0.833144, -0.516421, -0.197940,
		-0.439033, 0.399912, 0.804563,
		44.717140, 38.170261, 36.623215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344578, 38.039146, 35.921631>,  <45.024464, 37.890324, 36.060024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344578, 38.039146, 35.921631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444378, 38.281029, 36.224174>,  <44.504257, 38.426159, 36.405701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444378, 38.281029, 36.224174>,  <44.344578, 38.039146, 35.921631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444378, 38.281029, 36.224174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348329, 0.784825, -0.512558,
		-0.903559, -0.135582, 0.406447,
		0.249496, 0.604704, 0.756363,
		44.519226, 38.462440, 36.451084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736176, 38.408577, 35.953609>,  <44.344578, 38.039146, 35.921631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736176, 38.408577, 35.953609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035446, 38.615913, 36.119286>,  <44.215008, 38.740314, 36.218693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035446, 38.615913, 36.119286>,  <43.736176, 38.408577, 35.953609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035446, 38.615913, 36.119286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295558, 0.819258, -0.491388,
		-0.594039, 0.245226, 0.766148,
		0.748173, 0.518344, 0.414193,
		44.259899, 38.771416, 36.243542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477795, 39.087875, 36.148716>,  <43.736176, 38.408577, 35.953609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477795, 39.087875, 36.148716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871349, 39.146076, 36.107151>,  <44.107483, 39.180996, 36.082214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871349, 39.146076, 36.107151>,  <43.477795, 39.087875, 36.148716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871349, 39.146076, 36.107151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176870, 0.707036, -0.684702,
		-0.026155, 0.692047, 0.721378,
		0.983887, 0.145499, -0.103910,
		44.166515, 39.189728, 36.075977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481068, 39.686279, 35.755611>,  <43.477795, 39.087875, 36.148716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481068, 39.686279, 35.755611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874989, 39.620270, 35.733929>,  <44.111340, 39.580666, 35.720921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874989, 39.620270, 35.733929>,  <43.481068, 39.686279, 35.755611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874989, 39.620270, 35.733929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072842, 0.675658, -0.733608,
		0.157685, 0.718508, 0.677408,
		0.984799, -0.165023, -0.054204,
		44.170429, 39.570763, 35.717667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921165, 40.374660, 35.657715>,  <43.481068, 39.686279, 35.755611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921165, 40.374660, 35.657715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144489, 40.072906, 35.519615>,  <44.278484, 39.891853, 35.436756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144489, 40.072906, 35.519615>,  <43.921165, 40.374660, 35.657715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144489, 40.072906, 35.519615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247750, 0.548763, -0.798423,
		0.791780, 0.360228, 0.493276,
		0.558306, -0.754384, -0.345253,
		44.311981, 39.846592, 35.416039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596313, 40.613720, 35.441761>,  <43.921165, 40.374660, 35.657715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596313, 40.613720, 35.441761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559181, 40.272293, 35.236702>,  <44.536903, 40.067436, 35.113667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559181, 40.272293, 35.236702>,  <44.596313, 40.613720, 35.441761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559181, 40.272293, 35.236702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252304, 0.477906, -0.841397,
		0.963185, -0.207449, 0.170994,
		-0.092828, -0.853564, -0.512652,
		44.531334, 40.016224, 35.082905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.756351, 40.854225, 34.814899>,  <44.596313, 40.613720, 35.441761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.756351, 40.854225, 34.814899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.686226, 40.469727, 34.729797>,  <44.644150, 40.239025, 34.678738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.686226, 40.469727, 34.729797>,  <44.756351, 40.854225, 34.814899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.686226, 40.469727, 34.729797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182708, 0.180579, -0.966441,
		0.967411, -0.208300, 0.143970,
		-0.175312, -0.961250, -0.212752,
		44.633633, 40.181351, 34.665970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312126, 40.509743, 34.373844>,  <44.756351, 40.854225, 34.814899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312126, 40.509743, 34.373844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948574, 40.355095, 34.311275>,  <44.730442, 40.262306, 34.273735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948574, 40.355095, 34.311275>,  <45.312126, 40.509743, 34.373844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948574, 40.355095, 34.311275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018278, 0.337763, -0.941054,
		0.416663, -0.858161, -0.299919,
		-0.908877, -0.386621, -0.156420,
		44.675911, 40.239109, 34.264351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.382641, 40.038322, 33.802158>,  <45.312126, 40.509743, 34.373844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.382641, 40.038322, 33.802158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001465, 40.155430, 33.833641>,  <44.772758, 40.225693, 33.852531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001465, 40.155430, 33.833641>,  <45.382641, 40.038322, 33.802158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001465, 40.155430, 33.833641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027293, 0.175729, -0.984060,
		-0.301931, -0.939897, -0.159468,
		-0.952939, 0.292766, 0.078711,
		44.715584, 40.243259, 33.857254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157875, 39.802624, 33.252949>,  <45.382641, 40.038322, 33.802158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157875, 39.802624, 33.252949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865139, 40.047592, 33.372517>,  <44.689499, 40.194572, 33.444256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865139, 40.047592, 33.372517>,  <45.157875, 39.802624, 33.252949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865139, 40.047592, 33.372517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330974, 0.064010, -0.941466,
		-0.595708, -0.787936, 0.155850,
		-0.731839, 0.612421, 0.298918,
		44.645588, 40.231319, 33.462193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513371, 39.546268, 32.817173>,  <45.157875, 39.802624, 33.252949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513371, 39.546268, 32.817173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488823, 39.926643, 32.938465>,  <44.474094, 40.154869, 33.011238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488823, 39.926643, 32.938465>,  <44.513371, 39.546268, 32.817173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488823, 39.926643, 32.938465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020595, 0.302529, -0.952918,
		-0.997903, -0.064722, 0.001020,
		-0.061366, 0.950940, 0.303228,
		44.470413, 40.211926, 33.029434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966633, 39.862816, 32.381664>,  <44.513371, 39.546268, 32.817173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966633, 39.862816, 32.381664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209396, 40.165043, 32.480282>,  <44.355053, 40.346378, 32.539452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209396, 40.165043, 32.480282>,  <43.966633, 39.862816, 32.381664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209396, 40.165043, 32.480282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080008, 0.366710, -0.926889,
		-0.790736, 0.542809, 0.283010,
		0.606906, 0.755567, 0.246541,
		44.391468, 40.391712, 32.554245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771709, 40.431293, 31.907776>,  <43.966633, 39.862816, 32.381664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771709, 40.431293, 31.907776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104210, 40.579037, 32.073952>,  <44.303711, 40.667683, 32.173656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104210, 40.579037, 32.073952>,  <43.771709, 40.431293, 31.907776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104210, 40.579037, 32.073952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195625, 0.505167, -0.840558,
		-0.520337, 0.779986, 0.347665,
		0.831253, 0.369361, 0.415442,
		44.353584, 40.689846, 32.198586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704216, 41.095444, 31.813545>,  <43.771709, 40.431293, 31.907776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704216, 41.095444, 31.813545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093452, 41.026768, 31.875025>,  <44.326992, 40.985561, 31.911913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093452, 41.026768, 31.875025>,  <43.704216, 41.095444, 31.813545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093452, 41.026768, 31.875025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226445, 0.588903, -0.775832,
		0.042687, 0.789757, 0.611933,
		0.973088, -0.171687, 0.153698,
		44.385380, 40.975262, 31.921135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775463, 41.604237, 31.337202>,  <43.704216, 41.095444, 31.813545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775463, 41.604237, 31.337202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078876, 41.348850, 31.389334>,  <44.260925, 41.195618, 31.420612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078876, 41.348850, 31.389334>,  <43.775463, 41.604237, 31.337202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078876, 41.348850, 31.389334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171415, 0.002545, -0.985196,
		0.628681, 0.769647, 0.111373,
		0.758536, -0.638465, 0.130329,
		44.306438, 41.157310, 31.428432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268261, 41.644367, 30.884327>,  <43.775463, 41.604237, 31.337202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268261, 41.644367, 30.884327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347492, 41.261158, 30.967224>,  <44.395031, 41.031231, 31.016962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347492, 41.261158, 30.967224>,  <44.268261, 41.644367, 30.884327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347492, 41.261158, 30.967224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088198, -0.227994, -0.969659,
		0.976210, 0.173791, -0.129657,
		0.198079, -0.958027, 0.207242,
		44.406918, 40.973751, 31.029396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.936275, 41.269543, 30.574472>,  <44.268261, 41.644367, 30.884327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.936275, 41.269543, 30.574472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629280, 41.018864, 30.628450>,  <44.445084, 40.868458, 30.660837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629280, 41.018864, 30.628450>,  <44.936275, 41.269543, 30.574472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629280, 41.018864, 30.628450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003559, -0.214662, -0.976682,
		0.641052, -0.749112, 0.166981,
		-0.767489, -0.626699, 0.134943,
		44.399033, 40.830853, 30.668934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935955, 40.513588, 30.305285>,  <44.936275, 41.269543, 30.574472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.935955, 40.513588, 30.305285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551636, 40.622963, 30.323589>,  <44.321045, 40.688587, 30.334572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551636, 40.622963, 30.323589>,  <44.935955, 40.513588, 30.305285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551636, 40.622963, 30.323589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103014, -0.198869, -0.974597,
		-0.257391, -0.941107, 0.219242,
		-0.960800, 0.273437, 0.045760,
		44.263393, 40.704994, 30.337318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416508, 40.174377, 30.398102>,  <44.935955, 40.513588, 30.305285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416508, 40.174377, 30.398102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269402, 40.101143, 30.033415>,  <44.181137, 40.057201, 29.814602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269402, 40.101143, 30.033415>,  <44.416508, 40.174377, 30.398102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269402, 40.101143, 30.033415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921704, 0.058277, -0.383492,
		0.123343, -0.981369, 0.147316,
		-0.367761, -0.183083, -0.911719,
		44.159073, 40.046219, 29.759899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846260, 39.671562, 30.010635>,  <44.416508, 40.174377, 30.398102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846260, 39.671562, 30.010635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.638561, 39.857372, 29.723692>,  <44.513943, 39.968857, 29.551525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.638561, 39.857372, 29.723692>,  <44.846260, 39.671562, 30.010635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.638561, 39.857372, 29.723692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823129, 0.046048, -0.565984,
		-0.229880, -0.884363, -0.406273,
		-0.519244, 0.464524, -0.717359,
		44.482788, 39.996731, 29.508484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966309, 39.356426, 29.316605>,  <44.846260, 39.671562, 30.010635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966309, 39.356426, 29.316605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844135, 39.724640, 29.219172>,  <44.770832, 39.945568, 29.160711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844135, 39.724640, 29.219172>,  <44.966309, 39.356426, 29.316605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844135, 39.724640, 29.219172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686063, 0.035350, -0.726683,
		-0.660322, -0.389069, -0.642339,
		-0.305437, 0.920530, -0.243584,
		44.752502, 40.000797, 29.146097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269436, 39.289783, 28.578106>,  <44.966309, 39.356426, 29.316605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269436, 39.289783, 28.578106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576691, 39.147926, 28.791348>,  <45.761044, 39.062813, 28.919292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576691, 39.147926, 28.791348>,  <45.269436, 39.289783, 28.578106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576691, 39.147926, 28.791348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211168, 0.645702, 0.733810,
		-0.604465, -0.676239, 0.421096,
		0.768134, -0.354641, 0.533105,
		45.807129, 39.041534, 28.951279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544163, 38.598240, 28.717567>,  <45.269436, 39.289783, 28.578106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544163, 38.598240, 28.717567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880756, 38.759487, 28.573681>,  <46.082714, 38.856236, 28.487349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880756, 38.759487, 28.573681>,  <45.544163, 38.598240, 28.717567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880756, 38.759487, 28.573681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506296, -0.355973, 0.785460,
		0.188586, -0.843076, -0.503645,
		0.841487, 0.403121, -0.359715,
		46.133202, 38.880424, 28.465767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.991684, 37.987499, 28.685020>,  <45.544163, 38.598240, 28.717567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.991684, 37.987499, 28.685020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133369, 38.356838, 28.744297>,  <46.218380, 38.578442, 28.779863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133369, 38.356838, 28.744297>,  <45.991684, 37.987499, 28.685020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133369, 38.356838, 28.744297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421101, -0.298978, 0.856321,
		0.834988, -0.240919, -0.494725,
		0.354216, 0.923347, 0.148192,
		46.239635, 38.633842, 28.788755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.662685, 37.994267, 28.758495>,  <45.991684, 37.987499, 28.685020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.662685, 37.994267, 28.758495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.478275, 38.283985, 28.963572>,  <46.367630, 38.457817, 29.086617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.478275, 38.283985, 28.963572>,  <46.662685, 37.994267, 28.758495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.478275, 38.283985, 28.963572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280268, -0.429333, 0.858558,
		0.841963, 0.539511, -0.005062,
		-0.461028, 0.724293, 0.512691,
		46.339966, 38.501274, 29.117378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.033878, 38.107910, 29.392792>,  <46.662685, 37.994267, 28.758495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.033878, 38.107910, 29.392792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698391, 38.292362, 29.508656>,  <46.497097, 38.403034, 29.578175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698391, 38.292362, 29.508656>,  <47.033878, 38.107910, 29.392792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.698391, 38.292362, 29.508656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111628, -0.375034, 0.920265,
		0.532994, 0.804182, 0.263074,
		-0.838723, 0.461130, 0.289660,
		46.446774, 38.430702, 29.595554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.154747, 38.341450, 30.066408>,  <47.033878, 38.107910, 29.392792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.154747, 38.341450, 30.066408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755028, 38.347878, 30.052847>,  <46.515198, 38.351734, 30.044710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755028, 38.347878, 30.052847>,  <47.154747, 38.341450, 30.066408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.755028, 38.347878, 30.052847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036349, -0.190885, 0.980939,
		0.009289, 0.981481, 0.191335,
		-0.999296, 0.016067, -0.033903,
		46.455238, 38.352699, 30.042677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.872307, 38.815090, 30.595818>,  <47.154747, 38.341450, 30.066408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.872307, 38.815090, 30.595818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575493, 38.556797, 30.523790>,  <46.397404, 38.401821, 30.480574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575493, 38.556797, 30.523790>,  <46.872307, 38.815090, 30.595818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.575493, 38.556797, 30.523790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130420, -0.124425, 0.983620,
		-0.657557, 0.753361, 0.008111,
		-0.742030, -0.645729, -0.180070,
		46.352882, 38.363079, 30.469769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.344852, 38.947319, 31.100489>,  <46.872307, 38.815090, 30.595818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.344852, 38.947319, 31.100489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226089, 38.591000, 30.962891>,  <46.154831, 38.377209, 30.880333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226089, 38.591000, 30.962891>,  <46.344852, 38.947319, 31.100489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.226089, 38.591000, 30.962891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057579, -0.342882, 0.937612,
		-0.953170, 0.298188, 0.050512,
		-0.296904, -0.890795, -0.343994,
		46.137016, 38.323761, 30.859692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743893, 38.811672, 31.523149>,  <46.344852, 38.947319, 31.100489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743893, 38.811672, 31.523149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862526, 38.452728, 31.392443>,  <45.933704, 38.237362, 31.314018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862526, 38.452728, 31.392443>,  <45.743893, 38.811672, 31.523149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.862526, 38.452728, 31.392443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193347, -0.391499, 0.899636,
		-0.935230, -0.203638, -0.289615,
		0.296584, -0.897363, -0.326769,
		45.951500, 38.183521, 31.294413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.219597, 38.356434, 31.762186>,  <45.743893, 38.811672, 31.523149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.219597, 38.356434, 31.762186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541847, 38.128368, 31.697836>,  <45.735195, 37.991528, 31.659225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541847, 38.128368, 31.697836>,  <45.219597, 38.356434, 31.762186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.541847, 38.128368, 31.697836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077497, -0.370646, 0.925535,
		-0.587337, -0.733166, -0.342788,
		0.805624, -0.570166, -0.160876,
		45.783535, 37.957317, 31.649572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042091, 37.639900, 31.822754>,  <45.219597, 38.356434, 31.762186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042091, 37.639900, 31.822754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435108, 37.674866, 31.888447>,  <45.670918, 37.695847, 31.927862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435108, 37.674866, 31.888447>,  <45.042091, 37.639900, 31.822754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.435108, 37.674866, 31.888447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113908, -0.415306, 0.902522,
		0.147102, -0.905472, -0.398098,
		0.982540, 0.087416, 0.164232,
		45.729870, 37.701092, 31.937717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192669, 36.969383, 32.071072>,  <45.042091, 37.639900, 31.822754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192669, 36.969383, 32.071072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490551, 37.221294, 32.159428>,  <45.669281, 37.372440, 32.212440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490551, 37.221294, 32.159428>,  <45.192669, 36.969383, 32.071072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490551, 37.221294, 32.159428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023808, -0.355829, 0.934248,
		0.666965, -0.690483, -0.279982,
		0.744708, 0.629777, 0.220886,
		45.713963, 37.410229, 32.225693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.646214, 36.468140, 32.430344>,  <45.192669, 36.969383, 32.071072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.646214, 36.468140, 32.430344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.798508, 36.826450, 32.522110>,  <45.889885, 37.041435, 32.577168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.798508, 36.826450, 32.522110>,  <45.646214, 36.468140, 32.430344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.798508, 36.826450, 32.522110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314170, -0.358653, 0.879014,
		0.869676, -0.262598, -0.417978,
		0.380737, 0.895773, 0.229412,
		45.912727, 37.095181, 32.590935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.353058, 36.494968, 32.551548>,  <45.646214, 36.468140, 32.430344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.353058, 36.494968, 32.551548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.178288, 36.784008, 32.765816>,  <46.073425, 36.957432, 32.894379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.178288, 36.784008, 32.765816>,  <46.353058, 36.494968, 32.551548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.178288, 36.784008, 32.765816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391896, -0.383108, 0.836448,
		0.809635, 0.575398, -0.115792,
		-0.436930, 0.722597, 0.535674,
		46.047207, 37.000786, 32.926517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.889919, 36.652168, 33.074928>,  <46.353058, 36.494968, 32.551548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.889919, 36.652168, 33.074928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571907, 36.841553, 33.226593>,  <46.381100, 36.955185, 33.317593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571907, 36.841553, 33.226593>,  <46.889919, 36.652168, 33.074928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.571907, 36.841553, 33.226593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308224, -0.223036, 0.924799,
		0.522422, 0.852109, 0.031388,
		-0.795030, 0.473461, 0.379160,
		46.333397, 36.983589, 33.340340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.165146, 37.001968, 33.626640>,  <46.889919, 36.652168, 33.074928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.165146, 37.001968, 33.626640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.771587, 36.983242, 33.695652>,  <46.535454, 36.972004, 33.737057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.771587, 36.983242, 33.695652>,  <47.165146, 37.001968, 33.626640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.771587, 36.983242, 33.695652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177775, -0.357714, 0.916754,
		0.018791, 0.932657, 0.360275,
		-0.983892, -0.046821, 0.172525,
		46.476421, 36.969196, 33.747410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.939499, 37.371777, 34.302082>,  <47.165146, 37.001968, 33.626640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.939499, 37.371777, 34.302082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.637028, 37.114693, 34.252880>,  <46.455547, 36.960442, 34.223358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.637028, 37.114693, 34.252880>,  <46.939499, 37.371777, 34.302082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.637028, 37.114693, 34.252880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145319, -0.348214, 0.926083,
		-0.638031, 0.682404, 0.356708,
		-0.756174, -0.642706, -0.123005,
		46.410175, 36.921883, 34.215981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.572620, 37.456852, 34.876312>,  <46.939499, 37.371777, 34.302082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.572620, 37.456852, 34.876312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445156, 37.099361, 34.750011>,  <46.368675, 36.884865, 34.674232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445156, 37.099361, 34.750011>,  <46.572620, 37.456852, 34.876312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.445156, 37.099361, 34.750011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067770, -0.310781, 0.948062,
		-0.945442, 0.323512, 0.038466,
		-0.318664, -0.893731, -0.315750,
		46.349556, 36.831242, 34.655285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.952663, 37.353828, 35.214336>,  <46.572620, 37.456852, 34.876312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.952663, 37.353828, 35.214336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009655, 36.974331, 35.101490>,  <46.043850, 36.746632, 35.033783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009655, 36.974331, 35.101490>,  <45.952663, 37.353828, 35.214336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.009655, 36.974331, 35.101490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011296, -0.286568, 0.957994,
		-0.989733, -0.133312, -0.051548,
		0.142484, -0.948740, -0.282119,
		46.052399, 36.689709, 35.016853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.456676, 36.944019, 35.558861>,  <45.952663, 37.353828, 35.214336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.456676, 36.944019, 35.558861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749393, 36.689606, 35.460934>,  <45.925026, 36.536957, 35.402176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749393, 36.689606, 35.460934>,  <45.456676, 36.944019, 35.558861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.749393, 36.689606, 35.460934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041804, -0.400438, 0.915370,
		-0.680240, -0.659630, -0.319627,
		0.731797, -0.636033, -0.244818,
		45.968933, 36.498795, 35.387489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276581, 36.330994, 35.864292>,  <45.456676, 36.944019, 35.558861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276581, 36.330994, 35.864292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.666920, 36.277164, 35.795460>,  <45.901123, 36.244869, 35.754162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.666920, 36.277164, 35.795460>,  <45.276581, 36.330994, 35.864292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.666920, 36.277164, 35.795460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098119, -0.433789, 0.895656,
		-0.195174, -0.890908, -0.410109,
		0.975848, -0.134570, -0.172079,
		45.959675, 36.236794, 35.743835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414097, 35.585766, 35.947311>,  <45.276581, 36.330994, 35.864292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414097, 35.585766, 35.947311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749584, 35.790684, 36.021175>,  <45.950878, 35.913635, 36.065495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749584, 35.790684, 36.021175>,  <45.414097, 35.585766, 35.947311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.749584, 35.790684, 36.021175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158523, -0.554100, 0.817217,
		0.520975, -0.656145, -0.545947,
		0.838722, 0.512295, 0.184659,
		46.001202, 35.944374, 36.076572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.836624, 35.086399, 36.060173>,  <45.414097, 35.585766, 35.947311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.836624, 35.086399, 36.060173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.010281, 35.412437, 36.213604>,  <46.114475, 35.608063, 36.305664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.010281, 35.412437, 36.213604>,  <45.836624, 35.086399, 36.060173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.010281, 35.412437, 36.213604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126019, -0.476566, 0.870059,
		0.891986, -0.329392, -0.309616,
		0.434143, 0.815098, 0.383581,
		46.140522, 35.656967, 36.328678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.428665, 34.843067, 36.472816>,  <45.836624, 35.086399, 36.060173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.428665, 34.843067, 36.472816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383301, 35.216900, 36.607685>,  <46.356083, 35.441200, 36.688606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383301, 35.216900, 36.607685>,  <46.428665, 34.843067, 36.472816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.383301, 35.216900, 36.607685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055625, -0.332860, 0.941334,
		0.991990, 0.125509, -0.014238,
		-0.113407, 0.934586, 0.337175,
		46.349277, 35.497276, 36.708839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.533215, 34.163799, 36.175541>,  <46.428665, 34.843067, 36.472816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.533215, 34.163799, 36.175541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459351, 34.477837, 35.939056>,  <46.415031, 34.666260, 35.797165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459351, 34.477837, 35.939056>,  <46.533215, 34.163799, 36.175541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.459351, 34.477837, 35.939056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960289, 0.016105, -0.278544,
		-0.209162, -0.619168, -0.756890,
		-0.184655, 0.785093, -0.591211,
		46.403954, 34.713364, 35.761692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.816456, 33.934250, 35.511948>,  <46.533215, 34.163799, 36.175541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.816456, 33.934250, 35.511948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808090, 34.333706, 35.531029>,  <46.803070, 34.573380, 35.542477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808090, 34.333706, 35.531029>,  <46.816456, 33.934250, 35.511948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.808090, 34.333706, 35.531029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933183, 0.036624, -0.357532,
		-0.358793, 0.037042, -0.932682,
		-0.020915, 0.998642, 0.047707,
		46.801815, 34.633297, 35.545341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.242069, 34.190613, 34.989578>,  <46.816456, 33.934250, 35.511948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.242069, 34.190613, 34.989578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230251, 34.489754, 35.254860>,  <47.223160, 34.669239, 35.414028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230251, 34.489754, 35.254860>,  <47.242069, 34.190613, 34.989578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.230251, 34.489754, 35.254860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973358, 0.172457, -0.151103,
		-0.227377, 0.641068, -0.733029,
		-0.029548, 0.747857, 0.663202,
		47.221386, 34.714111, 35.453819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.446751, 34.961811, 34.713570>,  <47.242069, 34.190613, 34.989578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.446751, 34.961811, 34.713570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.505638, 34.854473, 35.094372>,  <47.540970, 34.790070, 35.322853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.505638, 34.854473, 35.094372>,  <47.446751, 34.961811, 34.713570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.505638, 34.854473, 35.094372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945722, 0.320112, -0.056013,
		-0.289719, 0.908582, 0.300901,
		0.147215, -0.268341, 0.952009,
		47.549801, 34.773972, 35.379974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.240307, 36.004391, 47.109863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.873955, 35.923702, 46.971027>,  <33.654144, 35.875290, 46.887726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.873955, 35.923702, 46.971027>,  <34.240307, 36.004391, 47.109863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873955, 35.923702, 46.971027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233287, 0.436198, -0.869085,
		0.326714, -0.876949, -0.352446,
		-0.915879, -0.201721, -0.347093,
		33.599190, 35.863186, 46.866898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459637, 35.858871, 46.482315>,  <34.240307, 36.004391, 47.109863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459637, 35.858871, 46.482315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.063175, 35.901424, 46.450554>,  <33.825298, 35.926956, 46.431496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.063175, 35.901424, 46.450554>,  <34.459637, 35.858871, 46.482315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063175, 35.901424, 46.450554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112584, 0.356718, -0.927403,
		-0.070336, -0.928135, -0.365538,
		-0.991149, 0.106384, -0.079403,
		33.765831, 35.933338, 46.426731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234669, 35.718586, 45.704498>,  <34.459637, 35.858871, 46.482315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234669, 35.718586, 45.704498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.959057, 35.958244, 45.867599>,  <33.793690, 36.102039, 45.965462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.959057, 35.958244, 45.867599>,  <34.234669, 35.718586, 45.704498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959057, 35.958244, 45.867599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068164, 0.506560, -0.859506,
		-0.721520, -0.620020, -0.308195,
		-0.689030, 0.599143, 0.407756,
		33.752346, 36.137985, 45.989925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750679, 35.667645, 45.254578>,  <34.234669, 35.718586, 45.704498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750679, 35.667645, 45.254578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.679626, 36.013321, 45.442886>,  <33.636993, 36.220726, 45.555870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.679626, 36.013321, 45.442886>,  <33.750679, 35.667645, 45.254578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679626, 36.013321, 45.442886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041157, 0.484481, -0.873833,
		-0.983236, -0.135846, -0.121627,
		-0.177633, 0.864190, 0.470768,
		33.626335, 36.272579, 45.584118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323807, 35.982483, 44.866474>,  <33.750679, 35.667645, 45.254578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323807, 35.982483, 44.866474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.464684, 36.288036, 45.082783>,  <33.549210, 36.471371, 45.212570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.464684, 36.288036, 45.082783>,  <33.323807, 35.982483, 44.866474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464684, 36.288036, 45.082783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141675, 0.614651, -0.775972,
		-0.925141, 0.196680, 0.324701,
		0.352196, 0.763886, 0.540774,
		33.570343, 36.517200, 45.245014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028461, 36.636032, 44.660725>,  <33.323807, 35.982483, 44.866474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028461, 36.636032, 44.660725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.375267, 36.740685, 44.830357>,  <33.583351, 36.803474, 44.932137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.375267, 36.740685, 44.830357>,  <33.028461, 36.636032, 44.660725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375267, 36.740685, 44.830357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189959, 0.613258, -0.766701,
		-0.460661, 0.745295, 0.482002,
		0.867010, 0.261629, 0.424080,
		33.635368, 36.819172, 44.957581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004234, 37.308479, 44.514946>,  <33.028461, 36.636032, 44.660725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004234, 37.308479, 44.514946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.390171, 37.217297, 44.567287>,  <33.621731, 37.162586, 44.598690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.390171, 37.217297, 44.567287>,  <33.004234, 37.308479, 44.514946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390171, 37.217297, 44.567287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195216, 0.288140, -0.937478,
		0.176004, 0.930059, 0.322510,
		0.964838, -0.227959, 0.130849,
		33.679623, 37.148911, 44.606541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403297, 37.803207, 44.273220>,  <33.004234, 37.308479, 44.514946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403297, 37.803207, 44.273220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.642128, 37.482334, 44.271935>,  <33.785427, 37.289810, 44.271164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.642128, 37.482334, 44.271935>,  <33.403297, 37.803207, 44.273220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642128, 37.482334, 44.271935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313191, 0.236803, -0.919694,
		0.738521, 0.548118, 0.392624,
		0.597075, -0.802179, -0.003218,
		33.821251, 37.241680, 44.270969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918877, 38.119633, 43.863823>,  <33.403297, 37.803207, 44.273220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918877, 38.119633, 43.863823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.023178, 37.733597, 43.873623>,  <34.085758, 37.501976, 43.879501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.023178, 37.733597, 43.873623>,  <33.918877, 38.119633, 43.863823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023178, 37.733597, 43.873623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452828, 0.099860, -0.885988,
		0.852616, 0.242118, 0.463061,
		0.260755, -0.965094, 0.024496,
		34.101406, 37.444069, 43.880970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508858, 38.104465, 43.637459>,  <33.918877, 38.119633, 43.863823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508858, 38.104465, 43.637459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.436672, 37.712368, 43.605064>,  <34.393360, 37.477112, 43.585629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.436672, 37.712368, 43.605064>,  <34.508858, 38.104465, 43.637459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436672, 37.712368, 43.605064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466597, -0.012841, -0.884377,
		0.865863, -0.197386, 0.459695,
		-0.180467, -0.980242, -0.080981,
		34.382534, 37.418297, 43.580769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137672, 37.690937, 43.539352>,  <34.508858, 38.104465, 43.637459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137672, 37.690937, 43.539352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.839386, 37.474255, 43.384190>,  <34.660416, 37.344246, 43.291092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.839386, 37.474255, 43.384190>,  <35.137672, 37.690937, 43.539352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839386, 37.474255, 43.384190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531265, -0.132092, -0.836845,
		0.402082, -0.830127, 0.386290,
		-0.745713, -0.541703, -0.387905,
		34.615673, 37.311745, 43.267818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372475, 37.082890, 43.307301>,  <35.137672, 37.690937, 43.539352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372475, 37.082890, 43.307301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.043350, 37.115223, 43.082283>,  <34.845875, 37.134621, 42.947273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.043350, 37.115223, 43.082283>,  <35.372475, 37.082890, 43.307301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043350, 37.115223, 43.082283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561459, -0.037732, -0.826644,
		-0.088047, -0.996013, -0.014339,
		-0.822807, 0.080834, -0.562542,
		34.796509, 37.139473, 42.913521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373684, 36.461735, 42.835571>,  <35.372475, 37.082890, 43.307301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373684, 36.461735, 42.835571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.160881, 36.763943, 42.682648>,  <35.033199, 36.945267, 42.590893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.160881, 36.763943, 42.682648>,  <35.373684, 36.461735, 42.835571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160881, 36.763943, 42.682648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522535, -0.062337, -0.850336,
		-0.666278, -0.652152, -0.361622,
		-0.532006, 0.755520, -0.382306,
		35.001278, 36.990601, 42.567955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296551, 36.228130, 42.136631>,  <35.373684, 36.461735, 42.835571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296551, 36.228130, 42.136631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222927, 36.621292, 42.138088>,  <35.178753, 36.857189, 42.138962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222927, 36.621292, 42.138088>,  <35.296551, 36.228130, 42.136631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222927, 36.621292, 42.138088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350307, 0.069062, -0.934085,
		-0.918373, -0.170648, -0.357031,
		-0.184057, 0.982909, 0.003645,
		35.167709, 36.916164, 42.139183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833382, 36.396950, 41.530853>,  <35.296551, 36.228130, 42.136631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833382, 36.396950, 41.530853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013451, 36.738266, 41.636108>,  <35.121490, 36.943054, 41.699261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013451, 36.738266, 41.636108>,  <34.833382, 36.396950, 41.530853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013451, 36.738266, 41.636108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349893, 0.102562, -0.931158,
		-0.821535, 0.511254, -0.252389,
		0.450173, 0.853288, 0.263143,
		35.148502, 36.994251, 41.715050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661858, 36.869766, 41.066704>,  <34.833382, 36.396950, 41.530853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661858, 36.869766, 41.066704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.992542, 37.033829, 41.220753>,  <35.190952, 37.132267, 41.313183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.992542, 37.033829, 41.220753>,  <34.661858, 36.869766, 41.066704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992542, 37.033829, 41.220753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371390, 0.116353, -0.921158,
		-0.422625, 0.904565, -0.056136,
		0.826715, 0.410152, 0.385120,
		35.240559, 37.156876, 41.336288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738270, 37.481182, 40.669941>,  <34.661858, 36.869766, 41.066704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738270, 37.481182, 40.669941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.098663, 37.383900, 40.813656>,  <35.314899, 37.325531, 40.899883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.098663, 37.383900, 40.813656>,  <34.738270, 37.481182, 40.669941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098663, 37.383900, 40.813656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401406, 0.153009, -0.903029,
		0.164647, 0.957831, 0.235482,
		0.900980, -0.243205, 0.359287,
		35.368958, 37.310940, 40.921440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214497, 37.979614, 40.376480>,  <34.738270, 37.481182, 40.669941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214497, 37.979614, 40.376480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.442913, 37.676796, 40.503464>,  <35.579964, 37.495106, 40.579655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.442913, 37.676796, 40.503464>,  <35.214497, 37.979614, 40.376480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442913, 37.676796, 40.503464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615629, 0.139103, -0.775662,
		0.543055, 0.638377, 0.545496,
		0.571045, -0.757050, 0.317463,
		35.614227, 37.449680, 40.598701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003113, 38.291084, 40.348679>,  <35.214497, 37.979614, 40.376480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003113, 38.291084, 40.348679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024220, 37.892269, 40.371056>,  <36.036884, 37.652981, 40.384480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024220, 37.892269, 40.371056>,  <36.003113, 38.291084, 40.348679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024220, 37.892269, 40.371056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585645, -0.014477, -0.810438,
		0.808848, 0.075521, 0.583148,
		0.052763, -0.997039, 0.055938,
		36.040047, 37.593159, 40.387836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622765, 38.177078, 40.373478>,  <36.003113, 38.291084, 40.348679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622765, 38.177078, 40.373478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.463665, 37.832363, 40.247543>,  <36.368206, 37.625534, 40.171982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.463665, 37.832363, 40.247543>,  <36.622765, 38.177078, 40.373478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463665, 37.832363, 40.247543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690057, -0.054834, -0.721675,
		0.604666, -0.504299, 0.616492,
		-0.397744, -0.861787, -0.314839,
		36.344341, 37.573826, 40.153091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175156, 37.737263, 40.233444>,  <36.622765, 38.177078, 40.373478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175156, 37.737263, 40.233444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886757, 37.583565, 40.002789>,  <36.713718, 37.491348, 39.864395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886757, 37.583565, 40.002789>,  <37.175156, 37.737263, 40.233444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886757, 37.583565, 40.002789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637883, -0.042980, -0.768933,
		0.270673, -0.922231, 0.276090,
		-0.721000, -0.384243, -0.576642,
		36.670456, 37.468292, 39.829796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488617, 37.131985, 39.907742>,  <37.175156, 37.737263, 40.233444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488617, 37.131985, 39.907742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176823, 37.261761, 39.693398>,  <36.989746, 37.339626, 39.564789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176823, 37.261761, 39.693398>,  <37.488617, 37.131985, 39.907742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176823, 37.261761, 39.693398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542826, -0.077109, -0.836298,
		-0.312645, -0.942759, -0.116007,
		-0.779483, 0.324436, -0.535862,
		36.942978, 37.359093, 39.532639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224773, 37.177219, 39.653526>,  <37.488617, 37.131985, 39.907742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224773, 37.177219, 39.653526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.565578, 37.288895, 39.830673>,  <38.770061, 37.355900, 39.936962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.565578, 37.288895, 39.830673>,  <38.224773, 37.177219, 39.653526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565578, 37.288895, 39.830673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233712, -0.554126, 0.798951,
		0.468466, -0.784217, -0.406870,
		0.852008, 0.279192, 0.442870,
		38.821182, 37.372654, 39.963535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620434, 36.621780, 39.892513>,  <38.224773, 37.177219, 39.653526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620434, 36.621780, 39.892513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754032, 36.904018, 40.142498>,  <38.834190, 37.073360, 40.292488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754032, 36.904018, 40.142498>,  <38.620434, 36.621780, 39.892513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754032, 36.904018, 40.142498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299585, -0.549191, 0.780153,
		0.893699, -0.447794, 0.027962,
		0.333992, 0.705599, 0.624964,
		38.854229, 37.115700, 40.329987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981255, 36.190048, 40.456028>,  <38.620434, 36.621780, 39.892513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981255, 36.190048, 40.456028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.909641, 36.557178, 40.597759>,  <38.866673, 36.777454, 40.682796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.909641, 36.557178, 40.597759>,  <38.981255, 36.190048, 40.456028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909641, 36.557178, 40.597759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150500, -0.381454, 0.912054,
		0.972263, 0.109966, 0.206427,
		-0.179037, 0.917824, 0.354324,
		38.855930, 36.832527, 40.704056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312679, 36.222977, 41.105091>,  <38.981255, 36.190048, 40.456028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312679, 36.222977, 41.105091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033291, 36.509029, 41.115852>,  <38.865658, 36.680660, 41.122307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033291, 36.509029, 41.115852>,  <39.312679, 36.222977, 41.105091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033291, 36.509029, 41.115852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269951, -0.298102, 0.915566,
		0.662771, 0.632234, 0.401267,
		-0.698471, 0.715133, 0.026901,
		38.823750, 36.723568, 41.123924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349846, 36.523132, 41.717010>,  <39.312679, 36.222977, 41.105091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349846, 36.523132, 41.717010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012196, 36.704281, 41.602222>,  <38.809605, 36.812969, 41.533348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012196, 36.704281, 41.602222>,  <39.349846, 36.523132, 41.717010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012196, 36.704281, 41.602222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363627, -0.090261, 0.927161,
		0.393982, 0.886995, 0.240868,
		-0.844129, 0.452871, -0.286975,
		38.758957, 36.840141, 41.516129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241100, 37.008114, 42.228203>,  <39.349846, 36.523132, 41.717010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241100, 37.008114, 42.228203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.880032, 36.921093, 42.079693>,  <38.663391, 36.868881, 41.990585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.880032, 36.921093, 42.079693>,  <39.241100, 37.008114, 42.228203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880032, 36.921093, 42.079693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326391, -0.216142, 0.920191,
		-0.280443, 0.951815, 0.124097,
		-0.902674, -0.217557, -0.371280,
		38.609230, 36.855827, 41.968307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827621, 37.172775, 42.734528>,  <39.241100, 37.008114, 42.228203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827621, 37.172775, 42.734528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.562473, 36.962181, 42.521580>,  <38.403385, 36.835823, 42.393810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.562473, 36.962181, 42.521580>,  <38.827621, 37.172775, 42.734528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562473, 36.962181, 42.521580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416579, -0.331478, 0.846513,
		-0.622143, 0.782903, 0.000405,
		-0.662872, -0.526484, -0.532368,
		38.363613, 36.804237, 42.361870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133667, 37.513626, 42.836082>,  <38.827621, 37.172775, 42.734528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133667, 37.513626, 42.836082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.093479, 37.135078, 42.713253>,  <38.069366, 36.907951, 42.639553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.093479, 37.135078, 42.713253>,  <38.133667, 37.513626, 42.836082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093479, 37.135078, 42.713253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283561, -0.268600, 0.920569,
		-0.953676, 0.179566, -0.241366,
		-0.100472, -0.946367, -0.307075,
		38.063339, 36.851170, 42.621132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468159, 37.423340, 43.028931>,  <38.133667, 37.513626, 42.836082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468159, 37.423340, 43.028931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646019, 37.066158, 43.000851>,  <37.752735, 36.851849, 42.984001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646019, 37.066158, 43.000851>,  <37.468159, 37.423340, 43.028931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646019, 37.066158, 43.000851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164106, -0.158263, 0.973664,
		-0.880545, -0.421416, -0.216909,
		0.444646, -0.892951, -0.070200,
		37.779411, 36.798271, 42.979790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115238, 36.981182, 43.465015>,  <37.468159, 37.423340, 43.028931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115238, 36.981182, 43.465015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437458, 36.748764, 43.418591>,  <37.630791, 36.609314, 43.390736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437458, 36.748764, 43.418591>,  <37.115238, 36.981182, 43.465015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437458, 36.748764, 43.418591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126823, -0.360414, 0.924131,
		-0.578796, -0.729715, -0.364022,
		0.805551, -0.581049, -0.116062,
		37.679123, 36.574451, 43.383774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878735, 36.369587, 43.720352>,  <37.115238, 36.981182, 43.465015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878735, 36.369587, 43.720352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278618, 36.364246, 43.728474>,  <37.518547, 36.361042, 43.733349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278618, 36.364246, 43.728474>,  <36.878735, 36.369587, 43.720352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278618, 36.364246, 43.728474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023610, -0.335393, 0.941782,
		-0.005761, -0.941984, -0.335609,
		0.999705, -0.013349, 0.020308,
		37.578529, 36.360241, 43.734566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061569, 35.693245, 43.800766>,  <36.878735, 36.369587, 43.720352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061569, 35.693245, 43.800766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.361622, 35.918316, 43.939735>,  <37.541653, 36.053360, 44.023117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.361622, 35.918316, 43.939735>,  <37.061569, 35.693245, 43.800766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361622, 35.918316, 43.939735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087620, -0.436169, 0.895589,
		0.655462, -0.702247, -0.277881,
		0.750128, 0.562677, 0.347423,
		37.586658, 36.087120, 44.043961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317490, 35.263603, 44.300854>,  <37.061569, 35.693245, 43.800766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317490, 35.263603, 44.300854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.464817, 35.623657, 44.393887>,  <37.553215, 35.839691, 44.449707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.464817, 35.623657, 44.393887>,  <37.317490, 35.263603, 44.300854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464817, 35.623657, 44.393887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212944, -0.161843, 0.963567,
		0.904984, -0.404428, 0.132068,
		0.368319, 0.900136, 0.232586,
		37.575314, 35.893700, 44.463661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834339, 35.113949, 44.780785>,  <37.317490, 35.263603, 44.300854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834339, 35.113949, 44.780785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.730396, 35.495918, 44.838200>,  <37.668030, 35.725098, 44.872650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.730396, 35.495918, 44.838200>,  <37.834339, 35.113949, 44.780785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730396, 35.495918, 44.838200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241679, -0.208228, 0.947751,
		0.934916, 0.211585, 0.284893,
		-0.259853, 0.954921, 0.143540,
		37.652439, 35.782394, 44.881260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049545, 35.272552, 45.480602>,  <37.834339, 35.113949, 44.780785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049545, 35.272552, 45.480602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774002, 35.545349, 45.382336>,  <37.608673, 35.709026, 45.323376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774002, 35.545349, 45.382336>,  <38.049545, 35.272552, 45.480602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774002, 35.545349, 45.382336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352461, -0.018983, 0.935634,
		0.633434, 0.731110, 0.253454,
		-0.688863, 0.681995, -0.245664,
		37.567345, 35.749947, 45.308636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967758, 35.576691, 46.128925>,  <38.049545, 35.272552, 45.480602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967758, 35.576691, 46.128925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.629742, 35.638481, 45.924168>,  <37.426929, 35.675556, 45.801311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.629742, 35.638481, 45.924168>,  <37.967758, 35.576691, 46.128925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629742, 35.638481, 45.924168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510783, 0.049872, 0.858262,
		0.158110, 0.986737, 0.036760,
		-0.845046, 0.154476, -0.511893,
		37.376228, 35.684826, 45.770599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577530, 35.933525, 46.634048>,  <37.967758, 35.576691, 46.128925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577530, 35.933525, 46.634048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292721, 35.835831, 46.370724>,  <37.121834, 35.777214, 46.212730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292721, 35.835831, 46.370724>,  <37.577530, 35.933525, 46.634048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292721, 35.835831, 46.370724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647804, -0.133185, 0.750075,
		-0.270870, 0.960527, -0.063384,
		-0.712025, -0.244233, -0.658309,
		37.079113, 35.762562, 46.173233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973633, 36.268036, 46.844326>,  <37.577530, 35.933525, 46.634048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973633, 36.268036, 46.844326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816616, 35.985085, 46.609200>,  <36.722404, 35.815315, 46.468124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816616, 35.985085, 46.609200>,  <36.973633, 36.268036, 46.844326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816616, 35.985085, 46.609200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739187, -0.137651, 0.659283,
		-0.547275, 0.693304, -0.468849,
		-0.392546, -0.707376, -0.587815,
		36.698853, 35.772873, 46.432854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.214172, 36.346367, 46.864265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.273064, 35.970325, 46.741276>,  <36.308399, 35.744701, 46.667484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.273064, 35.970325, 46.741276>,  <36.214172, 36.346367, 46.864265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273064, 35.970325, 46.741276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730503, -0.312926, 0.606994,
		-0.666850, 0.135244, -0.732816,
		0.147225, -0.940099, -0.307471,
		36.317230, 35.688297, 46.649033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618118, 36.107929, 46.712772>,  <36.214172, 36.346367, 46.864265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618118, 36.107929, 46.712772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825397, 35.770092, 46.766647>,  <35.949764, 35.567390, 46.798973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825397, 35.770092, 46.766647>,  <35.618118, 36.107929, 46.712772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825397, 35.770092, 46.766647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736957, -0.361029, 0.571449,
		-0.434013, -0.395382, -0.809510,
		0.518197, -0.844589, 0.134688,
		35.980858, 35.516716, 46.807053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175419, 35.567680, 46.304745>,  <35.618118, 36.107929, 46.712772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175419, 35.567680, 46.304745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423447, 35.443832, 46.593090>,  <35.572262, 35.369522, 46.766098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423447, 35.443832, 46.593090>,  <35.175419, 35.567680, 46.304745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423447, 35.443832, 46.593090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780922, -0.331789, 0.529223,
		0.075318, -0.891096, -0.447522,
		0.620071, -0.309619, 0.720866,
		35.609467, 35.350948, 46.809349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861298, 34.869644, 46.525414>,  <35.175419, 35.567680, 46.304745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861298, 34.869644, 46.525414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.129875, 34.962410, 46.806946>,  <35.291023, 35.018070, 46.975864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.129875, 34.962410, 46.806946>,  <34.861298, 34.869644, 46.525414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129875, 34.962410, 46.806946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498009, -0.562113, 0.660315,
		0.548767, -0.793880, -0.261934,
		0.671447, 0.231914, 0.703828,
		35.331310, 35.031982, 47.018093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878021, 34.195755, 46.929237>,  <34.861298, 34.869644, 46.525414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878021, 34.195755, 46.929237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021976, 34.491295, 47.157124>,  <35.108349, 34.668621, 47.293854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021976, 34.491295, 47.157124>,  <34.878021, 34.195755, 46.929237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021976, 34.491295, 47.157124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491531, -0.368867, 0.788882,
		0.793017, -0.563944, 0.230418,
		0.359891, 0.738854, 0.569713,
		35.129944, 34.712952, 47.328037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295937, 33.928211, 47.421471>,  <34.878021, 34.195755, 46.929237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295937, 33.928211, 47.421471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.197319, 34.285610, 47.571606>,  <35.138149, 34.500050, 47.661686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.197319, 34.285610, 47.571606>,  <35.295937, 33.928211, 47.421471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197319, 34.285610, 47.571606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431273, -0.447982, 0.783144,
		0.867883, 0.031203, 0.495788,
		-0.246541, 0.893498, 0.375339,
		35.123356, 34.553661, 47.684208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590816, 33.926903, 47.977875>,  <35.295937, 33.928211, 47.421471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590816, 33.926903, 47.977875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.314461, 34.211357, 48.029968>,  <35.148647, 34.382030, 48.061226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.314461, 34.211357, 48.029968>,  <35.590816, 33.926903, 47.977875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314461, 34.211357, 48.029968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177648, -0.341609, 0.922900,
		0.700797, 0.614484, 0.362345,
		-0.690887, 0.711135, 0.130237,
		35.107193, 34.424698, 48.069038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763092, 34.245739, 48.654594>,  <35.590816, 33.926903, 47.977875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763092, 34.245739, 48.654594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384232, 34.356071, 48.589077>,  <35.156918, 34.422272, 48.549767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384232, 34.356071, 48.589077>,  <35.763092, 34.245739, 48.654594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384232, 34.356071, 48.589077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235349, -0.250492, 0.939077,
		0.217997, 0.927993, 0.302169,
		-0.947148, 0.275830, -0.163795,
		35.100086, 34.438820, 48.539940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526276, 34.731148, 49.175255>,  <35.763092, 34.245739, 48.654594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526276, 34.731148, 49.175255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.202267, 34.535519, 49.045845>,  <35.007862, 34.418140, 48.968201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.202267, 34.535519, 49.045845>,  <35.526276, 34.731148, 49.175255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202267, 34.535519, 49.045845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212859, -0.268851, 0.939367,
		-0.546396, 0.829777, 0.113673,
		-0.810026, -0.489070, -0.323524,
		34.959259, 34.388798, 48.948788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076092, 34.821625, 49.752056>,  <35.526276, 34.731148, 49.175255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076092, 34.821625, 49.752056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.861568, 34.570381, 49.526543>,  <34.732853, 34.419636, 49.391235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.861568, 34.570381, 49.526543>,  <35.076092, 34.821625, 49.752056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861568, 34.570381, 49.526543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455980, -0.346483, 0.819776,
		-0.710249, 0.696728, -0.100583,
		-0.536311, -0.628108, -0.563783,
		34.700676, 34.381950, 49.357407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355766, 34.812817, 50.059914>,  <35.076092, 34.821625, 49.752056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355766, 34.812817, 50.059914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473743, 34.494648, 49.848133>,  <34.544529, 34.303745, 49.721066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473743, 34.494648, 49.848133>,  <34.355766, 34.812817, 50.059914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473743, 34.494648, 49.848133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154041, -0.586429, 0.795218,
		-0.943018, -0.152985, -0.295489,
		0.294939, -0.795422, -0.529447,
		34.562225, 34.256020, 49.689301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775833, 34.378223, 50.200459>,  <34.355766, 34.812817, 50.059914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775833, 34.378223, 50.200459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063084, 34.133755, 50.067337>,  <34.235435, 33.987072, 49.987465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063084, 34.133755, 50.067337>,  <33.775833, 34.378223, 50.200459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063084, 34.133755, 50.067337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105339, -0.568182, 0.816133,
		-0.687894, -0.551029, -0.472407,
		0.718126, -0.611176, -0.332805,
		34.278522, 33.950401, 49.967495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534801, 33.623322, 50.279934>,  <33.775833, 34.378223, 50.200459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534801, 33.623322, 50.279934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.934490, 33.635330, 50.269737>,  <34.174305, 33.642536, 50.263618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.934490, 33.635330, 50.269737>,  <33.534801, 33.623322, 50.279934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934490, 33.635330, 50.269737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037831, -0.551622, 0.833236,
		0.010958, -0.833553, -0.552330,
		0.999224, 0.030026, -0.025490,
		34.234257, 33.644337, 50.262089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658516, 33.008587, 50.283154>,  <33.534801, 33.623322, 50.279934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658516, 33.008587, 50.283154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006699, 33.172157, 50.392761>,  <34.215607, 33.270302, 50.458527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006699, 33.172157, 50.392761>,  <33.658516, 33.008587, 50.283154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006699, 33.172157, 50.392761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172695, -0.774976, 0.607938,
		0.460963, -0.481859, -0.745201,
		0.870453, 0.408930, 0.274021,
		34.267834, 33.294838, 50.474968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125576, 32.449501, 50.397400>,  <33.658516, 33.008587, 50.283154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125576, 32.449501, 50.397400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275337, 32.765121, 50.592216>,  <34.365196, 32.954494, 50.709106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275337, 32.765121, 50.592216>,  <34.125576, 32.449501, 50.397400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275337, 32.765121, 50.592216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257891, -0.593134, 0.762682,
		0.890681, -0.159948, -0.425563,
		0.374405, 0.789056, 0.487044,
		34.387657, 33.001839, 50.738331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602177, 32.135094, 50.823589>,  <34.125576, 32.449501, 50.397400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602177, 32.135094, 50.823589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.551228, 32.492111, 50.996624>,  <34.520657, 32.706322, 51.100445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.551228, 32.492111, 50.996624>,  <34.602177, 32.135094, 50.823589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551228, 32.492111, 50.996624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224585, -0.398862, 0.889084,
		0.966094, 0.210398, -0.149649,
		-0.127373, 0.892548, 0.432591,
		34.513016, 32.759876, 51.126400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186584, 32.309654, 51.299919>,  <34.602177, 32.135094, 50.823589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186584, 32.309654, 51.299919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.883366, 32.535206, 51.431011>,  <34.701435, 32.670536, 51.509666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.883366, 32.535206, 51.431011>,  <35.186584, 32.309654, 51.299919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883366, 32.535206, 51.431011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247020, -0.216835, 0.944438,
		0.603612, 0.796884, 0.025081,
		-0.758046, 0.563878, 0.327730,
		34.655952, 32.704369, 51.529331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443340, 32.714329, 51.883873>,  <35.186584, 32.309654, 51.299919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443340, 32.714329, 51.883873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.043694, 32.712132, 51.900547>,  <34.803905, 32.710815, 51.910553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.043694, 32.712132, 51.900547>,  <35.443340, 32.714329, 51.883873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043694, 32.712132, 51.900547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041986, -0.075983, 0.996225,
		-0.002303, 0.997094, 0.076147,
		-0.999115, -0.005491, 0.041689,
		34.743958, 32.710484, 51.913055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253708, 33.071022, 52.568062>,  <35.443340, 32.714329, 51.883873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253708, 33.071022, 52.568062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923386, 32.872936, 52.460125>,  <34.725193, 32.754086, 52.395363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923386, 32.872936, 52.460125>,  <35.253708, 33.071022, 52.568062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923386, 32.872936, 52.460125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202641, -0.185965, 0.961433,
		-0.526293, 0.848636, 0.053221,
		-0.825804, -0.495210, -0.269840,
		34.675644, 32.724373, 52.379173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703445, 33.372650, 52.950344>,  <35.253708, 33.071022, 52.568062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703445, 33.372650, 52.950344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583595, 33.005146, 52.847496>,  <34.511684, 32.784645, 52.785789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583595, 33.005146, 52.847496>,  <34.703445, 33.372650, 52.950344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583595, 33.005146, 52.847496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305769, -0.162807, 0.938083,
		-0.903731, 0.359692, -0.232147,
		-0.299626, -0.918758, -0.257117,
		34.493706, 32.729519, 52.770363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301899, 33.207714, 53.473236>,  <34.703445, 33.372650, 52.950344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301899, 33.207714, 53.473236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320782, 32.846554, 53.302334>,  <34.332111, 32.629856, 53.199795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320782, 32.846554, 53.302334>,  <34.301899, 33.207714, 53.473236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320782, 32.846554, 53.302334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336069, -0.417151, 0.844419,
		-0.940653, 0.103720, -0.323130,
		0.047211, -0.902899, -0.427251,
		34.334946, 32.575684, 53.174160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705143, 32.979706, 53.556854>,  <34.301899, 33.207714, 53.473236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705143, 32.979706, 53.556854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967010, 32.679146, 53.523846>,  <34.124130, 32.498810, 53.504040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967010, 32.679146, 53.523846>,  <33.705143, 32.979706, 53.556854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967010, 32.679146, 53.523846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333663, -0.385203, 0.860400,
		-0.678291, -0.535741, -0.502894,
		0.654668, -0.751399, -0.082523,
		34.163410, 32.453728, 53.499088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343845, 32.242588, 53.612148>,  <33.705143, 32.979706, 53.556854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343845, 32.242588, 53.612148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.716602, 32.299366, 53.745667>,  <33.940258, 32.333431, 53.825779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.716602, 32.299366, 53.745667>,  <33.343845, 32.242588, 53.612148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716602, 32.299366, 53.745667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285439, -0.280857, 0.916321,
		0.223816, -0.949195, -0.221214,
		0.931897, 0.141944, 0.333798,
		33.996170, 32.341949, 53.845806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997814, 31.991873, 52.884468>,  <33.343845, 32.242588, 53.612148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997814, 31.991873, 52.884468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.815868, 32.069878, 52.536892>,  <32.706699, 32.116680, 52.328346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.815868, 32.069878, 52.536892>,  <32.997814, 31.991873, 52.884468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815868, 32.069878, 52.536892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830311, 0.445652, -0.334631,
		0.321990, -0.873708, -0.364632,
		-0.454869, 0.195010, -0.868945,
		32.679409, 32.128380, 52.276207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352036, 32.301918, 52.901619>,  <32.997814, 31.991873, 52.884468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352036, 32.301918, 52.901619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952196, 32.302460, 52.890263>,  <31.712294, 32.302784, 52.883450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952196, 32.302460, 52.890263>,  <32.352036, 32.301918, 52.901619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952196, 32.302460, 52.890263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028289, -0.050097, -0.998344,
		-0.002767, -0.998743, 0.050039,
		-0.999595, 0.001346, -0.028392,
		31.652317, 32.302864, 52.881744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150345, 31.793470, 52.378136>,  <32.352036, 32.301918, 52.901619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150345, 31.793470, 52.378136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.828341, 32.023903, 52.434822>,  <31.635138, 32.162163, 52.468834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.828341, 32.023903, 52.434822>,  <32.150345, 31.793470, 52.378136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828341, 32.023903, 52.434822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110411, 0.089213, -0.989874,
		-0.582893, -0.812507, -0.008211,
		-0.805012, 0.576084, 0.141712,
		31.586836, 32.196728, 52.477337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557789, 31.523125, 52.024864>,  <32.150345, 31.793470, 52.378136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557789, 31.523125, 52.024864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.446926, 31.906710, 52.048798>,  <31.380409, 32.136860, 52.063160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.446926, 31.906710, 52.048798>,  <31.557789, 31.523125, 52.024864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446926, 31.906710, 52.048798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179389, 0.009537, -0.983732,
		-0.943930, -0.283381, 0.169384,
		-0.277155, 0.958960, 0.059838,
		31.363779, 32.194397, 52.066750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992233, 31.631981, 51.602207>,  <31.557789, 31.523125, 52.024864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992233, 31.631981, 51.602207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131521, 32.000706, 51.670338>,  <31.215094, 32.221939, 51.711216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131521, 32.000706, 51.670338>,  <30.992233, 31.631981, 51.602207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131521, 32.000706, 51.670338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212451, 0.254573, -0.943428,
		-0.913021, 0.292334, 0.284487,
		0.348219, 0.921810, 0.170324,
		31.235987, 32.277248, 51.721436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477716, 32.035244, 51.303673>,  <30.992233, 31.631981, 51.602207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477716, 32.035244, 51.303673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.828407, 32.226936, 51.320107>,  <31.038822, 32.341949, 51.329967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.828407, 32.226936, 51.320107>,  <30.477716, 32.035244, 51.303673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828407, 32.226936, 51.320107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003176, 0.079643, -0.996819,
		-0.480975, 0.874070, 0.068304,
		0.876729, 0.479227, 0.041083,
		31.091427, 32.370705, 51.332432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383095, 32.685966, 50.913391>,  <30.477716, 32.035244, 51.303673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383095, 32.685966, 50.913391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.769398, 32.582191, 50.914093>,  <31.001181, 32.519928, 50.914513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.769398, 32.582191, 50.914093>,  <30.383095, 32.685966, 50.913391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769398, 32.582191, 50.914093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001032, -0.002908, -0.999995,
		0.259441, 0.965756, -0.002541,
		0.965758, -0.259437, 0.001751,
		31.059126, 32.504360, 50.914619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680418, 33.100883, 50.459419>,  <30.383095, 32.685966, 50.913391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680418, 33.100883, 50.459419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.949631, 32.806633, 50.490082>,  <31.111158, 32.630081, 50.508480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.949631, 32.806633, 50.490082>,  <30.680418, 33.100883, 50.459419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949631, 32.806633, 50.490082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131093, 0.016643, -0.991230,
		0.727902, 0.677180, 0.107637,
		0.673033, -0.735629, 0.076659,
		31.151541, 32.585945, 50.513081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086874, 33.493126, 50.171204>,  <30.680418, 33.100883, 50.459419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086874, 33.493126, 50.171204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.247223, 33.126717, 50.165462>,  <31.343431, 32.906872, 50.162018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.247223, 33.126717, 50.165462>,  <31.086874, 33.493126, 50.171204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247223, 33.126717, 50.165462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573711, 0.263216, -0.775611,
		0.714254, 0.302688, 0.631048,
		0.400870, -0.916023, -0.014348,
		31.367483, 32.851910, 50.161160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741804, 33.668701, 50.192501>,  <31.086874, 33.493126, 50.171204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741804, 33.668701, 50.192501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.648312, 33.312614, 50.036102>,  <31.592216, 33.098961, 49.942265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.648312, 33.312614, 50.036102>,  <31.741804, 33.668701, 50.192501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648312, 33.312614, 50.036102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405152, 0.276385, -0.871472,
		0.883867, -0.362104, 0.296075,
		-0.233732, -0.890220, -0.390995,
		31.578192, 33.045547, 49.918804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306561, 33.378643, 49.876781>,  <31.741804, 33.668701, 50.192501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306561, 33.378643, 49.876781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.017853, 33.167320, 49.697922>,  <31.844627, 33.040527, 49.590607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.017853, 33.167320, 49.697922>,  <32.306561, 33.378643, 49.876781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017853, 33.167320, 49.697922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384367, 0.231314, -0.893731,
		0.575594, -0.816938, 0.036107,
		-0.721771, -0.528305, -0.447147,
		31.801321, 33.008827, 49.563778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659237, 32.975014, 49.435699>,  <32.306561, 33.378643, 49.876781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659237, 32.975014, 49.435699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.277187, 33.012901, 49.323437>,  <32.047958, 33.035633, 49.256081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.277187, 33.012901, 49.323437>,  <32.659237, 32.975014, 49.435699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277187, 33.012901, 49.323437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293471, 0.174148, -0.939972,
		-0.040155, -0.980154, -0.194129,
		-0.955124, 0.094716, -0.280654,
		31.990650, 33.041317, 49.239239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695568, 32.726135, 48.763721>,  <32.659237, 32.975014, 49.435699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695568, 32.726135, 48.763721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363091, 32.945004, 48.803173>,  <32.163605, 33.076324, 48.826843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363091, 32.945004, 48.803173>,  <32.695568, 32.726135, 48.763721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363091, 32.945004, 48.803173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166708, 0.414504, -0.894648,
		-0.530404, -0.727182, -0.435750,
		-0.831192, 0.547168, 0.098628,
		32.113731, 33.109154, 48.832760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500374, 32.946552, 47.999825>,  <32.695568, 32.726135, 48.763721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500374, 32.946552, 47.999825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304676, 33.187664, 48.251953>,  <32.187260, 33.332333, 48.403229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304676, 33.187664, 48.251953>,  <32.500374, 32.946552, 47.999825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304676, 33.187664, 48.251953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152981, 0.770825, -0.618406,
		-0.858626, -0.206124, -0.469334,
		-0.489242, 0.602778, 0.630318,
		32.157902, 33.368496, 48.441048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075729, 33.366108, 47.544250>,  <32.500374, 32.946552, 47.999825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075729, 33.366108, 47.544250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.090359, 33.580601, 47.881561>,  <32.099136, 33.709297, 48.083946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.090359, 33.580601, 47.881561>,  <32.075729, 33.366108, 47.544250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090359, 33.580601, 47.881561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205006, 0.821867, -0.531514,
		-0.978077, 0.192315, -0.079873,
		0.036573, 0.536237, 0.843275,
		32.101330, 33.741470, 48.134544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609297, 33.921284, 47.487175>,  <32.075729, 33.366108, 47.544250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609297, 33.921284, 47.487175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.881626, 34.034927, 47.757214>,  <32.045025, 34.103115, 47.919239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.881626, 34.034927, 47.757214>,  <31.609297, 33.921284, 47.487175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881626, 34.034927, 47.757214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284439, 0.746809, -0.601141,
		-0.674963, 0.601295, 0.427632,
		0.680822, 0.284113, 0.675101,
		32.085873, 34.120163, 47.959743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640409, 34.696205, 47.503418>,  <31.609297, 33.921284, 47.487175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640409, 34.696205, 47.503418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.984829, 34.619041, 47.691624>,  <32.191479, 34.572742, 47.804546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.984829, 34.619041, 47.691624>,  <31.640409, 34.696205, 47.503418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984829, 34.619041, 47.691624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459734, 0.690764, -0.558113,
		-0.217350, 0.696873, 0.683467,
		0.861048, -0.192907, 0.470514,
		32.243145, 34.561169, 47.832779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905853, 35.400326, 47.649567>,  <31.640409, 34.696205, 47.503418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905853, 35.400326, 47.649567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.216122, 35.153687, 47.703434>,  <32.402283, 35.005703, 47.735756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.216122, 35.153687, 47.703434>,  <31.905853, 35.400326, 47.649567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216122, 35.153687, 47.703434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608147, 0.673134, -0.420772,
		0.168797, 0.408280, 0.897115,
		0.775671, -0.616602, 0.134672,
		32.448822, 34.968704, 47.743835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422741, 35.774548, 47.928497>,  <31.905853, 35.400326, 47.649567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422741, 35.774548, 47.928497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.608097, 35.475239, 47.738609>,  <32.719311, 35.295654, 47.624676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.608097, 35.475239, 47.738609>,  <32.422741, 35.774548, 47.928497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608097, 35.475239, 47.738609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627596, 0.655326, -0.420322,
		0.625613, -0.103161, 0.773283,
		0.463392, -0.748268, -0.474724,
		32.747116, 35.250759, 47.596191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232140, 35.950867, 48.001038>,  <32.422741, 35.774548, 47.928497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232140, 35.950867, 48.001038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.183338, 35.695747, 47.696846>,  <33.154057, 35.542675, 47.514332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.183338, 35.695747, 47.696846>,  <33.232140, 35.950867, 48.001038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183338, 35.695747, 47.696846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491218, 0.626980, -0.604650,
		0.862449, -0.447331, 0.236804,
		-0.122007, -0.637802, -0.760475,
		33.146736, 35.504406, 47.468704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788757, 35.964985, 47.678841>,  <33.232140, 35.950867, 48.001038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788757, 35.964985, 47.678841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.561195, 35.792473, 47.398743>,  <33.424660, 35.688965, 47.230686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.561195, 35.792473, 47.398743>,  <33.788757, 35.964985, 47.678841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561195, 35.792473, 47.398743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486552, 0.509952, -0.709377,
		0.663034, -0.744273, -0.080272,
		-0.568905, -0.431285, -0.700243,
		33.390522, 35.663086, 47.188671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.675365, 40.709202, 32.063580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293804, 40.819088, 32.015236>,  <45.064869, 40.885021, 31.986231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293804, 40.819088, 32.015236>,  <45.675365, 40.709202, 32.063580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293804, 40.819088, 32.015236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224672, -0.386631, 0.894449,
		0.198991, 0.880368, 0.430528,
		-0.953900, 0.274715, -0.120858,
		45.007633, 40.901501, 31.978979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496281, 41.024658, 32.737453>,  <45.675365, 40.709202, 32.063580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496281, 41.024658, 32.737453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.141472, 40.935196, 32.575874>,  <44.928585, 40.881519, 32.478928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.141472, 40.935196, 32.575874>,  <45.496281, 41.024658, 32.737453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141472, 40.935196, 32.575874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328538, -0.308998, 0.892515,
		-0.324433, 0.924391, 0.200609,
		-0.887021, -0.223653, -0.403947,
		44.875366, 40.868099, 32.454689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998016, 41.418358, 33.079498>,  <45.496281, 41.024658, 32.737453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998016, 41.418358, 33.079498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.821903, 41.093052, 32.927311>,  <44.716236, 40.897869, 32.835999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.821903, 41.093052, 32.927311>,  <44.998016, 41.418358, 33.079498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821903, 41.093052, 32.927311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320547, -0.253445, 0.912697,
		-0.838691, 0.523799, -0.149103,
		-0.440280, -0.813265, -0.380464,
		44.689819, 40.849072, 32.813171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.304016, 41.507584, 33.265392>,  <44.998016, 41.418358, 33.079498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.304016, 41.507584, 33.265392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335922, 41.112965, 33.208302>,  <44.355064, 40.876194, 33.174049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335922, 41.112965, 33.208302>,  <44.304016, 41.507584, 33.265392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335922, 41.112965, 33.208302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293368, -0.160072, 0.942503,
		-0.952666, -0.033307, -0.302188,
		0.079763, -0.986543, -0.142724,
		44.359852, 40.817001, 33.165485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759762, 41.124615, 33.592968>,  <44.304016, 41.507584, 33.265392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759762, 41.124615, 33.592968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.042656, 40.845470, 33.547699>,  <44.212395, 40.677986, 33.520538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.042656, 40.845470, 33.547699>,  <43.759762, 41.124615, 33.592968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042656, 40.845470, 33.547699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224753, -0.373709, 0.899904,
		-0.670298, -0.611012, -0.421148,
		0.707239, -0.697858, -0.113170,
		44.254829, 40.636112, 33.513748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.451832, 40.426392, 33.773312>,  <43.759762, 41.124615, 33.592968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.451832, 40.426392, 33.773312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.846748, 40.371964, 33.806175>,  <44.083698, 40.339306, 33.825893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.846748, 40.371964, 33.806175>,  <43.451832, 40.426392, 33.773312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846748, 40.371964, 33.806175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144449, -0.552405, 0.820965,
		-0.066321, -0.822396, -0.565037,
		0.987287, -0.136066, 0.082158,
		44.142933, 40.331142, 33.830822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498051, 39.699692, 34.045891>,  <43.451832, 40.426392, 33.773312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498051, 39.699692, 34.045891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.858761, 39.859890, 34.110889>,  <44.075188, 39.956009, 34.149891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.858761, 39.859890, 34.110889>,  <43.498051, 39.699692, 34.045891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858761, 39.859890, 34.110889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142276, -0.630091, 0.763376,
		0.408118, -0.665273, -0.625181,
		0.901775, 0.400495, 0.162499,
		44.129292, 39.980038, 34.159637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966213, 39.130348, 34.234928>,  <43.498051, 39.699692, 34.045891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966213, 39.130348, 34.234928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.185783, 39.429337, 34.384579>,  <44.317524, 39.608730, 34.474369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.185783, 39.429337, 34.384579>,  <43.966213, 39.130348, 34.234928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.185783, 39.429337, 34.384579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153137, -0.529944, 0.834091,
		0.821724, -0.400561, -0.405365,
		0.548925, 0.747469, 0.374127,
		44.350460, 39.653576, 34.496819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446327, 38.804790, 34.602417>,  <43.966213, 39.130348, 34.234928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446327, 38.804790, 34.602417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499096, 39.178009, 34.736294>,  <44.530758, 39.401939, 34.816620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499096, 39.178009, 34.736294>,  <44.446327, 38.804790, 34.602417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499096, 39.178009, 34.736294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018873, -0.339943, 0.940257,
		0.991080, -0.117727, -0.062456,
		0.131925, 0.933048, 0.334689,
		44.538673, 39.457924, 34.836700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.052078, 38.865967, 35.009575>,  <44.446327, 38.804790, 34.602417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.052078, 38.865967, 35.009575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.853806, 39.185516, 35.145870>,  <44.734840, 39.377247, 35.227646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.853806, 39.185516, 35.145870>,  <45.052078, 38.865967, 35.009575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.853806, 39.185516, 35.145870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089434, -0.343287, 0.934963,
		0.863885, 0.493921, 0.098716,
		-0.495685, 0.798872, 0.340734,
		44.705101, 39.425179, 35.248089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.395233, 39.116287, 35.500671>,  <45.052078, 38.865967, 35.009575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.395233, 39.116287, 35.500671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.036377, 39.269623, 35.588470>,  <44.821064, 39.361626, 35.641151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.036377, 39.269623, 35.588470>,  <45.395233, 39.116287, 35.500671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036377, 39.269623, 35.588470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061687, -0.383314, 0.921556,
		0.437410, 0.840309, 0.320241,
		-0.897144, 0.383343, 0.219502,
		44.767235, 39.384624, 35.654320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403343, 39.363605, 36.165180>,  <45.395233, 39.116287, 35.500671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403343, 39.363605, 36.165180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.013618, 39.295380, 36.106354>,  <44.779785, 39.254444, 36.071056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.013618, 39.295380, 36.106354>,  <45.403343, 39.363605, 36.165180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.013618, 39.295380, 36.106354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065791, -0.408978, 0.910170,
		-0.215394, 0.896462, 0.387249,
		-0.974308, -0.170568, -0.147071,
		44.721325, 39.244209, 36.062233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098061, 39.581760, 36.785965>,  <45.403343, 39.363605, 36.165180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098061, 39.581760, 36.785965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.866920, 39.314133, 36.599014>,  <44.728237, 39.153557, 36.486843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.866920, 39.314133, 36.599014>,  <45.098061, 39.581760, 36.785965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866920, 39.314133, 36.599014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022558, -0.559354, 0.828622,
		-0.815832, 0.489361, 0.308129,
		-0.577849, -0.669066, -0.467378,
		44.693565, 39.113415, 36.458801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644062, 39.428684, 37.280880>,  <45.098061, 39.581760, 36.785965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644062, 39.428684, 37.280880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.620739, 39.124123, 37.022621>,  <44.606747, 38.941383, 36.867664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.620739, 39.124123, 37.022621>,  <44.644062, 39.428684, 37.280880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.620739, 39.124123, 37.022621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100138, -0.639025, 0.762640,
		-0.993264, 0.109119, -0.038988,
		-0.058304, -0.761406, -0.645648,
		44.603249, 38.895702, 36.828926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150700, 38.880184, 37.587227>,  <44.644062, 39.428684, 37.280880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150700, 38.880184, 37.587227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.326241, 38.648323, 37.312588>,  <44.431564, 38.509209, 37.147804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.326241, 38.648323, 37.312588>,  <44.150700, 38.880184, 37.587227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.326241, 38.648323, 37.312588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182613, -0.805697, 0.563475,
		-0.879809, -0.121897, -0.459430,
		0.438848, -0.579648, -0.686600,
		44.457897, 38.474430, 37.106609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835335, 38.266369, 37.606606>,  <44.150700, 38.880184, 37.587227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835335, 38.266369, 37.606606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.155811, 38.151077, 37.396835>,  <44.348095, 38.081902, 37.270973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.155811, 38.151077, 37.396835>,  <43.835335, 38.266369, 37.606606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.155811, 38.151077, 37.396835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008640, -0.881845, 0.471461,
		-0.598352, -0.373197, -0.709013,
		0.801187, -0.288225, -0.524429,
		44.396168, 38.064610, 37.239506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716866, 37.529274, 37.370407>,  <43.835335, 38.266369, 37.606606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716866, 37.529274, 37.370407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.113289, 37.573761, 37.340919>,  <44.351143, 37.600452, 37.323227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.113289, 37.573761, 37.340919>,  <43.716866, 37.529274, 37.370407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113289, 37.573761, 37.340919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133163, -0.859296, 0.493841,
		-0.008422, -0.499241, -0.866422,
		0.991058, 0.111216, -0.073717,
		44.410606, 37.607124, 37.318806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033451, 36.764896, 37.112938>,  <43.716866, 37.529274, 37.370407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033451, 36.764896, 37.112938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.309200, 36.983410, 37.303234>,  <44.474651, 37.114517, 37.417412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.309200, 36.983410, 37.303234>,  <44.033451, 36.764896, 37.112938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.309200, 36.983410, 37.303234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305502, -0.814723, 0.492844,
		0.656832, -0.194416, -0.728543,
		0.689377, 0.546287, 0.475741,
		44.516014, 37.147297, 37.445957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495094, 36.303383, 37.170258>,  <44.033451, 36.764896, 37.112938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495094, 36.303383, 37.170258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.632259, 36.573750, 37.431190>,  <44.714558, 36.735970, 37.587749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.632259, 36.573750, 37.431190>,  <44.495094, 36.303383, 37.170258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632259, 36.573750, 37.431190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312469, -0.736974, 0.599360,
		0.885873, -0.001695, -0.463924,
		0.342916, 0.675919, 0.652336,
		44.735134, 36.776524, 37.626892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149086, 36.220619, 37.316288>,  <44.495094, 36.303383, 37.170258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149086, 36.220619, 37.316288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.040688, 36.407475, 37.652939>,  <44.975647, 36.519588, 37.854931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.040688, 36.407475, 37.652939>,  <45.149086, 36.220619, 37.316288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040688, 36.407475, 37.652939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369115, -0.757077, 0.539062,
		0.888997, 0.456742, 0.032737,
		-0.270997, 0.467141, 0.841630,
		44.959389, 36.547615, 37.905426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.787956, 36.287270, 37.682117>,  <45.149086, 36.220619, 37.316288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.787956, 36.287270, 37.682117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.481075, 36.323380, 37.936127>,  <45.296947, 36.345047, 38.088531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.481075, 36.323380, 37.936127>,  <45.787956, 36.287270, 37.682117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.481075, 36.323380, 37.936127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238550, -0.878864, 0.413150,
		0.595396, 0.468454, 0.652729,
		-0.767201, 0.090279, 0.635022,
		45.250916, 36.350464, 38.126633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.226040, 36.725628, 37.206612>,  <45.787956, 36.287270, 37.682117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.226040, 36.725628, 37.206612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.272743, 36.362801, 37.044823>,  <46.300766, 36.145103, 36.947750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.272743, 36.362801, 37.044823>,  <46.226040, 36.725628, 37.206612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.272743, 36.362801, 37.044823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039859, 0.411207, -0.910670,
		0.992360, 0.090207, 0.084167,
		0.116760, -0.907068, -0.404469,
		46.307770, 36.090679, 36.923481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.826572, 36.701797, 36.755344>,  <46.226040, 36.725628, 37.206612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.826572, 36.701797, 36.755344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.596050, 36.400558, 36.628395>,  <46.457737, 36.219814, 36.552227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.596050, 36.400558, 36.628395>,  <46.826572, 36.701797, 36.755344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596050, 36.400558, 36.628395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056399, 0.350771, -0.934761,
		0.815287, -0.556606, -0.159678,
		-0.576304, -0.753093, -0.317371,
		46.423161, 36.174629, 36.533184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.182182, 36.490479, 36.128998>,  <46.826572, 36.701797, 36.755344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.182182, 36.490479, 36.128998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.831936, 36.298298, 36.109146>,  <46.621788, 36.182991, 36.097237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.831936, 36.298298, 36.109146>,  <47.182182, 36.490479, 36.128998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.831936, 36.298298, 36.109146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016700, 0.132801, -0.991002,
		0.482720, -0.866908, -0.124306,
		-0.875615, -0.480452, -0.049628,
		46.569252, 36.154163, 36.094257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.176266, 36.054787, 35.571568>,  <47.182182, 36.490479, 36.128998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.176266, 36.054787, 35.571568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.788685, 36.131001, 35.634602>,  <46.556137, 36.176727, 35.672421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.788685, 36.131001, 35.634602>,  <47.176266, 36.054787, 35.571568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.788685, 36.131001, 35.634602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108516, 0.244982, -0.963436,
		-0.222169, -0.950622, -0.216700,
		-0.968951, 0.190531, 0.157585,
		46.498001, 36.188160, 35.681877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.844177, 35.609249, 35.059750>,  <47.176266, 36.054787, 35.571568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.844177, 35.609249, 35.059750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.558865, 35.874092, 35.151699>,  <46.387676, 36.032997, 35.206867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.558865, 35.874092, 35.151699>,  <46.844177, 35.609249, 35.059750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.558865, 35.874092, 35.151699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107937, 0.220298, -0.969442,
		-0.692518, -0.716296, -0.085668,
		-0.713280, 0.662110, 0.229875,
		46.344879, 36.072723, 35.220661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.454044, 35.521957, 34.537525>,  <46.844177, 35.609249, 35.059750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.454044, 35.521957, 34.537525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.328365, 35.870361, 34.688587>,  <46.252956, 36.079403, 34.779224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.328365, 35.870361, 34.688587>,  <46.454044, 35.521957, 34.537525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.328365, 35.870361, 34.688587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153548, 0.345939, -0.925608,
		-0.936857, -0.348815, 0.025047,
		-0.314201, 0.871008, 0.377655,
		46.234104, 36.131664, 34.801884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928043, 35.636326, 34.160358>,  <46.454044, 35.521957, 34.537525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928043, 35.636326, 34.160358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030964, 35.991089, 34.313820>,  <46.092716, 36.203945, 34.405895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030964, 35.991089, 34.313820>,  <45.928043, 35.636326, 34.160358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030964, 35.991089, 34.313820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155936, 0.429925, -0.889297,
		-0.953667, 0.168992, 0.248921,
		0.257301, 0.886908, 0.383653,
		46.108154, 36.257160, 34.428917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.457764, 36.116245, 33.915016>,  <45.928043, 35.636326, 34.160358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.457764, 36.116245, 33.915016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.746983, 36.368664, 34.027431>,  <45.920517, 36.520115, 34.094879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.746983, 36.368664, 34.027431>,  <45.457764, 36.116245, 33.915016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.746983, 36.368664, 34.027431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184769, 0.568675, -0.801542,
		-0.665625, 0.527630, 0.527779,
		0.723052, 0.631043, 0.281034,
		45.963898, 36.557976, 34.111740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199833, 36.840767, 33.971298>,  <45.457764, 36.116245, 33.915016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199833, 36.840767, 33.971298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.591213, 36.878834, 33.897999>,  <45.826042, 36.901676, 33.854019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.591213, 36.878834, 33.897999>,  <45.199833, 36.840767, 33.971298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.591213, 36.878834, 33.897999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202481, 0.616136, -0.761169,
		0.040463, 0.781869, 0.622128,
		0.978450, 0.095169, -0.183244,
		45.884747, 36.907383, 33.843025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.233719, 37.485104, 33.736591>,  <45.199833, 36.840767, 33.971298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.233719, 37.485104, 33.736591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.592064, 37.343082, 33.629730>,  <45.807072, 37.257870, 33.565613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.592064, 37.343082, 33.629730>,  <45.233719, 37.485104, 33.736591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592064, 37.343082, 33.629730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100671, 0.423429, -0.900319,
		0.432780, 0.833455, 0.343590,
		0.895861, -0.355051, -0.267156,
		45.860821, 37.236568, 33.549583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.539715, 37.956673, 33.476395>,  <45.233719, 37.485104, 33.736591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.539715, 37.956673, 33.476395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.772469, 37.677082, 33.310097>,  <45.912121, 37.509327, 33.210320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.772469, 37.677082, 33.310097>,  <45.539715, 37.956673, 33.476395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.772469, 37.677082, 33.310097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059077, 0.473518, -0.878800,
		0.811123, 0.535921, 0.234240,
		0.581885, -0.698977, -0.415742,
		45.947033, 37.467388, 33.185375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.177444, 38.213017, 33.099545>,  <45.539715, 37.956673, 33.476395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.177444, 38.213017, 33.099545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.087143, 37.865608, 32.923042>,  <46.032963, 37.657166, 32.817139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.087143, 37.865608, 32.923042>,  <46.177444, 38.213017, 33.099545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.087143, 37.865608, 32.923042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146615, 0.417503, -0.896769,
		0.963088, -0.267145, 0.033084,
		-0.225755, -0.868519, -0.441259,
		46.019417, 37.605053, 32.790665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.703342, 38.224331, 32.506001>,  <46.177444, 38.213017, 33.099545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.703342, 38.224331, 32.506001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.411999, 37.961102, 32.429653>,  <46.237194, 37.803165, 32.383846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.411999, 37.961102, 32.429653>,  <46.703342, 38.224331, 32.506001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.411999, 37.961102, 32.429653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342450, -0.108339, -0.933269,
		0.593482, -0.745118, 0.304267,
		-0.728359, -0.658074, -0.190868,
		46.193489, 37.763680, 32.372395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.049652, 37.675102, 32.023689>,  <46.703342, 38.224331, 32.506001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.049652, 37.675102, 32.023689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.650795, 37.687855, 31.996271>,  <46.411480, 37.695507, 31.979820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.650795, 37.687855, 31.996271>,  <47.049652, 37.675102, 32.023689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.650795, 37.687855, 31.996271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069309, 0.023602, -0.997316,
		-0.030183, -0.999213, -0.025744,
		-0.997138, 0.031887, -0.068542,
		46.351654, 37.697418, 31.975708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.841232, 37.302921, 31.498722>,  <47.049652, 37.675102, 32.023689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.841232, 37.302921, 31.498722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.499653, 37.508427, 31.531757>,  <46.294704, 37.631729, 31.551579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.499653, 37.508427, 31.531757>,  <46.841232, 37.302921, 31.498722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499653, 37.508427, 31.531757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032369, 0.105957, -0.993844,
		-0.519351, -0.851364, -0.073851,
		-0.853948, 0.513764, 0.082587,
		46.243469, 37.662556, 31.556534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455238, 37.027302, 30.859407>,  <46.841232, 37.302921, 31.498722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455238, 37.027302, 30.859407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.273193, 37.356239, 30.996004>,  <46.163967, 37.553604, 31.077961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.273193, 37.356239, 30.996004>,  <46.455238, 37.027302, 30.859407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.273193, 37.356239, 30.996004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249878, 0.250148, -0.935407,
		-0.854653, -0.511048, 0.091640,
		-0.455114, 0.822348, 0.341490,
		46.136658, 37.602943, 31.098452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.798538, 37.111832, 30.560244>,  <46.455238, 37.027302, 30.859407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.798538, 37.111832, 30.560244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.913841, 37.485077, 30.646235>,  <45.983021, 37.709023, 30.697830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.913841, 37.485077, 30.646235>,  <45.798538, 37.111832, 30.560244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.913841, 37.485077, 30.646235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188231, 0.275345, -0.942738,
		-0.938871, 0.231284, 0.255010,
		0.288256, 0.933110, 0.214978,
		46.000317, 37.765011, 30.710728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308052, 37.659740, 30.247589>,  <45.798538, 37.111832, 30.560244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308052, 37.659740, 30.247589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.630749, 37.884895, 30.319517>,  <45.824368, 38.019989, 30.362673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.630749, 37.884895, 30.319517>,  <45.308052, 37.659740, 30.247589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630749, 37.884895, 30.319517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124351, 0.459213, -0.879580,
		-0.577675, 0.687231, 0.440460,
		0.806740, 0.562883, 0.179818,
		45.872772, 38.053761, 30.373463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145950, 38.194942, 29.878946>,  <45.308052, 37.659740, 30.247589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145950, 38.194942, 29.878946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.531944, 38.264523, 29.957483>,  <45.763538, 38.306271, 30.004604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.531944, 38.264523, 29.957483>,  <45.145950, 38.194942, 29.878946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531944, 38.264523, 29.957483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058978, 0.585458, -0.808555,
		-0.255596, 0.791822, 0.554697,
		0.964983, 0.173949, 0.196341,
		45.821438, 38.316708, 30.016386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230034, 38.858601, 29.863337>,  <45.145950, 38.194942, 29.878946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230034, 38.858601, 29.863337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.598576, 38.733643, 29.770798>,  <45.819702, 38.658669, 29.715275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.598576, 38.733643, 29.770798>,  <45.230034, 38.858601, 29.863337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598576, 38.733643, 29.770798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098610, 0.763494, -0.638242,
		0.376012, 0.565233, 0.734252,
		0.921353, -0.312391, -0.231346,
		45.874981, 38.639927, 29.701393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743855, 39.377625, 29.826910>,  <45.230034, 38.858601, 29.863337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743855, 39.377625, 29.826910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.953072, 39.117954, 29.606003>,  <46.078602, 38.962151, 29.473457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.953072, 39.117954, 29.606003>,  <45.743855, 39.377625, 29.826910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.953072, 39.117954, 29.606003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029543, 0.633771, -0.772956,
		0.851797, 0.420602, 0.312308,
		0.523039, -0.649175, -0.552270,
		46.109982, 38.923203, 29.440321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.583591, 36.730061, 44.454220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250660, 36.546402, 44.330021>,  <38.050900, 36.436207, 44.255501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250660, 36.546402, 44.330021>,  <38.583591, 36.730061, 44.454220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250660, 36.546402, 44.330021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305986, 0.086459, -0.948102,
		0.462163, -0.884143, 0.068530,
		-0.832332, -0.459147, -0.310494,
		38.000961, 36.408657, 44.236874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856655, 36.245106, 43.993103>,  <38.583591, 36.730061, 44.454220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856655, 36.245106, 43.993103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473118, 36.307430, 43.898151>,  <38.242996, 36.344826, 43.841183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473118, 36.307430, 43.898151>,  <38.856655, 36.245106, 43.993103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473118, 36.307430, 43.898151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272723, 0.272641, -0.922653,
		-0.079044, -0.949415, -0.303913,
		-0.958840, 0.155815, -0.237376,
		38.185467, 36.354176, 43.826939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848801, 36.006001, 43.308144>,  <38.856655, 36.245106, 43.993103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848801, 36.006001, 43.308144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498905, 36.192379, 43.361412>,  <38.288967, 36.304207, 43.393372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498905, 36.192379, 43.361412>,  <38.848801, 36.006001, 43.308144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498905, 36.192379, 43.361412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061235, 0.166327, -0.984167,
		-0.480716, -0.869041, -0.116960,
		-0.874735, 0.465943, 0.133172,
		38.236485, 36.332161, 43.401363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305737, 35.642433, 43.061085>,  <38.848801, 36.006001, 43.308144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305737, 35.642433, 43.061085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144951, 36.006638, 43.022301>,  <38.048481, 36.225159, 42.999031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144951, 36.006638, 43.022301>,  <38.305737, 35.642433, 43.061085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144951, 36.006638, 43.022301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049511, -0.084128, -0.995224,
		-0.914315, -0.404846, -0.011264,
		-0.401965, 0.910506, -0.096963,
		38.024361, 36.279789, 42.993210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936859, 35.610497, 42.392963>,  <38.305737, 35.642433, 43.061085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936859, 35.610497, 42.392963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977123, 36.000813, 42.470631>,  <38.001282, 36.235001, 42.517231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977123, 36.000813, 42.470631>,  <37.936859, 35.610497, 42.392963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977123, 36.000813, 42.470631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146742, 0.178461, -0.972943,
		-0.984040, 0.126432, -0.125225,
		0.100663, 0.975790, 0.194165,
		38.007320, 36.293549, 42.528881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585670, 35.940926, 41.867901>,  <37.936859, 35.610497, 42.392963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585670, 35.940926, 41.867901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843685, 36.216064, 42.001049>,  <37.998493, 36.381145, 42.080936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843685, 36.216064, 42.001049>,  <37.585670, 35.940926, 41.867901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843685, 36.216064, 42.001049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231777, 0.238979, -0.942957,
		-0.728156, 0.685391, -0.005277,
		0.645033, 0.687844, 0.332872,
		38.037193, 36.422417, 42.100910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507244, 36.497066, 41.380398>,  <37.585670, 35.940926, 41.867901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507244, 36.497066, 41.380398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841709, 36.602009, 41.573063>,  <38.042389, 36.664974, 41.688663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841709, 36.602009, 41.573063>,  <37.507244, 36.497066, 41.380398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841709, 36.602009, 41.573063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373842, 0.369981, -0.850504,
		-0.401338, 0.891227, 0.211286,
		0.836164, 0.262352, 0.481666,
		38.092560, 36.680714, 41.717564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546612, 37.201653, 41.347954>,  <37.507244, 36.497066, 41.380398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546612, 37.201653, 41.347954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921730, 37.072666, 41.399406>,  <38.146801, 36.995274, 41.430279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921730, 37.072666, 41.399406>,  <37.546612, 37.201653, 41.347954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921730, 37.072666, 41.399406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306106, 0.593198, -0.744591,
		0.163801, 0.737653, 0.655010,
		0.937800, -0.322467, 0.128634,
		38.203072, 36.975925, 41.437996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011265, 37.696445, 41.144623>,  <37.546612, 37.201653, 41.347954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011265, 37.696445, 41.144623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302341, 37.423756, 41.174854>,  <38.476986, 37.260139, 41.192993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302341, 37.423756, 41.174854>,  <38.011265, 37.696445, 41.144623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302341, 37.423756, 41.174854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451771, 0.393462, -0.800681,
		0.516110, 0.616793, 0.594304,
		0.727691, -0.681729, 0.075580,
		38.520649, 37.219238, 41.197529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615952, 38.039459, 41.199238>,  <38.011265, 37.696445, 41.144623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615952, 38.039459, 41.199238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685848, 37.673054, 41.054798>,  <38.727787, 37.453213, 40.968136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685848, 37.673054, 41.054798>,  <38.615952, 38.039459, 41.199238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685848, 37.673054, 41.054798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487594, 0.399119, -0.776503,
		0.855406, -0.040385, 0.516382,
		0.174739, -0.916009, -0.361100,
		38.738270, 37.398251, 40.946468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271351, 38.085464, 41.022572>,  <38.615952, 38.039459, 41.199238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271351, 38.085464, 41.022572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110252, 37.792549, 40.802917>,  <39.013592, 37.616802, 40.671124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110252, 37.792549, 40.802917>,  <39.271351, 38.085464, 41.022572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110252, 37.792549, 40.802917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513924, 0.315535, -0.797696,
		0.757414, -0.603485, 0.249259,
		-0.402748, -0.732287, -0.549136,
		38.989429, 37.572865, 40.638176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849491, 37.889938, 40.595467>,  <39.271351, 38.085464, 41.022572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849491, 37.889938, 40.595467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508556, 37.764320, 40.428185>,  <39.303993, 37.688950, 40.327816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508556, 37.764320, 40.428185>,  <39.849491, 37.889938, 40.595467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508556, 37.764320, 40.428185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253561, 0.451231, -0.855627,
		0.457428, -0.835318, -0.304964,
		-0.852330, -0.314060, -0.418210,
		39.252853, 37.670109, 40.302723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980545, 37.438984, 40.050766>,  <39.849491, 37.889938, 40.595467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980545, 37.438984, 40.050766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645443, 37.647026, 39.984245>,  <39.444382, 37.771851, 39.944332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645443, 37.647026, 39.984245>,  <39.980545, 37.438984, 40.050766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645443, 37.647026, 39.984245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411625, 0.401408, -0.818191,
		-0.358788, -0.753899, -0.550370,
		-0.837757, 0.520103, -0.166303,
		39.394115, 37.803059, 39.934353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551598, 37.042820, 39.694878>,  <39.980545, 37.438984, 40.050766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551598, 37.042820, 39.694878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484734, 37.283924, 39.382790>,  <40.444614, 37.428585, 39.195538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484734, 37.283924, 39.382790>,  <40.551598, 37.042820, 39.694878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484734, 37.283924, 39.382790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757526, -0.585022, -0.289661,
		-0.631040, 0.542616, 0.554398,
		-0.167160, 0.602758, -0.780218,
		40.434586, 37.464752, 39.148724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340111, 36.542473, 39.134014>,  <40.551598, 37.042820, 39.694878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340111, 36.542473, 39.134014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637295, 36.278645, 39.179581>,  <40.815605, 36.120350, 39.206921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637295, 36.278645, 39.179581>,  <40.340111, 36.542473, 39.134014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637295, 36.278645, 39.179581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592203, -0.568446, 0.571109,
		-0.311930, -0.491774, -0.812932,
		0.742964, -0.659566, 0.113915,
		40.860184, 36.080776, 39.213757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994186, 35.905159, 39.067677>,  <40.340111, 36.542473, 39.134014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994186, 35.905159, 39.067677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336109, 35.818954, 39.256512>,  <40.541264, 35.767231, 39.369812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336109, 35.818954, 39.256512>,  <39.994186, 35.905159, 39.067677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336109, 35.818954, 39.256512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495583, -0.608912, 0.619374,
		0.153976, -0.763401, -0.627304,
		0.854804, -0.215513, 0.472086,
		40.592552, 35.754299, 39.398136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928780, 35.187038, 39.116673>,  <39.994186, 35.905159, 39.067677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928780, 35.187038, 39.116673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226624, 35.299767, 39.358707>,  <40.405331, 35.367405, 39.503929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226624, 35.299767, 39.358707>,  <39.928780, 35.187038, 39.116673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226624, 35.299767, 39.358707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338068, -0.622412, 0.705913,
		0.575558, -0.730190, -0.368178,
		0.744609, 0.281825, 0.605089,
		40.450005, 35.384315, 39.540234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206551, 34.528267, 39.410385>,  <39.928780, 35.187038, 39.116673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206551, 34.528267, 39.410385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314983, 34.807827, 39.675125>,  <40.380043, 34.975563, 39.833969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314983, 34.807827, 39.675125>,  <40.206551, 34.528267, 39.410385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314983, 34.807827, 39.675125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279670, -0.600746, 0.748925,
		0.921030, -0.388124, 0.032608,
		0.271087, 0.698902, 0.661852,
		40.396309, 35.017498, 39.873680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611843, 34.165955, 40.012821>,  <40.206551, 34.528267, 39.410385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611843, 34.165955, 40.012821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569378, 34.527893, 40.177734>,  <40.543900, 34.745056, 40.276684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569378, 34.527893, 40.177734>,  <40.611843, 34.165955, 40.012821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569378, 34.527893, 40.177734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157567, -0.424698, 0.891518,
		0.981785, 0.029684, 0.187662,
		-0.106163, 0.904848, 0.412284,
		40.537529, 34.799347, 40.301418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159176, 34.276932, 40.533596>,  <40.611843, 34.165955, 40.012821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159176, 34.276932, 40.533596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833622, 34.496677, 40.609264>,  <40.638290, 34.628525, 40.654667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833622, 34.496677, 40.609264>,  <41.159176, 34.276932, 40.533596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833622, 34.496677, 40.609264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117631, -0.474637, 0.872286,
		0.568991, 0.687690, 0.450924,
		-0.813887, 0.549366, 0.189171,
		40.589455, 34.661488, 40.666016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235180, 34.625008, 41.144527>,  <41.159176, 34.276932, 40.533596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235180, 34.625008, 41.144527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840500, 34.602776, 41.083431>,  <40.603691, 34.589436, 41.046772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840500, 34.602776, 41.083431>,  <41.235180, 34.625008, 41.144527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840500, 34.602776, 41.083431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117344, -0.406697, 0.905996,
		-0.112473, 0.911871, 0.394767,
		-0.986702, -0.055576, -0.152745,
		40.544491, 34.586102, 41.037609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984310, 34.354668, 41.789127>,  <41.235180, 34.625008, 41.144527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984310, 34.354668, 41.789127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631210, 34.364658, 41.601456>,  <40.419350, 34.370651, 41.488853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631210, 34.364658, 41.601456>,  <40.984310, 34.354668, 41.789127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631210, 34.364658, 41.601456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454386, -0.299388, 0.838987,
		-0.119512, 0.953804, 0.275633,
		-0.882751, 0.024975, -0.469176,
		40.366386, 34.372150, 41.460701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584476, 34.705528, 42.145775>,  <40.984310, 34.354668, 41.789127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584476, 34.705528, 42.145775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367359, 34.446880, 41.931389>,  <40.237087, 34.291691, 41.802757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367359, 34.446880, 41.931389>,  <40.584476, 34.705528, 42.145775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367359, 34.446880, 41.931389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481830, -0.282940, 0.829328,
		-0.687903, 0.708401, -0.157980,
		-0.542798, -0.646617, -0.535964,
		40.204521, 34.252895, 41.770599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902134, 34.724659, 42.434616>,  <40.584476, 34.705528, 42.145775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902134, 34.724659, 42.434616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885616, 34.372505, 42.245632>,  <39.875706, 34.161213, 42.132240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885616, 34.372505, 42.245632>,  <39.902134, 34.724659, 42.434616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885616, 34.372505, 42.245632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567300, -0.368594, 0.736416,
		-0.822475, 0.298436, -0.484222,
		-0.041292, -0.880383, -0.472463,
		39.873230, 34.108391, 42.103893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268021, 34.378124, 42.695927>,  <39.902134, 34.724659, 42.434616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268021, 34.378124, 42.695927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455864, 34.053043, 42.557953>,  <39.568569, 33.857994, 42.475170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455864, 34.053043, 42.557953>,  <39.268021, 34.378124, 42.695927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455864, 34.053043, 42.557953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523418, -0.570910, 0.632531,
		-0.710989, -0.116494, -0.693487,
		0.469605, -0.812706, -0.344936,
		39.596745, 33.809231, 42.454472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784569, 33.900764, 42.618229>,  <39.268021, 34.378124, 42.695927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784569, 33.900764, 42.618229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128380, 33.699650, 42.654922>,  <39.334667, 33.578979, 42.676941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128380, 33.699650, 42.654922>,  <38.784569, 33.900764, 42.618229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128380, 33.699650, 42.654922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449693, -0.658702, 0.603231,
		-0.242870, -0.559748, -0.792273,
		0.859529, -0.502786, 0.091736,
		39.386238, 33.548813, 42.682442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545406, 33.137268, 42.579311>,  <38.784569, 33.900764, 42.618229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545406, 33.137268, 42.579311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914436, 33.146435, 42.733364>,  <39.135853, 33.151936, 42.825798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914436, 33.146435, 42.733364>,  <38.545406, 33.137268, 42.579311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914436, 33.146435, 42.733364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292898, -0.608147, 0.737813,
		0.251125, -0.793493, -0.554351,
		0.922576, 0.022915, 0.385134,
		39.191208, 33.153309, 42.848904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508743, 32.522564, 42.782124>,  <38.545406, 33.137268, 42.579311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508743, 32.522564, 42.782124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810455, 32.700859, 42.974949>,  <38.991482, 32.807835, 43.090645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810455, 32.700859, 42.974949>,  <38.508743, 32.522564, 42.782124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810455, 32.700859, 42.974949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226960, -0.511948, 0.828491,
		0.616083, -0.734320, -0.284985,
		0.754275, 0.445739, 0.482064,
		39.036739, 32.834579, 43.119568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250870, 31.862711, 42.528690>,  <38.508743, 32.522564, 42.782124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250870, 31.862711, 42.528690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861588, 31.927889, 42.463799>,  <37.628017, 31.966995, 42.424866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861588, 31.927889, 42.463799>,  <38.250870, 31.862711, 42.528690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861588, 31.927889, 42.463799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200905, 0.259481, -0.944620,
		-0.111825, -0.951903, -0.285265,
		-0.973207, 0.162943, -0.162225,
		37.569626, 31.976772, 42.415131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205421, 31.758162, 41.783104>,  <38.250870, 31.862711, 42.528690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205421, 31.758162, 41.783104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895206, 31.984396, 41.895287>,  <37.709076, 32.120136, 41.962597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895206, 31.984396, 41.895287>,  <38.205421, 31.758162, 41.783104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895206, 31.984396, 41.895287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010131, 0.433041, -0.901317,
		-0.631222, -0.701846, -0.330109,
		-0.775536, 0.565587, 0.280455,
		37.662544, 32.154072, 41.979424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788280, 31.764830, 41.247753>,  <38.205421, 31.758162, 41.783104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788280, 31.764830, 41.247753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625999, 32.060539, 41.462746>,  <37.528629, 32.237965, 41.591740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625999, 32.060539, 41.462746>,  <37.788280, 31.764830, 41.247753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625999, 32.060539, 41.462746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205605, 0.499160, -0.841763,
		-0.890580, -0.452013, -0.050512,
		-0.405701, 0.739272, 0.537478,
		37.504288, 32.282322, 41.623989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126575, 31.998619, 40.939640>,  <37.788280, 31.764830, 41.247753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126575, 31.998619, 40.939640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227398, 32.317028, 41.159756>,  <37.287891, 32.508072, 41.291824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227398, 32.317028, 41.159756>,  <37.126575, 31.998619, 40.939640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227398, 32.317028, 41.159756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243319, 0.602513, -0.760114,
		-0.936622, 0.057698, 0.345556,
		0.252059, 0.796020, 0.550288,
		37.303017, 32.555836, 41.324841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477367, 32.425507, 41.109692>,  <37.126575, 31.998619, 40.939640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477367, 32.425507, 41.109692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789715, 32.672047, 41.150402>,  <36.977123, 32.819969, 41.174828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789715, 32.672047, 41.150402>,  <36.477367, 32.425507, 41.109692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789715, 32.672047, 41.150402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381452, 0.599463, -0.703661,
		-0.494711, 0.510644, 0.703209,
		0.780869, 0.616349, 0.101775,
		37.023975, 32.856953, 41.180935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211487, 33.104424, 40.960312>,  <36.477367, 32.425507, 41.109692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211487, 33.104424, 40.960312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603012, 33.184647, 40.943825>,  <36.837929, 33.232780, 40.933933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603012, 33.184647, 40.943825>,  <36.211487, 33.104424, 40.960312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603012, 33.184647, 40.943825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170170, 0.684936, -0.708453,
		-0.113852, 0.700458, 0.704554,
		0.978816, 0.200553, -0.041216,
		36.896656, 33.244812, 40.931461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327232, 33.800980, 41.054886>,  <36.211487, 33.104424, 40.960312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327232, 33.800980, 41.054886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620888, 33.643673, 40.833481>,  <36.797081, 33.549290, 40.700638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620888, 33.643673, 40.833481>,  <36.327232, 33.800980, 41.054886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620888, 33.643673, 40.833481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088347, 0.752936, -0.652137,
		0.673223, 0.527663, 0.518018,
		0.734143, -0.393268, -0.553511,
		36.841129, 33.525692, 40.667427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653679, 34.358189, 40.850807>,  <36.327232, 33.800980, 41.054886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653679, 34.358189, 40.850807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783428, 34.076790, 40.597866>,  <36.861279, 33.907951, 40.446102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783428, 34.076790, 40.597866>,  <36.653679, 34.358189, 40.850807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783428, 34.076790, 40.597866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170927, 0.701084, -0.692290,
		0.930357, 0.116476, 0.347663,
		0.324376, -0.703501, -0.632349,
		36.880741, 33.865738, 40.408161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111221, 34.694874, 40.510105>,  <36.653679, 34.358189, 40.850807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111221, 34.694874, 40.510105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061016, 34.371017, 40.280766>,  <37.030895, 34.176704, 40.143162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061016, 34.371017, 40.280766>,  <37.111221, 34.694874, 40.510105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061016, 34.371017, 40.280766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158138, 0.554205, -0.817221,
		0.979408, -0.193238, 0.058477,
		-0.125510, -0.809640, -0.573351,
		37.023361, 34.128124, 40.108761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710609, 34.618027, 40.203384>,  <37.111221, 34.694874, 40.510105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710609, 34.618027, 40.203384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463470, 34.408089, 39.969185>,  <37.315189, 34.282127, 39.828663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463470, 34.408089, 39.969185>,  <37.710609, 34.618027, 40.203384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463470, 34.408089, 39.969185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233994, 0.588167, -0.774149,
		0.750679, -0.615306, -0.240585,
		-0.617842, -0.524841, -0.585502,
		37.278118, 34.250637, 39.793533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066738, 34.408245, 39.601158>,  <37.710609, 34.618027, 40.203384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066738, 34.408245, 39.601158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672157, 34.442234, 39.545036>,  <37.435410, 34.462627, 39.511364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672157, 34.442234, 39.545036>,  <38.066738, 34.408245, 39.601158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672157, 34.442234, 39.545036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163798, 0.555935, -0.814927,
		0.008752, -0.826871, -0.562324,
		-0.986455, 0.084975, -0.140305,
		37.376221, 34.467728, 39.502945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964222, 34.477856, 38.871876>,  <38.066738, 34.408245, 39.601158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964222, 34.477856, 38.871876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634621, 34.621716, 39.046997>,  <37.436859, 34.708031, 39.152069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634621, 34.621716, 39.046997>,  <37.964222, 34.477856, 38.871876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634621, 34.621716, 39.046997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051126, 0.722359, -0.689625,
		-0.564273, -0.590637, -0.576840,
		-0.824004, 0.359645, 0.437804,
		37.387421, 34.729610, 39.178337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.421234, 29.551455, 45.019463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.206078, 29.888334, 45.004612>,  <36.076984, 30.090462, 44.995701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.206078, 29.888334, 45.004612>,  <36.421234, 29.551455, 45.019463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206078, 29.888334, 45.004612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285570, 0.140592, -0.947989,
		-0.793175, -0.520515, -0.316129,
		-0.537887, 0.842198, -0.037129,
		36.044712, 30.140993, 44.993473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042042, 29.589243, 44.344151>,  <36.421234, 29.551455, 45.019463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042042, 29.589243, 44.344151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.054737, 29.960035, 44.493656>,  <36.062355, 30.182510, 44.583359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.054737, 29.960035, 44.493656>,  <36.042042, 29.589243, 44.344151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054737, 29.960035, 44.493656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423385, 0.326276, -0.845156,
		-0.905394, 0.185075, -0.382113,
		0.031743, 0.926980, 0.373766,
		36.064259, 30.238129, 44.605785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940376, 29.888008, 43.751305>,  <36.042042, 29.589243, 44.344151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940376, 29.888008, 43.751305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.038086, 30.179855, 44.006802>,  <36.096714, 30.354963, 44.160099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.038086, 30.179855, 44.006802>,  <35.940376, 29.888008, 43.751305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038086, 30.179855, 44.006802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475420, 0.483987, -0.734665,
		-0.845166, 0.483131, -0.228647,
		0.244277, 0.729617, 0.638739,
		36.111370, 30.398741, 44.198425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612843, 30.618042, 43.594749>,  <35.940376, 29.888008, 43.751305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612843, 30.618042, 43.594749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.942341, 30.691816, 43.809200>,  <36.140038, 30.736080, 43.937870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.942341, 30.691816, 43.809200>,  <35.612843, 30.618042, 43.594749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942341, 30.691816, 43.809200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332438, 0.608879, -0.720244,
		-0.459274, 0.771524, 0.440247,
		0.823743, 0.184434, 0.536126,
		36.189465, 30.747147, 43.970039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706207, 31.224981, 43.434605>,  <35.612843, 30.618042, 43.594749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706207, 31.224981, 43.434605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.052582, 31.130283, 43.610832>,  <36.260406, 31.073463, 43.716568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.052582, 31.130283, 43.610832>,  <35.706207, 31.224981, 43.434605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052582, 31.130283, 43.610832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457319, 0.731461, -0.505791,
		-0.202517, 0.639465, 0.741668,
		0.865937, -0.236747, 0.440573,
		36.312363, 31.059259, 43.743004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025196, 31.823347, 43.627438>,  <35.706207, 31.224981, 43.434605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025196, 31.823347, 43.627438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321774, 31.555977, 43.603889>,  <36.499722, 31.395554, 43.589760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321774, 31.555977, 43.603889>,  <36.025196, 31.823347, 43.627438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321774, 31.555977, 43.603889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564986, 0.669208, -0.482650,
		0.362011, 0.324599, 0.873833,
		0.741444, -0.668428, -0.058867,
		36.544209, 31.355448, 43.586227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576050, 32.239304, 43.583820>,  <36.025196, 31.823347, 43.627438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576050, 32.239304, 43.583820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756672, 31.900885, 43.470470>,  <36.865047, 31.697834, 43.402462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756672, 31.900885, 43.470470>,  <36.576050, 32.239304, 43.583820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756672, 31.900885, 43.470470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593002, 0.521879, -0.613181,
		0.666665, 0.108849, 0.737367,
		0.451560, -0.846046, -0.283371,
		36.892139, 31.647070, 43.385460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359165, 32.309925, 43.581223>,  <36.576050, 32.239304, 43.583820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359165, 32.309925, 43.581223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.256046, 32.034943, 43.309650>,  <37.194176, 31.869953, 43.146706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.256046, 32.034943, 43.309650>,  <37.359165, 32.309925, 43.581223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256046, 32.034943, 43.309650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557579, 0.468023, -0.685609,
		0.789081, -0.555305, 0.262657,
		-0.257793, -0.687453, -0.678934,
		37.178707, 31.828707, 43.105968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980217, 32.176476, 43.147408>,  <37.359165, 32.309925, 43.581223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980217, 32.176476, 43.147408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.664799, 32.039635, 42.942989>,  <37.475548, 31.957531, 42.820339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.664799, 32.039635, 42.942989>,  <37.980217, 32.176476, 43.147408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664799, 32.039635, 42.942989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425390, 0.296705, -0.854991,
		0.444125, -0.891589, -0.088437,
		-0.788541, -0.342103, -0.511047,
		37.428238, 31.937004, 42.789677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708023, 31.951071, 43.190269>,  <37.980217, 32.176476, 43.147408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708023, 31.951071, 43.190269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.849281, 32.280964, 43.366951>,  <38.934036, 32.478901, 43.472961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.849281, 32.280964, 43.366951>,  <38.708023, 31.951071, 43.190269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849281, 32.280964, 43.366951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273128, -0.360675, 0.891804,
		0.894811, -0.435582, 0.097885,
		0.353150, 0.824731, 0.441706,
		38.955227, 32.528381, 43.499462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276737, 31.805756, 43.653446>,  <38.708023, 31.951071, 43.190269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276737, 31.805756, 43.653446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.148865, 32.149788, 43.812473>,  <39.072140, 32.356209, 43.907890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.148865, 32.149788, 43.812473>,  <39.276737, 31.805756, 43.653446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148865, 32.149788, 43.812473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042168, -0.406254, 0.912786,
		0.946585, 0.308569, 0.093606,
		-0.319686, 0.860083, 0.397566,
		39.052959, 32.407814, 43.931744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580311, 31.863520, 44.306530>,  <39.276737, 31.805756, 43.653446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580311, 31.863520, 44.306530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271324, 32.114536, 44.345493>,  <39.085934, 32.265144, 44.368870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271324, 32.114536, 44.345493>,  <39.580311, 31.863520, 44.306530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271324, 32.114536, 44.345493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100164, -0.271860, 0.957110,
		0.627105, 0.729580, 0.272860,
		-0.772467, 0.627540, 0.097407,
		39.039585, 32.302799, 44.374714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758446, 32.279587, 44.919914>,  <39.580311, 31.863520, 44.306530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758446, 32.279587, 44.919914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365517, 32.310692, 44.851803>,  <39.129761, 32.329353, 44.810936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365517, 32.310692, 44.851803>,  <39.758446, 32.279587, 44.919914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365517, 32.310692, 44.851803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186492, -0.327873, 0.926132,
		0.016190, 0.941516, 0.336580,
		-0.982323, 0.077763, -0.170277,
		39.070820, 32.334023, 44.800720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431129, 32.594082, 45.485683>,  <39.758446, 32.279587, 44.919914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431129, 32.594082, 45.485683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.105198, 32.428692, 45.323158>,  <38.909637, 32.329456, 45.225643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.105198, 32.428692, 45.323158>,  <39.431129, 32.594082, 45.485683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105198, 32.428692, 45.323158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282197, -0.329330, 0.901059,
		-0.506380, 0.848868, 0.151665,
		-0.814828, -0.413479, -0.406314,
		38.860748, 32.304649, 45.201263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852898, 32.962189, 45.685604>,  <39.431129, 32.594082, 45.485683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852898, 32.962189, 45.685604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.736412, 32.589493, 45.598827>,  <38.666519, 32.365875, 45.546761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.736412, 32.589493, 45.598827>,  <38.852898, 32.962189, 45.685604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736412, 32.589493, 45.598827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355360, -0.105183, 0.928792,
		-0.888207, 0.347571, -0.300471,
		-0.291216, -0.931736, -0.216937,
		38.649048, 32.309971, 45.533745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328636, 32.801052, 46.212654>,  <38.852898, 32.962189, 45.685604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328636, 32.801052, 46.212654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.412567, 32.451099, 46.038044>,  <38.462925, 32.241127, 45.933277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.412567, 32.451099, 46.038044>,  <38.328636, 32.801052, 46.212654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412567, 32.451099, 46.038044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248113, -0.479492, 0.841741,
		-0.945734, -0.068312, -0.317679,
		0.209826, -0.874884, -0.436523,
		38.475513, 32.188633, 45.907085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747513, 32.423180, 46.269047>,  <38.328636, 32.801052, 46.212654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747513, 32.423180, 46.269047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059391, 32.177036, 46.222725>,  <38.246517, 32.029350, 46.194931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059391, 32.177036, 46.222725>,  <37.747513, 32.423180, 46.269047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059391, 32.177036, 46.222725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249617, -0.475079, 0.843796,
		-0.574251, -0.628997, -0.524021,
		0.779696, -0.615355, -0.115807,
		38.293301, 31.992430, 46.187984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523777, 31.770588, 46.224644>,  <37.747513, 32.423180, 46.269047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523777, 31.770588, 46.224644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.905674, 31.732962, 46.337505>,  <38.134811, 31.710386, 46.405224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.905674, 31.732962, 46.337505>,  <37.523777, 31.770588, 46.224644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905674, 31.732962, 46.337505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276969, -0.626914, 0.728195,
		0.108391, -0.773389, -0.624596,
		0.954746, -0.094064, 0.282156,
		38.192097, 31.704742, 46.422153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437710, 31.203514, 46.582260>,  <37.523777, 31.770588, 46.224644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437710, 31.203514, 46.582260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.806572, 31.319584, 46.684570>,  <38.027889, 31.389227, 46.745956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.806572, 31.319584, 46.684570>,  <37.437710, 31.203514, 46.582260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806572, 31.319584, 46.684570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128122, -0.394786, 0.909796,
		0.364980, -0.871746, -0.326877,
		0.922157, 0.290177, 0.255778,
		38.083218, 31.406637, 46.761303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742195, 30.624371, 46.748432>,  <37.437710, 31.203514, 46.582260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742195, 30.624371, 46.748432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.929642, 30.923452, 46.936619>,  <38.042110, 31.102901, 47.049530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.929642, 30.923452, 46.936619>,  <37.742195, 30.624371, 46.748432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929642, 30.923452, 46.936619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085590, -0.491625, 0.866591,
		0.879246, -0.446366, -0.166387,
		0.468616, 0.747705, 0.470463,
		38.070229, 31.147764, 47.077759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315502, 30.340517, 47.109814>,  <37.742195, 30.624371, 46.748432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315502, 30.340517, 47.109814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.254608, 30.686548, 47.301006>,  <38.218071, 30.894167, 47.415722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.254608, 30.686548, 47.301006>,  <38.315502, 30.340517, 47.109814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254608, 30.686548, 47.301006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113452, -0.495719, 0.861041,
		0.981811, 0.076850, 0.173610,
		-0.152233, 0.865076, 0.477983,
		38.208939, 30.946072, 47.444401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824173, 30.280827, 47.648438>,  <38.315502, 30.340517, 47.109814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824173, 30.280827, 47.648438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.563259, 30.554733, 47.778435>,  <38.406712, 30.719078, 47.856434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.563259, 30.554733, 47.778435>,  <38.824173, 30.280827, 47.648438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563259, 30.554733, 47.778435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028019, -0.406684, 0.913139,
		0.757457, 0.604732, 0.246086,
		-0.652283, 0.684769, 0.324989,
		38.367573, 30.760164, 47.875931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033474, 30.490969, 48.334309>,  <38.824173, 30.280827, 47.648438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033474, 30.490969, 48.334309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.668598, 30.653931, 48.351913>,  <38.449673, 30.751707, 48.362476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.668598, 30.653931, 48.351913>,  <39.033474, 30.490969, 48.334309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668598, 30.653931, 48.351913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121020, -0.370453, 0.920933,
		0.391496, 0.834737, 0.387227,
		-0.912187, 0.407404, 0.044011,
		38.394943, 30.776152, 48.365116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.339737, 33.138809, 46.389442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.684662, 32.942440, 46.439095>,  <30.891617, 32.824619, 46.468887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.684662, 32.942440, 46.439095>,  <30.339737, 33.138809, 46.389442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684662, 32.942440, 46.439095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479019, 0.711348, -0.514319,
		0.164190, 0.502967, 0.848567,
		0.862312, -0.490926, 0.124135,
		30.943356, 32.795162, 46.476334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795641, 33.620281, 46.462593>,  <30.339737, 33.138809, 46.389442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795641, 33.620281, 46.462593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.014767, 33.301212, 46.361698>,  <31.146242, 33.109772, 46.301159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.014767, 33.301212, 46.361698>,  <30.795641, 33.620281, 46.462593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014767, 33.301212, 46.361698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605152, 0.586003, -0.538880,
		0.577661, 0.142562, 0.803731,
		0.547813, -0.797669, -0.252239,
		31.179111, 33.061913, 46.286026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542683, 33.867588, 46.544765>,  <30.795641, 33.620281, 46.462593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542683, 33.867588, 46.544765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.538723, 33.559288, 46.289940>,  <31.536346, 33.374310, 46.137047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.538723, 33.559288, 46.289940>,  <31.542683, 33.867588, 46.544765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538723, 33.559288, 46.289940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774518, 0.397054, -0.492412,
		0.632474, -0.498289, 0.593030,
		-0.009899, -0.770750, -0.637060,
		31.535753, 33.328064, 46.098824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163971, 33.786186, 46.462559>,  <31.542683, 33.867588, 46.544765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163971, 33.786186, 46.462559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.006523, 33.622597, 46.133244>,  <31.912054, 33.524445, 45.935654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.006523, 33.622597, 46.133244>,  <32.163971, 33.786186, 46.462559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006523, 33.622597, 46.133244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710282, 0.433239, -0.554801,
		0.583578, -0.803149, 0.119952,
		-0.393620, -0.408970, -0.823291,
		31.888437, 33.499905, 45.886257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738178, 33.611683, 45.912590>,  <32.163971, 33.786186, 46.462559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738178, 33.611683, 45.912590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429684, 33.573895, 45.660789>,  <32.244587, 33.551220, 45.509708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429684, 33.573895, 45.660789>,  <32.738178, 33.611683, 45.912590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429684, 33.573895, 45.660789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563576, 0.358429, -0.744252,
		0.295943, -0.928765, -0.223190,
		-0.771232, -0.094472, -0.629504,
		32.198315, 33.545551, 45.471939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973530, 33.294739, 45.375652>,  <32.738178, 33.611683, 45.912590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973530, 33.294739, 45.375652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.650040, 33.492058, 45.247517>,  <32.455944, 33.610451, 45.170635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.650040, 33.492058, 45.247517>,  <32.973530, 33.294739, 45.375652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650040, 33.492058, 45.247517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480612, 0.240255, -0.843380,
		-0.339074, -0.836023, -0.431386,
		-0.808728, 0.493297, -0.320339,
		32.407421, 33.640045, 45.151417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968304, 33.173592, 44.686787>,  <32.973530, 33.294739, 45.375652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968304, 33.173592, 44.686787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716835, 33.483463, 44.714054>,  <32.565956, 33.669388, 44.730415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716835, 33.483463, 44.714054>,  <32.968304, 33.173592, 44.686787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716835, 33.483463, 44.714054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208040, 0.251998, -0.945101,
		-0.749330, -0.579973, -0.319588,
		-0.628669, 0.774680, 0.068172,
		32.528233, 33.715866, 44.734505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586143, 33.101780, 44.136757>,  <32.968304, 33.173592, 44.686787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586143, 33.101780, 44.136757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.566044, 33.489120, 44.234547>,  <32.553986, 33.721527, 44.293221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.566044, 33.489120, 44.234547>,  <32.586143, 33.101780, 44.136757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566044, 33.489120, 44.234547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146906, 0.249287, -0.957222,
		-0.987873, -0.012182, -0.154783,
		-0.050246, 0.968353, 0.244474,
		32.550968, 33.779625, 44.307888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258015, 33.380745, 43.524704>,  <32.586143, 33.101780, 44.136757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258015, 33.380745, 43.524704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.408100, 33.699173, 43.714645>,  <32.498150, 33.890228, 43.828609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.408100, 33.699173, 43.714645>,  <32.258015, 33.380745, 43.524704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408100, 33.699173, 43.714645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189617, 0.435535, -0.879974,
		-0.907338, 0.420217, 0.012470,
		0.375211, 0.796069, 0.474858,
		32.520664, 33.937992, 43.857101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801649, 33.931080, 43.429497>,  <32.258015, 33.380745, 43.524704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801649, 33.931080, 43.429497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.157063, 34.091297, 43.519005>,  <32.370312, 34.187428, 43.572708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.157063, 34.091297, 43.519005>,  <31.801649, 33.931080, 43.429497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157063, 34.091297, 43.519005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003788, 0.494102, -0.869396,
		-0.458800, 0.771638, 0.440543,
		0.888532, 0.400547, 0.223771,
		32.423622, 34.211460, 43.586136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794226, 34.725941, 43.262501>,  <31.801649, 33.931080, 43.429497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794226, 34.725941, 43.262501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.183334, 34.633354, 43.267170>,  <32.416801, 34.577801, 43.269970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.183334, 34.633354, 43.267170>,  <31.794226, 34.725941, 43.262501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183334, 34.633354, 43.267170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151899, 0.598733, -0.786413,
		0.175041, 0.766774, 0.617591,
		0.972773, -0.231466, 0.011669,
		32.475166, 34.563915, 43.270672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118160, 35.306652, 43.317543>,  <31.794226, 34.725941, 43.262501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118160, 35.306652, 43.317543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.425133, 35.096291, 43.170864>,  <32.609318, 34.970074, 43.082855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.425133, 35.096291, 43.170864>,  <32.118160, 35.306652, 43.317543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425133, 35.096291, 43.170864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166648, 0.715927, -0.677994,
		0.619092, 0.459205, 0.637068,
		0.767433, -0.525907, -0.366699,
		32.655361, 34.938519, 43.060856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591946, 35.765907, 43.195957>,  <32.118160, 35.306652, 43.317543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591946, 35.765907, 43.195957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700817, 35.459625, 42.962852>,  <32.766140, 35.275856, 42.822990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700817, 35.459625, 42.962852>,  <32.591946, 35.765907, 43.195957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700817, 35.459625, 42.962852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259036, 0.641578, -0.721995,
		0.926724, 0.045557, 0.372971,
		0.272182, -0.765703, -0.582765,
		32.782471, 35.229916, 42.788021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229771, 35.917625, 42.914459>,  <32.591946, 35.765907, 43.195957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229771, 35.917625, 42.914459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116783, 35.622471, 42.669270>,  <33.048992, 35.445377, 42.522156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116783, 35.622471, 42.669270>,  <33.229771, 35.917625, 42.914459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116783, 35.622471, 42.669270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358054, 0.511716, -0.780989,
		0.889948, -0.440084, 0.119658,
		-0.282469, -0.737884, -0.612975,
		33.032043, 35.401104, 42.485378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716602, 36.326599, 43.361721>,  <33.229771, 35.917625, 42.914459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716602, 36.326599, 43.361721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.951954, 36.647324, 43.403500>,  <34.093166, 36.839760, 43.428566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.951954, 36.647324, 43.403500>,  <33.716602, 36.326599, 43.361721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951954, 36.647324, 43.403500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061625, -0.084325, 0.994531,
		0.806233, -0.591599, -0.000204,
		0.588381, 0.801811, 0.104442,
		34.128468, 36.887867, 43.434834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203815, 36.195488, 43.896309>,  <33.716602, 36.326599, 43.361721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203815, 36.195488, 43.896309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239876, 36.593662, 43.908867>,  <34.261513, 36.832565, 43.916401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239876, 36.593662, 43.908867>,  <34.203815, 36.195488, 43.896309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239876, 36.593662, 43.908867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186187, -0.014123, 0.982413,
		0.978369, -0.094414, 0.184063,
		0.090154, 0.995433, 0.031396,
		34.266922, 36.892292, 43.918285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774208, 36.382812, 44.375629>,  <34.203815, 36.195488, 43.896309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774208, 36.382812, 44.375629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.486126, 36.658546, 44.344345>,  <34.313274, 36.823986, 44.325573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.486126, 36.658546, 44.344345>,  <34.774208, 36.382812, 44.375629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486126, 36.658546, 44.344345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190445, -0.088038, 0.977742,
		0.667107, 0.719073, 0.194686,
		-0.720208, 0.689336, -0.078213,
		34.270065, 36.865349, 44.320881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882404, 36.836025, 44.924561>,  <34.774208, 36.382812, 44.375629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882404, 36.836025, 44.924561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.513447, 36.948444, 44.818573>,  <34.292072, 37.015896, 44.754982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.513447, 36.948444, 44.818573>,  <34.882404, 36.836025, 44.924561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513447, 36.948444, 44.818573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322319, -0.182021, 0.928966,
		0.212858, 0.942273, 0.258483,
		-0.922389, 0.281052, -0.264968,
		34.236729, 37.032761, 44.739082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681152, 37.351173, 45.500713>,  <34.882404, 36.836025, 44.924561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681152, 37.351173, 45.500713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.350105, 37.200047, 45.334671>,  <34.151478, 37.109371, 45.235046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.350105, 37.200047, 45.334671>,  <34.681152, 37.351173, 45.500713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350105, 37.200047, 45.334671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309948, -0.308954, 0.899155,
		-0.467961, 0.872815, 0.138592,
		-0.827614, -0.377813, -0.415105,
		34.101822, 37.086704, 45.210140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168430, 37.429836, 46.012009>,  <34.681152, 37.351173, 45.500713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168430, 37.429836, 46.012009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.987366, 37.162666, 45.775711>,  <33.878727, 37.002365, 45.633934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.987366, 37.162666, 45.775711>,  <34.168430, 37.429836, 46.012009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987366, 37.162666, 45.775711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372809, -0.460057, 0.805830,
		-0.810006, 0.585004, -0.040756,
		-0.452663, -0.667921, -0.590743,
		33.851566, 36.962292, 45.598488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509117, 37.411270, 46.243263>,  <34.168430, 37.429836, 46.012009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509117, 37.411270, 46.243263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551201, 37.071922, 46.035725>,  <33.576450, 36.868313, 45.911201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551201, 37.071922, 46.035725>,  <33.509117, 37.411270, 46.243263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551201, 37.071922, 46.035725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190426, -0.529275, 0.826805,
		-0.976048, 0.011816, -0.217235,
		0.105208, -0.848368, -0.518847,
		33.582764, 36.817413, 45.880070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865204, 36.959274, 46.436314>,  <33.509117, 37.411270, 46.243263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865204, 36.959274, 46.436314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152748, 36.715153, 46.303185>,  <33.325275, 36.568680, 46.223305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152748, 36.715153, 46.303185>,  <32.865204, 36.959274, 46.436314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152748, 36.715153, 46.303185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173214, -0.620932, 0.764487,
		-0.673233, -0.491906, -0.552075,
		0.718857, -0.610304, -0.332827,
		33.368404, 36.532063, 46.203339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510796, 36.310699, 46.367977>,  <32.865204, 36.959274, 46.436314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510796, 36.310699, 46.367977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.900188, 36.225430, 46.401184>,  <33.133823, 36.174267, 46.421108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.900188, 36.225430, 46.401184>,  <32.510796, 36.310699, 46.367977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900188, 36.225430, 46.401184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218617, -0.759960, 0.612101,
		-0.067390, -0.614018, -0.786410,
		0.973481, -0.213172, 0.083021,
		33.192234, 36.161476, 46.426090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465973, 35.635376, 46.378544>,  <32.510796, 36.310699, 46.367977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465973, 35.635376, 46.378544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.828526, 35.715134, 46.527519>,  <33.046059, 35.762989, 46.616905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.828526, 35.715134, 46.527519>,  <32.465973, 35.635376, 46.378544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828526, 35.715134, 46.527519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132503, -0.702935, 0.698802,
		0.401134, -0.682733, -0.610710,
		0.906385, 0.199392, 0.372436,
		33.100441, 35.774952, 46.639252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720047, 35.090984, 46.244045>,  <32.465973, 35.635376, 46.378544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720047, 35.090984, 46.244045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.932327, 35.267956, 46.533215>,  <33.059696, 35.374138, 46.706715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.932327, 35.267956, 46.533215>,  <32.720047, 35.090984, 46.244045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932327, 35.267956, 46.533215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126463, -0.802063, 0.583696,
		0.838071, -0.401192, -0.369706,
		0.530702, 0.442425, 0.722922,
		33.091537, 35.400684, 46.750092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055313, 34.623497, 46.523937>,  <32.720047, 35.090984, 46.244045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055313, 34.623497, 46.523937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.075592, 34.909634, 46.802711>,  <33.087757, 35.081314, 46.969978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.075592, 34.909634, 46.802711>,  <33.055313, 34.623497, 46.523937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075592, 34.909634, 46.802711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167784, -0.681817, 0.712021,
		0.984519, -0.153031, 0.085458,
		0.050695, 0.715337, 0.696938,
		33.090801, 35.124233, 47.011791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440315, 34.291523, 47.058739>,  <33.055313, 34.623497, 46.523937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440315, 34.291523, 47.058739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236771, 34.593987, 47.223316>,  <33.114643, 34.775463, 47.322063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236771, 34.593987, 47.223316>,  <33.440315, 34.291523, 47.058739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236771, 34.593987, 47.223316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185876, -0.563189, 0.805151,
		0.840542, 0.333233, 0.427136,
		-0.508861, 0.756158, 0.411444,
		33.084114, 34.820835, 47.346748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531048, 34.228428, 47.760654>,  <33.440315, 34.291523, 47.058739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531048, 34.228428, 47.760654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.201061, 34.454418, 47.766727>,  <33.003067, 34.590012, 47.770370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.201061, 34.454418, 47.766727>,  <33.531048, 34.228428, 47.760654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201061, 34.454418, 47.766727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377444, -0.570737, 0.729243,
		0.420670, 0.595871, 0.684087,
		-0.824968, 0.564975, 0.015184,
		32.953571, 34.623909, 47.771282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877457, 34.783573, 48.199173>,  <33.531048, 34.228428, 47.760654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877457, 34.783573, 48.199173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248695, 34.679482, 48.305691>,  <34.471439, 34.617027, 48.369602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248695, 34.679482, 48.305691>,  <33.877457, 34.783573, 48.199173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248695, 34.679482, 48.305691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371791, 0.686402, -0.625000,
		-0.020139, 0.679067, 0.733800,
		0.928098, -0.260233, 0.266294,
		34.527126, 34.601410, 48.385578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192196, 35.398285, 48.237190>,  <33.877457, 34.783573, 48.199173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192196, 35.398285, 48.237190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.473698, 35.118137, 48.189507>,  <34.642597, 34.950047, 48.160896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.473698, 35.118137, 48.189507>,  <34.192196, 35.398285, 48.237190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473698, 35.118137, 48.189507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412963, 0.539809, -0.733531,
		0.578092, 0.466999, 0.669120,
		0.703755, -0.700370, -0.119206,
		34.684826, 34.908028, 48.153744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831326, 35.734596, 48.164429>,  <34.192196, 35.398285, 48.237190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831326, 35.734596, 48.164429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922749, 35.374115, 48.017136>,  <34.977604, 35.157825, 47.928761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922749, 35.374115, 48.017136>,  <34.831326, 35.734596, 48.164429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922749, 35.374115, 48.017136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591883, 0.428943, -0.682409,
		0.772940, -0.061979, 0.631445,
		0.228559, -0.901203, -0.368232,
		34.991318, 35.103756, 47.906666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579521, 35.706158, 48.079273>,  <34.831326, 35.734596, 48.164429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579521, 35.706158, 48.079273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453262, 35.398743, 47.856663>,  <35.377506, 35.214294, 47.723095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453262, 35.398743, 47.856663>,  <35.579521, 35.706158, 48.079273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453262, 35.398743, 47.856663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702377, 0.205113, -0.681612,
		0.637994, -0.606040, 0.475058,
		-0.315643, -0.768534, -0.556530,
		35.358570, 35.168182, 47.689705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161945, 35.235176, 47.986687>,  <35.579521, 35.706158, 48.079273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161945, 35.235176, 47.986687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.896111, 35.167061, 47.695667>,  <35.736610, 35.126190, 47.521057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.896111, 35.167061, 47.695667>,  <36.161945, 35.235176, 47.986687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896111, 35.167061, 47.695667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723703, 0.095608, -0.683456,
		0.185946, -0.980745, 0.059701,
		-0.664588, -0.170292, -0.727546,
		35.696735, 35.115974, 47.477402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451725, 34.769943, 47.543594>,  <36.161945, 35.235176, 47.986687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451725, 34.769943, 47.543594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.174549, 34.955982, 47.323223>,  <36.008244, 35.067604, 47.191002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.174549, 34.955982, 47.323223>,  <36.451725, 34.769943, 47.543594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174549, 34.955982, 47.323223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672642, 0.141908, -0.726233,
		-0.259585, -0.873814, -0.411176,
		-0.692942, 0.465094, -0.550927,
		35.966667, 35.095509, 47.157944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549644, 34.392578, 46.951260>,  <36.451725, 34.769943, 47.543594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549644, 34.392578, 46.951260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.366524, 34.743446, 46.893299>,  <36.256653, 34.953968, 46.858524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.366524, 34.743446, 46.893299>,  <36.549644, 34.392578, 46.951260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366524, 34.743446, 46.893299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681507, 0.241576, -0.690788,
		-0.570933, -0.414993, -0.708390,
		-0.457802, 0.877167, -0.144897,
		36.229183, 35.006596, 46.849831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431286, 34.495430, 46.184566>,  <36.549644, 34.392578, 46.951260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431286, 34.495430, 46.184566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.395294, 34.869072, 46.322750>,  <36.373699, 35.093258, 46.405663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.395294, 34.869072, 46.322750>,  <36.431286, 34.495430, 46.184566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395294, 34.869072, 46.322750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444889, 0.348036, -0.825194,
		-0.891054, 0.079445, -0.446890,
		-0.089976, 0.934109, 0.345464,
		36.368301, 35.149303, 46.426388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219620, 34.861755, 45.601337>,  <36.431286, 34.495430, 46.184566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219620, 34.861755, 45.601337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.359028, 35.137424, 45.855446>,  <36.442673, 35.302826, 46.007912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.359028, 35.137424, 45.855446>,  <36.219620, 34.861755, 45.601337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359028, 35.137424, 45.855446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462791, 0.462862, -0.756031,
		-0.815081, 0.557492, -0.157626,
		0.348523, 0.689174, 0.635273,
		36.463585, 35.344177, 46.046028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081932, 35.520130, 45.305668>,  <36.219620, 34.861755, 45.601337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081932, 35.520130, 45.305668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.377808, 35.597221, 45.563576>,  <36.555332, 35.643475, 45.718319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.377808, 35.597221, 45.563576>,  <36.081932, 35.520130, 45.305668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377808, 35.597221, 45.563576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518351, 0.447846, -0.728523,
		-0.429160, 0.873093, 0.231366,
		0.739685, 0.192724, 0.644766,
		36.599712, 35.655037, 45.757004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278923, 36.182316, 45.234879>,  <36.081932, 35.520130, 45.305668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278923, 36.182316, 45.234879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.622475, 36.052441, 45.393322>,  <36.828606, 35.974518, 45.488388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.622475, 36.052441, 45.393322>,  <36.278923, 36.182316, 45.234879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622475, 36.052441, 45.393322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511689, 0.510358, -0.691165,
		0.022253, 0.796314, 0.604474,
		0.858883, -0.324683, 0.396108,
		36.880138, 35.955036, 45.512154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754208, 36.700317, 45.020542>,  <36.278923, 36.182316, 45.234879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754208, 36.700317, 45.020542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.007656, 36.404922, 45.112770>,  <37.159725, 36.227684, 45.168106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.007656, 36.404922, 45.112770>,  <36.754208, 36.700317, 45.020542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007656, 36.404922, 45.112770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525162, 0.191711, -0.829127,
		0.568097, 0.646438, 0.509297,
		0.633617, -0.738488, 0.230574,
		37.197742, 36.183376, 45.181942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411732, 37.032093, 45.161339>,  <36.754208, 36.700317, 45.020542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411732, 37.032093, 45.161339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.467300, 36.647030, 45.068398>,  <37.500641, 36.415993, 45.012634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.467300, 36.647030, 45.068398>,  <37.411732, 37.032093, 45.161339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467300, 36.647030, 45.068398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543605, 0.270249, -0.794644,
		0.827765, -0.015914, 0.560850,
		0.138923, -0.962659, -0.232353,
		37.508976, 36.358231, 44.998692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071678, 36.978470, 44.880871>,  <37.411732, 37.032093, 45.161339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071678, 36.978470, 44.880871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.890095, 36.650013, 44.742508>,  <37.781143, 36.452938, 44.659489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.890095, 36.650013, 44.742508>,  <38.071678, 36.978470, 44.880871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890095, 36.650013, 44.742508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413142, 0.149985, -0.898231,
		0.789453, -0.550669, 0.271159,
		-0.453958, -0.821138, -0.345911,
		37.753906, 36.403671, 44.638733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.500536, 39.947529, 30.229174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.879412, 39.823524, 30.261965>,  <26.106737, 39.749123, 30.281639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.879412, 39.823524, 30.261965>,  <25.500536, 39.947529, 30.229174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879412, 39.823524, 30.261965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183772, -0.315284, 0.931034,
		-0.262782, -0.896934, -0.355605,
		0.947192, -0.310009, 0.081981,
		26.163568, 39.730522, 30.286558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.514790, 39.353268, 30.675272>,  <25.500536, 39.947529, 30.229174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.514790, 39.353268, 30.675272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.890574, 39.489494, 30.690416>,  <26.116043, 39.571232, 30.699503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.890574, 39.489494, 30.690416>,  <25.514790, 39.353268, 30.675272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890574, 39.489494, 30.690416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046649, -0.236571, 0.970493,
		0.339475, -0.909971, -0.238136,
		0.939457, 0.340567, 0.037861,
		26.172411, 39.591663, 30.701775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947117, 38.861168, 30.997936>,  <25.514790, 39.353268, 30.675272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947117, 38.861168, 30.997936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.146933, 39.200039, 31.070320>,  <26.266823, 39.403362, 31.113750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.146933, 39.200039, 31.070320>,  <25.947117, 38.861168, 30.997936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146933, 39.200039, 31.070320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097250, -0.262411, 0.960043,
		0.860815, -0.461981, -0.213473,
		0.499539, 0.847180, 0.180960,
		26.296795, 39.454193, 31.124609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408678, 38.671932, 31.499645>,  <25.947117, 38.861168, 30.997936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408678, 38.671932, 31.499645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.401508, 39.071060, 31.525030>,  <26.397207, 39.310539, 31.540260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.401508, 39.071060, 31.525030>,  <26.408678, 38.671932, 31.499645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401508, 39.071060, 31.525030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115537, -0.065112, 0.991167,
		0.993141, 0.010433, 0.116453,
		-0.017924, 0.997823, 0.063460,
		26.396132, 39.370407, 31.544067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591322, 38.674217, 32.186977>,  <26.408678, 38.671932, 31.499645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591322, 38.674217, 32.186977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.502724, 39.058556, 32.120377>,  <26.449566, 39.289158, 32.080414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.502724, 39.058556, 32.120377>,  <26.591322, 38.674217, 32.186977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502724, 39.058556, 32.120377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126101, 0.141091, 0.981933,
		0.966974, 0.238489, 0.089912,
		-0.221494, 0.960841, -0.166505,
		26.436275, 39.346809, 32.070423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085579, 39.208267, 32.614761>,  <26.591322, 38.674217, 32.186977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085579, 39.208267, 32.614761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.725632, 39.354462, 32.519547>,  <26.509665, 39.442177, 32.462418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.725632, 39.354462, 32.519547>,  <27.085579, 39.208267, 32.614761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725632, 39.354462, 32.519547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207663, 0.120909, 0.970699,
		0.383557, 0.922931, -0.032904,
		-0.899867, 0.365485, -0.238034,
		26.455671, 39.464108, 32.448135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026699, 39.758381, 33.101547>,  <27.085579, 39.208267, 32.614761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026699, 39.758381, 33.101547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.663820, 39.670120, 32.958263>,  <26.446093, 39.617165, 32.872295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.663820, 39.670120, 32.958263>,  <27.026699, 39.758381, 33.101547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663820, 39.670120, 32.958263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374480, 0.035476, 0.926556,
		-0.191734, 0.974708, -0.114811,
		-0.907195, -0.220647, -0.358207,
		26.391663, 39.603928, 32.850800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.544804, 40.211536, 33.507740>,  <27.026699, 39.758381, 33.101547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.544804, 40.211536, 33.507740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.337229, 39.910557, 33.345497>,  <26.212685, 39.729969, 33.248150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.337229, 39.910557, 33.345497>,  <26.544804, 40.211536, 33.507740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337229, 39.910557, 33.345497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502584, -0.115253, 0.856812,
		-0.691457, 0.648485, -0.318361,
		-0.518937, -0.752452, -0.405611,
		26.181547, 39.684822, 33.223812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905003, 40.334629, 33.762043>,  <26.544804, 40.211536, 33.507740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905003, 40.334629, 33.762043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.915894, 39.951363, 33.648079>,  <25.922428, 39.721401, 33.579700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.915894, 39.951363, 33.648079>,  <25.905003, 40.334629, 33.762043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915894, 39.951363, 33.648079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452465, -0.265961, 0.851199,
		-0.891366, 0.105739, -0.440778,
		0.027225, -0.958167, -0.284912,
		25.924061, 39.663914, 33.562607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.235107, 40.024029, 34.036331>,  <25.905003, 40.334629, 33.762043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.235107, 40.024029, 34.036331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.489084, 39.719410, 33.984329>,  <25.641470, 39.536640, 33.953129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.489084, 39.719410, 33.984329>,  <25.235107, 40.024029, 34.036331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489084, 39.719410, 33.984329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329447, -0.419107, 0.846058,
		-0.698794, -0.494369, -0.516997,
		0.634942, -0.761544, -0.130001,
		25.679567, 39.490948, 33.945328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.023287, 39.686886, 34.508316>,  <25.235107, 40.024029, 34.036331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.023287, 39.686886, 34.508316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.339087, 39.457787, 34.420086>,  <25.528566, 39.320328, 34.367149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.339087, 39.457787, 34.420086>,  <25.023287, 39.686886, 34.508316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339087, 39.457787, 34.420086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072229, -0.443594, 0.893313,
		-0.609488, -0.689337, -0.391586,
		0.789499, -0.572747, -0.220575,
		25.575935, 39.285961, 34.353912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.749939, 39.040524, 34.581451>,  <25.023287, 39.686886, 34.508316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.749939, 39.040524, 34.581451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.148010, 39.025330, 34.617630>,  <25.386852, 39.016212, 34.639336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.148010, 39.025330, 34.617630>,  <24.749939, 39.040524, 34.581451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.148010, 39.025330, 34.617630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090790, -0.705868, 0.702501,
		0.037156, -0.707324, -0.705912,
		0.995177, -0.037987, 0.090445,
		25.446564, 39.013935, 34.644764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.912144, 38.305988, 34.557514>,  <24.749939, 39.040524, 34.581451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.912144, 38.305988, 34.557514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.206577, 38.507542, 34.738304>,  <25.383238, 38.628475, 34.846779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.206577, 38.507542, 34.738304>,  <24.912144, 38.305988, 34.557514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.206577, 38.507542, 34.738304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136043, -0.764228, 0.630435,
		0.663080, -0.402563, -0.631084,
		0.736082, 0.503883, 0.451979,
		25.427402, 38.658707, 34.873898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475729, 37.851151, 34.538246>,  <24.912144, 38.305988, 34.557514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.475729, 37.851151, 34.538246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.558872, 38.096046, 34.843391>,  <25.608757, 38.242985, 35.026478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.558872, 38.096046, 34.843391>,  <25.475729, 37.851151, 34.538246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558872, 38.096046, 34.843391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183075, -0.790465, 0.584507,
		0.960874, 0.018168, -0.276389,
		0.207857, 0.612238, 0.762863,
		25.621229, 38.279716, 35.072250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143818, 37.700775, 34.888573>,  <25.475729, 37.851151, 34.538246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143818, 37.700775, 34.888573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.951767, 37.927483, 35.156380>,  <25.836536, 38.063507, 35.317062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.951767, 37.927483, 35.156380>,  <26.143818, 37.700775, 34.888573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951767, 37.927483, 35.156380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234448, -0.652569, 0.720547,
		0.845287, 0.502922, 0.180440,
		-0.480129, 0.566766, 0.669517,
		25.807728, 38.097511, 35.357235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600079, 37.833832, 35.364681>,  <26.143818, 37.700775, 34.888573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600079, 37.833832, 35.364681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.248672, 37.866558, 35.552944>,  <26.037828, 37.886192, 35.665901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.248672, 37.866558, 35.552944>,  <26.600079, 37.833832, 35.364681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248672, 37.866558, 35.552944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251978, -0.757670, 0.602033,
		0.405859, 0.647490, 0.645008,
		-0.878513, 0.081813, 0.470660,
		25.985119, 37.891102, 35.694141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786005, 37.636742, 36.043015>,  <26.600079, 37.833832, 35.364681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786005, 37.636742, 36.043015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.386024, 37.632767, 36.042622>,  <26.146036, 37.630383, 36.042385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.386024, 37.632767, 36.042622>,  <26.786005, 37.636742, 36.043015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386024, 37.632767, 36.042622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006935, -0.761747, 0.647838,
		-0.007190, 0.647798, 0.761778,
		-0.999950, -0.009941, -0.000984,
		26.086039, 37.629784, 36.042328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539654, 37.543880, 36.665840>,  <26.786005, 37.636742, 36.043015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539654, 37.543880, 36.665840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.246193, 37.404587, 36.432434>,  <26.070116, 37.321011, 36.292389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.246193, 37.404587, 36.432434>,  <26.539654, 37.543880, 36.665840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246193, 37.404587, 36.432434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012053, -0.851905, 0.523557,
		-0.679417, 0.391142, 0.620806,
		-0.733653, -0.348231, -0.583513,
		26.026096, 37.300117, 36.257381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234241, 37.229763, 36.642483>,  <26.539654, 37.543880, 36.665840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234241, 37.229763, 36.642483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464930, 36.917778, 36.739685>,  <27.603342, 36.730587, 36.798008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464930, 36.917778, 36.739685>,  <27.234241, 37.229763, 36.642483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464930, 36.917778, 36.739685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037719, -0.271717, -0.961638,
		0.816069, 0.563763, -0.127286,
		0.576722, -0.779962, 0.243005,
		27.637945, 36.683788, 36.812588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955032, 37.255436, 36.290218>,  <27.234241, 37.229763, 36.642483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955032, 37.255436, 36.290218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.788853, 36.903793, 36.383659>,  <27.689144, 36.692806, 36.439724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.788853, 36.903793, 36.383659>,  <27.955032, 37.255436, 36.290218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788853, 36.903793, 36.383659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102592, -0.300462, -0.948260,
		0.903812, -0.369990, 0.215017,
		-0.415451, -0.879107, 0.233603,
		27.664217, 36.640060, 36.453739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433260, 36.712269, 36.098656>,  <27.955032, 37.255436, 36.290218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433260, 36.712269, 36.098656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.087183, 36.511703, 36.100735>,  <27.879536, 36.391365, 36.101982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.087183, 36.511703, 36.100735>,  <28.433260, 36.712269, 36.098656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087183, 36.511703, 36.100735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164399, -0.293428, -0.941739,
		0.473722, -0.813933, 0.336303,
		-0.865193, -0.501411, 0.005193,
		27.827625, 36.361279, 36.102291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593239, 36.161766, 35.689217>,  <28.433260, 36.712269, 36.098656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593239, 36.161766, 35.689217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.194622, 36.193748, 35.698265>,  <27.955452, 36.212940, 35.703693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.194622, 36.193748, 35.698265>,  <28.593239, 36.161766, 35.689217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194622, 36.193748, 35.698265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035736, -0.166631, -0.985372,
		-0.075018, -0.982772, 0.168912,
		-0.996542, 0.079957, 0.022620,
		27.895660, 36.217735, 35.705051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235556, 35.565845, 35.374081>,  <28.593239, 36.161766, 35.689217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235556, 35.565845, 35.374081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.983349, 35.874756, 35.343006>,  <27.832026, 36.060104, 35.324364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.983349, 35.874756, 35.343006>,  <28.235556, 35.565845, 35.374081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983349, 35.874756, 35.343006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131361, -0.204815, -0.969946,
		-0.764978, -0.601363, 0.230587,
		-0.630518, 0.772278, -0.077683,
		27.794193, 36.106438, 35.319702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632589, 35.327953, 35.080212>,  <28.235556, 35.565845, 35.374081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632589, 35.327953, 35.080212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.601124, 35.719536, 35.004890>,  <27.582245, 35.954487, 34.959698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.601124, 35.719536, 35.004890>,  <27.632589, 35.327953, 35.080212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601124, 35.719536, 35.004890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317378, -0.203654, -0.926173,
		-0.945031, -0.013094, 0.326719,
		-0.078665, 0.978955, -0.188304,
		27.577524, 36.013222, 34.948399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353855, 35.317226, 34.413876>,  <27.632589, 35.327953, 35.080212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353855, 35.317226, 34.413876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.437130, 35.708176, 34.428886>,  <27.487095, 35.942745, 34.437893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.437130, 35.708176, 34.428886>,  <27.353855, 35.317226, 34.413876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437130, 35.708176, 34.428886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256110, 0.091506, -0.962307,
		-0.943963, 0.190729, 0.269364,
		0.208189, 0.977369, 0.037530,
		27.499586, 36.001385, 34.440144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743238, 35.568146, 34.176868>,  <27.353855, 35.317226, 34.413876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743238, 35.568146, 34.176868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.030298, 35.842087, 34.126350>,  <27.202534, 36.006451, 34.096039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.030298, 35.842087, 34.126350>,  <26.743238, 35.568146, 34.176868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030298, 35.842087, 34.126350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284940, 0.123286, -0.950584,
		-0.635442, 0.718174, 0.283619,
		0.717651, 0.684855, -0.126295,
		27.245594, 36.047543, 34.088463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362251, 36.222263, 33.947906>,  <26.743238, 35.568146, 34.176868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362251, 36.222263, 33.947906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.746119, 36.238659, 33.836655>,  <26.976439, 36.248497, 33.769901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.746119, 36.238659, 33.836655>,  <26.362251, 36.222263, 33.947906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746119, 36.238659, 33.836655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281032, 0.112870, -0.953038,
		-0.007673, 0.992764, 0.119837,
		0.959668, 0.040991, -0.278133,
		27.034019, 36.250957, 33.753216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515146, 36.826672, 33.604656>,  <26.362251, 36.222263, 33.947906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515146, 36.826672, 33.604656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.782722, 36.571941, 33.451309>,  <26.943268, 36.419102, 33.359303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.782722, 36.571941, 33.451309>,  <26.515146, 36.826672, 33.604656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782722, 36.571941, 33.451309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248269, 0.294714, -0.922771,
		0.700628, 0.712458, 0.039042,
		0.668941, -0.636826, -0.383366,
		26.983404, 36.380894, 33.336300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796412, 37.118893, 32.996956>,  <26.515146, 36.826672, 33.604656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796412, 37.118893, 32.996956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.902409, 36.736149, 32.949295>,  <26.966007, 36.506504, 32.920700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.902409, 36.736149, 32.949295>,  <26.796412, 37.118893, 32.996956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902409, 36.736149, 32.949295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245418, 0.052567, -0.967991,
		0.932496, 0.285752, -0.220901,
		0.264994, -0.956861, -0.119147,
		26.981907, 36.449089, 32.913551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226248, 37.142773, 32.475483>,  <26.796412, 37.118893, 32.996956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226248, 37.142773, 32.475483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.133642, 36.753651, 32.478569>,  <27.078079, 36.520180, 32.480419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.133642, 36.753651, 32.478569>,  <27.226248, 37.142773, 32.475483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133642, 36.753651, 32.478569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085229, -0.028178, -0.995963,
		0.969092, -0.229920, 0.089435,
		-0.231512, -0.972802, 0.007711,
		27.064188, 36.461811, 32.480881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817127, 36.766556, 32.130287>,  <27.226248, 37.142773, 32.475483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817127, 36.766556, 32.130287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.492519, 36.533394, 32.114025>,  <27.297754, 36.393497, 32.104267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.492519, 36.533394, 32.114025>,  <27.817127, 36.766556, 32.130287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492519, 36.533394, 32.114025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140093, -0.126546, -0.982019,
		0.567283, -0.802622, 0.184356,
		-0.811519, -0.582910, -0.040655,
		27.249063, 36.358521, 32.101830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046276, 36.327358, 31.624743>,  <27.817127, 36.766556, 32.130287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046276, 36.327358, 31.624743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.652903, 36.263706, 31.659460>,  <27.416878, 36.225517, 31.680290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.652903, 36.263706, 31.659460>,  <28.046276, 36.327358, 31.624743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652903, 36.263706, 31.659460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037441, -0.290180, -0.956240,
		0.177349, -0.943650, 0.279415,
		-0.983435, -0.159127, 0.086794,
		27.357872, 36.215969, 31.685497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927965, 35.593712, 31.283270>,  <28.046276, 36.327358, 31.624743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927965, 35.593712, 31.283270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.617859, 35.846367, 31.283447>,  <27.431795, 35.997959, 31.283554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.617859, 35.846367, 31.283447>,  <27.927965, 35.593712, 31.283270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617859, 35.846367, 31.283447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195668, -0.239493, -0.950977,
		-0.600567, -0.737345, 0.309261,
		-0.775264, 0.631638, 0.000443,
		27.385281, 36.035858, 31.283581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508835, 35.301785, 30.728878>,  <27.927965, 35.593712, 31.283270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508835, 35.301785, 30.728878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.337883, 35.659481, 30.782064>,  <27.235312, 35.874100, 30.813976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.337883, 35.659481, 30.782064>,  <27.508835, 35.301785, 30.728878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337883, 35.659481, 30.782064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089886, 0.104318, -0.990474,
		-0.899594, -0.435258, 0.035796,
		-0.427378, 0.894241, 0.132967,
		27.209669, 35.927753, 30.821955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899910, 35.333214, 30.304432>,  <27.508835, 35.301785, 30.728878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899910, 35.333214, 30.304432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.000925, 35.713940, 30.374025>,  <27.061535, 35.942375, 30.415781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.000925, 35.713940, 30.374025>,  <26.899910, 35.333214, 30.304432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000925, 35.713940, 30.374025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147581, 0.215596, -0.965266,
		-0.956266, 0.218090, 0.194916,
		0.252538, 0.951817, 0.173982,
		27.076687, 35.999485, 30.426220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429007, 35.728428, 29.924639>,  <26.899910, 35.333214, 30.304432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429007, 35.728428, 29.924639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.738281, 35.977673, 29.971827>,  <26.923847, 36.127220, 30.000139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.738281, 35.977673, 29.971827>,  <26.429007, 35.728428, 29.924639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738281, 35.977673, 29.971827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031261, 0.223239, -0.974262,
		-0.633406, 0.749600, 0.192084,
		0.773188, 0.623109, 0.117968,
		26.970238, 36.164604, 30.007217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209408, 36.498196, 29.643454>,  <26.429007, 35.728428, 29.924639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209408, 36.498196, 29.643454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.609001, 36.500187, 29.625546>,  <26.848757, 36.501381, 29.614799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.609001, 36.500187, 29.625546>,  <26.209408, 36.498196, 29.643454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609001, 36.500187, 29.625546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044843, 0.204578, -0.977823,
		0.004291, 0.978838, 0.204593,
		0.998985, 0.004979, -0.044772,
		26.908697, 36.501682, 29.612114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447170, 37.064842, 29.187286>,  <26.209408, 36.498196, 29.643454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447170, 37.064842, 29.187286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.785492, 36.852180, 29.204977>,  <26.988485, 36.724583, 29.215591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.785492, 36.852180, 29.204977>,  <26.447170, 37.064842, 29.187286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785492, 36.852180, 29.204977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077462, 0.040366, -0.996178,
		0.527842, 0.845996, 0.075325,
		0.845803, -0.531659, 0.044225,
		27.039232, 36.692684, 29.218245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836742, 37.440826, 28.779097>,  <26.447170, 37.064842, 29.187286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836742, 37.440826, 28.779097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020531, 37.085548, 28.779186>,  <27.130804, 36.872383, 28.779240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020531, 37.085548, 28.779186>,  <26.836742, 37.440826, 28.779097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020531, 37.085548, 28.779186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152550, 0.078664, -0.985160,
		0.874995, 0.452685, 0.171638,
		0.459469, -0.888194, 0.000226,
		27.158371, 36.819092, 28.779255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459105, 37.597462, 28.511267>,  <26.836742, 37.440826, 28.779097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459105, 37.597462, 28.511267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.413378, 37.202248, 28.469872>,  <27.385942, 36.965118, 28.445034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.413378, 37.202248, 28.469872>,  <27.459105, 37.597462, 28.511267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413378, 37.202248, 28.469872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056191, 0.097575, -0.993641,
		0.991854, -0.119403, 0.044364,
		-0.114315, -0.988039, -0.103490,
		27.379084, 36.905834, 28.438824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993393, 37.393620, 27.973322>,  <27.459105, 37.597462, 28.511267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993393, 37.393620, 27.973322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.728718, 37.093716, 27.975643>,  <27.569912, 36.913773, 27.977036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.728718, 37.093716, 27.975643>,  <27.993393, 37.393620, 27.973322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728718, 37.093716, 27.975643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053059, 0.039103, -0.997826,
		0.747900, -0.660557, -0.065655,
		-0.661688, -0.749757, 0.005804,
		27.530210, 36.868790, 27.977385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208488, 36.971775, 27.535870>,  <27.993393, 37.393620, 27.973322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208488, 36.971775, 27.535870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.823359, 36.863720, 27.535566>,  <27.592281, 36.798889, 27.535385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.823359, 36.863720, 27.535566>,  <28.208488, 36.971775, 27.535870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823359, 36.863720, 27.535566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022288, 0.082232, -0.996364,
		0.269214, -0.959305, -0.085196,
		-0.962823, -0.270134, -0.000757,
		27.534512, 36.782681, 27.535339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.882832, 30.985579, 49.125866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.526157, 30.883575, 48.976273>,  <38.312153, 30.822372, 48.886517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.526157, 30.883575, 48.976273>,  <38.882832, 30.985579, 49.125866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526157, 30.883575, 48.976273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356618, -0.113065, 0.927383,
		-0.278776, 0.960305, 0.009878,
		-0.891688, -0.255010, -0.373982,
		38.258652, 30.807072, 48.864079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525917, 31.289387, 49.600830>,  <38.882832, 30.985579, 49.125866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525917, 31.289387, 49.600830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.268749, 31.029535, 49.438530>,  <38.114449, 30.873625, 49.341148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.268749, 31.029535, 49.438530>,  <38.525917, 31.289387, 49.600830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268749, 31.029535, 49.438530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451689, -0.106253, 0.885826,
		-0.618570, 0.752791, -0.225117,
		-0.642922, -0.649628, -0.405752,
		38.075874, 30.834646, 49.316803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908447, 31.417988, 49.849060>,  <38.525917, 31.289387, 49.600830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908447, 31.417988, 49.849060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855995, 31.041370, 49.724930>,  <37.824524, 30.815401, 49.650452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855995, 31.041370, 49.724930>,  <37.908447, 31.417988, 49.849060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855995, 31.041370, 49.724930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549289, -0.191582, 0.813374,
		-0.825279, 0.277121, -0.492056,
		-0.131134, -0.941541, -0.310328,
		37.816654, 30.758907, 49.631832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189430, 31.374058, 49.977726>,  <37.908447, 31.417988, 49.849060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189430, 31.374058, 49.977726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339417, 31.005157, 49.940090>,  <37.429409, 30.783817, 49.917507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339417, 31.005157, 49.940090>,  <37.189430, 31.374058, 49.977726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339417, 31.005157, 49.940090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596236, -0.317641, 0.737296,
		-0.709859, -0.220362, -0.668985,
		0.374969, -0.922250, -0.094092,
		37.451908, 30.728483, 49.911861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584393, 30.962729, 49.935333>,  <37.189430, 31.374058, 49.977726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584393, 30.962729, 49.935333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.874882, 30.711744, 50.047691>,  <37.049175, 30.561153, 50.115105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.874882, 30.711744, 50.047691>,  <36.584393, 30.962729, 49.935333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874882, 30.711744, 50.047691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596584, -0.372171, 0.711039,
		-0.341598, -0.683955, -0.644606,
		0.726222, -0.627451, 0.280904,
		37.092747, 30.523506, 50.131958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344841, 30.254581, 50.139889>,  <36.584393, 30.962729, 49.935333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344841, 30.254581, 50.139889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.685970, 30.274094, 50.347855>,  <36.890648, 30.285801, 50.472633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.685970, 30.274094, 50.347855>,  <36.344841, 30.254581, 50.139889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685970, 30.274094, 50.347855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460887, -0.397787, 0.793315,
		0.245516, -0.916180, -0.316759,
		0.852822, 0.048782, 0.519918,
		36.941818, 30.288729, 50.503830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227467, 29.659180, 50.541584>,  <36.344841, 30.254581, 50.139889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227467, 29.659180, 50.541584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.534672, 29.852442, 50.709736>,  <36.718994, 29.968399, 50.810627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.534672, 29.852442, 50.709736>,  <36.227467, 29.659180, 50.541584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534672, 29.852442, 50.709736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317925, -0.282182, 0.905150,
		0.555954, -0.828814, -0.063111,
		0.768010, 0.483157, 0.420381,
		36.765076, 29.997389, 50.835850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341442, 29.167555, 51.094780>,  <36.227467, 29.659180, 50.541584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341442, 29.167555, 51.094780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520962, 29.516106, 51.174061>,  <36.628674, 29.725237, 51.221630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520962, 29.516106, 51.174061>,  <36.341442, 29.167555, 51.094780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520962, 29.516106, 51.174061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223432, -0.105328, 0.969012,
		0.865251, -0.479173, 0.147422,
		0.448797, 0.871378, 0.198198,
		36.655602, 29.777519, 51.233521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680084, 29.062014, 51.769512>,  <36.341442, 29.167555, 51.094780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680084, 29.062014, 51.769512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590836, 29.447893, 51.713551>,  <36.537289, 29.679420, 51.679974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590836, 29.447893, 51.713551>,  <36.680084, 29.062014, 51.769512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590836, 29.447893, 51.713551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277906, 0.074617, 0.957706,
		0.934338, 0.252562, 0.251448,
		-0.223117, 0.964700, -0.139906,
		36.523899, 29.737303, 51.671577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076500, 29.386713, 52.202679>,  <36.680084, 29.062014, 51.769512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076500, 29.386713, 52.202679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788994, 29.652882, 52.122082>,  <36.616489, 29.812582, 52.073723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788994, 29.652882, 52.122082>,  <37.076500, 29.386713, 52.202679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788994, 29.652882, 52.122082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286079, -0.018916, 0.958019,
		0.633673, 0.746230, 0.203959,
		-0.718761, 0.665420, -0.201494,
		36.573364, 29.852507, 52.061634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202061, 29.945375, 52.775349>,  <37.076500, 29.386713, 52.202679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202061, 29.945375, 52.775349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835793, 29.939209, 52.614697>,  <36.616032, 29.935509, 52.518307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835793, 29.939209, 52.614697>,  <37.202061, 29.945375, 52.775349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835793, 29.939209, 52.614697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399069, 0.153802, 0.903930,
		0.047836, 0.987982, -0.146985,
		-0.915672, -0.015416, -0.401630,
		36.561092, 29.934584, 52.494209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966949, 30.364759, 53.227325>,  <37.202061, 29.945375, 52.775349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966949, 30.364759, 53.227325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640614, 30.222767, 53.044724>,  <36.444813, 30.137571, 52.935162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640614, 30.222767, 53.044724>,  <36.966949, 30.364759, 53.227325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640614, 30.222767, 53.044724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560358, 0.290277, 0.775718,
		-0.142854, 0.888666, -0.435736,
		-0.815838, -0.354983, -0.456504,
		36.395863, 30.116272, 52.907772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520950, 30.980528, 53.173248>,  <36.966949, 30.364759, 53.227325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520950, 30.980528, 53.173248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311626, 30.639725, 53.167118>,  <36.186031, 30.435244, 53.163441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311626, 30.639725, 53.167118>,  <36.520950, 30.980528, 53.173248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311626, 30.639725, 53.167118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552163, 0.325334, 0.767642,
		-0.649051, 0.410173, -0.640696,
		-0.523306, -0.852007, -0.015324,
		36.154636, 30.384123, 53.162521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765480, 31.051870, 53.105232>,  <36.520950, 30.980528, 53.173248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765480, 31.051870, 53.105232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.789383, 30.680105, 53.250900>,  <35.803722, 30.457047, 53.338303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.789383, 30.680105, 53.250900>,  <35.765480, 31.051870, 53.105232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789383, 30.680105, 53.250900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509659, 0.285283, 0.811703,
		-0.858299, -0.234106, -0.456637,
		0.059753, -0.929413, 0.364173,
		35.807308, 30.401281, 53.360153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246769, 31.624969, 53.310257>,  <35.765480, 31.051870, 53.105232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246769, 31.624969, 53.310257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.935131, 31.870235, 53.362473>,  <34.748150, 32.017395, 53.393803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.935131, 31.870235, 53.362473>,  <35.246769, 31.624969, 53.310257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935131, 31.870235, 53.362473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099444, 0.084718, -0.991430,
		-0.618968, -0.785400, -0.005028,
		-0.779096, 0.613163, 0.130541,
		34.701401, 32.054184, 53.401634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716885, 31.441261, 52.794849>,  <35.246769, 31.624969, 53.310257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716885, 31.441261, 52.794849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584007, 31.803061, 52.901829>,  <34.504280, 32.020142, 52.966019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584007, 31.803061, 52.901829>,  <34.716885, 31.441261, 52.794849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584007, 31.803061, 52.901829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088486, 0.252418, -0.963564,
		-0.939051, -0.343756, -0.003817,
		-0.332195, 0.904498, 0.267451,
		34.484348, 32.074409, 52.982063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161976, 31.560411, 52.329182>,  <34.716885, 31.441261, 52.794849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161976, 31.560411, 52.329182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266045, 31.921801, 52.465446>,  <34.328484, 32.138634, 52.547203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266045, 31.921801, 52.465446>,  <34.161976, 31.560411, 52.329182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266045, 31.921801, 52.465446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123480, 0.381042, -0.916275,
		-0.957635, 0.196321, 0.210696,
		0.260169, 0.903474, 0.340657,
		34.344093, 32.192844, 52.567642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586514, 32.132462, 52.137672>,  <34.161976, 31.560411, 52.329182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586514, 32.132462, 52.137672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927181, 32.334175, 52.194733>,  <34.131584, 32.455204, 52.228970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927181, 32.334175, 52.194733>,  <33.586514, 32.132462, 52.137672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927181, 32.334175, 52.194733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132062, 0.469922, -0.872773,
		-0.507161, 0.724478, 0.466817,
		0.851673, 0.504286, 0.142650,
		34.182682, 32.485462, 52.237526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503021, 32.889359, 52.107559>,  <33.586514, 32.132462, 52.137672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503021, 32.889359, 52.107559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893349, 32.839203, 52.035942>,  <34.127544, 32.809109, 51.992973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893349, 32.839203, 52.035942>,  <33.503021, 32.889359, 52.107559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893349, 32.839203, 52.035942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075891, 0.573784, -0.815483,
		0.204982, 0.809352, 0.550393,
		0.975819, -0.125389, -0.179038,
		34.186096, 32.801586, 51.982231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747105, 33.522320, 51.853474>,  <33.503021, 32.889359, 52.107559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747105, 33.522320, 51.853474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076866, 33.304829, 51.790585>,  <34.274723, 33.174335, 51.752850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076866, 33.304829, 51.790585>,  <33.747105, 33.522320, 51.853474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076866, 33.304829, 51.790585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117579, 0.436241, -0.892115,
		0.553655, 0.716976, 0.423570,
		0.824404, -0.543727, -0.157226,
		34.324188, 33.141712, 51.743416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371502, 33.920094, 51.710285>,  <33.747105, 33.522320, 51.853474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371502, 33.920094, 51.710285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403637, 33.563431, 51.532078>,  <34.422916, 33.349434, 51.425152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403637, 33.563431, 51.532078>,  <34.371502, 33.920094, 51.710285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403637, 33.563431, 51.532078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122228, 0.452406, -0.883396,
		0.989246, 0.016511, 0.145329,
		0.080334, -0.891659, -0.445523,
		34.427738, 33.295933, 51.398422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999664, 33.953262, 51.297802>,  <34.371502, 33.920094, 51.710285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999664, 33.953262, 51.297802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.795731, 33.652813, 51.130047>,  <34.673370, 33.472542, 51.029396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.795731, 33.652813, 51.130047>,  <34.999664, 33.953262, 51.297802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795731, 33.652813, 51.130047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162152, 0.394859, -0.904319,
		0.844854, -0.529055, -0.079515,
		-0.509832, -0.751124, -0.419385,
		34.642780, 33.427475, 51.004230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432507, 33.840412, 50.805264>,  <34.999664, 33.953262, 51.297802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432507, 33.840412, 50.805264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074280, 33.685413, 50.717800>,  <34.859344, 33.592415, 50.665321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074280, 33.685413, 50.717800>,  <35.432507, 33.840412, 50.805264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074280, 33.685413, 50.717800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081898, 0.339472, -0.937044,
		0.437330, -0.857091, -0.272284,
		-0.895564, -0.387498, -0.218655,
		34.805611, 33.569164, 50.652203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563538, 33.688828, 50.178894>,  <35.432507, 33.840412, 50.805264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563538, 33.688828, 50.178894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.167526, 33.641647, 50.209682>,  <34.929920, 33.613338, 50.228157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.167526, 33.641647, 50.209682>,  <35.563538, 33.688828, 50.178894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167526, 33.641647, 50.209682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107719, 0.282007, -0.953346,
		0.090742, -0.952134, -0.291902,
		-0.990032, -0.117952, 0.076973,
		34.870518, 33.606262, 50.232773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372295, 33.290821, 49.577011>,  <35.563538, 33.688828, 50.178894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372295, 33.290821, 49.577011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049026, 33.489475, 49.703636>,  <34.855064, 33.608665, 49.779613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049026, 33.489475, 49.703636>,  <35.372295, 33.290821, 49.577011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049026, 33.489475, 49.703636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209445, 0.260019, -0.942615,
		-0.550446, -0.828098, -0.106123,
		-0.808172, 0.496632, 0.316567,
		34.806576, 33.638466, 49.798607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906803, 33.092327, 49.174610>,  <35.372295, 33.290821, 49.577011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906803, 33.092327, 49.174610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766315, 33.436695, 49.321831>,  <34.682022, 33.643314, 49.410164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766315, 33.436695, 49.321831>,  <34.906803, 33.092327, 49.174610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766315, 33.436695, 49.321831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159784, 0.332217, -0.929570,
		-0.922559, -0.385292, 0.020880,
		-0.351219, 0.860919, 0.368053,
		34.660950, 33.694969, 49.432247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355610, 33.282356, 48.796360>,  <34.906803, 33.092327, 49.174610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355610, 33.282356, 48.796360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.449966, 33.635109, 48.959648>,  <34.506580, 33.846760, 49.057621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.449966, 33.635109, 48.959648>,  <34.355610, 33.282356, 48.796360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449966, 33.635109, 48.959648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048253, 0.430184, -0.901451,
		-0.970581, 0.192945, 0.144030,
		0.235890, 0.881881, 0.408218,
		34.520733, 33.899673, 49.082115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883499, 33.825588, 48.520290>,  <34.355610, 33.282356, 48.796360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883499, 33.825588, 48.520290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228268, 33.993629, 48.633858>,  <34.435127, 34.094456, 48.702000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228268, 33.993629, 48.633858>,  <33.883499, 33.825588, 48.520290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228268, 33.993629, 48.633858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029859, 0.516921, -0.855512,
		-0.506169, 0.745858, 0.432999,
		0.861917, 0.420105, 0.283919,
		34.486843, 34.119659, 48.719032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360062, 34.370403, 48.508251>,  <33.883499, 33.825588, 48.520290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360062, 34.370403, 48.508251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.026310, 34.419937, 48.293411>,  <32.826061, 34.449657, 48.164505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.026310, 34.419937, 48.293411>,  <33.360062, 34.370403, 48.508251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026310, 34.419937, 48.293411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511728, -0.536116, 0.671352,
		-0.204813, 0.835012, 0.510693,
		-0.834377, 0.123835, -0.537102,
		32.775997, 34.457088, 48.132282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850395, 34.529854, 48.932514>,  <33.360062, 34.370403, 48.508251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850395, 34.529854, 48.932514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.632923, 34.400684, 48.622643>,  <32.502438, 34.323181, 48.436718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.632923, 34.400684, 48.622643>,  <32.850395, 34.529854, 48.932514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632923, 34.400684, 48.622643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526835, -0.587208, 0.614517,
		-0.653340, 0.742232, 0.149129,
		-0.543683, -0.322922, -0.774680,
		32.469818, 34.303806, 48.390240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133930, 34.504093, 49.208389>,  <32.850395, 34.529854, 48.932514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133930, 34.504093, 49.208389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142269, 34.256386, 48.894428>,  <32.147270, 34.107761, 48.706051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142269, 34.256386, 48.894428>,  <32.133930, 34.504093, 49.208389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142269, 34.256386, 48.894428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559686, -0.657756, 0.504092,
		-0.828442, 0.428792, -0.360306,
		0.020843, -0.619269, -0.784902,
		32.148521, 34.070606, 48.658958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503796, 34.251888, 49.150455>,  <32.133930, 34.504093, 49.208389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503796, 34.251888, 49.150455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.696405, 33.968536, 48.944027>,  <31.811972, 33.798527, 48.820171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.696405, 33.968536, 48.944027>,  <31.503796, 34.251888, 49.150455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696405, 33.968536, 48.944027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520863, -0.704864, 0.481526,
		-0.704864, 0.036935, -0.708380,
		-0.481526, 0.708380, 0.516072,
		31.840864, 33.756023, 48.789204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015381, 33.805058, 48.857857>,  <31.503796, 34.251888, 49.150455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015381, 33.805058, 48.857857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.354303, 33.592697, 48.863781>,  <31.557657, 33.465282, 48.867336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.354303, 33.592697, 48.863781>,  <31.015381, 33.805058, 48.857857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354303, 33.592697, 48.863781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412498, -0.640268, 0.647998,
		-0.334541, -0.555161, -0.761498,
		0.847306, -0.530899, 0.014807,
		31.608496, 33.433426, 48.868221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750881, 33.133926, 48.826374>,  <31.015381, 33.805058, 48.857857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750881, 33.133926, 48.826374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.128511, 33.076050, 48.944885>,  <31.355089, 33.041325, 49.015991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.128511, 33.076050, 48.944885>,  <30.750881, 33.133926, 48.826374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128511, 33.076050, 48.944885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320083, -0.617881, 0.718171,
		0.079149, -0.772843, -0.629642,
		0.944077, -0.144696, 0.296279,
		31.411736, 33.032642, 49.033768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820873, 32.377438, 48.968555>,  <30.750881, 33.133926, 48.826374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820873, 32.377438, 48.968555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.120808, 32.568748, 49.151421>,  <31.300768, 32.683537, 49.261139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.120808, 32.568748, 49.151421>,  <30.820873, 32.377438, 48.968555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120808, 32.568748, 49.151421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102597, -0.598558, 0.794482,
		0.653620, -0.642635, -0.399751,
		0.749837, 0.478277, 0.457162,
		31.345758, 32.712231, 49.288570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936457, 31.574852, 48.854252>,  <30.820873, 32.377438, 48.968555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936457, 31.574852, 48.854252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.610340, 31.396645, 48.706299>,  <30.414671, 31.289721, 48.617527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.610340, 31.396645, 48.706299>,  <30.936457, 31.574852, 48.854252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610340, 31.396645, 48.706299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308602, 0.206191, -0.928574,
		0.489964, -0.871205, -0.030618,
		-0.815291, -0.445519, -0.369882,
		30.365753, 31.262989, 48.595333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230604, 31.040945, 48.418880>,  <30.936457, 31.574852, 48.854252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230604, 31.040945, 48.418880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.856649, 31.124599, 48.304169>,  <30.632277, 31.174793, 48.235340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.856649, 31.124599, 48.304169>,  <31.230604, 31.040945, 48.418880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856649, 31.124599, 48.304169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322189, 0.161025, -0.932880,
		-0.148921, -0.964538, -0.217922,
		-0.934889, 0.209138, -0.286783,
		30.576183, 31.187340, 48.218132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252510, 30.937317, 47.780998>,  <31.230604, 31.040945, 48.418880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252510, 30.937317, 47.780998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.940660, 31.181238, 47.838032>,  <30.753551, 31.327591, 47.872253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.940660, 31.181238, 47.838032>,  <31.252510, 30.937317, 47.780998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940660, 31.181238, 47.838032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222864, 0.482933, -0.846822,
		-0.585253, -0.628424, -0.512408,
		-0.779622, 0.609802, 0.142585,
		30.706774, 31.364180, 47.880806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935118, 30.862816, 47.152897>,  <31.252510, 30.937317, 47.780998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935118, 30.862816, 47.152897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.818592, 31.201635, 47.330727>,  <30.748676, 31.404928, 47.437424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.818592, 31.201635, 47.330727>,  <30.935118, 30.862816, 47.152897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818592, 31.201635, 47.330727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128515, 0.495167, -0.859240,
		-0.947956, -0.193174, -0.253107,
		-0.291313, 0.847050, 0.444571,
		30.731197, 31.455750, 47.464096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732220, 31.227758, 46.572269>,  <30.935118, 30.862816, 47.152897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732220, 31.227758, 46.572269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.730608, 31.507111, 46.858555>,  <30.729641, 31.674721, 47.030327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.730608, 31.507111, 46.858555>,  <30.732220, 31.227758, 46.572269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730608, 31.507111, 46.858555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238208, 0.695790, -0.677594,
		-0.971206, 0.167761, -0.169162,
		-0.004027, 0.698379, 0.715717,
		30.729401, 31.716625, 47.073269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313765, 31.703854, 46.393791>,  <30.732220, 31.227758, 46.572269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313765, 31.703854, 46.393791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.571941, 31.878345, 46.644585>,  <30.726847, 31.983040, 46.795059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.571941, 31.878345, 46.644585>,  <30.313765, 31.703854, 46.393791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571941, 31.878345, 46.644585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259374, 0.646908, -0.717101,
		-0.718421, 0.625471, 0.304396,
		0.645442, 0.436229, 0.626984,
		30.765574, 32.009212, 46.832680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181578, 32.416321, 46.372467>,  <30.313765, 31.703854, 46.393791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181578, 32.416321, 46.372467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.550491, 32.407448, 46.526817>,  <30.771839, 32.402122, 46.619427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.550491, 32.407448, 46.526817>,  <30.181578, 32.416321, 46.372467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550491, 32.407448, 46.526817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250945, 0.793685, -0.554158,
		-0.293973, 0.607925, 0.737569,
		0.922283, -0.022182, 0.385878,
		30.827177, 32.400795, 46.642582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.512135, 29.547449, 51.384914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.894711, 29.454367, 51.455425>,  <34.124256, 29.398518, 51.497730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.894711, 29.454367, 51.455425>,  <33.512135, 29.547449, 51.384914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894711, 29.454367, 51.455425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213142, 0.144011, -0.966350,
		0.199488, 0.961826, 0.187337,
		0.956439, -0.232705, 0.176277,
		34.181641, 29.384556, 51.508308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789654, 30.072973, 51.081467>,  <33.512135, 29.547449, 51.384914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789654, 30.072973, 51.081467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.111794, 29.837204, 51.106731>,  <34.305077, 29.695742, 51.121891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.111794, 29.837204, 51.106731>,  <33.789654, 30.072973, 51.081467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111794, 29.837204, 51.106731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335032, 0.364677, -0.868772,
		0.489041, 0.720827, 0.491168,
		0.805352, -0.589422, 0.063158,
		34.353397, 29.660378, 51.125679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394047, 30.476229, 50.944088>,  <33.789654, 30.072973, 51.081467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394047, 30.476229, 50.944088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.522839, 30.103931, 50.874756>,  <34.600113, 29.880552, 50.833157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.522839, 30.103931, 50.874756>,  <34.394047, 30.476229, 50.944088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522839, 30.103931, 50.874756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334740, 0.283178, -0.898754,
		0.885593, 0.231363, 0.402735,
		0.321984, -0.930742, -0.173334,
		34.619434, 29.824709, 50.822754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068012, 30.551954, 50.694077>,  <34.394047, 30.476229, 50.944088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068012, 30.551954, 50.694077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.927769, 30.201904, 50.560673>,  <34.843620, 29.991875, 50.480629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.927769, 30.201904, 50.560673>,  <35.068012, 30.551954, 50.694077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927769, 30.201904, 50.560673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385907, 0.189477, -0.902870,
		0.853316, -0.445261, 0.271283,
		-0.350611, -0.875123, -0.333513,
		34.822586, 29.939367, 50.460617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536781, 30.318951, 50.141949>,  <35.068012, 30.551954, 50.694077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536781, 30.318951, 50.141949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.207294, 30.101397, 50.077843>,  <35.009602, 29.970863, 50.039379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.207294, 30.101397, 50.077843>,  <35.536781, 30.318951, 50.141949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207294, 30.101397, 50.077843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110229, 0.123657, -0.986184,
		0.556190, -0.829998, -0.041906,
		-0.823712, -0.543886, -0.160267,
		34.960182, 29.938231, 50.029762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794224, 29.824472, 49.726852>,  <35.536781, 30.318951, 50.141949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794224, 29.824472, 49.726852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.398163, 29.856562, 49.680954>,  <35.160526, 29.875816, 49.653416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.398163, 29.856562, 49.680954>,  <35.794224, 29.824472, 49.726852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398163, 29.856562, 49.680954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116141, 0.012869, -0.993149,
		-0.078202, -0.996693, -0.022060,
		-0.990149, 0.080228, -0.114750,
		35.101116, 29.880629, 49.646530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637402, 29.331383, 49.319756>,  <35.794224, 29.824472, 49.726852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637402, 29.331383, 49.319756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.317413, 29.565578, 49.267227>,  <35.125420, 29.706097, 49.235710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.317413, 29.565578, 49.267227>,  <35.637402, 29.331383, 49.319756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317413, 29.565578, 49.267227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097135, -0.089614, -0.991229,
		-0.592123, -0.805712, 0.014817,
		-0.799972, 0.585490, -0.131325,
		35.077423, 29.741226, 49.227829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140457, 28.865717, 48.923187>,  <35.637402, 29.331383, 49.319756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140457, 28.865717, 48.923187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.014267, 29.241827, 48.872025>,  <34.938553, 29.467493, 48.841328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.014267, 29.241827, 48.872025>,  <35.140457, 28.865717, 48.923187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014267, 29.241827, 48.872025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021374, -0.127713, -0.991581,
		-0.948693, -0.315552, 0.020192,
		-0.315474, 0.940275, -0.127905,
		34.919624, 29.523909, 48.833652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619873, 28.782801, 48.457188>,  <35.140457, 28.865717, 48.923187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619873, 28.782801, 48.457188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.718750, 29.170282, 48.448174>,  <34.778076, 29.402771, 48.442764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.718750, 29.170282, 48.448174>,  <34.619873, 28.782801, 48.457188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718750, 29.170282, 48.448174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018392, -0.018562, -0.999659,
		-0.968792, 0.247523, 0.013228,
		0.247193, 0.968704, -0.022535,
		34.792908, 29.460894, 48.441414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257462, 29.018440, 47.883095>,  <34.619873, 28.782801, 48.457188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257462, 29.018440, 47.883095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.495934, 29.331936, 47.952755>,  <34.639015, 29.520033, 47.994553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.495934, 29.331936, 47.952755>,  <34.257462, 29.018440, 47.883095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495934, 29.331936, 47.952755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058065, 0.174261, -0.982986,
		-0.800751, 0.596145, 0.058382,
		0.596176, 0.783737, 0.174155,
		34.674786, 29.567057, 48.005001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020927, 29.484283, 47.498112>,  <34.257462, 29.018440, 47.883095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020927, 29.484283, 47.498112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.411186, 29.545601, 47.560871>,  <34.645340, 29.582392, 47.598526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.411186, 29.545601, 47.560871>,  <34.020927, 29.484283, 47.498112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411186, 29.545601, 47.560871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105635, 0.298515, -0.948541,
		-0.192242, 0.942014, 0.275051,
		0.975646, 0.153294, 0.156897,
		34.703880, 29.591589, 47.607941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114834, 30.063816, 47.256348>,  <34.020927, 29.484283, 47.498112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114834, 30.063816, 47.256348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492691, 29.932911, 47.265747>,  <34.719406, 29.854368, 47.271385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492691, 29.932911, 47.265747>,  <34.114834, 30.063816, 47.256348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492691, 29.932911, 47.265747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102786, 0.227160, -0.968418,
		0.311589, 0.917223, 0.248223,
		0.944641, -0.327262, 0.023497,
		34.776085, 29.834732, 47.272797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567867, 30.590145, 47.074848>,  <34.114834, 30.063816, 47.256348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567867, 30.590145, 47.074848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.282215, 30.370485, 46.901203>,  <33.110825, 30.238689, 46.797016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.282215, 30.370485, 46.901203>,  <33.567867, 30.590145, 47.074848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282215, 30.370485, 46.901203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210262, -0.423239, 0.881282,
		-0.667690, 0.720626, 0.186782,
		-0.714129, -0.549150, -0.434113,
		33.067978, 30.205740, 46.770969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894840, 30.687929, 47.392773>,  <33.567867, 30.590145, 47.074848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894840, 30.687929, 47.392773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.886707, 30.332945, 47.208599>,  <32.881828, 30.119953, 47.098095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.886707, 30.332945, 47.208599>,  <32.894840, 30.687929, 47.392773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886707, 30.332945, 47.208599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363716, -0.422409, 0.830230,
		-0.931288, 0.184344, -0.314197,
		-0.020328, -0.887462, -0.460433,
		32.880608, 30.066706, 47.070469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425339, 30.392817, 47.693863>,  <32.894840, 30.687929, 47.392773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425339, 30.392817, 47.693863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.577518, 30.073057, 47.507862>,  <32.668827, 29.881203, 47.396263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.577518, 30.073057, 47.507862>,  <32.425339, 30.392817, 47.693863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577518, 30.073057, 47.507862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393574, -0.594958, 0.700803,
		-0.836875, -0.083607, -0.540972,
		0.380447, -0.799397, -0.465000,
		32.691654, 29.833239, 47.368362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828165, 29.943520, 47.491947>,  <32.425339, 30.392817, 47.693863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828165, 29.943520, 47.491947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.142944, 29.698469, 47.521355>,  <32.331810, 29.551439, 47.538998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.142944, 29.698469, 47.521355>,  <31.828165, 29.943520, 47.491947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142944, 29.698469, 47.521355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496403, -0.557841, 0.665130,
		-0.366465, -0.559917, -0.743100,
		0.786949, -0.612623, 0.073515,
		32.379028, 29.514683, 47.543407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492115, 29.291058, 47.378712>,  <31.828165, 29.943520, 47.491947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492115, 29.291058, 47.378712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.851345, 29.240370, 47.547188>,  <32.066883, 29.209957, 47.648273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.851345, 29.240370, 47.547188>,  <31.492115, 29.291058, 47.378712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851345, 29.240370, 47.547188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408565, -0.594999, 0.692135,
		0.162903, -0.793674, -0.586127,
		0.898074, -0.126720, 0.421194,
		32.120766, 29.202354, 47.673546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602829, 28.499178, 47.611908>,  <31.492115, 29.291058, 47.378712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602829, 28.499178, 47.611908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.883051, 28.682478, 47.830715>,  <32.051186, 28.792458, 47.961998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.883051, 28.682478, 47.830715>,  <31.602829, 28.499178, 47.611908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883051, 28.682478, 47.830715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315451, -0.488722, 0.813414,
		0.640086, -0.742399, -0.197821,
		0.700557, 0.458252, 0.547015,
		32.093220, 28.819954, 47.994820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031765, 28.040092, 48.109600>,  <31.602829, 28.499178, 47.611908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031765, 28.040092, 48.109600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.059177, 28.406893, 48.266785>,  <32.075626, 28.626972, 48.361095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.059177, 28.406893, 48.266785>,  <32.031765, 28.040092, 48.109600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059177, 28.406893, 48.266785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278888, -0.360571, 0.890062,
		0.957875, -0.170590, 0.231029,
		0.068533, 0.916999, 0.392957,
		32.079739, 28.681993, 48.384670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413303, 27.877165, 48.708786>,  <32.031765, 28.040092, 48.109600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413303, 27.877165, 48.708786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.252182, 28.238832, 48.765682>,  <32.155510, 28.455833, 48.799820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.252182, 28.238832, 48.765682>,  <32.413303, 27.877165, 48.708786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252182, 28.238832, 48.765682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202917, -0.239755, 0.949391,
		0.892511, 0.353553, 0.280045,
		-0.402802, 0.904167, 0.142242,
		32.131340, 28.510082, 48.808353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626339, 28.095795, 49.428970>,  <32.413303, 27.877165, 48.708786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626339, 28.095795, 49.428970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.305325, 28.313540, 49.331310>,  <32.112717, 28.444187, 49.272713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.305325, 28.313540, 49.331310>,  <32.626339, 28.095795, 49.428970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305325, 28.313540, 49.331310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349175, -0.096744, 0.932050,
		0.483754, 0.833252, 0.267718,
		-0.802533, 0.544363, -0.244150,
		32.064564, 28.476849, 49.258064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594185, 28.565071, 50.008778>,  <32.626339, 28.095795, 49.428970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594185, 28.565071, 50.008778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.226177, 28.586817, 49.853539>,  <32.005375, 28.599865, 49.760395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.226177, 28.586817, 49.853539>,  <32.594185, 28.565071, 50.008778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226177, 28.586817, 49.853539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391860, -0.116937, 0.912563,
		0.004228, 0.991650, 0.128886,
		-0.920015, 0.054364, -0.388093,
		31.950172, 28.603127, 49.737110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208061, 29.039349, 50.450405>,  <32.594185, 28.565071, 50.008778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208061, 29.039349, 50.450405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954283, 28.794289, 50.261879>,  <31.802017, 28.647253, 50.148762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954283, 28.794289, 50.261879>,  <32.208061, 29.039349, 50.450405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954283, 28.794289, 50.261879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470284, -0.177965, 0.864385,
		-0.613445, 0.770056, -0.175212,
		-0.634443, -0.612652, -0.471316,
		31.763950, 28.610493, 50.120483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489420, 29.248232, 50.670235>,  <32.208061, 29.039349, 50.450405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489420, 29.248232, 50.670235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.470940, 28.878420, 50.518913>,  <31.459850, 28.656532, 50.428120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.470940, 28.878420, 50.518913>,  <31.489420, 29.248232, 50.670235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470940, 28.878420, 50.518913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601947, -0.276460, 0.749153,
		-0.797198, 0.262330, -0.543744,
		-0.046202, -0.924528, -0.378303,
		31.457079, 28.601061, 50.405422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759848, 29.128855, 50.629078>,  <31.489420, 29.248232, 50.670235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759848, 29.128855, 50.629078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.954319, 28.779310, 50.629002>,  <31.071001, 28.569584, 50.628956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.954319, 28.779310, 50.629002>,  <30.759848, 29.128855, 50.629078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954319, 28.779310, 50.629002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675001, -0.375679, 0.635011,
		-0.554983, -0.308600, -0.772503,
		0.486178, -0.873860, -0.000191,
		31.100172, 28.517153, 50.628944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217527, 28.661341, 50.484512>,  <30.759848, 29.128855, 50.629078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217527, 28.661341, 50.484512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.524462, 28.473095, 50.658737>,  <30.708622, 28.360147, 50.763271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.524462, 28.473095, 50.658737>,  <30.217527, 28.661341, 50.484512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524462, 28.473095, 50.658737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543798, -0.117610, 0.830934,
		-0.339824, -0.874465, -0.346166,
		0.767336, -0.470615, 0.435566,
		30.754663, 28.331911, 50.789406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720720, 28.981636, 49.935200>,  <30.217527, 28.661341, 50.484512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720720, 28.981636, 49.935200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.719868, 29.243275, 50.237762>,  <29.719357, 29.400259, 50.419300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.719868, 29.243275, 50.237762>,  <29.720720, 28.981636, 49.935200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719868, 29.243275, 50.237762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061804, 0.754877, -0.652948,
		-0.998086, -0.048141, 0.038817,
		-0.002132, 0.654098, 0.756407,
		29.719229, 29.439505, 50.464684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164207, 29.331137, 49.823105>,  <29.720720, 28.981636, 49.935200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164207, 29.331137, 49.823105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.395964, 29.550545, 50.064247>,  <29.535017, 29.682190, 50.208931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.395964, 29.550545, 50.064247>,  <29.164207, 29.331137, 49.823105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395964, 29.550545, 50.064247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061278, 0.766875, -0.638864,
		-0.812742, 0.333211, 0.477935,
		0.579393, 0.548518, 0.602853,
		29.569782, 29.715099, 50.245102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849669, 30.026299, 49.737221>,  <29.164207, 29.331137, 49.823105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849669, 30.026299, 49.737221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.210409, 30.073458, 49.903481>,  <29.426853, 30.101753, 50.003235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.210409, 30.073458, 49.903481>,  <28.849669, 30.026299, 49.737221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210409, 30.073458, 49.903481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107081, 0.871036, -0.479407,
		-0.418564, 0.476862, 0.772921,
		0.901853, 0.117897, 0.415647,
		29.480965, 30.108828, 50.028175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848501, 30.720858, 49.844704>,  <28.849669, 30.026299, 49.737221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848501, 30.720858, 49.844704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.220377, 30.573877, 49.834454>,  <29.443502, 30.485689, 49.828304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.220377, 30.573877, 49.834454>,  <28.848501, 30.720858, 49.844704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220377, 30.573877, 49.834454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293638, 0.781339, -0.550714,
		0.222379, 0.504470, 0.834300,
		0.929690, -0.367450, -0.025621,
		29.499285, 30.463642, 49.826767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284477, 31.277596, 49.860031>,  <28.848501, 30.720858, 49.844704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284477, 31.277596, 49.860031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.531206, 31.006426, 49.700054>,  <29.679243, 30.843725, 49.604069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.531206, 31.006426, 49.700054>,  <29.284477, 31.277596, 49.860031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531206, 31.006426, 49.700054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343829, 0.689143, -0.637858,
		0.708033, 0.255935, 0.658169,
		0.616823, -0.677922, -0.399938,
		29.716253, 30.803049, 49.580074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696949, 31.723671, 49.502285>,  <29.284477, 31.277596, 49.860031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696949, 31.723671, 49.502285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.823181, 31.369127, 49.366772>,  <29.898920, 31.156401, 49.285465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.823181, 31.369127, 49.366772>,  <29.696949, 31.723671, 49.502285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823181, 31.369127, 49.366772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337263, 0.438487, -0.833056,
		0.886940, 0.148639, 0.437315,
		0.315581, -0.886361, -0.338781,
		29.917856, 31.103218, 49.265137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408085, 31.864309, 49.239445>,  <29.696949, 31.723671, 49.502285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408085, 31.864309, 49.239445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.250282, 31.532307, 49.081734>,  <30.155602, 31.333105, 48.987106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.250282, 31.532307, 49.081734>,  <30.408085, 31.864309, 49.239445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250282, 31.532307, 49.081734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357784, 0.256473, -0.897893,
		0.846378, -0.495291, 0.195782,
		-0.394506, -0.830005, -0.394281,
		30.131931, 31.283306, 48.963448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168652, 31.802040, 49.513687>,  <30.408085, 31.864309, 49.239445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168652, 31.802040, 49.513687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.305422, 32.170849, 49.586308>,  <31.387484, 32.392136, 49.629879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.305422, 32.170849, 49.586308>,  <31.168652, 31.802040, 49.513687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305422, 32.170849, 49.586308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014788, -0.187889, 0.982079,
		0.939611, -0.338481, -0.050609,
		0.341923, 0.922024, 0.181548,
		31.407999, 32.447456, 49.640774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665201, 31.640999, 49.934425>,  <31.168652, 31.802040, 49.513687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665201, 31.640999, 49.934425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.569824, 32.024055, 49.999012>,  <31.512598, 32.253887, 50.037762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.569824, 32.024055, 49.999012>,  <31.665201, 31.640999, 49.934425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569824, 32.024055, 49.999012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087996, -0.186881, 0.978434,
		0.967161, 0.219094, 0.128829,
		-0.238444, 0.957639, 0.161464,
		31.498291, 32.311348, 50.047451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151947, 31.822580, 50.482185>,  <31.665201, 31.640999, 49.934425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151947, 31.822580, 50.482185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.836533, 32.068047, 50.498344>,  <31.647285, 32.215324, 50.508038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.836533, 32.068047, 50.498344>,  <32.151947, 31.822580, 50.482185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836533, 32.068047, 50.498344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157435, -0.264918, 0.951332,
		0.594500, 0.743797, 0.305509,
		-0.788533, 0.613665, 0.040394,
		31.599974, 32.252148, 50.510464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316845, 32.319172, 51.006168>,  <32.151947, 31.822580, 50.482185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316845, 32.319172, 51.006168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.921741, 32.367176, 50.966301>,  <31.684679, 32.395981, 50.942379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.921741, 32.367176, 50.966301>,  <32.316845, 32.319172, 51.006168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921741, 32.367176, 50.966301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085425, 0.118489, 0.989274,
		0.130536, 0.985676, -0.106786,
		-0.987756, 0.120014, -0.099669,
		31.625414, 32.403179, 50.936401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215652, 33.003952, 51.314350>,  <32.316845, 32.319172, 51.006168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215652, 33.003952, 51.314350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.875479, 32.793518, 51.315136>,  <31.671375, 32.667259, 51.315609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.875479, 32.793518, 51.315136>,  <32.215652, 33.003952, 51.314350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875479, 32.793518, 51.315136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038347, 0.065722, 0.997101,
		-0.524685, 0.847891, -0.076066,
		-0.850432, -0.526081, 0.001969,
		31.620350, 32.635693, 51.315727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683334, 33.481037, 51.600826>,  <32.215652, 33.003952, 51.314350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683334, 33.481037, 51.600826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.574713, 33.098915, 51.647572>,  <31.509541, 32.869644, 51.675617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.574713, 33.098915, 51.647572>,  <31.683334, 33.481037, 51.600826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574713, 33.098915, 51.647572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153510, 0.162865, 0.974633,
		-0.950102, 0.246724, -0.190874,
		-0.271552, -0.955302, 0.116864,
		31.493248, 32.812325, 51.682632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205736, 33.438301, 52.152920>,  <31.683334, 33.481037, 51.600826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205736, 33.438301, 52.152920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.342394, 33.065239, 52.106552>,  <31.424389, 32.841404, 52.078732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.342394, 33.065239, 52.106552>,  <31.205736, 33.438301, 52.152920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342394, 33.065239, 52.106552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034416, -0.110842, 0.993242,
		-0.939198, -0.343326, -0.005771,
		0.341646, -0.932653, -0.115918,
		31.444887, 32.785442, 52.071777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633078, 33.050533, 52.543953>,  <31.205736, 33.438301, 52.152920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633078, 33.050533, 52.543953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.904255, 32.757195, 52.523567>,  <31.066961, 32.581192, 52.511337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.904255, 32.757195, 52.523567>,  <30.633078, 33.050533, 52.543953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904255, 32.757195, 52.523567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123332, -0.181814, 0.975568,
		-0.724696, -0.655093, -0.213704,
		0.677942, -0.733347, -0.050965,
		31.107637, 32.537189, 52.508278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368046, 32.545372, 52.981846>,  <30.633078, 33.050533, 52.543953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368046, 32.545372, 52.981846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.761162, 32.473297, 52.965565>,  <30.997032, 32.430054, 52.955795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.761162, 32.473297, 52.965565>,  <30.368046, 32.545372, 52.981846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761162, 32.473297, 52.965565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012315, -0.283743, 0.958821,
		-0.184313, -0.941819, -0.281079,
		0.982790, -0.180185, -0.040699,
		31.056000, 32.419243, 52.953354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.636238, 37.578026, 39.022907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010204, 37.491661, 39.135559>,  <36.234585, 37.439842, 39.203152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010204, 37.491661, 39.135559>,  <35.636238, 37.578026, 39.022907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010204, 37.491661, 39.135559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341117, -0.327946, 0.880960,
		-0.097851, -0.919692, -0.380253,
		0.934914, -0.215913, 0.281633,
		36.290680, 37.426888, 39.220047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647934, 36.924202, 39.251377>,  <35.636238, 37.578026, 39.022907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647934, 36.924202, 39.251377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970852, 37.097282, 39.411900>,  <36.164600, 37.201130, 39.508213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970852, 37.097282, 39.411900>,  <35.647934, 36.924202, 39.251377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970852, 37.097282, 39.411900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310651, -0.266591, 0.912373,
		0.501771, -0.861219, -0.080797,
		0.807293, 0.432703, 0.401306,
		36.213039, 37.227093, 39.532291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866352, 36.403847, 39.799755>,  <35.647934, 36.924202, 39.251377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866352, 36.403847, 39.799755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994350, 36.767689, 39.905746>,  <36.071152, 36.985996, 39.969341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994350, 36.767689, 39.905746>,  <35.866352, 36.403847, 39.799755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994350, 36.767689, 39.905746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333107, -0.153808, 0.930259,
		0.886928, -0.385947, 0.253779,
		0.319998, 0.909608, 0.264979,
		36.090351, 37.040573, 39.985241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084110, 36.298470, 40.432346>,  <35.866352, 36.403847, 39.799755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084110, 36.298470, 40.432346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054703, 36.697151, 40.418682>,  <36.037060, 36.936363, 40.410484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054703, 36.697151, 40.418682>,  <36.084110, 36.298470, 40.432346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054703, 36.697151, 40.418682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444971, -0.002125, 0.895543,
		0.892523, 0.081036, 0.443662,
		-0.073514, 0.996709, -0.034162,
		36.032650, 36.996162, 40.408432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421707, 36.521309, 41.052467>,  <36.084110, 36.298470, 40.432346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421707, 36.521309, 41.052467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169876, 36.798679, 40.912300>,  <36.018780, 36.965103, 40.828197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169876, 36.798679, 40.912300>,  <36.421707, 36.521309, 41.052467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169876, 36.798679, 40.912300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356206, 0.143215, 0.923367,
		0.690474, 0.706149, 0.156840,
		-0.629573, 0.693429, -0.350421,
		35.981003, 37.006706, 40.807175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517754, 37.120537, 41.464249>,  <36.421707, 36.521309, 41.052467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517754, 37.120537, 41.464249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160740, 37.152519, 41.286716>,  <35.946529, 37.171711, 41.180199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160740, 37.152519, 41.286716>,  <36.517754, 37.120537, 41.464249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160740, 37.152519, 41.286716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407883, 0.276688, 0.870101,
		0.192376, 0.957628, -0.214339,
		-0.892538, 0.079961, -0.443827,
		35.892979, 37.176506, 41.153568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267342, 37.611904, 41.922874>,  <36.517754, 37.120537, 41.464249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267342, 37.611904, 41.922874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956837, 37.471695, 41.713284>,  <35.770535, 37.387569, 41.587528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956837, 37.471695, 41.713284>,  <36.267342, 37.611904, 41.922874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956837, 37.471695, 41.713284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580350, 0.072735, 0.811113,
		-0.246205, 0.933725, -0.259889,
		-0.776259, -0.350526, -0.523979,
		35.723961, 37.366539, 41.556091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684330, 38.065323, 42.084984>,  <36.267342, 37.611904, 41.922874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684330, 38.065323, 42.084984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504066, 37.736488, 41.945797>,  <35.395908, 37.539188, 41.862286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504066, 37.736488, 41.945797>,  <35.684330, 38.065323, 42.084984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504066, 37.736488, 41.945797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733126, 0.118424, 0.669704,
		-0.509345, 0.556915, -0.656060,
		-0.450661, -0.822084, -0.347970,
		35.368870, 37.489864, 41.841408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903992, 38.226917, 42.092178>,  <35.684330, 38.065323, 42.084984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903992, 38.226917, 42.092178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961197, 37.831165, 42.081825>,  <34.995522, 37.593712, 42.075611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961197, 37.831165, 42.081825>,  <34.903992, 38.226917, 42.092178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961197, 37.831165, 42.081825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739536, -0.124210, 0.661558,
		-0.657749, -0.075468, -0.749447,
		0.143015, -0.989382, -0.025888,
		35.004101, 37.534351, 42.074059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178009, 37.840721, 41.941639>,  <34.903992, 38.226917, 42.092178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178009, 37.840721, 41.941639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446152, 37.597504, 42.111771>,  <34.607037, 37.451572, 42.213852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446152, 37.597504, 42.111771>,  <34.178009, 37.840721, 41.941639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446152, 37.597504, 42.111771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689687, -0.299078, 0.659457,
		-0.273763, -0.735424, -0.619843,
		0.670362, -0.608033, 0.425336,
		34.647259, 37.415092, 42.239368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698376, 37.268974, 42.237644>,  <34.178009, 37.840721, 41.941639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698376, 37.268974, 42.237644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041443, 37.230263, 42.439651>,  <34.247284, 37.207035, 42.560856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041443, 37.230263, 42.439651>,  <33.698376, 37.268974, 42.237644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041443, 37.230263, 42.439651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513026, -0.094574, 0.853148,
		-0.034804, -0.990803, -0.130763,
		0.857667, -0.096777, 0.505015,
		34.298744, 37.201229, 42.591156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645496, 36.686680, 42.686668>,  <33.698376, 37.268974, 42.237644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645496, 36.686680, 42.686668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942501, 36.889256, 42.862026>,  <34.120705, 37.010803, 42.967239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942501, 36.889256, 42.862026>,  <33.645496, 36.686680, 42.686668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942501, 36.889256, 42.862026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517898, 0.018998, 0.855232,
		0.424798, -0.862064, 0.276392,
		0.742515, 0.506443, 0.438390,
		34.165257, 37.041187, 42.993542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656013, 36.050369, 42.326313>,  <33.645496, 36.686680, 42.686668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656013, 36.050369, 42.326313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384651, 35.791039, 42.188072>,  <33.221832, 35.635441, 42.105129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384651, 35.791039, 42.188072>,  <33.656013, 36.050369, 42.326313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384651, 35.791039, 42.188072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030645, 0.445024, -0.894994,
		0.734046, -0.617762, -0.282040,
		-0.678408, -0.648324, -0.345600,
		33.181129, 35.596542, 42.084393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890301, 35.915443, 41.629086>,  <33.656013, 36.050369, 42.326313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890301, 35.915443, 41.629086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509899, 35.792187, 41.639263>,  <33.281658, 35.718231, 41.645370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509899, 35.792187, 41.639263>,  <33.890301, 35.915443, 41.629086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509899, 35.792187, 41.639263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123072, 0.301768, -0.945404,
		0.283636, -0.902212, -0.324905,
		-0.951001, -0.308138, 0.025445,
		33.224598, 35.699745, 41.646896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782898, 35.612701, 40.982410>,  <33.890301, 35.915443, 41.629086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782898, 35.612701, 40.982410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417309, 35.708477, 41.113449>,  <33.197956, 35.765942, 41.192074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417309, 35.708477, 41.113449>,  <33.782898, 35.612701, 40.982410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417309, 35.708477, 41.113449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259041, 0.277125, -0.925256,
		-0.312329, -0.930521, -0.191261,
		-0.913974, 0.239440, 0.327597,
		33.143116, 35.780308, 41.211727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389740, 35.245171, 40.611553>,  <33.782898, 35.612701, 40.982410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389740, 35.245171, 40.611553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149956, 35.540909, 40.734207>,  <33.006084, 35.718349, 40.807800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149956, 35.540909, 40.734207>,  <33.389740, 35.245171, 40.611553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149956, 35.540909, 40.734207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380268, 0.074025, -0.921909,
		-0.704306, -0.669248, 0.236774,
		-0.599458, 0.739343, 0.306630,
		32.970119, 35.762711, 40.826195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766651, 35.228127, 40.193260>,  <33.389740, 35.245171, 40.611553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766651, 35.228127, 40.193260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733566, 35.585899, 40.369057>,  <32.713715, 35.800564, 40.474537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733566, 35.585899, 40.369057>,  <32.766651, 35.228127, 40.193260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733566, 35.585899, 40.369057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515292, 0.339094, -0.787077,
		-0.853014, -0.291572, 0.432844,
		-0.082715, 0.894428, 0.439496,
		32.708752, 35.854229, 40.500904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123798, 35.475410, 40.099876>,  <32.766651, 35.228127, 40.193260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123798, 35.475410, 40.099876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373741, 35.781265, 40.162968>,  <32.523708, 35.964779, 40.200821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373741, 35.781265, 40.162968>,  <32.123798, 35.475410, 40.099876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373741, 35.781265, 40.162968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327927, 0.440379, -0.835781,
		-0.708530, 0.470524, 0.525921,
		0.624860, 0.764640, 0.157724,
		32.561199, 36.010658, 40.210285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716072, 36.061401, 40.051964>,  <32.123798, 35.475410, 40.099876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716072, 36.061401, 40.051964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088039, 36.192226, 39.984692>,  <32.311218, 36.270721, 39.944328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088039, 36.192226, 39.984692>,  <31.716072, 36.061401, 40.051964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088039, 36.192226, 39.984692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321864, 0.502518, -0.802421,
		-0.177924, 0.800318, 0.572569,
		0.929918, 0.327059, -0.168183,
		32.367016, 36.290344, 39.934238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629898, 36.749092, 39.842812>,  <31.716072, 36.061401, 40.051964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629898, 36.749092, 39.842812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000393, 36.669239, 39.714916>,  <32.222691, 36.621326, 39.638180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000393, 36.669239, 39.714916>,  <31.629898, 36.749092, 39.842812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000393, 36.669239, 39.714916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124987, 0.637606, -0.760156,
		0.355619, 0.744048, 0.565622,
		0.926236, -0.199630, -0.319741,
		32.278263, 36.609348, 39.618996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826584, 37.382713, 39.635929>,  <31.629898, 36.749092, 39.842812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826584, 37.382713, 39.635929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073109, 37.129147, 39.449036>,  <32.221024, 36.977005, 39.336899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073109, 37.129147, 39.449036>,  <31.826584, 37.382713, 39.635929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073109, 37.129147, 39.449036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056715, 0.556040, -0.829218,
		0.785456, 0.537557, 0.306742,
		0.616313, -0.633918, -0.467233,
		32.258003, 36.938972, 39.308865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377491, 37.780659, 39.345066>,  <31.826584, 37.382713, 39.635929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377491, 37.780659, 39.345066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346279, 37.445374, 39.129173>,  <32.327553, 37.244202, 38.999638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346279, 37.445374, 39.129173>,  <32.377491, 37.780659, 39.345066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346279, 37.445374, 39.129173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168036, 0.522580, -0.835868,
		0.982688, -0.155919, 0.100072,
		-0.078032, -0.838212, -0.539732,
		32.322868, 37.193909, 38.967255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776604, 37.859798, 38.842396>,  <32.377491, 37.780659, 39.345066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776604, 37.859798, 38.842396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553394, 37.570595, 38.679489>,  <32.419468, 37.397072, 38.581745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553394, 37.570595, 38.679489>,  <32.776604, 37.859798, 38.842396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553394, 37.570595, 38.679489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041393, 0.514423, -0.856537,
		0.828792, -0.461110, -0.316987,
		-0.558023, -0.723012, -0.407263,
		32.385986, 37.353691, 38.557312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093468, 37.530602, 38.205288>,  <32.776604, 37.859798, 38.842396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093468, 37.530602, 38.205288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695015, 37.495899, 38.210880>,  <32.455944, 37.475079, 38.214233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695015, 37.495899, 38.210880>,  <33.093468, 37.530602, 38.205288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695015, 37.495899, 38.210880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059214, 0.545156, -0.836241,
		0.064927, -0.833834, -0.548184,
		-0.996132, -0.086755, 0.013979,
		32.396175, 37.469872, 38.215073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622982, 36.890728, 38.200729>,  <33.093468, 37.530602, 38.205288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622982, 36.890728, 38.200729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806595, 36.539944, 38.257614>,  <33.916763, 36.329472, 38.291744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806595, 36.539944, 38.257614>,  <33.622982, 36.890728, 38.200729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806595, 36.539944, 38.257614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731652, 0.282356, -0.620451,
		0.503960, 0.388855, 0.771243,
		0.459031, -0.876965, 0.142211,
		33.944305, 36.276855, 38.300278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307709, 36.918785, 38.627865>,  <33.622982, 36.890728, 38.200729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307709, 36.918785, 38.627865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286777, 36.638699, 38.343060>,  <34.274220, 36.470646, 38.172176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286777, 36.638699, 38.343060>,  <34.307709, 36.918785, 38.627865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286777, 36.638699, 38.343060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804834, 0.392516, -0.445166,
		0.591188, -0.596346, 0.543017,
		-0.052330, -0.700216, -0.712011,
		34.271080, 36.428635, 38.129456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916573, 36.496788, 38.693699>,  <34.307709, 36.918785, 38.627865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916573, 36.496788, 38.693699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780956, 36.498047, 38.317394>,  <34.699585, 36.498802, 38.091610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780956, 36.498047, 38.317394>,  <34.916573, 36.496788, 38.693699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780956, 36.498047, 38.317394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849016, 0.431778, -0.304531,
		0.405242, -0.901974, -0.149066,
		-0.339043, 0.003150, -0.940766,
		34.679245, 36.498993, 38.035164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596870, 36.271523, 38.772762>,  <34.916573, 36.496788, 38.693699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596870, 36.271523, 38.772762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886059, 36.054001, 38.943218>,  <36.059570, 35.923489, 39.045490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886059, 36.054001, 38.943218>,  <35.596870, 36.271523, 38.772762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886059, 36.054001, 38.943218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690565, -0.550241, 0.469420,
		-0.020791, -0.633654, -0.773337,
		0.722971, -0.543799, 0.426140,
		36.102951, 35.890862, 39.071060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411346, 35.525532, 38.662426>,  <35.596870, 36.271523, 38.772762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411346, 35.525532, 38.662426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632263, 35.560246, 38.994076>,  <35.764812, 35.581074, 39.193066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632263, 35.560246, 38.994076>,  <35.411346, 35.525532, 38.662426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632263, 35.560246, 38.994076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716677, -0.458627, 0.525391,
		0.425855, -0.884381, -0.191096,
		0.552287, 0.086787, 0.829124,
		35.797951, 35.586281, 39.242813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167545, 34.877148, 38.863308>,  <35.411346, 35.525532, 38.662426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167545, 34.877148, 38.863308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356407, 35.023727, 39.184002>,  <35.469723, 35.111675, 39.376419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356407, 35.023727, 39.184002>,  <35.167545, 34.877148, 38.863308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356407, 35.023727, 39.184002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520318, -0.618313, 0.589032,
		0.711575, -0.695274, -0.101270,
		0.472155, 0.366448, 0.801739,
		35.498055, 35.133663, 39.424522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489769, 34.266293, 39.209633>,  <35.167545, 34.877148, 38.863308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489769, 34.266293, 39.209633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447197, 34.567039, 39.469898>,  <35.421654, 34.747490, 39.626057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447197, 34.567039, 39.469898>,  <35.489769, 34.266293, 39.209633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447197, 34.567039, 39.469898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431631, -0.624446, 0.650970,
		0.895749, -0.211561, 0.390993,
		-0.106434, 0.751871, 0.650663,
		35.415268, 34.792603, 39.665096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907677, 34.061493, 39.805260>,  <35.489769, 34.266293, 39.209633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907677, 34.061493, 39.805260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588432, 34.299011, 39.846127>,  <35.396885, 34.441521, 39.870647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588432, 34.299011, 39.846127>,  <35.907677, 34.061493, 39.805260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588432, 34.299011, 39.846127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415558, -0.665268, 0.620266,
		0.436277, 0.452582, 0.777709,
		-0.798106, 0.593791, 0.102167,
		35.348999, 34.477150, 39.876778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779720, 34.006542, 40.481880>,  <35.907677, 34.061493, 39.805260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779720, 34.006542, 40.481880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452827, 34.188351, 40.340149>,  <35.256691, 34.297436, 40.255112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452827, 34.188351, 40.340149>,  <35.779720, 34.006542, 40.481880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452827, 34.188351, 40.340149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561035, -0.486809, 0.669520,
		0.131824, 0.745939, 0.652837,
		-0.817228, 0.454524, -0.354325,
		35.207661, 34.324707, 40.233852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363262, 34.236340, 41.080185>,  <35.779720, 34.006542, 40.481880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363262, 34.236340, 41.080185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090294, 34.250267, 40.788132>,  <34.926514, 34.258621, 40.612900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090294, 34.250267, 40.788132>,  <35.363262, 34.236340, 41.080185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090294, 34.250267, 40.788132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682519, -0.387924, 0.619421,
		-0.261669, 0.921034, 0.288490,
		-0.682420, 0.034816, -0.730131,
		34.885567, 34.260712, 40.569092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826866, 34.449295, 41.326614>,  <35.363262, 34.236340, 41.080185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826866, 34.449295, 41.326614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656216, 34.270679, 41.012012>,  <34.553825, 34.163509, 40.823250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656216, 34.270679, 41.012012>,  <34.826866, 34.449295, 41.326614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656216, 34.270679, 41.012012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682550, -0.411587, 0.603922,
		-0.593391, 0.794479, -0.129192,
		-0.426629, -0.446542, -0.786504,
		34.528229, 34.136719, 40.776062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043583, 34.452824, 41.457653>,  <34.826866, 34.449295, 41.326614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043583, 34.452824, 41.457653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079067, 34.185459, 41.162262>,  <34.100357, 34.025040, 40.985027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079067, 34.185459, 41.162262>,  <34.043583, 34.452824, 41.457653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079067, 34.185459, 41.162262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822361, -0.467474, 0.324332,
		-0.562008, 0.578523, -0.591150,
		0.088714, -0.668416, -0.738479,
		34.105682, 33.984936, 40.940720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411270, 34.356091, 41.222626>,  <34.043583, 34.452824, 41.457653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411270, 34.356091, 41.222626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598583, 34.029491, 41.087547>,  <33.710972, 33.833530, 41.006500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598583, 34.029491, 41.087547>,  <33.411270, 34.356091, 41.222626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598583, 34.029491, 41.087547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781370, -0.561112, 0.273156,
		-0.412516, 0.135949, -0.900749,
		0.468285, -0.816499, -0.337694,
		33.739067, 33.784542, 40.986240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874146, 33.946678, 41.160450>,  <33.411270, 34.356091, 41.222626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874146, 33.946678, 41.160450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167084, 33.682457, 41.094307>,  <33.342846, 33.523922, 41.054623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167084, 33.682457, 41.094307>,  <32.874146, 33.946678, 41.160450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167084, 33.682457, 41.094307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546311, -0.714922, 0.436383,
		-0.406471, -0.229246, -0.884436,
		0.732342, -0.660555, -0.165356,
		33.386787, 33.484291, 41.044701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523220, 33.320499, 40.878620>,  <32.874146, 33.946678, 41.160450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523220, 33.320499, 40.878620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875027, 33.243481, 41.052689>,  <33.086109, 33.197269, 41.157131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875027, 33.243481, 41.052689>,  <32.523220, 33.320499, 40.878620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875027, 33.243481, 41.052689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384618, -0.826118, 0.411823,
		0.280212, -0.529581, -0.800641,
		0.879517, -0.192544, 0.435174,
		33.138882, 33.185719, 41.183243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579903, 32.529434, 40.911709>,  <32.523220, 33.320499, 40.878620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579903, 32.529434, 40.911709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837372, 32.685268, 41.175198>,  <32.991852, 32.778770, 41.333290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837372, 32.685268, 41.175198>,  <32.579903, 32.529434, 40.911709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837372, 32.685268, 41.175198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247190, -0.708758, 0.660726,
		0.724282, -0.588119, -0.359905,
		0.643671, 0.389587, 0.658718,
		33.030472, 32.802143, 41.372814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952377, 31.899914, 41.090759>,  <32.579903, 32.529434, 40.911709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952377, 31.899914, 41.090759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028351, 32.163017, 41.382317>,  <33.073933, 32.320881, 41.557251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028351, 32.163017, 41.382317>,  <32.952377, 31.899914, 41.090759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028351, 32.163017, 41.382317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128200, -0.719431, 0.682630,
		0.973391, -0.223097, -0.052318,
		0.189932, 0.657759, 0.728889,
		33.085331, 32.360344, 41.600983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550350, 31.573126, 41.517448>,  <32.952377, 31.899914, 41.090759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550350, 31.573126, 41.517448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336117, 31.830778, 41.735897>,  <33.207577, 31.985369, 41.866966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336117, 31.830778, 41.735897>,  <33.550350, 31.573126, 41.517448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336117, 31.830778, 41.735897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145820, -0.566437, 0.811102,
		0.831798, 0.514047, 0.209446,
		-0.535583, 0.644131, 0.546120,
		33.175442, 32.024017, 41.899734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984913, 31.694208, 42.050571>,  <33.550350, 31.573126, 41.517448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984913, 31.694208, 42.050571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617859, 31.807186, 42.162403>,  <33.397625, 31.874973, 42.229504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617859, 31.807186, 42.162403>,  <33.984913, 31.694208, 42.050571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617859, 31.807186, 42.162403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081129, -0.555550, 0.827516,
		0.389051, 0.782042, 0.486878,
		-0.917637, 0.282446, 0.279583,
		33.342567, 31.891920, 42.246277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111240, 31.932219, 42.708012>,  <33.984913, 31.694208, 42.050571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111240, 31.932219, 42.708012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717270, 31.863029, 42.708035>,  <33.480888, 31.821516, 42.708050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717270, 31.863029, 42.708035>,  <34.111240, 31.932219, 42.708012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717270, 31.863029, 42.708035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075045, -0.427001, 0.901132,
		-0.155846, 0.887553, 0.433545,
		-0.984927, -0.172973, 0.000061,
		33.421791, 31.811138, 42.708054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864971, 32.253014, 43.307892>,  <34.111240, 31.932219, 42.708012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864971, 32.253014, 43.307892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562725, 32.011684, 43.205879>,  <33.381378, 31.866886, 43.144672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562725, 32.011684, 43.205879>,  <33.864971, 32.253014, 43.307892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562725, 32.011684, 43.205879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122244, -0.252621, 0.959812,
		-0.643507, 0.756425, 0.117131,
		-0.755615, -0.603328, -0.255032,
		33.336040, 31.830687, 43.129372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307972, 32.408150, 43.658989>,  <33.864971, 32.253014, 43.307892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307972, 32.408150, 43.658989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263584, 32.022305, 43.563309>,  <33.236954, 31.790798, 43.505901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263584, 32.022305, 43.563309>,  <33.307972, 32.408150, 43.658989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263584, 32.022305, 43.563309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179656, -0.217251, 0.959441,
		-0.977451, 0.149439, -0.149190,
		-0.110966, -0.964609, -0.239200,
		33.230293, 31.732922, 43.491550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654293, 32.174786, 43.996956>,  <33.307972, 32.408150, 43.658989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654293, 32.174786, 43.996956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888718, 31.858120, 43.927906>,  <33.029373, 31.668121, 43.886475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888718, 31.858120, 43.927906>,  <32.654293, 32.174786, 43.996956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888718, 31.858120, 43.927906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032690, -0.235974, 0.971209,
		-0.809605, -0.563547, -0.164175,
		0.586063, -0.791663, -0.172624,
		33.064537, 31.620621, 43.876118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267303, 31.656481, 44.094311>,  <32.654293, 32.174786, 43.996956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267303, 31.656481, 44.094311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633949, 31.498325, 44.117924>,  <32.853935, 31.403433, 44.132092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633949, 31.498325, 44.117924>,  <32.267303, 31.656481, 44.094311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633949, 31.498325, 44.117924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234715, -0.412723, 0.880096,
		-0.323612, -0.820567, -0.471111,
		0.916616, -0.395386, 0.059037,
		32.908936, 31.379709, 44.135635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156898, 31.012405, 44.160408>,  <32.267303, 31.656481, 44.094311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156898, 31.012405, 44.160408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538094, 31.046221, 44.276794>,  <32.766811, 31.066511, 44.346626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538094, 31.046221, 44.276794>,  <32.156898, 31.012405, 44.160408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538094, 31.046221, 44.276794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193918, -0.567699, 0.800071,
		0.232821, -0.818884, -0.524617,
		0.952990, 0.084541, 0.290968,
		32.823990, 31.071583, 44.364086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350880, 30.350870, 44.384830>,  <32.156898, 31.012405, 44.160408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350880, 30.350870, 44.384830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644791, 30.571693, 44.542480>,  <32.821136, 30.704187, 44.637070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644791, 30.571693, 44.542480>,  <32.350880, 30.350870, 44.384830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644791, 30.571693, 44.542480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115859, -0.470355, 0.874839,
		0.668340, -0.688475, -0.281645,
		0.734778, 0.552059, 0.394123,
		32.865223, 30.737310, 44.660717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909466, 29.951588, 44.730560>,  <32.350880, 30.350870, 44.384830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909466, 29.951588, 44.730560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934605, 30.318321, 44.888275>,  <32.949688, 30.538361, 44.982906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934605, 30.318321, 44.888275>,  <32.909466, 29.951588, 44.730560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934605, 30.318321, 44.888275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096702, -0.387620, 0.916733,
		0.993327, -0.095740, 0.064300,
		0.062844, 0.916834, 0.394292,
		32.953457, 30.593372, 45.006561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300953, 29.783842, 45.264202>,  <32.909466, 29.951588, 44.730560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300953, 29.783842, 45.264202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171909, 30.144653, 45.378929>,  <33.094482, 30.361139, 45.447765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171909, 30.144653, 45.378929>,  <33.300953, 29.783842, 45.264202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171909, 30.144653, 45.378929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118867, -0.262016, 0.957715,
		0.939038, 0.343064, -0.022692,
		-0.322612, 0.902028, 0.286822,
		33.075127, 30.415262, 45.464977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820705, 30.082293, 45.790077>,  <33.300953, 29.783842, 45.264202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820705, 30.082293, 45.790077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462330, 30.254543, 45.833630>,  <33.247303, 30.357895, 45.859760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462330, 30.254543, 45.833630>,  <33.820705, 30.082293, 45.790077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462330, 30.254543, 45.833630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000783, -0.246654, 0.969103,
		0.444179, 0.868171, 0.221324,
		-0.895938, 0.430629, 0.108879,
		33.193550, 30.383732, 45.866295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861168, 30.522514, 46.381176>,  <33.820705, 30.082293, 45.790077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861168, 30.522514, 46.381176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477448, 30.417488, 46.339596>,  <33.247215, 30.354473, 46.314648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477448, 30.417488, 46.339596>,  <33.861168, 30.522514, 46.381176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477448, 30.417488, 46.339596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032533, -0.262903, 0.964274,
		-0.280512, 0.928409, 0.243661,
		-0.959299, -0.262564, -0.103951,
		33.189659, 30.338718, 46.308411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537350, 30.540318, 46.794273>,  <33.861168, 30.522514, 46.381176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537350, 30.540318, 46.794273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797241, 30.236986, 46.815434>,  <34.953175, 30.054987, 46.828129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797241, 30.236986, 46.815434>,  <34.537350, 30.540318, 46.794273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797241, 30.236986, 46.815434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350251, 0.236871, -0.906210,
		0.674672, 0.607316, 0.419506,
		0.649724, -0.758327, 0.052903,
		34.992157, 30.009487, 46.831303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160076, 30.880081, 46.655476>,  <34.537350, 30.540318, 46.794273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160076, 30.880081, 46.655476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235020, 30.498554, 46.561558>,  <35.279987, 30.269638, 46.505207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235020, 30.498554, 46.561558>,  <35.160076, 30.880081, 46.655476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235020, 30.498554, 46.561558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528246, 0.299357, -0.794570,
		0.828162, 0.024846, 0.559938,
		0.187363, -0.953818, -0.234791,
		35.291229, 30.212408, 46.491119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924019, 30.879507, 46.452793>,  <35.160076, 30.880081, 46.655476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924019, 30.879507, 46.452793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736965, 30.557043, 46.307785>,  <35.624733, 30.363565, 46.220779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736965, 30.557043, 46.307785>,  <35.924019, 30.879507, 46.452793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736965, 30.557043, 46.307785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477848, 0.114471, -0.870952,
		0.743625, -0.580519, 0.331691,
		-0.467636, -0.806160, -0.362524,
		35.596676, 30.315195, 46.199028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417416, 30.375223, 46.141491>,  <35.924019, 30.879507, 46.452793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417416, 30.375223, 46.141491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071678, 30.267340, 45.971710>,  <35.864235, 30.202610, 45.869843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071678, 30.267340, 45.971710>,  <36.417416, 30.375223, 46.141491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071678, 30.267340, 45.971710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385089, 0.187855, -0.903558,
		0.323434, -0.944440, -0.058510,
		-0.864347, -0.269710, -0.424452,
		35.812374, 30.186426, 45.844376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627785, 29.845781, 45.629200>,  <36.417416, 30.375223, 46.141491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627785, 29.845781, 45.629200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281391, 30.023779, 45.537941>,  <36.073555, 30.130577, 45.483185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281391, 30.023779, 45.537941>,  <36.627785, 29.845781, 45.629200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281391, 30.023779, 45.537941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343149, 0.196918, -0.918407,
		-0.363758, -0.873616, -0.323227,
		-0.865984, 0.444993, -0.228149,
		36.021595, 30.157276, 45.469498>
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
