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
	<24.205849, 35.327831, 35.386368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.249619, 35.101917, 35.059189>,  <24.275881, 34.966370, 34.862881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.249619, 35.101917, 35.059189>,  <24.205849, 35.327831, 35.386368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.249619, 35.101917, 35.059189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970849, 0.237274, -0.033958,
		0.213258, -0.790392, 0.574284,
		0.109423, -0.564784, -0.817952,
		24.282446, 34.932484, 34.813805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888916, 34.895813, 35.498440>,  <24.205849, 35.327831, 35.386368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888916, 34.895813, 35.498440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796288, 34.927429, 35.110600>,  <24.740709, 34.946400, 34.877895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796288, 34.927429, 35.110600>,  <24.888916, 34.895813, 35.498440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.796288, 34.927429, 35.110600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972603, 0.039747, -0.229049,
		0.020433, -0.996078, -0.086083,
		-0.231572, 0.079045, -0.969601,
		24.726816, 34.951141, 34.819717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.354130, 34.350967, 35.133152>,  <24.888916, 34.895813, 35.498440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.354130, 34.350967, 35.133152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248293, 34.696480, 34.961632>,  <25.184792, 34.903790, 34.858719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248293, 34.696480, 34.961632>,  <25.354130, 34.350967, 35.133152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.248293, 34.696480, 34.961632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941120, 0.134256, -0.310271,
		-0.210438, -0.485649, -0.848446,
		-0.264592, 0.863783, -0.428801,
		25.168915, 34.955616, 34.832993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590422, 34.239674, 34.475849>,  <25.354130, 34.350967, 35.133152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590422, 34.239674, 34.475849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569332, 34.614395, 34.614189>,  <25.556679, 34.839230, 34.697193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569332, 34.614395, 34.614189>,  <25.590422, 34.239674, 34.475849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569332, 34.614395, 34.614189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908453, 0.188802, -0.372916,
		-0.414648, 0.294524, -0.861001,
		-0.052726, 0.936808, 0.345848,
		25.553514, 34.895439, 34.717945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253002, 34.363514, 34.087288>,  <25.590422, 34.239674, 34.475849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253002, 34.363514, 34.087288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517073, 34.063541, 34.104126>,  <26.675514, 33.883556, 34.114231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517073, 34.063541, 34.104126>,  <26.253002, 34.363514, 34.087288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517073, 34.063541, 34.104126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746352, 0.648661, -0.148987,
		0.084421, 0.129779, 0.987943,
		0.660176, -0.749931, 0.042100,
		26.715126, 33.838562, 34.116756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805717, 34.515045, 34.539204>,  <26.253002, 34.363514, 34.087288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805717, 34.515045, 34.539204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941374, 34.246754, 34.275356>,  <27.022768, 34.085777, 34.117046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941374, 34.246754, 34.275356>,  <26.805717, 34.515045, 34.539204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941374, 34.246754, 34.275356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764846, 0.604834, -0.221779,
		0.547715, -0.429293, 0.718133,
		0.339143, -0.670733, -0.659620,
		27.043118, 34.045532, 34.077469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387537, 34.009445, 34.673019>,  <26.805717, 34.515045, 34.539204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387537, 34.009445, 34.673019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784325, 33.959320, 34.666168>,  <28.022398, 33.929245, 34.662060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784325, 33.959320, 34.666168>,  <27.387537, 34.009445, 34.673019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784325, 33.959320, 34.666168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121489, 0.906396, 0.404583,
		-0.035180, -0.403414, 0.914341,
		0.991969, -0.125316, -0.017124,
		28.081915, 33.921726, 34.661030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754648, 34.184559, 35.303688>,  <27.387537, 34.009445, 34.673019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754648, 34.184559, 35.303688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061209, 34.218155, 35.048950>,  <28.245146, 34.238312, 34.896107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061209, 34.218155, 35.048950>,  <27.754648, 34.184559, 35.303688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061209, 34.218155, 35.048950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303334, 0.826598, 0.474051,
		0.566231, -0.556491, 0.608030,
		0.766402, 0.083986, -0.636848,
		28.291128, 34.243351, 34.857895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289650, 34.271420, 35.738064>,  <27.754648, 34.184559, 35.303688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289650, 34.271420, 35.738064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429070, 34.397808, 35.385094>,  <28.512722, 34.473640, 35.173309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429070, 34.397808, 35.385094>,  <28.289650, 34.271420, 35.738064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429070, 34.397808, 35.385094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258846, 0.872404, 0.414620,
		0.900840, -0.372928, 0.222288,
		0.348549, 0.315968, -0.882428,
		28.533634, 34.492599, 35.120365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910139, 34.535416, 35.924923>,  <28.289650, 34.271420, 35.738064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910139, 34.535416, 35.924923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.804405, 34.694099, 35.573299>,  <28.740965, 34.789310, 35.362324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.804405, 34.694099, 35.573299>,  <28.910139, 34.535416, 35.924923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804405, 34.694099, 35.573299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186076, 0.915333, 0.357130,
		0.946310, -0.069170, -0.315774,
		-0.264335, 0.396713, -0.879059,
		28.725105, 34.813114, 35.309582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473572, 34.949295, 35.718983>,  <28.910139, 34.535416, 35.924923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473572, 34.949295, 35.718983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140703, 35.088665, 35.546429>,  <28.940981, 35.172287, 35.442898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140703, 35.088665, 35.546429>,  <29.473572, 34.949295, 35.718983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140703, 35.088665, 35.546429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209097, 0.917684, 0.337837,
		0.513582, 0.190939, -0.836526,
		-0.832173, 0.348422, -0.431382,
		28.891052, 35.193192, 35.417015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665649, 35.641880, 35.681755>,  <29.473572, 34.949295, 35.718983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665649, 35.641880, 35.681755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280455, 35.681339, 35.581421>,  <29.049337, 35.705017, 35.521221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280455, 35.681339, 35.581421>,  <29.665649, 35.641880, 35.681755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280455, 35.681339, 35.581421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028569, 0.962730, 0.268950,
		0.268022, 0.251830, -0.929917,
		-0.962989, 0.098651, -0.250838,
		28.991558, 35.710934, 35.506168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609512, 36.265491, 35.253578>,  <29.665649, 35.641880, 35.681755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609512, 36.265491, 35.253578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239635, 36.230152, 35.401707>,  <29.017710, 36.208950, 35.490582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239635, 36.230152, 35.401707>,  <29.609512, 36.265491, 35.253578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239635, 36.230152, 35.401707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096404, 0.995337, -0.003266,
		-0.368303, -0.038720, -0.928899,
		-0.924694, -0.088347, 0.370318,
		28.962227, 36.203648, 35.512802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161236, 36.611557, 34.842804>,  <29.609512, 36.265491, 35.253578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161236, 36.611557, 34.842804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962048, 36.587078, 35.188816>,  <28.842535, 36.572392, 35.396423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962048, 36.587078, 35.188816>,  <29.161236, 36.611557, 34.842804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962048, 36.587078, 35.188816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102994, 0.986273, 0.129063,
		-0.861056, 0.153363, -0.484833,
		-0.497972, -0.061195, 0.865032,
		28.812656, 36.568718, 35.448326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546555, 37.092842, 34.826206>,  <29.161236, 36.611557, 34.842804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546555, 37.092842, 34.826206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644478, 37.006279, 35.204250>,  <28.703232, 36.954342, 35.431076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644478, 37.006279, 35.204250>,  <28.546555, 37.092842, 34.826206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644478, 37.006279, 35.204250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088367, 0.965736, 0.244018,
		-0.965537, -0.143254, 0.217296,
		0.244807, -0.216407, 0.945113,
		28.717920, 36.941357, 35.487785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177715, 37.594082, 35.168110>,  <28.546555, 37.092842, 34.826206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177715, 37.594082, 35.168110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437050, 37.467384, 35.445045>,  <28.592651, 37.391365, 35.611206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437050, 37.467384, 35.445045>,  <28.177715, 37.594082, 35.168110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437050, 37.467384, 35.445045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159762, 0.945704, 0.283057,
		-0.744402, -0.072908, 0.663740,
		0.648338, -0.316748, 0.692335,
		28.631552, 37.372360, 35.652744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006935, 37.906796, 35.746456>,  <28.177715, 37.594082, 35.168110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006935, 37.906796, 35.746456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388065, 37.814903, 35.825798>,  <28.616743, 37.759769, 35.873402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388065, 37.814903, 35.825798>,  <28.006935, 37.906796, 35.746456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388065, 37.814903, 35.825798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154864, 0.930039, 0.333235,
		-0.261030, -0.286797, 0.921743,
		0.952828, -0.229729, 0.198353,
		28.673914, 37.745983, 35.885303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219387, 38.255959, 36.452099>,  <28.006935, 37.906796, 35.746456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219387, 38.255959, 36.452099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564049, 38.163578, 36.271339>,  <28.770845, 38.108150, 36.162884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564049, 38.163578, 36.271339>,  <28.219387, 38.255959, 36.452099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564049, 38.163578, 36.271339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419400, 0.825436, 0.377833,
		0.285752, -0.515088, 0.808103,
		0.861655, -0.230952, -0.451898,
		28.822546, 38.094292, 36.135769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838285, 38.390282, 36.924080>,  <28.219387, 38.255959, 36.452099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838285, 38.390282, 36.924080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964554, 38.394196, 36.544552>,  <29.040316, 38.396542, 36.316837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964554, 38.394196, 36.544552>,  <28.838285, 38.390282, 36.924080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964554, 38.394196, 36.544552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602519, 0.770415, 0.208402,
		0.733023, -0.637467, 0.237305,
		0.315673, 0.009783, -0.948818,
		29.059256, 38.397129, 36.259907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529409, 38.418159, 37.052750>,  <28.838285, 38.390282, 36.924080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529409, 38.418159, 37.052750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456226, 38.563587, 36.687382>,  <29.412317, 38.650845, 36.468159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456226, 38.563587, 36.687382>,  <29.529409, 38.418159, 37.052750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456226, 38.563587, 36.687382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613367, 0.768315, 0.182957,
		0.768315, -0.526790, -0.363572,
		-0.182957, 0.363572, -0.913423,
		29.401339, 38.672657, 36.413353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225958, 38.516369, 36.809044>,  <29.529409, 38.418159, 37.052750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225958, 38.516369, 36.809044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963131, 38.730240, 36.596485>,  <29.805435, 38.858562, 36.468952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963131, 38.730240, 36.596485>,  <30.225958, 38.516369, 36.809044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963131, 38.730240, 36.596485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500788, 0.836498, 0.222448,
		0.563447, -0.119951, -0.817398,
		-0.657069, 0.534680, -0.531392,
		29.766010, 38.890644, 36.437069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707218, 39.122997, 36.636768>,  <30.225958, 38.516369, 36.809044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707218, 39.122997, 36.636768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335796, 39.248066, 36.556747>,  <30.112942, 39.323105, 36.508736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335796, 39.248066, 36.556747>,  <30.707218, 39.122997, 36.636768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335796, 39.248066, 36.556747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262972, 0.934489, 0.239949,
		0.261969, 0.170199, -0.949950,
		-0.928557, 0.312670, -0.200050,
		30.057230, 39.341866, 36.496731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921736, 39.770805, 36.463757>,  <30.707218, 39.122997, 36.636768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921736, 39.770805, 36.463757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531599, 39.764671, 36.551819>,  <30.297516, 39.760990, 36.604656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531599, 39.764671, 36.551819>,  <30.921736, 39.770805, 36.463757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531599, 39.764671, 36.551819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037454, 0.971605, 0.233627,
		-0.217488, 0.236113, -0.947074,
		-0.975344, -0.015340, 0.220156,
		30.238997, 39.760071, 36.617867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609138, 40.348961, 36.174149>,  <30.921736, 39.770805, 36.463757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609138, 40.348961, 36.174149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326193, 40.250946, 36.439354>,  <30.156425, 40.192135, 36.598476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326193, 40.250946, 36.439354>,  <30.609138, 40.348961, 36.174149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326193, 40.250946, 36.439354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008828, 0.934852, 0.354927,
		-0.706793, 0.256916, -0.659119,
		-0.707365, -0.245042, 0.663015,
		30.113983, 40.177433, 36.638260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127071, 40.866386, 36.204914>,  <30.609138, 40.348961, 36.174149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127071, 40.866386, 36.204914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094452, 40.675438, 36.554878>,  <30.074881, 40.560867, 36.764854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094452, 40.675438, 36.554878>,  <30.127071, 40.866386, 36.204914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094452, 40.675438, 36.554878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088432, 0.877835, 0.470729,
		-0.992738, -0.038982, -0.113803,
		-0.081551, -0.477375, 0.874907,
		30.069986, 40.532227, 36.817352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553473, 41.182182, 36.508495>,  <30.127071, 40.866386, 36.204914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553473, 41.182182, 36.508495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791243, 41.025837, 36.789604>,  <29.933905, 40.932030, 36.958267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791243, 41.025837, 36.789604>,  <29.553473, 41.182182, 36.508495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791243, 41.025837, 36.789604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021206, 0.881244, 0.472186,
		-0.803870, -0.265777, 0.532124,
		0.594427, -0.390860, 0.702770,
		29.969570, 40.908581, 37.000435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548191, 41.687084, 37.006824>,  <29.553473, 41.182182, 36.508495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548191, 41.687084, 37.006824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865261, 41.470348, 37.118595>,  <30.055504, 41.340309, 37.185658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865261, 41.470348, 37.118595>,  <29.548191, 41.687084, 37.006824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865261, 41.470348, 37.118595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296187, 0.742894, 0.600318,
		-0.532858, -0.393094, 0.749359,
		0.792676, -0.541835, 0.279428,
		30.103064, 41.307796, 37.202423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626381, 41.673462, 37.711365>,  <29.548191, 41.687084, 37.006824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626381, 41.673462, 37.711365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001116, 41.574043, 37.612930>,  <30.225956, 41.514393, 37.553867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001116, 41.574043, 37.612930>,  <29.626381, 41.673462, 37.711365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001116, 41.574043, 37.612930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349222, 0.625465, 0.697737,
		-0.019502, -0.739606, 0.672758,
		0.936837, -0.248549, -0.246089,
		30.282167, 41.499477, 37.539104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561411, 41.364006, 38.458912>,  <29.626381, 41.673462, 37.711365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561411, 41.364006, 38.458912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403307, 41.005577, 38.378086>,  <29.308445, 40.790520, 38.329590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403307, 41.005577, 38.378086>,  <29.561411, 41.364006, 38.458912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403307, 41.005577, 38.378086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873061, 0.298096, 0.385881,
		-0.285541, 0.328938, -0.900148,
		-0.395261, -0.896069, -0.202065,
		29.284729, 40.736755, 38.317467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700071, 41.235863, 39.201954>,  <29.561411, 41.364006, 38.458912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700071, 41.235863, 39.201954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671318, 40.988575, 39.515038>,  <29.654066, 40.840202, 39.702888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671318, 40.988575, 39.515038>,  <29.700071, 41.235863, 39.201954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671318, 40.988575, 39.515038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381900, 0.707882, 0.594185,
		-0.921404, 0.341630, 0.185212,
		-0.071883, -0.618217, 0.782714,
		29.649754, 40.803108, 39.749851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754866, 40.575001, 38.851879>,  <29.700071, 41.235863, 39.201954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754866, 40.575001, 38.851879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898476, 40.798561, 38.552883>,  <29.984642, 40.932697, 38.373486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898476, 40.798561, 38.552883>,  <29.754866, 40.575001, 38.851879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898476, 40.798561, 38.552883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932810, -0.241561, 0.267420,
		-0.031104, -0.793274, -0.608070,
		0.359023, 0.558896, -0.747487,
		30.006182, 40.966228, 38.328636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279074, 40.203411, 38.529572>,  <29.754866, 40.575001, 38.851879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279074, 40.203411, 38.529572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357685, 40.579506, 38.418335>,  <30.404852, 40.805161, 38.351593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357685, 40.579506, 38.418335>,  <30.279074, 40.203411, 38.529572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357685, 40.579506, 38.418335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960388, -0.127444, 0.247814,
		0.197562, -0.315781, -0.928036,
		0.196528, 0.940234, -0.278094,
		30.416643, 40.861576, 38.334908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960035, 40.146881, 38.779358>,  <30.279074, 40.203411, 38.529572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960035, 40.146881, 38.779358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272030, 40.203262, 39.023243>,  <31.459227, 40.237091, 39.169575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272030, 40.203262, 39.023243>,  <30.960035, 40.146881, 38.779358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272030, 40.203262, 39.023243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330504, -0.920124, -0.210091,
		0.531403, 0.365382, -0.764269,
		0.779986, 0.140951, 0.609717,
		31.506025, 40.245548, 39.206158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531061, 39.712391, 38.489437>,  <30.960035, 40.146881, 38.779358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531061, 39.712391, 38.489437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595705, 39.758785, 38.881443>,  <31.634491, 39.786621, 39.116646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595705, 39.758785, 38.881443>,  <31.531061, 39.712391, 38.489437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595705, 39.758785, 38.881443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250781, -0.965296, 0.072884,
		0.954459, 0.233990, -0.185088,
		0.161610, 0.115981, 0.980015,
		31.644188, 39.793579, 39.175449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227627, 39.401817, 38.713703>,  <31.531061, 39.712391, 38.489437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227627, 39.401817, 38.713703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950861, 39.380905, 39.001740>,  <31.784801, 39.368359, 39.174561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950861, 39.380905, 39.001740>,  <32.227627, 39.401817, 38.713703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950861, 39.380905, 39.001740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084876, -0.996349, 0.009221,
		0.716976, 0.067499, 0.693823,
		-0.691912, -0.052277, 0.720087,
		31.743288, 39.365223, 39.217766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475952, 38.902668, 39.173172>,  <32.227627, 39.401817, 38.713703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475952, 38.902668, 39.173172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076588, 38.892593, 39.193314>,  <31.836967, 38.886547, 39.205399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076588, 38.892593, 39.193314>,  <32.475952, 38.902668, 39.173172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076588, 38.892593, 39.193314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025960, -0.999554, 0.014758,
		0.049957, 0.016042, 0.998623,
		-0.998414, -0.025187, 0.050351,
		31.777063, 38.885036, 39.208420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349045, 38.191402, 39.407585>,  <32.475952, 38.902668, 39.173172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349045, 38.191402, 39.407585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987665, 38.335590, 39.314770>,  <31.770838, 38.422104, 39.259079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987665, 38.335590, 39.314770>,  <32.349045, 38.191402, 39.407585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987665, 38.335590, 39.314770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326662, -0.929378, -0.171896,
		-0.277615, -0.079501, 0.957397,
		-0.903450, 0.360466, -0.232039,
		31.716631, 38.443729, 39.245159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876337, 37.838856, 39.815147>,  <32.349045, 38.191402, 39.407585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876337, 37.838856, 39.815147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677265, 37.978790, 39.497677>,  <31.557821, 38.062752, 39.307194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677265, 37.978790, 39.497677>,  <31.876337, 37.838856, 39.815147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677265, 37.978790, 39.497677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449967, -0.886422, -0.108565,
		-0.741515, 0.303098, 0.598571,
		-0.497681, 0.349840, -0.793679,
		31.527962, 38.083740, 39.259575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234074, 37.434486, 39.815132>,  <31.876337, 37.838856, 39.815147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234074, 37.434486, 39.815132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263006, 37.570690, 39.440151>,  <31.280365, 37.652412, 39.215160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263006, 37.570690, 39.440151>,  <31.234074, 37.434486, 39.815132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263006, 37.570690, 39.440151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092394, -0.933587, -0.346235,
		-0.993092, 0.111658, -0.036066,
		0.072330, 0.340511, -0.937454,
		31.284706, 37.672844, 39.158916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738642, 37.105637, 39.502460>,  <31.234074, 37.434486, 39.815132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738642, 37.105637, 39.502460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972824, 37.207378, 39.194553>,  <31.113333, 37.268421, 39.009808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972824, 37.207378, 39.194553>,  <30.738642, 37.105637, 39.502460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972824, 37.207378, 39.194553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192718, -0.878627, -0.436891,
		-0.787466, 0.404129, -0.465379,
		0.585455, 0.254350, -0.769772,
		31.148460, 37.283684, 38.963623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394663, 36.853107, 38.883358>,  <30.738642, 37.105637, 39.502460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394663, 36.853107, 38.883358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769180, 36.896011, 38.749580>,  <30.993891, 36.921753, 38.669315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769180, 36.896011, 38.749580>,  <30.394663, 36.853107, 38.883358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769180, 36.896011, 38.749580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090273, -0.846748, -0.524279,
		-0.339418, 0.521071, -0.783122,
		0.936294, 0.107255, -0.334440,
		31.050068, 36.928188, 38.649250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205544, 36.602154, 38.319481>,  <30.394663, 36.853107, 38.883358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205544, 36.602154, 38.319481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602293, 36.592758, 38.369503>,  <30.840342, 36.587120, 38.399517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602293, 36.592758, 38.369503>,  <30.205544, 36.602154, 38.319481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602293, 36.592758, 38.369503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049231, -0.835440, -0.547373,
		0.117332, 0.549080, -0.827493,
		0.991872, -0.023486, 0.125055,
		30.899855, 36.585712, 38.407021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521450, 36.596436, 37.627651>,  <30.205544, 36.602154, 38.319481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521450, 36.596436, 37.627651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804298, 36.414467, 37.844181>,  <30.974007, 36.305286, 37.974098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804298, 36.414467, 37.844181>,  <30.521450, 36.596436, 37.627651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804298, 36.414467, 37.844181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155704, -0.646592, -0.746776,
		0.689737, 0.612347, -0.386386,
		0.707121, -0.454917, 0.541323,
		31.016434, 36.277992, 38.006577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134737, 36.512859, 37.208961>,  <30.521450, 36.596436, 37.627651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134737, 36.512859, 37.208961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162663, 36.244801, 37.504536>,  <31.179419, 36.083965, 37.681881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162663, 36.244801, 37.504536>,  <31.134737, 36.512859, 37.208961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162663, 36.244801, 37.504536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225175, -0.711042, -0.666120,
		0.971814, 0.212895, 0.101260,
		0.069813, -0.670146, 0.738939,
		31.183607, 36.043758, 37.726219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719913, 36.192444, 37.025246>,  <31.134737, 36.512859, 37.208961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719913, 36.192444, 37.025246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541252, 35.935204, 37.274059>,  <31.434055, 35.780861, 37.423347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541252, 35.935204, 37.274059>,  <31.719913, 36.192444, 37.025246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541252, 35.935204, 37.274059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277497, -0.760524, -0.587024,
		0.850585, -0.089586, 0.518151,
		-0.446655, -0.643099, 0.622031,
		31.407255, 35.742275, 37.460667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065834, 35.557945, 37.001198>,  <31.719913, 36.192444, 37.025246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065834, 35.557945, 37.001198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734161, 35.423927, 37.180176>,  <31.535158, 35.343517, 37.287563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734161, 35.423927, 37.180176>,  <32.065834, 35.557945, 37.001198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734161, 35.423927, 37.180176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030113, -0.772524, -0.634271,
		0.558173, -0.539398, 0.630471,
		-0.829178, -0.335047, 0.447445,
		31.485409, 35.323414, 37.314407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186962, 34.856796, 37.100437>,  <32.065834, 35.557945, 37.001198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186962, 34.856796, 37.100437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792337, 34.922081, 37.097431>,  <31.555563, 34.961250, 37.095627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792337, 34.922081, 37.097431>,  <32.186962, 34.856796, 37.100437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792337, 34.922081, 37.097431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133361, -0.830983, -0.540076,
		-0.094391, -0.531816, 0.841583,
		-0.986562, 0.163213, -0.007513,
		31.496368, 34.971046, 37.095177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015133, 34.227390, 37.090466>,  <32.186962, 34.856796, 37.100437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015133, 34.227390, 37.090466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690580, 34.434982, 36.982895>,  <31.495850, 34.559536, 36.918350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690580, 34.434982, 36.982895>,  <32.015133, 34.227390, 37.090466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690580, 34.434982, 36.982895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360527, -0.806489, -0.468611,
		-0.460087, -0.283266, 0.841475,
		-0.811381, 0.518976, -0.268930,
		31.447166, 34.590675, 36.902214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438217, 33.773472, 37.330170>,  <32.015133, 34.227390, 37.090466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438217, 33.773472, 37.330170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281277, 34.017559, 37.054867>,  <31.187113, 34.164013, 36.889687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281277, 34.017559, 37.054867>,  <31.438217, 33.773472, 37.330170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281277, 34.017559, 37.054867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454562, -0.779128, -0.431663,
		-0.799649, 0.143493, 0.583071,
		-0.392346, 0.610220, -0.688256,
		31.163572, 34.200626, 36.848392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749340, 33.589828, 37.198029>,  <31.438217, 33.773472, 37.330170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749340, 33.589828, 37.198029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843218, 33.760708, 36.848763>,  <30.899546, 33.863235, 36.639202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843218, 33.760708, 36.848763>,  <30.749340, 33.589828, 37.198029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843218, 33.760708, 36.848763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545681, -0.685471, -0.482040,
		-0.804456, 0.589604, 0.072236,
		0.234697, 0.427198, -0.873166,
		30.913628, 33.888866, 36.586811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102470, 33.609417, 36.786522>,  <30.749340, 33.589828, 37.198029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102470, 33.609417, 36.786522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397633, 33.657753, 36.520924>,  <30.574730, 33.686756, 36.361565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397633, 33.657753, 36.520924>,  <30.102470, 33.609417, 36.786522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397633, 33.657753, 36.520924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424032, -0.682403, -0.595419,
		-0.525067, 0.720919, -0.452306,
		0.737903, 0.120842, -0.664000,
		30.619003, 33.694004, 36.321724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805325, 33.820393, 36.116947>,  <30.102470, 33.609417, 36.786522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805325, 33.820393, 36.116947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163101, 33.699600, 35.985020>,  <30.377768, 33.627125, 35.905865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163101, 33.699600, 35.985020>,  <29.805325, 33.820393, 36.116947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163101, 33.699600, 35.985020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446029, -0.549498, -0.706477,
		0.032107, 0.779012, -0.626187,
		0.894442, -0.301980, -0.329819,
		30.431435, 33.609005, 35.886074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867340, 34.064770, 35.409081>,  <29.805325, 33.820393, 36.116947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867340, 34.064770, 35.409081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109983, 33.755554, 35.483315>,  <30.255569, 33.570026, 35.527855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109983, 33.755554, 35.483315>,  <29.867340, 34.064770, 35.409081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109983, 33.755554, 35.483315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283825, -0.428644, -0.857734,
		0.742610, 0.467634, -0.479426,
		0.606609, -0.773035, 0.185589,
		30.291965, 33.523643, 35.538990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136539, 34.026207, 34.742783>,  <29.867340, 34.064770, 35.409081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136539, 34.026207, 34.742783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220184, 33.683197, 34.930790>,  <30.270372, 33.477390, 35.043594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220184, 33.683197, 34.930790>,  <30.136539, 34.026207, 34.742783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220184, 33.683197, 34.930790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073791, -0.493113, -0.866830,
		0.975103, 0.146583, -0.166394,
		0.209114, -0.857527, 0.470020,
		30.282919, 33.425938, 35.071796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644751, 33.741428, 34.393795>,  <30.136539, 34.026207, 34.742783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644751, 33.741428, 34.393795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525017, 33.412987, 34.588192>,  <30.453176, 33.215923, 34.704830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525017, 33.412987, 34.588192>,  <30.644751, 33.741428, 34.393795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525017, 33.412987, 34.588192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245357, -0.558457, -0.792418,
		0.922062, -0.117957, 0.368629,
		-0.299334, -0.821104, 0.485990,
		30.435217, 33.166656, 34.733990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970087, 33.149979, 34.069077>,  <30.644751, 33.741428, 34.393795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970087, 33.149979, 34.069077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693779, 32.959118, 34.286392>,  <30.527994, 32.844601, 34.416782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693779, 32.959118, 34.286392>,  <30.970087, 33.149979, 34.069077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693779, 32.959118, 34.286392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046382, -0.720575, -0.691824,
		0.721586, -0.503090, 0.475620,
		-0.690770, -0.477150, 0.543291,
		30.486547, 32.815971, 34.449379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116791, 32.417171, 34.071236>,  <30.970087, 33.149979, 34.069077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116791, 32.417171, 34.071236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723269, 32.448322, 34.135811>,  <30.487156, 32.467014, 34.174557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723269, 32.448322, 34.135811>,  <31.116791, 32.417171, 34.071236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723269, 32.448322, 34.135811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150840, -0.846265, -0.510963,
		0.096828, -0.527039, 0.844307,
		-0.983805, 0.077880, 0.161441,
		30.428127, 32.471687, 34.184242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839100, 32.071255, 34.171013>,  <31.116791, 32.417171, 34.071236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839100, 32.071255, 34.171013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143764, 31.812189, 34.162960>,  <32.326565, 31.656752, 34.158127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143764, 31.812189, 34.162960>,  <31.839100, 32.071255, 34.171013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143764, 31.812189, 34.162960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257757, 0.274327, 0.926448,
		-0.594500, -0.710832, 0.375884,
		0.761664, -0.647660, -0.020135,
		32.372265, 31.617891, 34.156921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843712, 31.627632, 34.759369>,  <31.839100, 32.071255, 34.171013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843712, 31.627632, 34.759369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219055, 31.666113, 34.626568>,  <32.444260, 31.689201, 34.546886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219055, 31.666113, 34.626568>,  <31.843712, 31.627632, 34.759369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219055, 31.666113, 34.626568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301880, 0.239792, 0.922696,
		0.168376, -0.966046, 0.195970,
		0.938359, 0.096201, -0.332005,
		32.500565, 31.694973, 34.526966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428646, 31.232634, 35.051628>,  <31.843712, 31.627632, 34.759369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428646, 31.232634, 35.051628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571659, 31.581450, 34.917931>,  <32.657467, 31.790739, 34.837711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571659, 31.581450, 34.917931>,  <32.428646, 31.232634, 35.051628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571659, 31.581450, 34.917931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210832, 0.273293, 0.938542,
		0.909790, -0.406031, -0.086142,
		0.357535, 0.872038, -0.334243,
		32.678921, 31.843061, 34.817657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158005, 31.290926, 35.211414>,  <32.428646, 31.232634, 35.051628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158005, 31.290926, 35.211414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928463, 31.618433, 35.218426>,  <32.790737, 31.814938, 35.222633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928463, 31.618433, 35.218426>,  <33.158005, 31.290926, 35.211414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928463, 31.618433, 35.218426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253044, 0.156920, 0.954644,
		0.778881, 0.552265, -0.297234,
		-0.573859, 0.818767, 0.017526,
		32.756306, 31.864063, 35.223682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521675, 31.828859, 35.430496>,  <33.158005, 31.290926, 35.211414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521675, 31.828859, 35.430496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140934, 31.881893, 35.541061>,  <32.912491, 31.913713, 35.607399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140934, 31.881893, 35.541061>,  <33.521675, 31.828859, 35.430496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140934, 31.881893, 35.541061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300476, 0.224647, 0.926956,
		0.060804, 0.965378, -0.253668,
		-0.951849, 0.132584, 0.276413,
		32.855381, 31.921669, 35.623985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383152, 32.470894, 35.620922>,  <33.521675, 31.828859, 35.430496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383152, 32.470894, 35.620922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157349, 32.208885, 35.821835>,  <33.021866, 32.051682, 35.942383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157349, 32.208885, 35.821835>,  <33.383152, 32.470894, 35.620922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157349, 32.208885, 35.821835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559580, 0.143641, 0.816233,
		-0.606796, 0.741834, 0.285449,
		-0.564507, -0.655019, 0.502277,
		32.987995, 32.012379, 35.972519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150230, 32.844631, 36.241943>,  <33.383152, 32.470894, 35.620922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150230, 32.844631, 36.241943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178581, 32.447132, 36.276443>,  <33.195591, 32.208633, 36.297142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178581, 32.447132, 36.276443>,  <33.150230, 32.844631, 36.241943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178581, 32.447132, 36.276443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503393, 0.110279, 0.856991,
		-0.861146, -0.017322, 0.508063,
		0.070873, -0.993750, 0.086246,
		33.199844, 32.149006, 36.302319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741970, 32.671665, 36.898621>,  <33.150230, 32.844631, 36.241943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741970, 32.671665, 36.898621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018272, 32.396957, 36.808105>,  <33.184052, 32.232132, 36.753796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018272, 32.396957, 36.808105>,  <32.741970, 32.671665, 36.898621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018272, 32.396957, 36.808105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367614, 0.064050, 0.927770,
		-0.622673, -0.724045, 0.296710,
		0.690751, -0.686773, -0.226287,
		33.225498, 32.190926, 36.740219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665615, 32.201138, 37.426411>,  <32.741970, 32.671665, 36.898621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665615, 32.201138, 37.426411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032902, 32.132946, 37.283405>,  <33.253273, 32.092030, 37.197601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032902, 32.132946, 37.283405>,  <32.665615, 32.201138, 37.426411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032902, 32.132946, 37.283405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387332, 0.197869, 0.900457,
		-0.082771, -0.965290, 0.247720,
		0.918217, -0.170481, -0.357510,
		33.308369, 32.081802, 37.176151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913223, 31.612623, 37.818993>,  <32.665615, 32.201138, 37.426411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913223, 31.612623, 37.818993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242691, 31.794334, 37.683228>,  <33.440372, 31.903360, 37.601768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242691, 31.794334, 37.683228>,  <32.913223, 31.612623, 37.818993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242691, 31.794334, 37.683228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364391, 0.034609, 0.930603,
		0.434498, -0.890188, -0.137028,
		0.823669, 0.454277, -0.339414,
		33.489792, 31.930618, 37.581402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455177, 31.300732, 38.107117>,  <32.913223, 31.612623, 37.818993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455177, 31.300732, 38.107117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615597, 31.649973, 37.996231>,  <33.711849, 31.859518, 37.929699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615597, 31.649973, 37.996231>,  <33.455177, 31.300732, 38.107117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615597, 31.649973, 37.996231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438763, 0.082567, 0.894801,
		0.804145, -0.480489, -0.349973,
		0.401046, 0.873105, -0.277216,
		33.735912, 31.911905, 37.913067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033699, 31.405975, 38.563038>,  <33.455177, 31.300732, 38.107117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033699, 31.405975, 38.563038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992931, 31.777550, 38.420666>,  <33.968472, 32.000496, 38.335243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992931, 31.777550, 38.420666>,  <34.033699, 31.405975, 38.563038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992931, 31.777550, 38.420666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355944, 0.368165, 0.858929,
		0.928932, -0.039148, -0.368174,
		-0.101924, 0.928936, -0.355935,
		33.962353, 32.056229, 38.313885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604156, 31.707273, 38.713150>,  <34.033699, 31.405975, 38.563038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604156, 31.707273, 38.713150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337044, 32.002491, 38.674454>,  <34.176777, 32.179623, 38.651234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337044, 32.002491, 38.674454>,  <34.604156, 31.707273, 38.713150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337044, 32.002491, 38.674454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206916, 0.308903, 0.928313,
		0.715020, 0.599892, -0.358992,
		-0.667782, 0.738043, -0.096745,
		34.136711, 32.223904, 38.645432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882004, 32.232910, 39.076031>,  <34.604156, 31.707273, 38.713150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882004, 32.232910, 39.076031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506092, 32.365688, 39.043468>,  <34.280544, 32.445354, 39.023933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506092, 32.365688, 39.043468>,  <34.882004, 32.232910, 39.076031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506092, 32.365688, 39.043468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042395, 0.349552, 0.935957,
		0.339139, 0.876143, -0.342575,
		-0.939781, 0.331943, -0.081403,
		34.224159, 32.465271, 39.019047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853523, 32.904903, 39.237373>,  <34.882004, 32.232910, 39.076031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853523, 32.904903, 39.237373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473053, 32.798618, 39.300179>,  <34.244770, 32.734848, 39.337860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473053, 32.798618, 39.300179>,  <34.853523, 32.904903, 39.237373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473053, 32.798618, 39.300179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056014, 0.351661, 0.934450,
		-0.303514, 0.897624, -0.319609,
		-0.951179, -0.265717, 0.157013,
		34.187698, 32.718903, 39.347282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476955, 33.427002, 39.591057>,  <34.853523, 32.904903, 39.237373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476955, 33.427002, 39.591057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269958, 33.096432, 39.679798>,  <34.145760, 32.898090, 39.733044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269958, 33.096432, 39.679798>,  <34.476955, 33.427002, 39.591057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269958, 33.096432, 39.679798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032748, 0.278202, 0.959964,
		-0.855061, 0.489509, -0.171031,
		-0.517492, -0.826429, 0.221850,
		34.114712, 32.848503, 39.746353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166256, 33.564011, 40.275139>,  <34.476955, 33.427002, 39.591057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166256, 33.564011, 40.275139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078678, 33.175934, 40.233585>,  <34.026131, 32.943089, 40.208652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078678, 33.175934, 40.233585>,  <34.166256, 33.564011, 40.275139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078678, 33.175934, 40.233585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072558, -0.089987, 0.993296,
		-0.973037, 0.225010, -0.050693,
		-0.218940, -0.970192, -0.103887,
		34.012997, 32.884876, 40.202419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544498, 33.459114, 40.592632>,  <34.166256, 33.564011, 40.275139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544498, 33.459114, 40.592632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723949, 33.101673, 40.586884>,  <33.831619, 32.887207, 40.583435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723949, 33.101673, 40.586884>,  <33.544498, 33.459114, 40.592632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723949, 33.101673, 40.586884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118496, -0.075411, 0.990087,
		-0.885826, -0.442482, -0.139720,
		0.448632, -0.893601, -0.014369,
		33.858540, 32.833591, 40.582573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118656, 32.837311, 40.953823>,  <33.544498, 33.459114, 40.592632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118656, 32.837311, 40.953823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484138, 32.675476, 40.938522>,  <33.703426, 32.578377, 40.929340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484138, 32.675476, 40.938522>,  <33.118656, 32.837311, 40.953823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484138, 32.675476, 40.938522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143680, -0.409654, 0.900855,
		-0.380136, -0.817617, -0.432432,
		0.913703, -0.404580, -0.038249,
		33.758247, 32.554100, 40.927048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065273, 32.121906, 41.114937>,  <33.118656, 32.837311, 40.953823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065273, 32.121906, 41.114937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451023, 32.202637, 41.183350>,  <33.682472, 32.251076, 41.224396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451023, 32.202637, 41.183350>,  <33.065273, 32.121906, 41.114937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451023, 32.202637, 41.183350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025160, -0.573597, 0.818751,
		0.263344, -0.793885, -0.548084,
		0.964374, 0.201823, 0.171027,
		33.740334, 32.263184, 41.234657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400116, 31.518147, 41.175499>,  <33.065273, 32.121906, 41.114937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400116, 31.518147, 41.175499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624420, 31.795263, 41.356869>,  <33.759003, 31.961533, 41.465691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624420, 31.795263, 41.356869>,  <33.400116, 31.518147, 41.175499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624420, 31.795263, 41.356869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025439, -0.532949, 0.845765,
		0.827589, -0.485803, -0.281231,
		0.560757, 0.692792, 0.453421,
		33.792648, 32.003101, 41.492893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872211, 31.169271, 41.544456>,  <33.400116, 31.518147, 41.175499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872211, 31.169271, 41.544456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838566, 31.526632, 41.720982>,  <33.818378, 31.741049, 41.826897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838566, 31.526632, 41.720982>,  <33.872211, 31.169271, 41.544456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838566, 31.526632, 41.720982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013686, -0.443873, 0.895985,
		0.996362, 0.069326, 0.049564,
		-0.084115, 0.893404, 0.441310,
		33.813332, 31.794653, 41.853374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346859, 31.173077, 42.122448>,  <33.872211, 31.169271, 41.544456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346859, 31.173077, 42.122448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087837, 31.466394, 42.205345>,  <33.932423, 31.642385, 42.255085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087837, 31.466394, 42.205345>,  <34.346859, 31.173077, 42.122448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087837, 31.466394, 42.205345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052761, -0.314461, 0.947803,
		0.760189, 0.602821, 0.242320,
		-0.647556, 0.733295, 0.207245,
		33.893570, 31.686382, 42.267517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540531, 31.436602, 42.829784>,  <34.346859, 31.173077, 42.122448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540531, 31.436602, 42.829784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169655, 31.577982, 42.780159>,  <33.947128, 31.662811, 42.750385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169655, 31.577982, 42.780159>,  <34.540531, 31.436602, 42.829784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169655, 31.577982, 42.780159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205006, -0.201601, 0.957773,
		0.313517, 0.913470, 0.259383,
		-0.927189, 0.353453, -0.124061,
		33.891499, 31.684017, 42.742939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502537, 31.872013, 43.371078>,  <34.540531, 31.436602, 42.829784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502537, 31.872013, 43.371078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132923, 31.775900, 43.252132>,  <33.911156, 31.718233, 43.180767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132923, 31.775900, 43.252132>,  <34.502537, 31.872013, 43.371078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132923, 31.775900, 43.252132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225684, -0.284984, 0.931585,
		-0.308586, 0.927927, 0.209107,
		-0.924035, -0.240282, -0.297360,
		33.855713, 31.703815, 43.162926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055901, 32.008663, 44.005108>,  <34.502537, 31.872013, 43.371078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055901, 32.008663, 44.005108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838104, 31.767927, 43.771420>,  <33.707428, 31.623486, 43.631207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838104, 31.767927, 43.771420>,  <34.055901, 32.008663, 44.005108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838104, 31.767927, 43.771420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464770, -0.363333, 0.807451,
		-0.698226, 0.711179, -0.081888,
		-0.544490, -0.601843, -0.584223,
		33.674759, 31.587374, 43.596153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338432, 32.080135, 44.234505>,  <34.055901, 32.008663, 44.005108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338432, 32.080135, 44.234505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373299, 31.727951, 44.048088>,  <33.394218, 31.516642, 43.936237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373299, 31.727951, 44.048088>,  <33.338432, 32.080135, 44.234505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373299, 31.727951, 44.048088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527131, -0.437730, 0.728372,
		-0.845302, 0.182173, -0.502273,
		0.087170, -0.880458, -0.466042,
		33.399448, 31.463814, 43.908276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770065, 31.836027, 44.304260>,  <33.338432, 32.080135, 44.234505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770065, 31.836027, 44.304260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965519, 31.499292, 44.212570>,  <33.082790, 31.297251, 44.157555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965519, 31.499292, 44.212570>,  <32.770065, 31.836027, 44.304260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965519, 31.499292, 44.212570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423456, -0.458535, 0.781301,
		-0.762836, -0.284704, -0.580538,
		0.488637, -0.841837, -0.229228,
		33.112110, 31.246742, 44.143803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241344, 31.393999, 44.611496>,  <32.770065, 31.836027, 44.304260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241344, 31.393999, 44.611496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595570, 31.213045, 44.569302>,  <32.808105, 31.104473, 44.543983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595570, 31.213045, 44.569302>,  <32.241344, 31.393999, 44.611496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595570, 31.213045, 44.569302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146097, -0.486810, 0.861204,
		-0.440946, -0.747239, -0.497192,
		0.885563, -0.452383, -0.105488,
		32.861237, 31.077330, 44.537655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168278, 30.672161, 44.797318>,  <32.241344, 31.393999, 44.611496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168278, 30.672161, 44.797318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560738, 30.738848, 44.836422>,  <32.796211, 30.778860, 44.859882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560738, 30.738848, 44.836422>,  <32.168278, 30.672161, 44.797318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560738, 30.738848, 44.836422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006178, -0.478509, 0.878061,
		0.193166, -0.862110, -0.468458,
		0.981147, 0.166717, 0.097758,
		32.855083, 30.788862, 44.865749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354790, 30.097393, 45.087677>,  <32.168278, 30.672161, 44.797318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354790, 30.097393, 45.087677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656960, 30.344461, 45.175152>,  <32.838261, 30.492702, 45.227638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656960, 30.344461, 45.175152>,  <32.354790, 30.097393, 45.087677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656960, 30.344461, 45.175152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004375, -0.338496, 0.940958,
		0.655226, -0.709862, -0.258409,
		0.755420, 0.617671, 0.218686,
		32.883587, 30.529762, 45.240757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905560, 29.686222, 45.332821>,  <32.354790, 30.097393, 45.087677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905560, 29.686222, 45.332821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009552, 30.047291, 45.469990>,  <33.071949, 30.263931, 45.552292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009552, 30.047291, 45.469990>,  <32.905560, 29.686222, 45.332821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009552, 30.047291, 45.469990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124458, -0.383494, 0.915119,
		0.957560, -0.195234, -0.212045,
		0.259980, 0.902672, 0.342920,
		33.087547, 30.318092, 45.572865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424156, 29.548954, 45.723896>,  <32.905560, 29.686222, 45.332821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424156, 29.548954, 45.723896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275272, 29.898380, 45.849339>,  <33.185944, 30.108036, 45.924606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275272, 29.898380, 45.849339>,  <33.424156, 29.548954, 45.723896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275272, 29.898380, 45.849339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169669, -0.268153, 0.948318,
		0.912511, 0.406178, -0.048409,
		-0.372205, 0.873564, 0.313608,
		33.163612, 30.160450, 45.943420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839020, 29.853077, 46.163601>,  <33.424156, 29.548954, 45.723896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839020, 29.853077, 46.163601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487240, 30.021339, 46.252701>,  <33.276173, 30.122297, 46.306160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487240, 30.021339, 46.252701>,  <33.839020, 29.853077, 46.163601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487240, 30.021339, 46.252701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131381, -0.235263, 0.963011,
		0.457502, 0.876184, 0.151635,
		-0.879449, 0.420658, 0.222747,
		33.223404, 30.147537, 46.319527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056202, 30.312445, 46.680794>,  <33.839020, 29.853077, 46.163601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056202, 30.312445, 46.680794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658649, 30.269720, 46.692066>,  <33.420116, 30.244085, 46.698830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658649, 30.269720, 46.692066>,  <34.056202, 30.312445, 46.680794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658649, 30.269720, 46.692066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039276, -0.103249, 0.993880,
		-0.103249, 0.988904, 0.106812,
		-0.993880, -0.106812, 0.028180,
		33.360485, 30.237677, 46.700520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780682, 30.847775, 47.199333>,  <34.056202, 30.312445, 46.680794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780682, 30.847775, 47.199333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526402, 30.540697, 47.167004>,  <33.373833, 30.356451, 47.147606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526402, 30.540697, 47.167004>,  <33.780682, 30.847775, 47.199333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526402, 30.540697, 47.167004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027762, -0.127372, 0.991467,
		-0.771437, 0.628032, 0.102283,
		-0.635700, -0.767693, -0.080824,
		33.335690, 30.310389, 47.142757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327477, 30.957411, 47.709980>,  <33.780682, 30.847775, 47.199333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327477, 30.957411, 47.709980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263447, 30.568295, 47.642986>,  <33.225029, 30.334824, 47.602791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263447, 30.568295, 47.642986>,  <33.327477, 30.957411, 47.709980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263447, 30.568295, 47.642986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058164, -0.178673, 0.982188,
		-0.985390, 0.147479, 0.085182,
		-0.160072, -0.972793, -0.167484,
		33.215424, 30.276457, 47.592743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814079, 30.701319, 48.189430>,  <33.327477, 30.957411, 47.709980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814079, 30.701319, 48.189430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968727, 30.350574, 48.075138>,  <33.061516, 30.140129, 48.006561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968727, 30.350574, 48.075138>,  <32.814079, 30.701319, 48.189430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968727, 30.350574, 48.075138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082711, -0.341545, 0.936219,
		-0.918522, -0.338328, -0.204575,
		0.386621, -0.876859, -0.285733,
		33.084713, 30.087517, 47.989418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450016, 30.319790, 48.684746>,  <32.814079, 30.701319, 48.189430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450016, 30.319790, 48.684746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745789, 30.084372, 48.553993>,  <32.923252, 29.943121, 48.475544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745789, 30.084372, 48.553993>,  <32.450016, 30.319790, 48.684746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745789, 30.084372, 48.553993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056596, -0.429479, 0.901302,
		-0.670846, -0.684953, -0.284262,
		0.739434, -0.588547, -0.326880,
		32.967617, 29.907808, 48.455929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187298, 29.711555, 48.797619>,  <32.450016, 30.319790, 48.684746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187298, 29.711555, 48.797619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586384, 29.734785, 48.811462>,  <32.825836, 29.748722, 48.819771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586384, 29.734785, 48.811462>,  <32.187298, 29.711555, 48.797619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586384, 29.734785, 48.811462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005452, -0.441211, 0.897387,
		0.067387, -0.895522, -0.439885,
		0.997712, 0.058074, 0.034614,
		32.885696, 29.752207, 48.821846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456455, 29.059923, 49.017056>,  <32.187298, 29.711555, 48.797619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456455, 29.059923, 49.017056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752544, 29.317917, 49.093014>,  <32.930199, 29.472713, 49.138588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752544, 29.317917, 49.093014>,  <32.456455, 29.059923, 49.017056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752544, 29.317917, 49.093014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174584, -0.457127, 0.872098,
		0.649298, -0.612395, -0.450981,
		0.740224, 0.644986, 0.189898,
		32.974613, 29.511412, 49.149982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056374, 28.777967, 49.270290>,  <32.456455, 29.059923, 49.017056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056374, 28.777967, 49.270290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110462, 29.149811, 49.407429>,  <33.142914, 29.372917, 49.489712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110462, 29.149811, 49.407429>,  <33.056374, 28.777967, 49.270290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110462, 29.149811, 49.407429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126723, -0.359405, 0.924537,
		0.982678, -0.081569, -0.166401,
		0.135219, 0.929610, 0.342843,
		33.151028, 29.428694, 49.510281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473408, 28.619635, 49.890903>,  <33.056374, 28.777967, 49.270290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473408, 28.619635, 49.890903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347759, 28.998474, 49.917221>,  <33.272369, 29.225779, 49.933014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347759, 28.998474, 49.917221>,  <33.473408, 28.619635, 49.890903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347759, 28.998474, 49.917221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077074, -0.094516, 0.992535,
		0.946249, 0.306706, 0.102686,
		-0.314122, 0.947100, 0.065797,
		33.253521, 29.282604, 49.936958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888481, 28.934996, 50.376175>,  <33.473408, 28.619635, 49.890903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888481, 28.934996, 50.376175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536064, 29.123901, 50.365429>,  <33.324612, 29.237246, 50.358982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536064, 29.123901, 50.365429>,  <33.888481, 28.934996, 50.376175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536064, 29.123901, 50.365429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059663, -0.054600, 0.996724,
		0.469251, 0.879764, 0.076282,
		-0.881047, 0.472265, -0.026869,
		33.271751, 29.265581, 50.357368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912251, 29.219255, 50.976803>,  <33.888481, 28.934996, 50.376175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912251, 29.219255, 50.976803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528366, 29.287138, 50.887215>,  <33.298035, 29.327868, 50.833462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528366, 29.287138, 50.887215>,  <33.912251, 29.219255, 50.976803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528366, 29.287138, 50.887215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243262, -0.102788, 0.964499,
		0.140659, 0.980120, 0.139929,
		-0.959708, 0.169705, -0.223968,
		33.240456, 29.338049, 50.820023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662884, 29.784422, 51.392853>,  <33.912251, 29.219255, 50.976803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662884, 29.784422, 51.392853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356182, 29.555466, 51.276608>,  <33.172161, 29.418091, 51.206860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356182, 29.555466, 51.276608>,  <33.662884, 29.784422, 51.392853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356182, 29.555466, 51.276608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277568, -0.112589, 0.954086,
		-0.578832, 0.812213, -0.072550,
		-0.766753, -0.572392, -0.290614,
		33.126156, 29.383747, 51.189423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164104, 29.861286, 51.966110>,  <33.662884, 29.784422, 51.392853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164104, 29.861286, 51.966110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033791, 29.563383, 51.733147>,  <32.955601, 29.384642, 51.593369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033791, 29.563383, 51.733147>,  <33.164104, 29.861286, 51.966110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033791, 29.563383, 51.733147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396358, -0.451683, 0.799302,
		-0.858350, 0.491243, -0.148039,
		-0.325785, -0.744757, -0.582410,
		32.936054, 29.339956, 51.558422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493671, 29.761784, 52.311142>,  <33.164104, 29.861286, 51.966110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493671, 29.761784, 52.311142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653210, 29.462921, 52.098473>,  <32.748932, 29.283604, 51.970871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653210, 29.462921, 52.098473>,  <32.493671, 29.761784, 52.311142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653210, 29.462921, 52.098473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328538, -0.657726, 0.677835,
		-0.856144, -0.095678, -0.507802,
		0.398848, -0.747157, -0.531674,
		32.772865, 29.238773, 51.938969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981779, 29.322035, 52.356743>,  <32.493671, 29.761784, 52.311142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981779, 29.322035, 52.356743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318275, 29.121428, 52.275955>,  <32.520172, 29.001062, 52.227482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318275, 29.121428, 52.275955>,  <31.981779, 29.322035, 52.356743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318275, 29.121428, 52.275955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303340, -0.747044, 0.591532,
		-0.447546, -0.436355, -0.780575,
		0.841242, -0.501517, -0.201972,
		32.570648, 28.970972, 52.215363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875792, 28.628912, 52.578049>,  <31.981779, 29.322035, 52.356743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875792, 28.628912, 52.578049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274948, 28.638876, 52.554081>,  <32.514442, 28.644855, 52.539700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274948, 28.638876, 52.554081>,  <31.875792, 28.628912, 52.578049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274948, 28.638876, 52.554081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061849, -0.644420, 0.762166,
		-0.019624, -0.764266, -0.644603,
		0.997892, 0.024912, -0.059915,
		32.574314, 28.646349, 52.536106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151855, 28.027258, 52.564171>,  <31.875792, 28.628912, 52.578049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151855, 28.027258, 52.564171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466400, 28.220556, 52.718109>,  <32.655128, 28.336535, 52.810474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466400, 28.220556, 52.718109>,  <32.151855, 28.027258, 52.564171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466400, 28.220556, 52.718109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000319, -0.623287, 0.781994,
		0.617765, -0.614808, -0.490283,
		0.786363, 0.483245, 0.384849,
		32.702309, 28.365530, 52.833565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653824, 27.545229, 52.587692>,  <32.151855, 28.027258, 52.564171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653824, 27.545229, 52.587692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666924, 27.813400, 52.884193>,  <32.674782, 27.974302, 53.062096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666924, 27.813400, 52.884193>,  <32.653824, 27.545229, 52.587692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666924, 27.813400, 52.884193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003031, -0.741580, 0.670857,
		0.999459, -0.024217, -0.022254,
		0.032749, 0.670427, 0.741252,
		32.676746, 28.014528, 53.106567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308491, 27.665867, 53.071365>,  <32.653824, 27.545229, 52.587692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308491, 27.665867, 53.071365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955864, 27.732134, 53.248180>,  <32.744289, 27.771894, 53.354271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955864, 27.732134, 53.248180>,  <33.308491, 27.665867, 53.071365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955864, 27.732134, 53.248180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125725, -0.820178, 0.558123,
		0.455015, 0.547597, 0.702210,
		-0.881564, 0.165669, 0.442040,
		32.691395, 27.781834, 53.380791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417938, 27.608639, 53.847256>,  <33.308491, 27.665867, 53.071365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417938, 27.608639, 53.847256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043171, 27.515778, 53.742729>,  <32.818310, 27.460060, 53.680016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043171, 27.515778, 53.742729>,  <33.417938, 27.608639, 53.847256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043171, 27.515778, 53.742729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078282, -0.867960, 0.490426,
		-0.340664, 0.439034, 0.831382,
		-0.936920, -0.232153, -0.261314,
		32.762096, 27.446133, 53.664333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043182, 27.643770, 53.575062>,  <33.417938, 27.608639, 53.847256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043182, 27.643770, 53.575062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438950, 27.611723, 53.526661>,  <34.676411, 27.592495, 53.497620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438950, 27.611723, 53.526661>,  <34.043182, 27.643770, 53.575062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438950, 27.611723, 53.526661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055694, -0.979580, 0.193189,
		-0.134006, -0.184405, -0.973672,
		0.989414, -0.080117, -0.120999,
		34.735775, 27.587688, 53.490360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250099, 27.044672, 53.169029>,  <34.043182, 27.643770, 53.575062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250099, 27.044672, 53.169029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607780, 27.141363, 53.319740>,  <34.822392, 27.199377, 53.410168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607780, 27.141363, 53.319740>,  <34.250099, 27.044672, 53.169029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607780, 27.141363, 53.319740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071062, -0.907652, 0.413664,
		0.441975, -0.343127, -0.828807,
		0.894208, 0.241726, 0.376777,
		34.876041, 27.213881, 53.432774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086811, 27.218657, 52.384941>,  <34.250099, 27.044672, 53.169029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086811, 27.218657, 52.384941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768749, 26.976961, 52.405434>,  <33.577911, 26.831944, 52.417728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768749, 26.976961, 52.405434>,  <34.086811, 27.218657, 52.384941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768749, 26.976961, 52.405434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007983, -0.074053, -0.997222,
		0.606354, -0.793355, 0.054060,
		-0.795154, -0.604238, 0.051236,
		33.530201, 26.795691, 52.420803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242775, 26.458874, 52.054890>,  <34.086811, 27.218657, 52.384941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242775, 26.458874, 52.054890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874184, 26.609703, 52.017578>,  <33.653030, 26.700201, 51.995193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874184, 26.609703, 52.017578>,  <34.242775, 26.458874, 52.054890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874184, 26.609703, 52.017578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109194, 0.021013, -0.993798,
		-0.372776, -0.925944, -0.060538,
		-0.921474, 0.377075, -0.093275,
		33.597740, 26.722826, 51.989597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763947, 26.023134, 51.624470>,  <34.242775, 26.458874, 52.054890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763947, 26.023134, 51.624470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751225, 26.422789, 51.613762>,  <33.743591, 26.662580, 51.607338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751225, 26.422789, 51.613762>,  <33.763947, 26.023134, 51.624470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751225, 26.422789, 51.613762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288584, -0.016458, -0.957313,
		-0.956926, -0.038170, -0.287811,
		-0.031804, 0.999136, -0.026765,
		33.741684, 26.722528, 51.605732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378838, 26.210314, 51.077450>,  <33.763947, 26.023134, 51.624470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378838, 26.210314, 51.077450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632679, 26.509443, 51.155460>,  <33.784985, 26.688921, 51.202267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632679, 26.509443, 51.155460>,  <33.378838, 26.210314, 51.077450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632679, 26.509443, 51.155460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225863, 0.061869, -0.972193,
		-0.739095, 0.661007, -0.129644,
		0.634605, 0.747825, 0.195024,
		33.823059, 26.733791, 51.213966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357109, 26.535944, 50.426121>,  <33.378838, 26.210314, 51.077450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357109, 26.535944, 50.426121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681065, 26.704336, 50.589512>,  <33.875439, 26.805370, 50.687546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681065, 26.704336, 50.589512>,  <33.357109, 26.535944, 50.426121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681065, 26.704336, 50.589512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305425, 0.291874, -0.906380,
		-0.500791, 0.858828, 0.107809,
		0.809892, 0.420979, 0.408475,
		33.924030, 26.830629, 50.712055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487911, 27.051939, 49.952610>,  <33.357109, 26.535944, 50.426121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487911, 27.051939, 49.952610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816021, 26.988272, 50.172363>,  <34.012886, 26.950071, 50.304214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816021, 26.988272, 50.172363>,  <33.487911, 27.051939, 49.952610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816021, 26.988272, 50.172363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570812, 0.166572, -0.804007,
		0.036463, 0.973097, 0.227490,
		0.820271, -0.159170, 0.549382,
		34.062103, 26.940521, 50.337177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935711, 27.623640, 49.823215>,  <33.487911, 27.051939, 49.952610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935711, 27.623640, 49.823215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160336, 27.308865, 49.925488>,  <34.295113, 27.119999, 49.986851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160336, 27.308865, 49.925488>,  <33.935711, 27.623640, 49.823215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160336, 27.308865, 49.925488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541369, 0.115747, -0.832780,
		0.625750, 0.606080, 0.491023,
		0.561566, -0.786937, 0.255684,
		34.328804, 27.072784, 50.002193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609764, 27.836969, 49.860394>,  <33.935711, 27.623640, 49.823215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609764, 27.836969, 49.860394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585964, 27.446760, 49.775719>,  <34.571682, 27.212635, 49.724915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585964, 27.446760, 49.775719>,  <34.609764, 27.836969, 49.860394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585964, 27.446760, 49.775719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421735, 0.167641, -0.891087,
		0.904764, -0.142300, 0.401438,
		-0.059504, -0.975524, -0.211689,
		34.568111, 27.154102, 49.712212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246449, 27.674103, 49.583565>,  <34.609764, 27.836969, 49.860394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246449, 27.674103, 49.583565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032352, 27.356384, 49.468597>,  <34.903896, 27.165752, 49.399616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032352, 27.356384, 49.468597>,  <35.246449, 27.674103, 49.583565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032352, 27.356384, 49.468597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328911, 0.117430, -0.937032,
		0.778033, -0.596072, 0.198399,
		-0.535240, -0.794297, -0.287419,
		34.871780, 27.118095, 49.382370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750393, 27.311876, 49.128841>,  <35.246449, 27.674103, 49.583565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750393, 27.311876, 49.128841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372787, 27.217682, 49.036419>,  <35.146225, 27.161165, 48.980965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372787, 27.217682, 49.036419>,  <35.750393, 27.311876, 49.128841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372787, 27.217682, 49.036419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207764, 0.119698, -0.970828,
		0.256275, -0.964478, -0.064071,
		-0.944011, -0.235487, -0.231059,
		35.089584, 27.147036, 48.967102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916344, 26.828585, 48.628883>,  <35.750393, 27.311876, 49.128841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916344, 26.828585, 48.628883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525124, 26.893021, 48.576004>,  <35.290394, 26.931683, 48.544277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525124, 26.893021, 48.576004>,  <35.916344, 26.828585, 48.628883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525124, 26.893021, 48.576004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157019, 0.152619, -0.975732,
		-0.137005, -0.975068, -0.174563,
		-0.978046, 0.161089, -0.132195,
		35.231709, 26.941347, 48.536346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678394, 26.451048, 48.084763>,  <35.916344, 26.828585, 48.628883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678394, 26.451048, 48.084763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420174, 26.753834, 48.125305>,  <35.265244, 26.935505, 48.149632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420174, 26.753834, 48.125305>,  <35.678394, 26.451048, 48.084763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420174, 26.753834, 48.125305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165611, 0.268298, -0.948994,
		-0.745547, -0.595836, -0.298561,
		-0.645548, 0.756964, 0.101352,
		35.226509, 26.980923, 48.155712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316906, 26.441500, 47.364044>,  <35.678394, 26.451048, 48.084763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316906, 26.441500, 47.364044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230785, 26.786045, 47.548084>,  <35.179111, 26.992773, 47.658508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230785, 26.786045, 47.548084>,  <35.316906, 26.441500, 47.364044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230785, 26.786045, 47.548084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250145, 0.504078, -0.826639,
		-0.943965, -0.062888, -0.323998,
		-0.215306, 0.861365, 0.460101,
		35.166195, 27.044455, 47.686115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934952, 26.841999, 46.957123>,  <35.316906, 26.441500, 47.364044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934952, 26.841999, 46.957123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077282, 27.111740, 47.215931>,  <35.162682, 27.273584, 47.371216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077282, 27.111740, 47.215931>,  <34.934952, 26.841999, 46.957123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077282, 27.111740, 47.215931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073889, 0.669865, -0.738797,
		-0.931627, 0.310691, 0.188529,
		0.355826, 0.674353, 0.647021,
		35.184029, 27.314047, 47.410038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658669, 27.483242, 46.773396>,  <34.934952, 26.841999, 46.957123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658669, 27.483242, 46.773396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921600, 27.656006, 47.020416>,  <35.079361, 27.759665, 47.168629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921600, 27.656006, 47.020416>,  <34.658669, 27.483242, 46.773396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921600, 27.656006, 47.020416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011665, 0.813539, -0.581393,
		-0.753513, 0.389370, 0.529725,
		0.657329, 0.431908, 0.617555,
		35.118797, 27.785578, 47.205681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447311, 28.108145, 46.830406>,  <34.658669, 27.483242, 46.773396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447311, 28.108145, 46.830406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837742, 28.132942, 46.913769>,  <35.071999, 28.147821, 46.963787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837742, 28.132942, 46.913769>,  <34.447311, 28.108145, 46.830406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837742, 28.132942, 46.913769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082235, 0.782040, -0.617779,
		-0.201282, 0.620137, 0.758232,
		0.976075, 0.061994, 0.208408,
		35.130566, 28.151541, 46.976292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567886, 28.788403, 46.940899>,  <34.447311, 28.108145, 46.830406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567886, 28.788403, 46.940899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921906, 28.613714, 46.876442>,  <35.134315, 28.508902, 46.837769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921906, 28.613714, 46.876442>,  <34.567886, 28.788403, 46.940899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921906, 28.613714, 46.876442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215147, 0.690745, -0.690350,
		0.412799, 0.576323, 0.705301,
		0.885048, -0.436719, -0.161144,
		35.187420, 28.482698, 46.828098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035606, 29.271004, 46.899918>,  <34.567886, 28.788403, 46.940899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035606, 29.271004, 46.899918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211910, 28.974493, 46.697437>,  <35.317692, 28.796587, 46.575951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211910, 28.974493, 46.697437>,  <35.035606, 29.271004, 46.899918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211910, 28.974493, 46.697437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280177, 0.649368, -0.706980,
		0.852777, 0.169786, 0.493907,
		0.440763, -0.741278, -0.506196,
		35.344139, 28.752110, 46.545578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756672, 29.524149, 46.712421>,  <35.035606, 29.271004, 46.899918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756672, 29.524149, 46.712421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650494, 29.236128, 46.455967>,  <35.586784, 29.063314, 46.302094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650494, 29.236128, 46.455967>,  <35.756672, 29.524149, 46.712421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650494, 29.236128, 46.455967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315057, 0.563702, -0.763531,
		0.911195, -0.404674, 0.077224,
		-0.265450, -0.720055, -0.641137,
		35.570858, 29.020111, 46.263626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130924, 29.705708, 46.164330>,  <35.756672, 29.524149, 46.712421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130924, 29.705708, 46.164330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878944, 29.437828, 46.007019>,  <35.727757, 29.277100, 45.912632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878944, 29.437828, 46.007019>,  <36.130924, 29.705708, 46.164330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878944, 29.437828, 46.007019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241366, 0.312485, -0.918747,
		0.738176, -0.673689, -0.035208,
		-0.629952, -0.669699, -0.393274,
		35.689960, 29.236919, 45.889038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514076, 29.359892, 45.610149>,  <36.130924, 29.705708, 46.164330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514076, 29.359892, 45.610149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116566, 29.343733, 45.568630>,  <35.878059, 29.334038, 45.543720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116566, 29.343733, 45.568630>,  <36.514076, 29.359892, 45.610149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116566, 29.343733, 45.568630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086154, 0.311791, -0.946237,
		0.070586, -0.949291, -0.306371,
		-0.993778, -0.040396, -0.103793,
		35.818432, 29.331614, 45.537491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427849, 29.192396, 44.903458>,  <36.514076, 29.359892, 45.610149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427849, 29.192396, 44.903458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053318, 29.294319, 45.000092>,  <35.828598, 29.355473, 45.058071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053318, 29.294319, 45.000092>,  <36.427849, 29.192396, 44.903458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053318, 29.294319, 45.000092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222114, 0.103040, -0.969561,
		-0.271945, -0.961486, -0.039882,
		-0.936329, 0.254809, 0.241580,
		35.772419, 29.370762, 45.072567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916676, 28.814939, 44.402905>,  <36.427849, 29.192396, 44.903458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916676, 28.814939, 44.402905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709522, 29.120188, 44.557537>,  <35.585232, 29.303337, 44.650318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709522, 29.120188, 44.557537>,  <35.916676, 28.814939, 44.402905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709522, 29.120188, 44.557537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399392, 0.183941, -0.898138,
		-0.756494, -0.619529, 0.209524,
		-0.517883, 0.763118, 0.386585,
		35.554157, 29.349123, 44.673512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197746, 28.715824, 44.219566>,  <35.916676, 28.814939, 44.402905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197746, 28.715824, 44.219566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246143, 29.106241, 44.291897>,  <35.275181, 29.340492, 44.335297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246143, 29.106241, 44.291897>,  <35.197746, 28.715824, 44.219566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246143, 29.106241, 44.291897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348436, 0.212333, -0.912966,
		-0.929491, 0.047454, 0.365779,
		0.120991, 0.976044, 0.180827,
		35.282440, 29.399055, 44.346146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557236, 29.114676, 44.077179>,  <35.197746, 28.715824, 44.219566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557236, 29.114676, 44.077179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840748, 29.395639, 44.051094>,  <35.010853, 29.564219, 44.035442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840748, 29.395639, 44.051094>,  <34.557236, 29.114676, 44.077179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840748, 29.395639, 44.051094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387006, 0.309890, -0.868444,
		-0.589796, 0.640771, 0.491481,
		0.708779, 0.702411, -0.065210,
		35.053383, 29.606363, 44.031532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326141, 29.601545, 43.565556>,  <34.557236, 29.114676, 44.077179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326141, 29.601545, 43.565556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716080, 29.684763, 43.597519>,  <34.950043, 29.734694, 43.616699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716080, 29.684763, 43.597519>,  <34.326141, 29.601545, 43.565556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716080, 29.684763, 43.597519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051721, 0.137591, -0.989138,
		-0.216778, 0.968394, 0.123370,
		0.974850, 0.208043, 0.079913,
		35.008533, 29.747175, 43.621494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408169, 30.124580, 43.052185>,  <34.326141, 29.601545, 43.565556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408169, 30.124580, 43.052185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771481, 29.988310, 43.149319>,  <34.989468, 29.906548, 43.207600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771481, 29.988310, 43.149319>,  <34.408169, 30.124580, 43.052185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771481, 29.988310, 43.149319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247339, -0.030862, -0.968437,
		0.337419, 0.939674, 0.056231,
		0.908280, -0.340677, 0.242831,
		35.043964, 29.886106, 43.222168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840458, 30.503668, 42.585632>,  <34.408169, 30.124580, 43.052185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840458, 30.503668, 42.585632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035652, 30.168726, 42.684185>,  <35.152771, 29.967760, 42.743317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035652, 30.168726, 42.684185>,  <34.840458, 30.503668, 42.585632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035652, 30.168726, 42.684185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313740, -0.095136, -0.944731,
		0.814516, 0.538316, 0.216287,
		0.487987, -0.837356, 0.246381,
		35.182049, 29.917519, 42.758099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505760, 30.662378, 42.286545>,  <34.840458, 30.503668, 42.585632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505760, 30.662378, 42.286545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472111, 30.265413, 42.322414>,  <35.451920, 30.027235, 42.343937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472111, 30.265413, 42.322414>,  <35.505760, 30.662378, 42.286545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472111, 30.265413, 42.322414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191819, -0.104437, -0.975858,
		0.977818, -0.064893, 0.199150,
		-0.084125, -0.992412, 0.089673,
		35.446873, 29.967690, 42.349316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136822, 30.422861, 42.140385>,  <35.505760, 30.662378, 42.286545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136822, 30.422861, 42.140385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860588, 30.141768, 42.071964>,  <35.694847, 29.973112, 42.030914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860588, 30.141768, 42.071964>,  <36.136822, 30.422861, 42.140385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860588, 30.141768, 42.071964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290736, -0.053182, -0.955324,
		0.662242, -0.709462, 0.241037,
		-0.690585, -0.702734, -0.171047,
		35.653412, 29.930948, 42.020649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502407, 29.971218, 41.621742>,  <36.136822, 30.422861, 42.140385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502407, 29.971218, 41.621742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122147, 29.849491, 41.597591>,  <35.893990, 29.776455, 41.583099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122147, 29.849491, 41.597591>,  <36.502407, 29.971218, 41.621742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122147, 29.849491, 41.597591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103429, -0.127374, -0.986447,
		0.292503, -0.944016, 0.152564,
		-0.950655, -0.304318, -0.060381,
		35.836948, 29.758196, 41.579475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500160, 29.404953, 41.241959>,  <36.502407, 29.971218, 41.621742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500160, 29.404953, 41.241959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120148, 29.529240, 41.230026>,  <35.892139, 29.603811, 41.222866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120148, 29.529240, 41.230026>,  <36.500160, 29.404953, 41.241959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120148, 29.529240, 41.230026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034525, -0.199571, -0.979275,
		-0.310233, -0.929314, 0.200327,
		-0.950033, 0.310720, -0.029829,
		35.835136, 29.622456, 41.221077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122299, 28.908033, 40.870686>,  <36.500160, 29.404953, 41.241959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122299, 28.908033, 40.870686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892788, 29.234528, 40.843731>,  <35.755081, 29.430424, 40.827560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892788, 29.234528, 40.843731>,  <36.122299, 28.908033, 40.870686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892788, 29.234528, 40.843731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213435, -0.228451, -0.949872,
		-0.790713, -0.530630, 0.305293,
		-0.573775, 0.816236, -0.067384,
		35.720654, 29.479399, 40.823517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495987, 28.607450, 40.568913>,  <36.122299, 28.908033, 40.870686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495987, 28.607450, 40.568913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528919, 28.998852, 40.493279>,  <35.548679, 29.233692, 40.447899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528919, 28.998852, 40.493279>,  <35.495987, 28.607450, 40.568913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528919, 28.998852, 40.493279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157423, -0.174577, -0.971978,
		-0.984093, 0.109789, 0.139666,
		0.082330, 0.978504, -0.189084,
		35.553619, 29.292402, 40.436554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946297, 28.694202, 40.108337>,  <35.495987, 28.607450, 40.568913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946297, 28.694202, 40.108337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226391, 28.976652, 40.066261>,  <35.394447, 29.146122, 40.041016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226391, 28.976652, 40.066261>,  <34.946297, 28.694202, 40.108337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226391, 28.976652, 40.066261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065672, -0.083010, -0.994383,
		-0.710888, 0.703207, -0.011754,
		0.700233, 0.706122, -0.105192,
		35.436462, 29.188488, 40.034702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752548, 28.992367, 39.556511>,  <34.946297, 28.694202, 40.108337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752548, 28.992367, 39.556511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109547, 29.172331, 39.569336>,  <35.323746, 29.280310, 39.577030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109547, 29.172331, 39.569336>,  <34.752548, 28.992367, 39.556511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109547, 29.172331, 39.569336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026236, 0.122743, -0.992092,
		-0.450287, 0.884599, 0.121351,
		0.892498, 0.449910, 0.032062,
		35.377296, 29.307304, 39.578953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613167, 29.671005, 39.268230>,  <34.752548, 28.992367, 39.556511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613167, 29.671005, 39.268230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007504, 29.620693, 39.223881>,  <35.244106, 29.590506, 39.197269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007504, 29.620693, 39.223881>,  <34.613167, 29.671005, 39.268230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007504, 29.620693, 39.223881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069877, 0.292908, -0.953584,
		0.152416, 0.947832, 0.279972,
		0.985843, -0.125778, -0.110876,
		35.303257, 29.582960, 39.190617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801060, 30.229982, 38.816788>,  <34.613167, 29.671005, 39.268230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801060, 30.229982, 38.816788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092186, 29.956112, 38.801292>,  <35.266861, 29.791790, 38.791996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092186, 29.956112, 38.801292>,  <34.801060, 30.229982, 38.816788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092186, 29.956112, 38.801292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068182, 0.128461, -0.989368,
		0.682373, 0.717438, 0.140179,
		0.727818, -0.684675, -0.038743,
		35.310532, 29.750710, 38.789669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359192, 30.536924, 38.487297>,  <34.801060, 30.229982, 38.816788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359192, 30.536924, 38.487297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400990, 30.141975, 38.439671>,  <35.426067, 29.905006, 38.411095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400990, 30.141975, 38.439671>,  <35.359192, 30.536924, 38.487297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400990, 30.141975, 38.439671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018812, 0.117741, -0.992866,
		0.994347, 0.105993, -0.006270,
		0.104499, -0.987372, -0.119070,
		35.432339, 29.845764, 38.403950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952335, 30.408466, 38.008522>,  <35.359192, 30.536924, 38.487297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952335, 30.408466, 38.008522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713600, 30.087568, 38.003086>,  <35.570358, 29.895029, 37.999825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713600, 30.087568, 38.003086>,  <35.952335, 30.408466, 38.008522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713600, 30.087568, 38.003086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122815, 0.108086, -0.986526,
		0.792906, -0.587127, -0.163037,
		-0.596839, -0.802246, -0.013594,
		35.534550, 29.846895, 37.999008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269928, 29.878304, 37.521492>,  <35.952335, 30.408466, 38.008522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269928, 29.878304, 37.521492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873066, 29.859318, 37.567738>,  <35.634949, 29.847927, 37.595486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873066, 29.859318, 37.567738>,  <36.269928, 29.878304, 37.521492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873066, 29.859318, 37.567738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110972, -0.091009, -0.989648,
		0.057494, -0.994718, 0.085028,
		-0.992159, -0.047463, 0.115619,
		35.575417, 29.845079, 37.602425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917946, 30.110756, 37.911888>,  <36.269928, 29.878304, 37.521492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917946, 30.110756, 37.911888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007328, 29.925955, 38.255196>,  <37.060955, 29.815075, 38.461182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007328, 29.925955, 38.255196>,  <36.917946, 30.110756, 37.911888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007328, 29.925955, 38.255196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197928, -0.840680, -0.504065,
		0.954407, 0.282510, -0.096409,
		0.223453, -0.462002, 0.858268,
		37.074364, 29.787354, 38.512676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340904, 30.245596, 37.341305>,  <36.917946, 30.110756, 37.911888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340904, 30.245596, 37.341305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732452, 30.164984, 37.327477>,  <37.967381, 30.116617, 37.319180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732452, 30.164984, 37.327477>,  <37.340904, 30.245596, 37.341305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732452, 30.164984, 37.327477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041817, -0.362800, 0.930928,
		-0.200151, -0.909815, -0.363562,
		0.978872, -0.201529, -0.034569,
		38.026115, 30.104525, 37.317104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507004, 29.477962, 37.431068>,  <37.340904, 30.245596, 37.341305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507004, 29.477962, 37.431068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789173, 29.731464, 37.558022>,  <37.958473, 29.883566, 37.634193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789173, 29.731464, 37.558022>,  <37.507004, 29.477962, 37.431068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789173, 29.731464, 37.558022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085361, -0.368560, 0.925677,
		0.703628, -0.680085, -0.205892,
		0.705423, 0.633757, 0.317382,
		38.000801, 29.921591, 37.653236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935764, 29.002308, 37.835621>,  <37.507004, 29.477962, 37.431068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935764, 29.002308, 37.835621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039593, 29.366995, 37.962994>,  <38.101891, 29.585806, 38.039417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039593, 29.366995, 37.962994>,  <37.935764, 29.002308, 37.835621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039593, 29.366995, 37.962994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036579, -0.338776, 0.940156,
		0.965030, -0.232392, -0.121287,
		0.259574, 0.911715, 0.318428,
		38.117466, 29.640509, 38.058521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599174, 28.876085, 38.094265>,  <37.935764, 29.002308, 37.835621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599174, 28.876085, 38.094265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489277, 29.226583, 38.252609>,  <38.423340, 29.436882, 38.347618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489277, 29.226583, 38.252609>,  <38.599174, 28.876085, 38.094265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489277, 29.226583, 38.252609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255326, -0.330439, 0.908636,
		0.926998, 0.350714, -0.132944,
		-0.274741, 0.876248, 0.395862,
		38.406853, 29.489458, 38.371368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142872, 29.082602, 38.610859>,  <38.599174, 28.876085, 38.094265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142872, 29.082602, 38.610859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806488, 29.280870, 38.697670>,  <38.604660, 29.399832, 38.749756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806488, 29.280870, 38.697670>,  <39.142872, 29.082602, 38.610859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806488, 29.280870, 38.697670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190736, -0.103803, 0.976138,
		0.506374, 0.862284, -0.007249,
		-0.840955, 0.495673, 0.217031,
		38.554203, 29.429573, 38.762779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308617, 29.708071, 38.878540>,  <39.142872, 29.082602, 38.610859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308617, 29.708071, 38.878540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937302, 29.660686, 39.019539>,  <38.714512, 29.632256, 39.104137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937302, 29.660686, 39.019539>,  <39.308617, 29.708071, 38.878540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937302, 29.660686, 39.019539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356418, -0.013037, 0.934236,
		-0.106075, 0.992873, 0.054323,
		-0.928286, -0.118461, 0.352495,
		38.658817, 29.625149, 39.125286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170101, 30.280365, 39.428242>,  <39.308617, 29.708071, 38.878540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170101, 30.280365, 39.428242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895985, 29.996983, 39.495731>,  <38.731514, 29.826954, 39.536224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895985, 29.996983, 39.495731>,  <39.170101, 30.280365, 39.428242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895985, 29.996983, 39.495731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131466, 0.107525, 0.985472,
		-0.716305, 0.697516, 0.019452,
		-0.685291, -0.708456, 0.168720,
		38.690399, 29.784447, 39.546349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792408, 30.508879, 39.929352>,  <39.170101, 30.280365, 39.428242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792408, 30.508879, 39.929352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708828, 30.117754, 39.935356>,  <38.658680, 29.883080, 39.938957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708828, 30.117754, 39.935356>,  <38.792408, 30.508879, 39.929352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708828, 30.117754, 39.935356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066885, 0.001024, 0.997760,
		-0.975637, 0.209483, 0.065187,
		-0.208947, -0.977812, 0.015010,
		38.646145, 29.824409, 39.939857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255363, 30.400942, 40.386803>,  <38.792408, 30.508879, 39.929352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255363, 30.400942, 40.386803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384415, 30.022654, 40.371162>,  <38.461845, 29.795681, 40.361778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384415, 30.022654, 40.371162>,  <38.255363, 30.400942, 40.386803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384415, 30.022654, 40.371162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111361, -0.078947, 0.990639,
		-0.939953, -0.315250, -0.130787,
		0.322624, -0.945719, -0.039100,
		38.481201, 29.738937, 40.359432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782604, 30.006500, 40.737026>,  <38.255363, 30.400942, 40.386803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782604, 30.006500, 40.737026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114361, 29.783571, 40.752506>,  <38.313416, 29.649813, 40.761795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114361, 29.783571, 40.752506>,  <37.782604, 30.006500, 40.737026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114361, 29.783571, 40.752506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070112, -0.035115, 0.996921,
		-0.554249, -0.829552, -0.068199,
		0.829393, -0.557324, 0.038699,
		38.363178, 29.616375, 40.764114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596958, 29.659870, 41.306046>,  <37.782604, 30.006500, 40.737026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596958, 29.659870, 41.306046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987667, 29.587608, 41.259953>,  <38.222092, 29.544250, 41.232296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987667, 29.587608, 41.259953>,  <37.596958, 29.659870, 41.306046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987667, 29.587608, 41.259953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048953, -0.335411, 0.940799,
		-0.208608, -0.924588, -0.318777,
		0.976774, -0.180653, -0.115231,
		38.280701, 29.533413, 41.225384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739365, 28.925917, 41.381786>,  <37.596958, 29.659870, 41.306046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739365, 28.925917, 41.381786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084702, 29.113483, 41.456367>,  <38.291904, 29.226023, 41.501114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084702, 29.113483, 41.456367>,  <37.739365, 28.925917, 41.381786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084702, 29.113483, 41.456367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011741, -0.350718, 0.936407,
		0.504487, -0.810626, -0.297283,
		0.863340, 0.468915, 0.186451,
		38.343704, 29.254158, 41.512302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155354, 28.452177, 41.682713>,  <37.739365, 28.925917, 41.381786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155354, 28.452177, 41.682713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335972, 28.798130, 41.770428>,  <38.444344, 29.005703, 41.823055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335972, 28.798130, 41.770428>,  <38.155354, 28.452177, 41.682713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335972, 28.798130, 41.770428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051339, -0.270546, 0.961337,
		0.890772, -0.422826, -0.166565,
		0.451542, 0.864883, 0.219287,
		38.471436, 29.057594, 41.836212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711002, 28.279184, 41.977997>,  <38.155354, 28.452177, 41.682713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711002, 28.279184, 41.977997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588116, 28.638685, 42.103127>,  <38.514385, 28.854385, 42.178204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588116, 28.638685, 42.103127>,  <38.711002, 28.279184, 41.977997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588116, 28.638685, 42.103127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000748, -0.328493, 0.944506,
		0.951639, 0.290403, 0.100246,
		-0.307218, 0.898754, 0.312824,
		38.495949, 28.908312, 42.196976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076069, 28.370899, 42.606884>,  <38.711002, 28.279184, 41.977997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076069, 28.370899, 42.606884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778084, 28.637663, 42.600334>,  <38.599293, 28.797722, 42.596405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778084, 28.637663, 42.600334>,  <39.076069, 28.370899, 42.606884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778084, 28.637663, 42.600334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210826, -0.212070, 0.954242,
		0.632920, 0.714324, 0.298586,
		-0.744959, 0.666909, -0.016374,
		38.554596, 28.837736, 42.595421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291584, 28.877701, 43.157574>,  <39.076069, 28.370899, 42.606884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291584, 28.877701, 43.157574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897472, 28.889477, 43.090225>,  <38.661003, 28.896542, 43.049816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897472, 28.889477, 43.090225>,  <39.291584, 28.877701, 43.157574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897472, 28.889477, 43.090225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170780, -0.128525, 0.976891,
		0.007118, 0.991269, 0.131662,
		-0.985283, 0.029439, -0.168374,
		38.601887, 28.898308, 43.039715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060444, 29.351986, 43.485638>,  <39.291584, 28.877701, 43.157574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060444, 29.351986, 43.485638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723068, 29.147457, 43.419708>,  <38.520645, 29.024740, 43.380150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723068, 29.147457, 43.419708>,  <39.060444, 29.351986, 43.485638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723068, 29.147457, 43.419708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191184, -0.001039, 0.981554,
		-0.502059, 0.859390, -0.096880,
		-0.843437, -0.511320, -0.164823,
		38.470036, 28.994061, 43.370262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599026, 29.689705, 43.898754>,  <39.060444, 29.351986, 43.485638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599026, 29.689705, 43.898754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440086, 29.330051, 43.825363>,  <38.344723, 29.114260, 43.781326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440086, 29.330051, 43.825363>,  <38.599026, 29.689705, 43.898754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440086, 29.330051, 43.825363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282130, -0.070564, 0.956778,
		-0.873220, 0.431944, -0.225634,
		-0.397353, -0.899135, -0.183482,
		38.320881, 29.060310, 43.770317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859142, 29.667807, 44.188141>,  <38.599026, 29.689705, 43.898754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859142, 29.667807, 44.188141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013397, 29.299335, 44.167278>,  <38.105949, 29.078253, 44.154762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013397, 29.299335, 44.167278>,  <37.859142, 29.667807, 44.188141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013397, 29.299335, 44.167278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266141, -0.165186, 0.949675,
		-0.883434, -0.352346, -0.308864,
		0.385635, -0.921176, -0.052157,
		38.129089, 29.022984, 44.151630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351185, 29.316628, 44.490021>,  <37.859142, 29.667807, 44.188141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351185, 29.316628, 44.490021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661369, 29.065147, 44.513309>,  <37.847481, 28.914259, 44.527283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661369, 29.065147, 44.513309>,  <37.351185, 29.316628, 44.490021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661369, 29.065147, 44.513309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335384, -0.332026, 0.881633,
		-0.534953, -0.703201, -0.468330,
		0.775463, -0.628702, 0.058224,
		37.894009, 28.876537, 44.530777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139675, 28.680485, 44.691418>,  <37.351185, 29.316628, 44.490021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139675, 28.680485, 44.691418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530415, 28.658245, 44.774044>,  <37.764858, 28.644901, 44.823620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530415, 28.658245, 44.774044>,  <37.139675, 28.680485, 44.691418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530415, 28.658245, 44.774044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209025, -0.453366, 0.866469,
		0.045475, -0.889589, -0.454493,
		0.976852, -0.055598, 0.206563,
		37.823471, 28.641565, 44.836014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306034, 28.005476, 44.979053>,  <37.139675, 28.680485, 44.691418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306034, 28.005476, 44.979053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534855, 28.304905, 45.113155>,  <37.672146, 28.484562, 45.193619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534855, 28.304905, 45.113155>,  <37.306034, 28.005476, 44.979053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534855, 28.304905, 45.113155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035123, -0.430723, 0.901800,
		0.819465, -0.504101, -0.272688,
		0.572051, 0.748572, 0.335257,
		37.706470, 28.529476, 45.213734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517849, 27.792923, 45.637196>,  <37.306034, 28.005476, 44.979053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517849, 27.792923, 45.637196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658169, 28.166548, 45.663929>,  <37.742359, 28.390722, 45.679970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658169, 28.166548, 45.663929>,  <37.517849, 27.792923, 45.637196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658169, 28.166548, 45.663929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087058, -0.103592, 0.990803,
		0.932395, -0.341754, -0.117658,
		0.350799, 0.934063, 0.066837,
		37.763409, 28.446766, 45.683979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257732, 27.803299, 46.003376>,  <37.517849, 27.792923, 45.637196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257732, 27.803299, 46.003376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098225, 28.166824, 46.052425>,  <38.002522, 28.384939, 46.081856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098225, 28.166824, 46.052425>,  <38.257732, 27.803299, 46.003376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098225, 28.166824, 46.052425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098460, -0.090514, 0.991016,
		0.911750, 0.407262, -0.053388,
		-0.398770, 0.908815, 0.122625,
		37.978592, 28.439468, 46.089214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659744, 28.219252, 46.527592>,  <38.257732, 27.803299, 46.003376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659744, 28.219252, 46.527592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316074, 28.423725, 46.518547>,  <38.109871, 28.546410, 46.513119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316074, 28.423725, 46.518547>,  <38.659744, 28.219252, 46.527592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316074, 28.423725, 46.518547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013689, 0.021218, 0.999681,
		0.511500, 0.859210, -0.011232,
		-0.859174, 0.511183, -0.022615,
		38.058323, 28.577080, 46.511761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773052, 28.822035, 46.942623>,  <38.659744, 28.219252, 46.527592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773052, 28.822035, 46.942623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378227, 28.759373, 46.928928>,  <38.141335, 28.721775, 46.920712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378227, 28.759373, 46.928928>,  <38.773052, 28.822035, 46.942623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378227, 28.759373, 46.928928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052211, 0.112080, 0.992327,
		-0.151614, 0.981273, -0.118809,
		-0.987060, -0.156653, -0.034240,
		38.082108, 28.712378, 46.918655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442429, 29.291372, 47.362743>,  <38.773052, 28.822035, 46.942623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442429, 29.291372, 47.362743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141659, 29.027756, 47.356106>,  <37.961197, 28.869585, 47.352123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141659, 29.027756, 47.356106>,  <38.442429, 29.291372, 47.362743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141659, 29.027756, 47.356106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186976, 0.189054, 0.964001,
		-0.632179, 0.727959, -0.265379,
		-0.751924, -0.659041, -0.016595,
		37.916080, 28.830044, 47.351128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924290, 29.650976, 47.661156>,  <38.442429, 29.291372, 47.362743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924290, 29.650976, 47.661156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821396, 29.264444, 47.663635>,  <37.759659, 29.032526, 47.665123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821396, 29.264444, 47.663635>,  <37.924290, 29.650976, 47.661156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821396, 29.264444, 47.663635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227241, 0.066724, 0.971550,
		-0.939250, 0.248509, -0.236753,
		-0.257236, -0.966329, 0.006199,
		37.744225, 28.974546, 47.665497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296124, 29.683224, 48.017635>,  <37.924290, 29.650976, 47.661156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296124, 29.683224, 48.017635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440849, 29.311167, 48.042683>,  <37.527683, 29.087933, 48.057709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440849, 29.311167, 48.042683>,  <37.296124, 29.683224, 48.017635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440849, 29.311167, 48.042683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153956, 0.006627, 0.988055,
		-0.919450, -0.367133, -0.140803,
		0.361815, -0.930145, 0.062615,
		37.549393, 29.032124, 48.061466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885700, 29.329905, 48.478603>,  <37.296124, 29.683224, 48.017635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885700, 29.329905, 48.478603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234123, 29.133749, 48.467510>,  <37.443176, 29.016056, 48.460854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234123, 29.133749, 48.467510>,  <36.885700, 29.329905, 48.478603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234123, 29.133749, 48.467510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049879, -0.144493, 0.988248,
		-0.488634, -0.859442, -0.150323,
		0.871062, -0.490390, -0.027736,
		37.495441, 28.986631, 48.459190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763832, 28.852901, 49.005547>,  <36.885700, 29.329905, 48.478603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763832, 28.852901, 49.005547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158092, 28.842148, 48.938889>,  <37.394650, 28.835695, 48.898895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158092, 28.842148, 48.938889>,  <36.763832, 28.852901, 49.005547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158092, 28.842148, 48.938889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158055, -0.199605, 0.967045,
		-0.059260, -0.979507, -0.192492,
		0.985650, -0.026882, -0.166645,
		37.453789, 28.834084, 48.888897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955360, 28.251902, 49.272968>,  <36.763832, 28.852901, 49.005547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955360, 28.251902, 49.272968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273907, 28.493748, 49.279305>,  <37.465034, 28.638855, 49.283108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273907, 28.493748, 49.279305>,  <36.955360, 28.251902, 49.272968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273907, 28.493748, 49.279305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095874, -0.152054, 0.983711,
		0.597174, -0.781871, -0.179056,
		0.796362, 0.604613, 0.015842,
		37.512814, 28.675131, 49.284058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387493, 27.971947, 49.799801>,  <36.955360, 28.251902, 49.272968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387493, 27.971947, 49.799801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566227, 28.325899, 49.747147>,  <37.673466, 28.538271, 49.715553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566227, 28.325899, 49.747147>,  <37.387493, 27.971947, 49.799801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566227, 28.325899, 49.747147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073921, 0.110119, 0.991166,
		0.891557, -0.452618, -0.016206,
		0.446835, 0.884879, -0.131636,
		37.700279, 28.591362, 49.707657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937771, 27.953848, 50.304218>,  <37.387493, 27.971947, 49.799801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937771, 27.953848, 50.304218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833660, 28.331894, 50.225216>,  <37.771194, 28.558722, 50.177814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833660, 28.331894, 50.225216>,  <37.937771, 27.953848, 50.304218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833660, 28.331894, 50.225216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006363, 0.202874, 0.979184,
		0.965513, 0.256118, -0.046790,
		-0.260279, 0.945117, -0.197508,
		37.755577, 28.615429, 50.165962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266922, 28.403238, 50.767071>,  <37.937771, 27.953848, 50.304218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266922, 28.403238, 50.767071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976963, 28.635990, 50.619591>,  <37.802986, 28.775642, 50.531101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976963, 28.635990, 50.619591>,  <38.266922, 28.403238, 50.767071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976963, 28.635990, 50.619591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205759, 0.327902, 0.922032,
		0.657410, 0.744241, -0.117968,
		-0.724896, 0.581880, -0.368701,
		37.759495, 28.810555, 50.508980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337551, 29.044287, 51.264050>,  <38.266922, 28.403238, 50.767071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337551, 29.044287, 51.264050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990910, 29.047733, 51.064476>,  <37.782925, 29.049801, 50.944733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990910, 29.047733, 51.064476>,  <38.337551, 29.044287, 51.264050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990910, 29.047733, 51.064476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479035, 0.265653, 0.836633,
		0.139751, 0.964030, -0.226087,
		-0.866600, 0.008616, -0.498929,
		37.730930, 29.050318, 50.914799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106796, 29.676279, 51.318340>,  <38.337551, 29.044287, 51.264050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106796, 29.676279, 51.318340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783871, 29.451015, 51.247814>,  <37.590115, 29.315857, 51.205498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783871, 29.451015, 51.247814>,  <38.106796, 29.676279, 51.318340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783871, 29.451015, 51.247814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383908, 0.274306, 0.881686,
		-0.448165, 0.779492, -0.437654,
		-0.807318, -0.563160, -0.176318,
		37.541676, 29.282068, 51.194920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560062, 30.013067, 51.521057>,  <38.106796, 29.676279, 51.318340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560062, 30.013067, 51.521057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403084, 29.645367, 51.508625>,  <37.308895, 29.424747, 51.501167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403084, 29.645367, 51.508625>,  <37.560062, 30.013067, 51.521057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403084, 29.645367, 51.508625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454695, 0.164528, 0.875319,
		-0.799523, 0.357647, -0.482547,
		-0.392448, -0.919249, -0.031076,
		37.285351, 29.369593, 51.499302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138889, 30.465631, 51.459816>,  <37.560062, 30.013067, 51.521057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138889, 30.465631, 51.459816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399029, 30.646738, 51.703800>,  <38.555111, 30.755402, 51.850189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399029, 30.646738, 51.703800>,  <38.138889, 30.465631, 51.459816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399029, 30.646738, 51.703800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412436, 0.463844, -0.784057,
		-0.637920, 0.761479, 0.114924,
		0.650350, 0.452766, 0.609957,
		38.594135, 30.782568, 51.886787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296913, 31.083233, 51.057240>,  <38.138889, 30.465631, 51.459816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296913, 31.083233, 51.057240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606350, 30.983992, 51.290478>,  <38.792011, 30.924446, 51.430420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606350, 30.983992, 51.290478>,  <38.296913, 31.083233, 51.057240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606350, 30.983992, 51.290478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633677, 0.307929, -0.709671,
		-0.003480, 0.918490, 0.395429,
		0.773590, -0.248105, 0.583098,
		38.838428, 30.909559, 51.465408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702156, 31.636520, 51.090382>,  <38.296913, 31.083233, 51.057240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702156, 31.636520, 51.090382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935699, 31.326054, 51.185608>,  <39.075825, 31.139774, 51.242744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935699, 31.326054, 51.185608>,  <38.702156, 31.636520, 51.090382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935699, 31.326054, 51.185608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638852, 0.258301, -0.724671,
		0.500973, 0.575194, 0.646667,
		0.583861, -0.776165, 0.238062,
		39.110859, 31.093204, 51.257027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406200, 31.882456, 50.936131>,  <38.702156, 31.636520, 51.090382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406200, 31.882456, 50.936131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429729, 31.483259, 50.945534>,  <39.443848, 31.243742, 50.951176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429729, 31.483259, 50.945534>,  <39.406200, 31.882456, 50.936131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429729, 31.483259, 50.945534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631784, 0.018986, -0.774911,
		0.772909, 0.060430, 0.631633,
		0.058820, -0.997992, 0.023504,
		39.447376, 31.183861, 50.952583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089657, 31.741159, 50.745964>,  <39.406200, 31.882456, 50.936131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089657, 31.741159, 50.745964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915653, 31.386061, 50.685738>,  <39.811253, 31.173002, 50.649601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915653, 31.386061, 50.685738>,  <40.089657, 31.741159, 50.745964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915653, 31.386061, 50.685738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530067, -0.117305, -0.839803,
		0.727871, -0.445133, 0.521595,
		-0.435010, -0.887748, -0.150568,
		39.785149, 31.119736, 50.640568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650784, 31.242050, 50.547100>,  <40.089657, 31.741159, 50.745964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650784, 31.242050, 50.547100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299255, 31.103054, 50.416306>,  <40.088337, 31.019657, 50.337830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299255, 31.103054, 50.416306>,  <40.650784, 31.242050, 50.547100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299255, 31.103054, 50.416306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409242, -0.196581, -0.890998,
		0.245334, -0.916846, 0.314968,
		-0.878824, -0.347490, -0.326984,
		40.035606, 30.998808, 50.318211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854469, 30.766209, 50.237591>,  <40.650784, 31.242050, 50.547100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854469, 30.766209, 50.237591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496510, 30.791361, 50.060863>,  <40.281734, 30.806452, 49.954826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496510, 30.791361, 50.060863>,  <40.854469, 30.766209, 50.237591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496510, 30.791361, 50.060863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422796, -0.197417, -0.884460,
		-0.142834, -0.978301, 0.150084,
		-0.894898, 0.062876, -0.441820,
		40.228039, 30.810225, 49.928318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824593, 30.211821, 49.729607>,  <40.854469, 30.766209, 50.237591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824593, 30.211821, 49.729607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539307, 30.468069, 49.615814>,  <40.368134, 30.621819, 49.547539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539307, 30.468069, 49.615814>,  <40.824593, 30.211821, 49.729607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539307, 30.468069, 49.615814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250893, -0.145643, -0.956995,
		-0.654505, -0.753917, -0.056853,
		-0.713215, 0.640622, -0.284477,
		40.325340, 30.660255, 49.530472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485924, 29.908293, 49.127136>,  <40.824593, 30.211821, 49.729607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485924, 29.908293, 49.127136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392647, 30.295786, 49.093250>,  <40.336681, 30.528282, 49.072918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392647, 30.295786, 49.093250>,  <40.485924, 29.908293, 49.127136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392647, 30.295786, 49.093250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017297, -0.082969, -0.996402,
		-0.972277, -0.233818, 0.002591,
		-0.233192, 0.968734, -0.084714,
		40.322689, 30.586407, 49.067837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898735, 29.981056, 48.667309>,  <40.485924, 29.908293, 49.127136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898735, 29.981056, 48.667309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085995, 30.334515, 48.666729>,  <40.198353, 30.546589, 48.666382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085995, 30.334515, 48.666729>,  <39.898735, 29.981056, 48.667309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085995, 30.334515, 48.666729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069924, -0.038677, -0.996802,
		-0.880877, 0.466554, -0.079895,
		0.468153, 0.883646, -0.001446,
		40.226440, 30.599609, 48.666294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566582, 30.346331, 48.200874>,  <39.898735, 29.981056, 48.667309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566582, 30.346331, 48.200874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901413, 30.561800, 48.239105>,  <40.102310, 30.691082, 48.262043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901413, 30.561800, 48.239105>,  <39.566582, 30.346331, 48.200874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901413, 30.561800, 48.239105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004929, 0.167268, -0.985899,
		-0.547064, 0.825744, 0.137361,
		0.837076, 0.538673, 0.095576,
		40.152534, 30.723402, 48.267776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307644, 30.802511, 47.715824>,  <39.566582, 30.346331, 48.200874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307644, 30.802511, 47.715824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697624, 30.874929, 47.767517>,  <39.931610, 30.918381, 47.798534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697624, 30.874929, 47.767517>,  <39.307644, 30.802511, 47.715824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697624, 30.874929, 47.767517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133935, -0.013942, -0.990892,
		-0.177597, 0.983376, -0.037842,
		0.974947, 0.181048, 0.129232,
		39.990108, 30.929243, 47.806286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466255, 31.491936, 47.481678>,  <39.307644, 30.802511, 47.715824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466255, 31.491936, 47.481678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793331, 31.263098, 47.456070>,  <39.989574, 31.125795, 47.440704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793331, 31.263098, 47.456070>,  <39.466255, 31.491936, 47.481678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793331, 31.263098, 47.456070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026091, 0.074271, -0.996897,
		0.575074, 0.816818, 0.045804,
		0.817685, -0.572095, -0.064023,
		40.038635, 31.091469, 47.436863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945747, 31.896477, 47.165188>,  <39.466255, 31.491936, 47.481678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945747, 31.896477, 47.165188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058079, 31.515282, 47.119678>,  <40.125477, 31.286564, 47.092373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058079, 31.515282, 47.119678>,  <39.945747, 31.896477, 47.165188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058079, 31.515282, 47.119678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224522, 0.180486, -0.957609,
		0.933125, 0.243383, 0.264653,
		0.280832, -0.952990, -0.113771,
		40.142330, 31.229385, 47.085548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430260, 32.007629, 46.695408>,  <39.945747, 31.896477, 47.165188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430260, 32.007629, 46.695408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396400, 31.609211, 46.684635>,  <40.376087, 31.370159, 46.678173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396400, 31.609211, 46.684635>,  <40.430260, 32.007629, 46.695408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396400, 31.609211, 46.684635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290380, 0.001195, -0.956911,
		0.953160, -0.088819, 0.289131,
		-0.084646, -0.996047, -0.026931,
		40.371006, 31.310396, 46.676556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067257, 31.739054, 46.342121>,  <40.430260, 32.007629, 46.695408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067257, 31.739054, 46.342121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789543, 31.458755, 46.276482>,  <40.622913, 31.290577, 46.237099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789543, 31.458755, 46.276482>,  <41.067257, 31.739054, 46.342121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789543, 31.458755, 46.276482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304956, -0.079906, -0.949008,
		0.651899, -0.708924, 0.269174,
		-0.694283, -0.700744, -0.164100,
		40.581257, 31.248533, 46.227253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347469, 31.192532, 45.898052>,  <41.067257, 31.739054, 46.342121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347469, 31.192532, 45.898052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954716, 31.126602, 45.860653>,  <40.719063, 31.087044, 45.838215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954716, 31.126602, 45.860653>,  <41.347469, 31.192532, 45.898052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954716, 31.126602, 45.860653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131200, -0.235296, -0.963028,
		0.136732, -0.957846, 0.252657,
		-0.981881, -0.164826, -0.093497,
		40.660152, 31.077154, 45.832603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244022, 30.690199, 45.381939>,  <41.347469, 31.192532, 45.898052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244022, 30.690199, 45.381939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883930, 30.862976, 45.403873>,  <40.667873, 30.966642, 45.417034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883930, 30.862976, 45.403873>,  <41.244022, 30.690199, 45.381939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883930, 30.862976, 45.403873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147819, -0.184730, -0.971609,
		-0.409552, -0.882779, 0.230149,
		-0.900232, 0.431945, 0.054835,
		40.613861, 30.992559, 45.420322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848518, 30.401142, 44.792484>,  <41.244022, 30.690199, 45.381939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848518, 30.401142, 44.792484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643547, 30.729334, 44.893860>,  <40.520565, 30.926249, 44.954685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643547, 30.729334, 44.893860>,  <40.848518, 30.401142, 44.792484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643547, 30.729334, 44.893860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187193, 0.181304, -0.965447,
		-0.838079, -0.542163, 0.060682,
		-0.512428, 0.820480, 0.253436,
		40.489819, 30.975477, 44.969891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106560, 30.202438, 44.679134>,  <40.848518, 30.401142, 44.792484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106560, 30.202438, 44.679134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186195, 30.594425, 44.676945>,  <40.233978, 30.829617, 44.675632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186195, 30.594425, 44.676945>,  <40.106560, 30.202438, 44.679134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186195, 30.594425, 44.676945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155301, 0.026036, -0.987524,
		-0.967598, 0.197455, 0.157373,
		0.199089, 0.979966, -0.005472,
		40.245922, 30.888414, 44.675304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517437, 30.514114, 44.335522>,  <40.106560, 30.202438, 44.679134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517437, 30.514114, 44.335522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806347, 30.786650, 44.288013>,  <39.979691, 30.950171, 44.259510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806347, 30.786650, 44.288013>,  <39.517437, 30.514114, 44.335522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806347, 30.786650, 44.288013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136036, -0.028420, -0.990296,
		-0.678100, 0.731419, 0.072160,
		0.722270, 0.681336, -0.118771,
		40.023029, 30.991051, 44.252380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381798, 31.025475, 43.726402>,  <39.517437, 30.514114, 44.335522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381798, 31.025475, 43.726402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774590, 31.093374, 43.759651>,  <40.010265, 31.134113, 43.779598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774590, 31.093374, 43.759651>,  <39.381798, 31.025475, 43.726402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774590, 31.093374, 43.759651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071828, 0.071610, -0.994843,
		-0.174827, 0.982882, 0.058127,
		0.981976, 0.169750, 0.083118,
		40.069183, 31.144299, 43.784588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389004, 31.640270, 43.407894>,  <39.381798, 31.025475, 43.726402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389004, 31.640270, 43.407894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747543, 31.463520, 43.422367>,  <39.962666, 31.357470, 43.431053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747543, 31.463520, 43.422367>,  <39.389004, 31.640270, 43.407894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747543, 31.463520, 43.422367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045616, 0.010730, -0.998901,
		0.441002, 0.897012, 0.029774,
		0.896346, -0.441876, 0.036186,
		40.016449, 31.330957, 43.433224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680099, 31.917391, 42.951923>,  <39.389004, 31.640270, 43.407894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680099, 31.917391, 42.951923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907223, 31.592184, 43.003456>,  <40.043495, 31.397060, 43.034378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907223, 31.592184, 43.003456>,  <39.680099, 31.917391, 42.951923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907223, 31.592184, 43.003456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088629, -0.095221, -0.991503,
		0.818376, 0.574401, 0.017990,
		0.567807, -0.813017, 0.128835,
		40.077564, 31.348280, 43.042107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134861, 32.003845, 42.494682>,  <39.680099, 31.917391, 42.951923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134861, 32.003845, 42.494682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155403, 31.611748, 42.571095>,  <40.167728, 31.376490, 42.616943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155403, 31.611748, 42.571095>,  <40.134861, 32.003845, 42.494682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155403, 31.611748, 42.571095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102941, -0.185068, -0.977319,
		0.993361, 0.069852, 0.091403,
		0.051352, -0.980240, 0.191030,
		40.170807, 31.317677, 42.628403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803658, 31.753794, 42.209908>,  <40.134861, 32.003845, 42.494682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803658, 31.753794, 42.209908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613159, 31.403240, 42.238609>,  <40.498859, 31.192909, 42.255829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613159, 31.403240, 42.238609>,  <40.803658, 31.753794, 42.209908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613159, 31.403240, 42.238609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149003, -0.160854, -0.975666,
		0.866598, -0.453961, 0.207189,
		-0.476242, -0.876382, 0.071754,
		40.470287, 31.140326, 42.260136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259487, 31.252781, 42.063084>,  <40.803658, 31.753794, 42.209908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259487, 31.252781, 42.063084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888447, 31.125397, 41.984959>,  <40.665825, 31.048967, 41.938084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888447, 31.125397, 41.984959>,  <41.259487, 31.252781, 42.063084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888447, 31.125397, 41.984959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193985, 0.036204, -0.980336,
		0.319269, -0.947245, 0.028194,
		-0.927598, -0.318460, -0.195310,
		40.610168, 31.029860, 41.926365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339836, 30.728750, 41.579155>,  <41.259487, 31.252781, 42.063084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339836, 30.728750, 41.579155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952118, 30.817366, 41.536465>,  <40.719486, 30.870535, 41.510853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952118, 30.817366, 41.536465>,  <41.339836, 30.728750, 41.579155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952118, 30.817366, 41.536465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113906, 0.019861, -0.993293,
		-0.217935, -0.974949, -0.044486,
		-0.969294, 0.221541, -0.106724,
		40.661331, 30.883827, 41.504448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060429, 30.325214, 41.032803>,  <41.339836, 30.728750, 41.579155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060429, 30.325214, 41.032803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811062, 30.637732, 41.045010>,  <40.661442, 30.825241, 41.052334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811062, 30.637732, 41.045010>,  <41.060429, 30.325214, 41.032803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811062, 30.637732, 41.045010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061009, -0.009696, -0.998090,
		-0.779503, -0.624091, 0.053711,
		-0.623420, 0.781291, 0.030517,
		40.624035, 30.872118, 41.054165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611790, 30.223152, 40.507233>,  <41.060429, 30.325214, 41.032803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611790, 30.223152, 40.507233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573078, 30.617897, 40.558975>,  <40.549850, 30.854744, 40.590019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573078, 30.617897, 40.558975>,  <40.611790, 30.223152, 40.507233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573078, 30.617897, 40.558975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035543, 0.126456, -0.991335,
		-0.994671, -0.100542, 0.022837,
		-0.096783, 0.986864, 0.129356,
		40.544044, 30.913956, 40.597782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131676, 30.496149, 39.953308>,  <40.611790, 30.223152, 40.507233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131676, 30.496149, 39.953308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316418, 30.821651, 40.094440>,  <40.427261, 31.016953, 40.179119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316418, 30.821651, 40.094440>,  <40.131676, 30.496149, 39.953308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316418, 30.821651, 40.094440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020393, 0.407438, -0.913005,
		-0.886722, 0.414479, 0.204772,
		0.461854, 0.813757, 0.352832,
		40.454975, 31.065779, 40.200291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774055, 31.009338, 39.655231>,  <40.131676, 30.496149, 39.953308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774055, 31.009338, 39.655231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129993, 31.164246, 39.751724>,  <40.343555, 31.257191, 39.809620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129993, 31.164246, 39.751724>,  <39.774055, 31.009338, 39.655231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129993, 31.164246, 39.751724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038593, 0.462940, -0.885549,
		-0.454621, 0.797315, 0.397000,
		0.889849, 0.387267, 0.241233,
		40.396950, 31.280426, 39.824093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813316, 31.722765, 39.468369>,  <39.774055, 31.009338, 39.655231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813316, 31.722765, 39.468369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199871, 31.620029, 39.472988>,  <40.431805, 31.558388, 39.475758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199871, 31.620029, 39.472988>,  <39.813316, 31.722765, 39.468369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199871, 31.620029, 39.472988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081956, 0.265178, -0.960710,
		0.243684, 0.929363, 0.277314,
		0.966386, -0.256837, 0.011547,
		40.489788, 31.542978, 39.476452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228802, 32.300999, 39.300385>,  <39.813316, 31.722765, 39.468369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228802, 32.300999, 39.300385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466492, 31.989521, 39.219856>,  <40.609104, 31.802633, 39.171539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466492, 31.989521, 39.219856>,  <40.228802, 32.300999, 39.300385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466492, 31.989521, 39.219856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217959, 0.396844, -0.891633,
		0.774206, 0.485947, 0.405537,
		0.594221, -0.778698, -0.201322,
		40.644756, 31.755911, 39.159458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668171, 32.651119, 38.910381>,  <40.228802, 32.300999, 39.300385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668171, 32.651119, 38.910381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749649, 32.264732, 38.846600>,  <40.798534, 32.032902, 38.808331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749649, 32.264732, 38.846600>,  <40.668171, 32.651119, 38.910381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749649, 32.264732, 38.846600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302539, 0.216999, -0.928107,
		0.931117, 0.140812, 0.336443,
		0.203696, -0.965962, -0.159450,
		40.810757, 31.974943, 38.798763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294601, 32.613209, 38.584293>,  <40.668171, 32.651119, 38.910381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294601, 32.613209, 38.584293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150223, 32.253262, 38.486343>,  <41.063595, 32.037292, 38.427574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150223, 32.253262, 38.486343>,  <41.294601, 32.613209, 38.584293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150223, 32.253262, 38.486343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336173, 0.119376, -0.934204,
		0.869888, -0.419517, 0.259422,
		-0.360946, -0.899864, -0.244874,
		41.041939, 31.983303, 38.412880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771111, 32.439972, 38.146538>,  <41.294601, 32.613209, 38.584293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771111, 32.439972, 38.146538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464920, 32.203537, 38.044819>,  <41.281208, 32.061676, 37.983788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464920, 32.203537, 38.044819>,  <41.771111, 32.439972, 38.146538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464920, 32.203537, 38.044819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192648, 0.166546, -0.967031,
		0.613953, -0.789225, -0.013615,
		-0.765473, -0.591088, -0.254294,
		41.235279, 32.026211, 37.968529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039375, 31.993729, 37.656429>,  <41.771111, 32.439972, 38.146538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039375, 31.993729, 37.656429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643970, 31.991810, 37.596012>,  <41.406727, 31.990660, 37.559761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643970, 31.991810, 37.596012>,  <42.039375, 31.993729, 37.656429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643970, 31.991810, 37.596012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148913, 0.139329, -0.978985,
		0.025739, -0.990235, -0.137015,
		-0.988515, -0.004795, -0.151044,
		41.347416, 31.990372, 37.550697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881870, 31.448479, 37.170322>,  <42.039375, 31.993729, 37.656429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881870, 31.448479, 37.170322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589905, 31.721821, 37.164024>,  <41.414726, 31.885826, 37.160248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589905, 31.721821, 37.164024>,  <41.881870, 31.448479, 37.170322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589905, 31.721821, 37.164024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280483, 0.278430, -0.918589,
		-0.623341, -0.674907, -0.394900,
		-0.729914, 0.683357, -0.015743,
		41.370930, 31.926828, 37.159302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620007, 31.371540, 36.504730>,  <41.881870, 31.448479, 37.170322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620007, 31.371540, 36.504730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460037, 31.724337, 36.604454>,  <41.364056, 31.936014, 36.664288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460037, 31.724337, 36.604454>,  <41.620007, 31.371540, 36.504730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460037, 31.724337, 36.604454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319173, 0.389000, -0.864180,
		-0.859182, -0.266028, -0.437076,
		-0.399919, 0.881991, 0.249312,
		41.340061, 31.988934, 36.679249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152683, 31.671309, 35.873352>,  <41.620007, 31.371540, 36.504730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152683, 31.671309, 35.873352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314919, 31.968296, 36.086609>,  <41.412262, 32.146488, 36.214561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314919, 31.968296, 36.086609>,  <41.152683, 31.671309, 35.873352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314919, 31.968296, 36.086609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465275, 0.334351, -0.819591,
		-0.786776, 0.580474, -0.209842,
		0.405590, 0.742468, 0.533139,
		41.436596, 32.191036, 36.246552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130707, 32.283203, 35.433220>,  <41.152683, 31.671309, 35.873352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130707, 32.283203, 35.433220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424820, 32.299034, 35.703861>,  <41.601288, 32.308533, 35.866245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424820, 32.299034, 35.703861>,  <41.130707, 32.283203, 35.433220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424820, 32.299034, 35.703861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640368, 0.286416, -0.712667,
		-0.221997, 0.957287, 0.185252,
		0.735287, 0.039580, 0.676599,
		41.645405, 32.310909, 35.906841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551224, 32.884113, 35.298923>,  <41.130707, 32.283203, 35.433220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551224, 32.884113, 35.298923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748440, 32.599251, 35.498821>,  <41.866768, 32.428333, 35.618759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748440, 32.599251, 35.498821>,  <41.551224, 32.884113, 35.298923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748440, 32.599251, 35.498821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786900, 0.120029, -0.605295,
		0.371079, 0.691686, 0.619573,
		0.493040, -0.712154, 0.499748,
		41.896351, 32.385605, 35.648746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198086, 33.022106, 35.722149>,  <41.551224, 32.884113, 35.298923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198086, 33.022106, 35.722149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199940, 32.671272, 35.530022>,  <42.201054, 32.460773, 35.414745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199940, 32.671272, 35.530022>,  <42.198086, 33.022106, 35.722149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199940, 32.671272, 35.530022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877684, 0.233751, -0.418368,
		0.479218, -0.419632, 0.770882,
		0.004634, -0.877080, -0.480322,
		42.201328, 32.408150, 35.385925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864845, 32.577480, 35.841290>,  <42.198086, 33.022106, 35.722149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864845, 32.577480, 35.841290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694847, 32.525486, 35.482964>,  <42.592850, 32.494289, 35.267967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694847, 32.525486, 35.482964>,  <42.864845, 32.577480, 35.841290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694847, 32.525486, 35.482964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848385, 0.287882, -0.444260,
		0.315636, -0.948803, -0.012071,
		-0.424991, -0.129983, -0.895816,
		42.567348, 32.486492, 35.214218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301132, 32.090538, 35.511333>,  <42.864845, 32.577480, 35.841290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301132, 32.090538, 35.511333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116776, 32.345852, 35.264702>,  <43.006161, 32.499043, 35.116722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116776, 32.345852, 35.264702>,  <43.301132, 32.090538, 35.511333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116776, 32.345852, 35.264702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886939, 0.354984, -0.295509,
		0.030255, -0.683063, -0.729732,
		-0.460895, 0.638287, -0.616575,
		42.978508, 32.537338, 35.079731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543037, 31.964493, 34.827759>,  <43.301132, 32.090538, 35.511333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543037, 31.964493, 34.827759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.386837, 32.332470, 34.841694>,  <43.293118, 32.553257, 34.850056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.386837, 32.332470, 34.841694>,  <43.543037, 31.964493, 34.827759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386837, 32.332470, 34.841694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815982, 0.363399, -0.449572,
		-0.426242, -0.147130, -0.892564,
		-0.390503, 0.919942, 0.034840,
		43.269688, 32.608452, 34.852146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902477, 32.124107, 34.247078>,  <43.543037, 31.964493, 34.827759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902477, 32.124107, 34.247078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162895, 32.202816, 33.953842>,  <44.319145, 32.250042, 33.777901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162895, 32.202816, 33.953842>,  <43.902477, 32.124107, 34.247078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162895, 32.202816, 33.953842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556220, 0.780866, -0.284373,
		0.516485, 0.592898, 0.617831,
		0.651047, 0.196775, -0.733087,
		44.358208, 32.261848, 33.733917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758907, 32.797119, 34.094036>,  <43.902477, 32.124107, 34.247078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758907, 32.797119, 34.094036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991890, 32.717201, 33.778866>,  <44.131680, 32.669250, 33.589764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991890, 32.717201, 33.778866>,  <43.758907, 32.797119, 34.094036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991890, 32.717201, 33.778866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346416, 0.815881, -0.462962,
		0.735354, 0.542604, 0.405999,
		0.582452, -0.199797, -0.787928,
		44.166626, 32.657261, 33.542488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944469, 33.445210, 33.903877>,  <43.758907, 32.797119, 34.094036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944469, 33.445210, 33.903877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045094, 33.238064, 33.576820>,  <44.105469, 33.113777, 33.380585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045094, 33.238064, 33.576820>,  <43.944469, 33.445210, 33.903877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.045094, 33.238064, 33.576820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338506, 0.744374, -0.575605,
		0.906714, 0.421577, 0.011958,
		0.251562, -0.517861, -0.817641,
		44.120564, 33.082706, 33.331528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212490, 33.935524, 33.319630>,  <43.944469, 33.445210, 33.903877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212490, 33.935524, 33.319630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109203, 33.599823, 33.128220>,  <44.047234, 33.398403, 33.013374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109203, 33.599823, 33.128220>,  <44.212490, 33.935524, 33.319630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109203, 33.599823, 33.128220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431214, 0.543365, -0.720284,
		0.864511, 0.020358, -0.502201,
		-0.258214, -0.839250, -0.478524,
		44.031738, 33.348049, 32.984661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454971, 34.048519, 32.584141>,  <44.212490, 33.935524, 33.319630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454971, 34.048519, 32.584141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149147, 33.793259, 32.620365>,  <43.965652, 33.640102, 32.642097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149147, 33.793259, 32.620365>,  <44.454971, 34.048519, 32.584141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149147, 33.793259, 32.620365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539147, 0.556200, -0.632426,
		0.353215, -0.532355, -0.769309,
		-0.764565, -0.638153, 0.090560,
		43.919777, 33.601814, 32.647533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317284, 33.973148, 31.899935>,  <44.454971, 34.048519, 32.584141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317284, 33.973148, 31.899935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997875, 33.837231, 32.098690>,  <43.806229, 33.755680, 32.217945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997875, 33.837231, 32.098690>,  <44.317284, 33.973148, 31.899935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997875, 33.837231, 32.098690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598525, 0.536245, -0.595154,
		-0.064226, -0.772647, -0.631579,
		-0.798525, -0.339792, 0.496889,
		43.758316, 33.735294, 32.247757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894356, 33.734024, 31.368237>,  <44.317284, 33.973148, 31.899935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894356, 33.734024, 31.368237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641743, 33.762913, 31.677029>,  <43.490173, 33.780247, 31.862303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641743, 33.762913, 31.677029>,  <43.894356, 33.734024, 31.368237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641743, 33.762913, 31.677029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693726, 0.392039, -0.604193,
		-0.346280, -0.917109, -0.197486,
		-0.631533, 0.072218, 0.771978,
		43.452282, 33.784576, 31.908623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247177, 33.564240, 31.041319>,  <43.894356, 33.734024, 31.368237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247177, 33.564240, 31.041319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159279, 33.747105, 31.386044>,  <43.106541, 33.856823, 31.592878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159279, 33.747105, 31.386044>,  <43.247177, 33.564240, 31.041319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159279, 33.747105, 31.386044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517958, 0.693932, -0.500178,
		-0.826698, -0.556295, 0.084298,
		-0.219749, 0.457159, 0.861810,
		43.093353, 33.884251, 31.644587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562355, 33.854534, 30.992538>,  <43.247177, 33.564240, 31.041319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562355, 33.854534, 30.992538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739143, 34.081539, 31.270414>,  <42.845215, 34.217743, 31.437140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739143, 34.081539, 31.270414>,  <42.562355, 33.854534, 30.992538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739143, 34.081539, 31.270414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467569, 0.806655, -0.361508,
		-0.765536, -0.165041, 0.621866,
		0.441967, 0.567512, 0.694691,
		42.871735, 34.251793, 31.478821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031628, 34.175354, 31.246801>,  <42.562355, 33.854534, 30.992538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031628, 34.175354, 31.246801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329220, 34.404785, 31.383913>,  <42.507774, 34.542446, 31.466181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329220, 34.404785, 31.383913>,  <42.031628, 34.175354, 31.246801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329220, 34.404785, 31.383913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571241, 0.812101, -0.119067,
		-0.346667, -0.107226, 0.931839,
		0.743980, 0.573581, 0.342780,
		42.552414, 34.576859, 31.486748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769913, 34.745567, 31.598322>,  <42.031628, 34.175354, 31.246801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769913, 34.745567, 31.598322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142792, 34.856644, 31.505465>,  <42.366520, 34.923290, 31.449749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142792, 34.856644, 31.505465>,  <41.769913, 34.745567, 31.598322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142792, 34.856644, 31.505465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348429, 0.862139, -0.367850,
		0.097992, 0.423795, 0.900442,
		0.932199, 0.277693, -0.232145,
		42.422451, 34.939953, 31.435822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757534, 35.514328, 31.654804>,  <41.769913, 34.745567, 31.598322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757534, 35.514328, 31.654804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063389, 35.415127, 31.416870>,  <42.246902, 35.355606, 31.274109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063389, 35.415127, 31.416870>,  <41.757534, 35.514328, 31.654804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063389, 35.415127, 31.416870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133136, 0.842295, -0.522315,
		0.630563, 0.478574, 0.611030,
		0.764634, -0.248003, -0.594836,
		42.292778, 35.340725, 31.238419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153328, 36.112549, 31.700563>,  <41.757534, 35.514328, 31.654804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153328, 36.112549, 31.700563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280739, 35.921082, 31.373291>,  <42.357185, 35.806202, 31.176928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280739, 35.921082, 31.373291>,  <42.153328, 36.112549, 31.700563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280739, 35.921082, 31.373291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224925, 0.800320, -0.555785,
		0.920841, 0.361061, 0.147260,
		0.318528, -0.478667, -0.818179,
		42.376297, 35.777481, 31.127836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571480, 36.585541, 31.316343>,  <42.153328, 36.112549, 31.700563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571480, 36.585541, 31.316343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458771, 36.314922, 31.044197>,  <42.391148, 36.152554, 30.880909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458771, 36.314922, 31.044197>,  <42.571480, 36.585541, 31.316343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458771, 36.314922, 31.044197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009923, 0.707002, -0.707142,
		0.959431, -0.206002, -0.192498,
		-0.281769, -0.676544, -0.680364,
		42.374241, 36.111958, 30.840088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952564, 36.748314, 30.790012>,  <42.571480, 36.585541, 31.316343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952564, 36.748314, 30.790012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662548, 36.531509, 30.620052>,  <42.488537, 36.401428, 30.518076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662548, 36.531509, 30.620052>,  <42.952564, 36.748314, 30.790012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662548, 36.531509, 30.620052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021153, 0.634190, -0.772888,
		0.688379, -0.551389, -0.471280,
		-0.725042, -0.542009, -0.424899,
		42.445038, 36.368908, 30.492582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051914, 36.838142, 30.129377>,  <42.952564, 36.748314, 30.790012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051914, 36.838142, 30.129377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692738, 36.663315, 30.108715>,  <42.477230, 36.558418, 30.096317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692738, 36.663315, 30.108715>,  <43.051914, 36.838142, 30.129377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692738, 36.663315, 30.108715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175430, 0.463097, -0.868772,
		0.403629, -0.771049, -0.492510,
		-0.897947, -0.437063, -0.051654,
		42.423355, 36.532196, 30.093218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974693, 36.568748, 29.473154>,  <43.051914, 36.838142, 30.129377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974693, 36.568748, 29.473154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591770, 36.578800, 29.588341>,  <42.362015, 36.584831, 29.657454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591770, 36.578800, 29.588341>,  <42.974693, 36.568748, 29.473154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591770, 36.578800, 29.588341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250238, 0.426638, -0.869115,
		-0.144698, -0.904073, -0.402137,
		-0.957310, 0.025130, 0.287967,
		42.304577, 36.586338, 29.674730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701797, 36.150257, 28.967661>,  <42.974693, 36.568748, 29.473154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701797, 36.150257, 28.967661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452381, 36.417728, 29.129679>,  <42.302731, 36.578213, 29.226891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452381, 36.417728, 29.129679>,  <42.701797, 36.150257, 28.967661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452381, 36.417728, 29.129679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142205, 0.412448, -0.899814,
		-0.768746, -0.618672, -0.162090,
		-0.623544, 0.668679, 0.405046,
		42.265320, 36.618332, 29.251192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170277, 36.221581, 28.498066>,  <42.701797, 36.150257, 28.967661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170277, 36.221581, 28.498066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157410, 36.554790, 28.718987>,  <42.149689, 36.754715, 28.851540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157410, 36.554790, 28.718987>,  <42.170277, 36.221581, 28.498066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157410, 36.554790, 28.718987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211615, 0.534385, -0.818323,
		-0.976824, -0.143195, 0.159093,
		-0.032163, 0.833023, 0.552302,
		42.147762, 36.804699, 28.884678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542171, 36.494434, 28.367008>,  <42.170277, 36.221581, 28.498066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542171, 36.494434, 28.367008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730705, 36.808609, 28.527473>,  <41.843826, 36.997112, 28.623753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730705, 36.808609, 28.527473>,  <41.542171, 36.494434, 28.367008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730705, 36.808609, 28.527473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428140, 0.601437, -0.674514,
		-0.771062, 0.146170, 0.619756,
		0.471338, 0.785434, 0.401164,
		41.872108, 37.044239, 28.647823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068119, 37.088326, 28.297894>,  <41.542171, 36.494434, 28.367008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068119, 37.088326, 28.297894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445084, 37.219994, 28.321611>,  <41.671261, 37.298992, 28.335842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445084, 37.219994, 28.321611>,  <41.068119, 37.088326, 28.297894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445084, 37.219994, 28.321611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179706, 0.647852, -0.740266,
		-0.282087, 0.686977, 0.669694,
		0.942408, 0.329167, 0.059297,
		41.727806, 37.318745, 28.339401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056648, 37.786552, 28.240870>,  <41.068119, 37.088326, 28.297894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056648, 37.786552, 28.240870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421268, 37.674011, 28.120922>,  <41.640041, 37.606487, 28.048954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421268, 37.674011, 28.120922>,  <41.056648, 37.786552, 28.240870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421268, 37.674011, 28.120922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021116, 0.696274, -0.717465,
		0.410650, 0.660336, 0.628747,
		0.911548, -0.281351, -0.299869,
		41.694733, 37.589607, 28.030962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486637, 38.314491, 28.190613>,  <41.056648, 37.786552, 28.240870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486637, 38.314491, 28.190613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581722, 38.026329, 27.929996>,  <41.638775, 37.853432, 27.773626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581722, 38.026329, 27.929996>,  <41.486637, 38.314491, 28.190613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581722, 38.026329, 27.929996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065632, 0.657321, -0.750747,
		0.969115, 0.221225, 0.108973,
		0.237715, -0.720409, -0.651539,
		41.653038, 37.810207, 27.734535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929016, 38.480904, 27.664827>,  <41.486637, 38.314491, 28.190613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929016, 38.480904, 27.664827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717083, 38.182037, 27.504316>,  <41.589924, 38.002720, 27.408010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717083, 38.182037, 27.504316>,  <41.929016, 38.480904, 27.664827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717083, 38.182037, 27.504316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158575, 0.552081, -0.818572,
		0.833143, -0.370076, -0.410993,
		-0.529836, -0.747161, -0.401278,
		41.558132, 37.957890, 27.383932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117065, 38.267227, 26.977024>,  <41.929016, 38.480904, 27.664827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117065, 38.267227, 26.977024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721237, 38.214539, 27.000322>,  <41.483738, 38.182926, 27.014301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721237, 38.214539, 27.000322>,  <42.117065, 38.267227, 26.977024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721237, 38.214539, 27.000322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123240, 0.565144, -0.815735,
		0.074532, -0.814409, -0.575485,
		-0.989574, -0.131721, 0.058246,
		41.424366, 38.175022, 27.017796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864471, 37.712326, 26.808672>,  <42.117065, 38.267227, 26.977024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864471, 37.712326, 26.808672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051216, 37.511868, 26.517225>,  <42.163265, 37.391590, 26.342358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051216, 37.511868, 26.517225>,  <41.864471, 37.712326, 26.808672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051216, 37.511868, 26.517225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776662, -0.161638, 0.608826,
		-0.422885, -0.850130, 0.313762,
		0.466866, -0.501150, -0.728618,
		42.191277, 37.361523, 26.298639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117165, 37.129971, 27.210430>,  <41.864471, 37.712326, 26.808672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117165, 37.129971, 27.210430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308445, 37.263432, 26.885469>,  <42.423214, 37.343510, 26.690493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308445, 37.263432, 26.885469>,  <42.117165, 37.129971, 27.210430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308445, 37.263432, 26.885469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877715, -0.213812, 0.428837,
		-0.030619, -0.918129, -0.395097,
		0.478204, 0.333652, -0.812402,
		42.451908, 37.363525, 26.641748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658775, 36.639889, 27.018444>,  <42.117165, 37.129971, 27.210430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658775, 36.639889, 27.018444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744171, 37.026077, 26.958715>,  <42.795406, 37.257790, 26.922878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744171, 37.026077, 26.958715>,  <42.658775, 36.639889, 27.018444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744171, 37.026077, 26.958715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692348, -0.041682, 0.720359,
		0.689259, -0.257168, -0.677338,
		0.213486, 0.965467, -0.149320,
		42.808216, 37.315716, 26.913919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448906, 36.737465, 26.819445>,  <42.658775, 36.639889, 27.018444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448906, 36.737465, 26.819445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253529, 36.978924, 27.071487>,  <43.136303, 37.123798, 27.222713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253529, 36.978924, 27.071487>,  <43.448906, 36.737465, 26.819445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253529, 36.978924, 27.071487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718654, -0.131293, 0.682861,
		0.494935, 0.786367, -0.369684,
		-0.488443, 0.603646, 0.630107,
		43.106995, 37.160019, 27.260519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971531, 37.153858, 27.119600>,  <43.448906, 36.737465, 26.819445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971531, 37.153858, 27.119600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638603, 37.136059, 27.340605>,  <43.438847, 37.125378, 27.473207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638603, 37.136059, 27.340605>,  <43.971531, 37.153858, 27.119600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638603, 37.136059, 27.340605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537723, -0.306769, 0.785332,
		0.134546, 0.950743, 0.279258,
		-0.832317, -0.044501, 0.552510,
		43.388908, 37.122707, 27.506357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988495, 37.551228, 27.862476>,  <43.971531, 37.153858, 27.119600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988495, 37.551228, 27.862476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751122, 37.229286, 27.865292>,  <43.608700, 37.036121, 27.866982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751122, 37.229286, 27.865292>,  <43.988495, 37.551228, 27.862476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751122, 37.229286, 27.865292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486226, -0.351504, 0.800019,
		-0.641424, 0.478178, 0.599934,
		-0.593430, -0.804854, 0.007039,
		43.573093, 36.987831, 27.867403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750282, 37.314793, 28.521032>,  <43.988495, 37.551228, 27.862476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750282, 37.314793, 28.521032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768745, 36.991573, 28.286108>,  <43.779823, 36.797642, 28.145153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768745, 36.991573, 28.286108>,  <43.750282, 37.314793, 28.521032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768745, 36.991573, 28.286108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480350, -0.497544, 0.722297,
		-0.875861, -0.315456, 0.365177,
		0.046161, -0.808045, -0.587309,
		43.782593, 36.749161, 28.109915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476154, 36.858055, 28.886660>,  <43.750282, 37.314793, 28.521032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476154, 36.858055, 28.886660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734940, 36.676388, 28.641655>,  <43.890209, 36.567387, 28.494652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734940, 36.676388, 28.641655>,  <43.476154, 36.858055, 28.886660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734940, 36.676388, 28.641655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457798, -0.411042, 0.788331,
		-0.609807, -0.790425, -0.058008,
		0.646960, -0.454173, -0.612511,
		43.929028, 36.540134, 28.457901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599232, 36.123543, 29.090141>,  <43.476154, 36.858055, 28.886660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599232, 36.123543, 29.090141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933193, 36.189697, 28.880157>,  <44.133572, 36.229389, 28.754168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933193, 36.189697, 28.880157>,  <43.599232, 36.123543, 29.090141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.933193, 36.189697, 28.880157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521845, -0.541067, 0.659488,
		-0.174970, -0.824557, -0.538044,
		0.834904, 0.165385, -0.524961,
		44.183662, 36.239311, 28.722670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939480, 35.452095, 29.088579>,  <43.599232, 36.123543, 29.090141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939480, 35.452095, 29.088579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236729, 35.707848, 29.009619>,  <44.415077, 35.861298, 28.962242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236729, 35.707848, 29.009619>,  <43.939480, 35.452095, 29.088579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236729, 35.707848, 29.009619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610207, -0.526426, 0.592050,
		0.274630, -0.560418, -0.781351,
		0.743119, 0.639381, -0.197399,
		44.459663, 35.899662, 28.950399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494110, 35.040020, 28.963997>,  <43.939480, 35.452095, 29.088579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494110, 35.040020, 28.963997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639858, 35.403557, 29.045223>,  <44.727306, 35.621681, 29.093958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639858, 35.403557, 29.045223>,  <44.494110, 35.040020, 28.963997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639858, 35.403557, 29.045223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665150, -0.406604, 0.626298,
		0.651774, -0.093136, -0.752673,
		0.364371, 0.908845, 0.203064,
		44.749168, 35.676208, 29.106142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234669, 34.926991, 28.896477>,  <44.494110, 35.040020, 28.963997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234669, 34.926991, 28.896477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161198, 35.254311, 29.114336>,  <45.117115, 35.450703, 29.245052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161198, 35.254311, 29.114336>,  <45.234669, 34.926991, 28.896477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161198, 35.254311, 29.114336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478412, -0.409606, 0.776753,
		0.858710, 0.403242, -0.316249,
		-0.183682, 0.818303, 0.544648,
		45.106094, 35.499802, 29.277731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.909225, 35.012409, 29.224396>,  <45.234669, 34.926991, 28.896477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.909225, 35.012409, 29.224396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661362, 35.243744, 29.436642>,  <45.512646, 35.382545, 29.563990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661362, 35.243744, 29.436642>,  <45.909225, 35.012409, 29.224396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661362, 35.243744, 29.436642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428452, -0.317189, 0.846062,
		0.657612, 0.751612, -0.051240,
		-0.619657, 0.578335, 0.530617,
		45.475464, 35.417244, 29.595827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.269825, 35.460506, 29.585426>,  <45.909225, 35.012409, 29.224396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.269825, 35.460506, 29.585426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934975, 35.439934, 29.803263>,  <45.734066, 35.427589, 29.933964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934975, 35.439934, 29.803263>,  <46.269825, 35.460506, 29.585426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.934975, 35.439934, 29.803263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546178, -0.133533, 0.826957,
		0.030187, 0.989709, 0.139876,
		-0.837125, -0.051434, 0.544589,
		45.683838, 35.424503, 29.966639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.452175, 35.878983, 30.172525>,  <46.269825, 35.460506, 29.585426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.452175, 35.878983, 30.172525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150761, 35.638386, 30.278643>,  <45.969910, 35.494026, 30.342312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150761, 35.638386, 30.278643>,  <46.452175, 35.878983, 30.172525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.150761, 35.638386, 30.278643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432062, -0.148982, 0.889453,
		-0.495479, 0.784861, 0.372148,
		-0.753540, -0.601496, 0.265292,
		45.924698, 35.457935, 30.358231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.491482, 36.067726, 30.805275>,  <46.452175, 35.878983, 30.172525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.491482, 36.067726, 30.805275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.262798, 35.739544, 30.805202>,  <46.125587, 35.542633, 30.805159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.262798, 35.739544, 30.805202>,  <46.491482, 36.067726, 30.805275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.262798, 35.739544, 30.805202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299254, -0.208730, 0.931063,
		-0.763935, 0.532242, 0.364858,
		-0.571708, -0.820457, -0.000181,
		46.091286, 35.493408, 30.805149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.271526, 36.057461, 31.521021>,  <46.491482, 36.067726, 30.805275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.271526, 36.057461, 31.521021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226517, 35.692169, 31.364380>,  <46.199512, 35.472996, 31.270395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226517, 35.692169, 31.364380>,  <46.271526, 36.057461, 31.521021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.226517, 35.692169, 31.364380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178985, -0.406287, 0.896044,
		-0.977396, 0.030736, 0.209172,
		-0.112525, -0.913229, -0.391602,
		46.192760, 35.418201, 31.246899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804115, 35.672527, 31.978016>,  <46.271526, 36.057461, 31.521021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.804115, 35.672527, 31.978016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014595, 35.407104, 31.765297>,  <46.140884, 35.247852, 31.637665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014595, 35.407104, 31.765297>,  <45.804115, 35.672527, 31.978016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.014595, 35.407104, 31.765297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179834, -0.524401, 0.832264,
		-0.831128, -0.533573, -0.156610,
		0.526200, -0.663554, -0.531798,
		46.172455, 35.208038, 31.605757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.506676, 35.100964, 32.178776>,  <45.804115, 35.672527, 31.978016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.506676, 35.100964, 32.178776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854019, 34.979931, 32.021599>,  <46.062424, 34.907310, 31.927292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854019, 34.979931, 32.021599>,  <45.506676, 35.100964, 32.178776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.854019, 34.979931, 32.021599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140476, -0.609803, 0.780005,
		-0.475634, -0.732520, -0.487019,
		0.868354, -0.302582, -0.392944,
		46.114525, 34.889156, 31.903715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531685, 34.323933, 32.214207>,  <45.506676, 35.100964, 32.178776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531685, 34.323933, 32.214207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901112, 34.474468, 32.184818>,  <46.122768, 34.564789, 32.167183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901112, 34.474468, 32.184818>,  <45.531685, 34.323933, 32.214207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.901112, 34.474468, 32.184818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265512, -0.489414, 0.830649,
		0.276648, -0.786665, -0.551928,
		0.923563, 0.376341, -0.073474,
		46.178181, 34.587372, 32.162777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955563, 33.748482, 32.311558>,  <45.531685, 34.323933, 32.214207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955563, 33.748482, 32.311558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.168575, 34.069115, 32.420277>,  <46.296383, 34.261494, 32.485508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.168575, 34.069115, 32.420277>,  <45.955563, 33.748482, 32.311558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168575, 34.069115, 32.420277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203376, -0.432896, 0.878202,
		0.821611, -0.412396, -0.393555,
		0.532535, 0.801580, 0.271801,
		46.328335, 34.309589, 32.501816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.608746, 33.540051, 32.529259>,  <45.955563, 33.748482, 32.311558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.608746, 33.540051, 32.529259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586552, 33.903156, 32.695580>,  <46.573235, 34.121017, 32.795372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586552, 33.903156, 32.695580>,  <46.608746, 33.540051, 32.529259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.586552, 33.903156, 32.695580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417595, -0.357172, 0.835490,
		0.906938, 0.219996, -0.359258,
		-0.055487, 0.907761, 0.415802,
		46.569904, 34.175484, 32.820320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.235573, 33.672733, 32.812057>,  <46.608746, 33.540051, 32.529259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.235573, 33.672733, 32.812057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.986362, 33.921196, 33.002213>,  <46.836834, 34.070274, 33.116306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.986362, 33.921196, 33.002213>,  <47.235573, 33.672733, 32.812057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.986362, 33.921196, 33.002213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399430, -0.269895, 0.876135,
		0.672525, 0.735743, -0.079957,
		-0.623029, 0.621160, 0.475389,
		46.799454, 34.107544, 33.144829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.565685, 33.849762, 33.390766>,  <47.235573, 33.672733, 32.812057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.565685, 33.849762, 33.390766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203690, 33.986607, 33.491917>,  <46.986492, 34.068714, 33.552608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203690, 33.986607, 33.491917>,  <47.565685, 33.849762, 33.390766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.203690, 33.986607, 33.491917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172947, -0.247223, 0.953399,
		0.388689, 0.906553, 0.164567,
		-0.904992, 0.342115, 0.252878,
		46.932194, 34.089241, 33.567780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.690998, 34.115036, 33.972591>,  <47.565685, 33.849762, 33.390766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.690998, 34.115036, 33.972591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.295578, 34.054829, 33.976700>,  <47.058327, 34.018703, 33.979164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.295578, 34.054829, 33.976700>,  <47.690998, 34.115036, 33.972591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.295578, 34.054829, 33.976700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063812, -0.355483, 0.932502,
		-0.136707, 0.922484, 0.361019,
		-0.988554, -0.150516, 0.010269,
		46.999012, 34.009674, 33.979782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.430943, 34.466709, 34.578114>,  <47.690998, 34.115036, 33.972591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.430943, 34.466709, 34.578114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.152706, 34.198982, 34.473679>,  <46.985764, 34.038345, 34.411018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.152706, 34.198982, 34.473679>,  <47.430943, 34.466709, 34.578114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.152706, 34.198982, 34.473679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149656, -0.220450, 0.963849,
		-0.702681, 0.709515, 0.053174,
		-0.695588, -0.669320, -0.261090,
		46.944031, 33.998184, 34.395351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.699310, 34.580391, 34.822517>,  <47.430943, 34.466709, 34.578114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.699310, 34.580391, 34.822517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.814686, 34.199814, 34.779507>,  <46.883911, 33.971470, 34.753700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.814686, 34.199814, 34.779507>,  <46.699310, 34.580391, 34.822517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.814686, 34.199814, 34.779507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027093, -0.104142, 0.994193,
		-0.957114, -0.289680, -0.004261,
		0.288442, -0.951441, -0.107524,
		46.901218, 33.914383, 34.747250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.819088, 34.318996, 35.516762>,  <46.699310, 34.580391, 34.822517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.819088, 34.318996, 35.516762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.991764, 34.177750, 35.848774>,  <47.095367, 34.093002, 36.047981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.991764, 34.177750, 35.848774>,  <46.819088, 34.318996, 35.516762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.991764, 34.177750, 35.848774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103778, -0.894637, -0.434575,
		0.896034, 0.273740, -0.349557,
		0.431687, -0.353117, 0.830033,
		47.121269, 34.071815, 36.097782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.021935, 35.008114, 35.673428>,  <46.819088, 34.318996, 35.516762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.021935, 35.008114, 35.673428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.405354, 35.014927, 35.787193>,  <47.635406, 35.019012, 35.855453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.405354, 35.014927, 35.787193>,  <47.021935, 35.008114, 35.673428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.405354, 35.014927, 35.787193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224890, -0.658120, -0.718542,
		0.174939, 0.752720, -0.634672,
		0.958551, 0.017030, 0.284410,
		47.692921, 35.020035, 35.872517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.353947, 35.245419, 35.121296>,  <47.021935, 35.008114, 35.673428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.353947, 35.245419, 35.121296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621887, 35.039051, 35.334881>,  <47.782654, 34.915230, 35.463032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621887, 35.039051, 35.334881>,  <47.353947, 35.245419, 35.121296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.621887, 35.039051, 35.334881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300266, -0.469494, -0.830311,
		0.679070, 0.716518, -0.159578,
		0.669854, -0.515923, 0.533965,
		47.822842, 34.884274, 35.495071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.954548, 35.249634, 34.836815>,  <47.353947, 35.245419, 35.121296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.954548, 35.249634, 34.836815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.942890, 34.901836, 35.034050>,  <47.935898, 34.693157, 35.152390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.942890, 34.901836, 35.034050>,  <47.954548, 35.249634, 34.836815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.942890, 34.901836, 35.034050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398743, -0.462461, -0.791918,
		0.916600, 0.173538, 0.360179,
		-0.029141, -0.869491, 0.493089,
		47.934147, 34.640987, 35.181976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.565380, 34.584557, 45.851246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.256939, 34.346767, 45.760033>,  <35.071873, 34.204094, 45.705303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.256939, 34.346767, 45.760033>,  <35.565380, 34.584557, 45.851246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256939, 34.346767, 45.760033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228324, 0.076147, -0.970603,
		0.594364, -0.800499, 0.077015,
		-0.771102, -0.594476, -0.228033,
		35.025608, 34.168427, 45.691624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847874, 33.916019, 45.552334>,  <35.565380, 34.584557, 45.851246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847874, 33.916019, 45.552334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475643, 33.958786, 45.412277>,  <35.252304, 33.984444, 45.328243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475643, 33.958786, 45.412277>,  <35.847874, 33.916019, 45.552334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475643, 33.958786, 45.412277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325196, -0.197899, -0.924707,
		-0.168153, -0.974375, 0.149393,
		-0.930576, 0.106910, -0.350140,
		35.196472, 33.990860, 45.307236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758545, 33.323891, 45.087727>,  <35.847874, 33.916019, 45.552334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758545, 33.323891, 45.087727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.477001, 33.585564, 44.976997>,  <35.308075, 33.742565, 44.910561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.477001, 33.585564, 44.976997>,  <35.758545, 33.323891, 45.087727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477001, 33.585564, 44.976997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241363, -0.146263, -0.959349,
		-0.668074, -0.742063, -0.054946,
		-0.703861, 0.654178, -0.276821,
		35.265842, 33.781818, 44.893951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390194, 32.988007, 44.444351>,  <35.758545, 33.323891, 45.087727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390194, 32.988007, 44.444351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.318493, 33.380512, 44.416088>,  <35.275471, 33.616016, 44.399128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.318493, 33.380512, 44.416088>,  <35.390194, 32.988007, 44.444351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318493, 33.380512, 44.416088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069722, -0.058972, -0.995822,
		-0.981329, -0.183433, -0.057844,
		-0.179256, 0.981262, -0.070660,
		35.264717, 33.674892, 44.394890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942139, 32.934223, 43.855160>,  <35.390194, 32.988007, 44.444351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942139, 32.934223, 43.855160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.072571, 33.308174, 43.911282>,  <35.150829, 33.532543, 43.944954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.072571, 33.308174, 43.911282>,  <34.942139, 32.934223, 43.855160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072571, 33.308174, 43.911282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090277, 0.116943, -0.989027,
		-0.941022, 0.335168, -0.046265,
		0.326079, 0.934873, 0.140304,
		35.170395, 33.588634, 43.953373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503021, 33.455898, 43.433289>,  <34.942139, 32.934223, 43.855160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503021, 33.455898, 43.433289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.850372, 33.637924, 43.512119>,  <35.058784, 33.747139, 43.559418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.850372, 33.637924, 43.512119>,  <34.503021, 33.455898, 43.433289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850372, 33.637924, 43.512119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116917, 0.198338, -0.973136,
		-0.481924, 0.868091, 0.119028,
		0.868378, 0.455061, 0.197078,
		35.110886, 33.774441, 43.571243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534031, 34.204929, 43.048828>,  <34.503021, 33.455898, 43.433289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534031, 34.204929, 43.048828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.918995, 34.124668, 43.122051>,  <35.149971, 34.076511, 43.165985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.918995, 34.124668, 43.122051>,  <34.534031, 34.204929, 43.048828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918995, 34.124668, 43.122051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227997, 0.230520, -0.945980,
		0.147614, 0.952155, 0.267603,
		0.962407, -0.200653, 0.183060,
		35.207718, 34.064472, 43.176968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921505, 34.786320, 42.711796>,  <34.534031, 34.204929, 43.048828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921505, 34.786320, 42.711796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.158913, 34.470936, 42.776386>,  <35.301357, 34.281708, 42.815140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.158913, 34.470936, 42.776386>,  <34.921505, 34.786320, 42.711796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158913, 34.470936, 42.776386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436922, 0.147155, -0.887380,
		0.675898, 0.597229, 0.431833,
		0.593515, -0.788456, 0.161481,
		35.336967, 34.234398, 42.824829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547787, 35.024242, 42.323235>,  <34.921505, 34.786320, 42.711796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547787, 35.024242, 42.323235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.606339, 34.632835, 42.381302>,  <35.641468, 34.397991, 42.416142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.606339, 34.632835, 42.381302>,  <35.547787, 35.024242, 42.323235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606339, 34.632835, 42.381302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477294, -0.058678, -0.876782,
		0.866466, 0.197634, 0.458451,
		0.146381, -0.978518, 0.145172,
		35.650253, 34.339279, 42.424854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181801, 34.929432, 42.004055>,  <35.547787, 35.024242, 42.323235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181801, 34.929432, 42.004055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044300, 34.555614, 42.040840>,  <35.961800, 34.331322, 42.062912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044300, 34.555614, 42.040840>,  <36.181801, 34.929432, 42.004055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044300, 34.555614, 42.040840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383929, -0.229239, -0.894454,
		0.856990, -0.272164, 0.437601,
		-0.343753, -0.934546, 0.091964,
		35.941174, 34.275249, 42.068428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728981, 34.578678, 41.795773>,  <36.181801, 34.929432, 42.004055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728981, 34.578678, 41.795773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.399906, 34.356712, 41.746368>,  <36.202461, 34.223534, 41.716724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.399906, 34.356712, 41.746368>,  <36.728981, 34.578678, 41.795773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399906, 34.356712, 41.746368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346665, -0.317496, -0.882621,
		0.450567, -0.768937, 0.453570,
		-0.822686, -0.554917, -0.123510,
		36.153099, 34.190239, 41.709316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956146, 33.829372, 41.634895>,  <36.728981, 34.578678, 41.795773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956146, 33.829372, 41.634895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592979, 33.901520, 41.483555>,  <36.375080, 33.944809, 41.392750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592979, 33.901520, 41.483555>,  <36.956146, 33.829372, 41.634895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592979, 33.901520, 41.483555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282178, -0.404444, -0.869943,
		-0.309931, -0.896601, 0.316307,
		-0.907920, 0.180368, -0.378350,
		36.320602, 33.955631, 41.370049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839241, 33.276943, 41.247562>,  <36.956146, 33.829372, 41.634895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839241, 33.276943, 41.247562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576542, 33.545033, 41.109299>,  <36.418922, 33.705887, 41.026340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576542, 33.545033, 41.109299>,  <36.839241, 33.276943, 41.247562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576542, 33.545033, 41.109299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346587, -0.138828, -0.927687,
		-0.669742, -0.729063, -0.141114,
		-0.656752, 0.670219, -0.345662,
		36.379517, 33.746098, 41.005600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654194, 33.024780, 40.566563>,  <36.839241, 33.276943, 41.247562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654194, 33.024780, 40.566563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.553833, 33.411846, 40.556229>,  <36.493614, 33.644085, 40.550030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.553833, 33.411846, 40.556229>,  <36.654194, 33.024780, 40.566563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553833, 33.411846, 40.556229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283486, 0.047937, -0.957778,
		-0.925571, -0.247634, -0.286347,
		-0.250905, 0.967667, -0.025832,
		36.478561, 33.702145, 40.548477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096405, 33.119675, 40.060169>,  <36.654194, 33.024780, 40.566563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096405, 33.119675, 40.060169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.252209, 33.486450, 40.094826>,  <36.345692, 33.706516, 40.115620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.252209, 33.486450, 40.094826>,  <36.096405, 33.119675, 40.060169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252209, 33.486450, 40.094826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111803, 0.046306, -0.992651,
		-0.914211, 0.396336, -0.084479,
		0.389511, 0.916937, 0.086645,
		36.369061, 33.761532, 40.120819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762394, 33.516716, 39.597992>,  <36.096405, 33.119675, 40.060169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762394, 33.516716, 39.597992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112167, 33.692585, 39.680023>,  <36.322029, 33.798107, 39.729240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112167, 33.692585, 39.680023>,  <35.762394, 33.516716, 39.597992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112167, 33.692585, 39.680023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190560, 0.077460, -0.978615,
		-0.446159, 0.894810, -0.016051,
		0.874431, 0.439676, 0.205075,
		36.374496, 33.824490, 39.741547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807816, 34.006310, 39.061218>,  <35.762394, 33.516716, 39.597992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807816, 34.006310, 39.061218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177334, 33.971878, 39.210449>,  <36.399044, 33.951221, 39.299988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177334, 33.971878, 39.210449>,  <35.807816, 34.006310, 39.061218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177334, 33.971878, 39.210449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382875, 0.204484, -0.900885,
		0.001255, 0.975078, 0.221858,
		0.923799, -0.086074, 0.373077,
		36.454475, 33.946056, 39.322372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245106, 34.580532, 38.785393>,  <35.807816, 34.006310, 39.061218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245106, 34.580532, 38.785393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.534874, 34.334103, 38.909111>,  <36.708736, 34.186245, 38.983341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.534874, 34.334103, 38.909111>,  <36.245106, 34.580532, 38.785393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534874, 34.334103, 38.909111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491890, 0.147614, -0.858053,
		0.482970, 0.773731, 0.409977,
		0.724420, -0.616077, 0.309297,
		36.752201, 34.149281, 39.001900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865711, 34.962700, 38.630470>,  <36.245106, 34.580532, 38.785393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865711, 34.962700, 38.630470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928265, 34.567642, 38.634426>,  <36.965797, 34.330608, 38.636799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928265, 34.567642, 38.634426>,  <36.865711, 34.962700, 38.630470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928265, 34.567642, 38.634426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434423, 0.059788, -0.898723,
		0.887030, 0.144836, 0.438406,
		0.156379, -0.987648, 0.009886,
		36.975178, 34.271347, 38.637390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607693, 34.814922, 38.349411>,  <36.865711, 34.962700, 38.630470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607693, 34.814922, 38.349411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446224, 34.449017, 38.355885>,  <37.349342, 34.229473, 38.359768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446224, 34.449017, 38.355885>,  <37.607693, 34.814922, 38.349411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446224, 34.449017, 38.355885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479993, -0.226808, -0.847446,
		0.778880, -0.334324, 0.530635,
		-0.403674, -0.914760, 0.016183,
		37.325123, 34.174587, 38.360741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195957, 34.296471, 38.338081>,  <37.607693, 34.814922, 38.349411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195957, 34.296471, 38.338081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.872490, 34.124657, 38.177303>,  <37.678410, 34.021568, 38.080837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.872490, 34.124657, 38.177303>,  <38.195957, 34.296471, 38.338081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872490, 34.124657, 38.177303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511616, -0.176286, -0.840935,
		0.290353, -0.885677, 0.362313,
		-0.808668, -0.429534, -0.401941,
		37.629890, 33.995796, 38.056721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424252, 33.589958, 38.069527>,  <38.195957, 34.296471, 38.338081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424252, 33.589958, 38.069527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094467, 33.720795, 37.884800>,  <37.896595, 33.799297, 37.773964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094467, 33.720795, 37.884800>,  <38.424252, 33.589958, 38.069527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094467, 33.720795, 37.884800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373655, -0.298241, -0.878313,
		-0.425017, -0.896697, 0.123672,
		-0.824465, 0.327087, -0.461813,
		37.847126, 33.818920, 37.746258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199017, 33.765106, 38.216381>,  <38.424252, 33.589958, 38.069527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199017, 33.765106, 38.216381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.567768, 33.919437, 38.230671>,  <39.789021, 34.012035, 38.239246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.567768, 33.919437, 38.230671>,  <39.199017, 33.765106, 38.216381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567768, 33.919437, 38.230671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121384, 0.200000, 0.972248,
		0.367979, -0.900629, 0.231209,
		0.921877, 0.385832, 0.035726,
		39.844330, 34.035187, 38.241390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493843, 33.489204, 38.873005>,  <39.199017, 33.765106, 38.216381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493843, 33.489204, 38.873005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.757496, 33.778713, 38.791321>,  <39.915688, 33.952419, 38.742310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.757496, 33.778713, 38.791321>,  <39.493843, 33.489204, 38.873005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757496, 33.778713, 38.791321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004653, 0.267622, 0.963513,
		0.752012, -0.636033, 0.173031,
		0.659133, 0.723768, -0.204215,
		39.955235, 33.995842, 38.730057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186649, 33.319317, 39.173668>,  <39.493843, 33.489204, 38.873005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186649, 33.319317, 39.173668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.091003, 33.706219, 39.139645>,  <40.033615, 33.938362, 39.119228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.091003, 33.706219, 39.139645>,  <40.186649, 33.319317, 39.173668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091003, 33.706219, 39.139645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031314, 0.079876, 0.996313,
		0.970487, 0.240893, 0.011189,
		-0.239111, 0.967259, -0.085062,
		40.019272, 33.996395, 39.114124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562511, 33.504963, 39.723900>,  <40.186649, 33.319317, 39.173668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562511, 33.504963, 39.723900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.333187, 33.814392, 39.615898>,  <40.195591, 34.000050, 39.551098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.333187, 33.814392, 39.615898>,  <40.562511, 33.504963, 39.723900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333187, 33.814392, 39.615898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139609, 0.232495, 0.962525,
		0.807356, 0.589522, -0.025295,
		-0.573311, 0.773569, -0.270009,
		40.161194, 34.046463, 39.534897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766983, 34.112457, 40.086285>,  <40.562511, 33.504963, 39.723900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766983, 34.112457, 40.086285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.398849, 34.215714, 39.968746>,  <40.177971, 34.277668, 39.898224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.398849, 34.215714, 39.968746>,  <40.766983, 34.112457, 40.086285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398849, 34.215714, 39.968746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245722, 0.202917, 0.947863,
		0.304312, 0.944556, -0.123320,
		-0.920334, 0.258144, -0.293849,
		40.122749, 34.293156, 39.880592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574875, 34.842777, 40.375973>,  <40.766983, 34.112457, 40.086285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574875, 34.842777, 40.375973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.211834, 34.705482, 40.279266>,  <39.994011, 34.623104, 40.221241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.211834, 34.705482, 40.279266>,  <40.574875, 34.842777, 40.375973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211834, 34.705482, 40.279266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352313, 0.309477, 0.883232,
		-0.228338, 0.886798, -0.401809,
		-0.907600, -0.343238, -0.241765,
		39.939552, 34.602512, 40.206738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068272, 35.346169, 40.456112>,  <40.574875, 34.842777, 40.375973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068272, 35.346169, 40.456112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.893688, 34.989281, 40.502506>,  <39.788937, 34.775150, 40.530342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.893688, 34.989281, 40.502506>,  <40.068272, 35.346169, 40.456112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893688, 34.989281, 40.502506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313656, 0.271711, 0.909831,
		-0.843281, 0.360725, -0.398440,
		-0.436460, -0.892217, 0.115985,
		39.762749, 34.721615, 40.537300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396584, 35.453926, 40.686741>,  <40.068272, 35.346169, 40.456112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396584, 35.453926, 40.686741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.479946, 35.078320, 40.796143>,  <39.529964, 34.852955, 40.861786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.479946, 35.078320, 40.796143>,  <39.396584, 35.453926, 40.686741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479946, 35.078320, 40.796143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412258, 0.169249, 0.895208,
		-0.886910, -0.299326, -0.351845,
		0.208410, -0.939020, 0.273508,
		39.542469, 34.796612, 40.878197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821182, 35.216118, 41.156910>,  <39.396584, 35.453926, 40.686741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821182, 35.216118, 41.156910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.122501, 34.963791, 41.231319>,  <39.303295, 34.812393, 41.275963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.122501, 34.963791, 41.231319>,  <38.821182, 35.216118, 41.156910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122501, 34.963791, 41.231319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286749, -0.060485, 0.956095,
		-0.591872, -0.773568, -0.226450,
		0.753301, -0.630820, 0.186020,
		39.348492, 34.774544, 41.287125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438751, 34.568859, 41.435158>,  <38.821182, 35.216118, 41.156910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438751, 34.568859, 41.435158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.809242, 34.603439, 41.581928>,  <39.031536, 34.624187, 41.669991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.809242, 34.603439, 41.581928>,  <38.438751, 34.568859, 41.435158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809242, 34.603439, 41.581928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344261, -0.202615, 0.916750,
		0.153602, -0.975435, -0.157904,
		0.926224, 0.086454, 0.366927,
		39.087109, 34.629375, 41.692005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400433, 34.117371, 41.986824>,  <38.438751, 34.568859, 41.435158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400433, 34.117371, 41.986824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.753643, 34.285202, 42.070930>,  <38.965569, 34.385902, 42.121395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.753643, 34.285202, 42.070930>,  <38.400433, 34.117371, 41.986824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753643, 34.285202, 42.070930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108353, -0.253667, 0.961204,
		0.456640, -0.871554, -0.178533,
		0.883029, 0.419579, 0.210270,
		39.018551, 34.411076, 42.134010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641323, 33.767193, 42.509930>,  <38.400433, 34.117371, 41.986824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641323, 33.767193, 42.509930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.872963, 34.092934, 42.525280>,  <39.011948, 34.288380, 42.534489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.872963, 34.092934, 42.525280>,  <38.641323, 33.767193, 42.509930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872963, 34.092934, 42.525280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013801, -0.037269, 0.999210,
		0.815143, -0.579167, -0.010344,
		0.579095, 0.814356, 0.038373,
		39.046692, 34.337242, 42.536793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079876, 33.630920, 43.026653>,  <38.641323, 33.767193, 42.509930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079876, 33.630920, 43.026653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.085411, 34.028969, 42.987591>,  <39.088730, 34.267799, 42.964153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.085411, 34.028969, 42.987591>,  <39.079876, 33.630920, 43.026653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085411, 34.028969, 42.987591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075878, 0.098426, 0.992247,
		0.997021, -0.006318, 0.076870,
		0.013835, 0.995125, -0.097653,
		39.089561, 34.327507, 42.958294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578728, 33.840160, 43.432209>,  <39.079876, 33.630920, 43.026653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578728, 33.840160, 43.432209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.365841, 34.178070, 43.409931>,  <39.238110, 34.380814, 43.396564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.365841, 34.178070, 43.409931>,  <39.578728, 33.840160, 43.432209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365841, 34.178070, 43.409931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071542, 0.110432, 0.991305,
		0.843578, 0.523608, -0.119211,
		-0.532220, 0.844772, -0.055698,
		39.206177, 34.431503, 43.393223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911530, 34.366623, 43.925713>,  <39.578728, 33.840160, 43.432209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911530, 34.366623, 43.925713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.532848, 34.474239, 43.854858>,  <39.305641, 34.538811, 43.812344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.532848, 34.474239, 43.854858>,  <39.911530, 34.366623, 43.925713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532848, 34.474239, 43.854858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077020, 0.344906, 0.935472,
		0.312777, 0.899253, -0.305801,
		-0.946699, 0.269041, -0.177139,
		39.248840, 34.554951, 43.801716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805141, 34.894272, 44.324333>,  <39.911530, 34.366623, 43.925713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805141, 34.894272, 44.324333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.422588, 34.805386, 44.248497>,  <39.193054, 34.752052, 44.202995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.422588, 34.805386, 44.248497>,  <39.805141, 34.894272, 44.324333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422588, 34.805386, 44.248497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226599, 0.154844, 0.961601,
		-0.184325, 0.962624, -0.198445,
		-0.956388, -0.222215, -0.189588,
		39.135674, 34.738720, 44.191620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416351, 35.368858, 44.704845>,  <39.805141, 34.894272, 44.324333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416351, 35.368858, 44.704845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.188538, 35.052414, 44.615608>,  <39.051849, 34.862545, 44.562065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.188538, 35.052414, 44.615608>,  <39.416351, 35.368858, 44.704845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188538, 35.052414, 44.615608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330338, -0.028233, 0.943440,
		-0.752668, 0.611016, -0.245256,
		-0.569533, -0.791115, -0.223092,
		39.017677, 34.815079, 44.548679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685238, 35.571697, 44.893021>,  <39.416351, 35.368858, 44.704845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685238, 35.571697, 44.893021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.729424, 35.174236, 44.884518>,  <38.755936, 34.935760, 44.879417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.729424, 35.174236, 44.884518>,  <38.685238, 35.571697, 44.893021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729424, 35.174236, 44.884518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378040, -0.061784, 0.923725,
		-0.919176, -0.094000, -0.382466,
		0.110461, -0.993653, -0.021255,
		38.762562, 34.876141, 44.878139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.870064, 35.114475, 44.899296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129547, 34.832088, 45.012993>,  <38.285236, 34.662659, 45.081211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129547, 34.832088, 45.012993>,  <37.870064, 35.114475, 44.899296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129547, 34.832088, 45.012993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626492, -0.283329, 0.726108,
		-0.432073, -0.649106, -0.626079,
		0.648707, -0.705965, 0.284241,
		38.324158, 34.620300, 45.098267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475151, 34.682178, 45.188740>,  <37.870064, 35.114475, 44.899296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475151, 34.682178, 45.188740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830528, 34.542850, 45.308296>,  <38.043755, 34.459255, 45.380032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830528, 34.542850, 45.308296>,  <37.475151, 34.682178, 45.188740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830528, 34.542850, 45.308296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421920, -0.363440, 0.830599,
		-0.180682, -0.864052, -0.469859,
		0.888447, -0.348317, 0.298893,
		38.097061, 34.438354, 45.397964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229561, 34.121033, 45.551605>,  <37.475151, 34.682178, 45.188740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229561, 34.121033, 45.551605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.611210, 34.170498, 45.660679>,  <37.840199, 34.200176, 45.726124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.611210, 34.170498, 45.660679>,  <37.229561, 34.121033, 45.551605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611210, 34.170498, 45.660679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237009, -0.244584, 0.940216,
		0.182964, -0.961710, -0.204054,
		0.954123, 0.123663, 0.272684,
		37.897446, 34.207596, 45.742485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457394, 33.510548, 45.807350>,  <37.229561, 34.121033, 45.551605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457394, 33.510548, 45.807350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652065, 33.821789, 45.966194>,  <37.768867, 34.008533, 46.061501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652065, 33.821789, 45.966194>,  <37.457394, 33.510548, 45.807350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652065, 33.821789, 45.966194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296395, -0.280534, 0.912935,
		0.821764, -0.562005, 0.094098,
		0.486676, 0.778107, 0.397109,
		37.798069, 34.055222, 46.085327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661728, 33.221268, 46.403500>,  <37.457394, 33.510548, 45.807350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661728, 33.221268, 46.403500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.699387, 33.614544, 46.466076>,  <37.721981, 33.850510, 46.503624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.699387, 33.614544, 46.466076>,  <37.661728, 33.221268, 46.403500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699387, 33.614544, 46.466076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432381, -0.101166, 0.895998,
		0.896762, -0.152001, 0.415587,
		0.094150, 0.983189, 0.156444,
		37.727631, 33.909500, 46.513008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959778, 33.322632, 46.927921>,  <37.661728, 33.221268, 46.403500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959778, 33.322632, 46.927921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.780594, 33.679054, 46.898678>,  <37.673084, 33.892910, 46.881130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.780594, 33.679054, 46.898678>,  <37.959778, 33.322632, 46.927921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780594, 33.679054, 46.898678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312057, -0.079198, 0.946757,
		0.837825, 0.446925, 0.313539,
		-0.447961, 0.891058, -0.073113,
		37.646206, 33.946373, 46.876743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249252, 33.704288, 47.485424>,  <37.959778, 33.322632, 46.927921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249252, 33.704288, 47.485424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.901470, 33.884327, 47.403980>,  <37.692799, 33.992352, 47.355114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.901470, 33.884327, 47.403980>,  <38.249252, 33.704288, 47.485424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901470, 33.884327, 47.403980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256341, -0.058742, 0.964800,
		0.422291, 0.891047, 0.166452,
		-0.869459, 0.450095, -0.203605,
		37.640633, 34.019356, 47.342899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167805, 34.160969, 48.052303>,  <38.249252, 33.704288, 47.485424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167805, 34.160969, 48.052303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.808907, 34.100254, 47.886456>,  <37.593567, 34.063828, 47.786949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.808907, 34.100254, 47.886456>,  <38.167805, 34.160969, 48.052303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808907, 34.100254, 47.886456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411527, -0.052750, 0.909870,
		-0.159975, 0.987005, -0.015133,
		-0.897248, -0.151784, -0.414618,
		37.539734, 34.054718, 47.762070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843315, 34.571178, 48.384930>,  <38.167805, 34.160969, 48.052303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843315, 34.571178, 48.384930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.559299, 34.327866, 48.243042>,  <37.388889, 34.181877, 48.157909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.559299, 34.327866, 48.243042>,  <37.843315, 34.571178, 48.384930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559299, 34.327866, 48.243042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368681, -0.108042, 0.923256,
		-0.599928, 0.786331, -0.147549,
		-0.710043, -0.608285, -0.354722,
		37.346287, 34.145378, 48.136627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337475, 34.745884, 48.810982>,  <37.843315, 34.571178, 48.384930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337475, 34.745884, 48.810982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.244663, 34.392384, 48.648426>,  <37.188976, 34.180283, 48.550892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.244663, 34.392384, 48.648426>,  <37.337475, 34.745884, 48.810982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244663, 34.392384, 48.648426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359322, -0.310366, 0.880091,
		-0.903908, 0.350233, -0.245535,
		-0.232032, -0.883747, -0.406389,
		37.175053, 34.127258, 48.526508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622890, 34.723587, 48.709118>,  <37.337475, 34.745884, 48.810982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622890, 34.723587, 48.709118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754265, 34.346378, 48.730446>,  <36.833092, 34.120052, 48.743240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754265, 34.346378, 48.730446>,  <36.622890, 34.723587, 48.709118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754265, 34.346378, 48.730446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388082, -0.083267, 0.917856,
		-0.861116, -0.322150, -0.393317,
		0.328438, -0.943020, 0.053318,
		36.852795, 34.063473, 48.746441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996040, 34.287846, 49.029751>,  <36.622890, 34.723587, 48.709118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996040, 34.287846, 49.029751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.326923, 34.066677, 49.069767>,  <36.525452, 33.933975, 49.093777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.326923, 34.066677, 49.069767>,  <35.996040, 34.287846, 49.029751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326923, 34.066677, 49.069767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308037, -0.297342, 0.903715,
		-0.469937, -0.778375, -0.416284,
		0.827207, -0.552920, 0.100036,
		36.575085, 33.900803, 49.099777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711441, 33.635929, 49.267124>,  <35.996040, 34.287846, 49.029751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711441, 33.635929, 49.267124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.102554, 33.625683, 49.350334>,  <36.337223, 33.619537, 49.400261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.102554, 33.625683, 49.350334>,  <35.711441, 33.635929, 49.267124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102554, 33.625683, 49.350334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193571, -0.490985, 0.849390,
		0.080382, -0.870791, -0.485038,
		0.977788, -0.025613, 0.208027,
		36.395889, 33.618000, 49.412743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834175, 33.016468, 49.648445>,  <35.711441, 33.635929, 49.267124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834175, 33.016468, 49.648445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163765, 33.223301, 49.741138>,  <36.361519, 33.347401, 49.796753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163765, 33.223301, 49.741138>,  <35.834175, 33.016468, 49.648445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163765, 33.223301, 49.741138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038757, -0.459439, 0.887363,
		0.565304, -0.722181, -0.398606,
		0.823972, 0.517079, 0.231733,
		36.410957, 33.378426, 49.810658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299686, 32.553020, 49.871204>,  <35.834175, 33.016468, 49.648445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299686, 32.553020, 49.871204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.415459, 32.906837, 50.017521>,  <36.484921, 33.119129, 50.105312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.415459, 32.906837, 50.017521>,  <36.299686, 32.553020, 49.871204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415459, 32.906837, 50.017521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239153, -0.436856, 0.867158,
		0.926842, -0.163502, -0.337982,
		0.289432, 0.884547, 0.365795,
		36.502289, 33.172203, 50.127258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091827, 32.521275, 50.167740>,  <36.299686, 32.553020, 49.871204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091827, 32.521275, 50.167740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.908569, 32.830818, 50.342663>,  <36.798615, 33.016544, 50.447617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.908569, 32.830818, 50.342663>,  <37.091827, 32.521275, 50.167740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908569, 32.830818, 50.342663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319515, -0.315719, 0.893438,
		0.829463, 0.549055, -0.102614,
		-0.458150, 0.773861, 0.437309,
		36.771126, 33.062977, 50.473854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508163, 32.683548, 50.654308>,  <37.091827, 32.521275, 50.167740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508163, 32.683548, 50.654308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.179031, 32.877605, 50.772686>,  <36.981552, 32.994041, 50.843712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.179031, 32.877605, 50.772686>,  <37.508163, 32.683548, 50.654308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179031, 32.877605, 50.772686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210510, -0.223519, 0.951696,
		0.527862, 0.845383, 0.081790,
		-0.822829, 0.485146, 0.295949,
		36.932182, 33.023148, 50.861469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734329, 33.124466, 51.313847>,  <37.508163, 32.683548, 50.654308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734329, 33.124466, 51.313847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.337864, 33.075821, 51.292664>,  <37.099983, 33.046635, 51.279953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.337864, 33.075821, 51.292664>,  <37.734329, 33.124466, 51.313847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337864, 33.075821, 51.292664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032899, -0.161380, 0.986344,
		-0.128500, 0.979371, 0.155953,
		-0.991164, -0.121614, -0.052958,
		37.040516, 33.039337, 51.276775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503380, 33.581112, 51.844116>,  <37.734329, 33.124466, 51.313847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503380, 33.581112, 51.844116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254547, 33.283154, 51.747662>,  <37.105247, 33.104378, 51.689789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254547, 33.283154, 51.747662>,  <37.503380, 33.581112, 51.844116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254547, 33.283154, 51.747662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121362, -0.212525, 0.969590,
		-0.773487, 0.632432, 0.041807,
		-0.622085, -0.744891, -0.241138,
		37.067921, 33.059685, 51.675320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994267, 33.649231, 52.280025>,  <37.503380, 33.581112, 51.844116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994267, 33.649231, 52.280025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.958664, 33.267590, 52.165649>,  <36.937302, 33.038605, 52.097023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.958664, 33.267590, 52.165649>,  <36.994267, 33.649231, 52.280025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958664, 33.267590, 52.165649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093988, -0.277757, 0.956042,
		-0.991587, 0.111969, -0.064952,
		-0.089007, -0.954104, -0.285944,
		36.931961, 32.981358, 52.079865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487934, 33.329174, 52.806324>,  <36.994267, 33.649231, 52.280025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487934, 33.329174, 52.806324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.644444, 33.004929, 52.632057>,  <36.738350, 32.810379, 52.527496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.644444, 33.004929, 52.632057>,  <36.487934, 33.329174, 52.806324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644444, 33.004929, 52.632057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111266, -0.511609, 0.851983,
		-0.913523, -0.284883, -0.290373,
		0.391273, -0.810615, -0.435669,
		36.761826, 32.761745, 52.501358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044144, 32.831394, 52.808933>,  <36.487934, 33.329174, 52.806324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044144, 32.831394, 52.808933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.396156, 32.641975, 52.794563>,  <36.607365, 32.528324, 52.785942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.396156, 32.641975, 52.794563>,  <36.044144, 32.831394, 52.808933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396156, 32.641975, 52.794563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167874, -0.380957, 0.909225,
		-0.444249, -0.794118, -0.414752,
		0.880034, -0.473548, -0.035928,
		36.660168, 32.499912, 52.783787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961136, 32.045185, 52.748966>,  <36.044144, 32.831394, 52.808933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961136, 32.045185, 52.748966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.286209, 32.112747, 52.972042>,  <36.481255, 32.153282, 53.105888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.286209, 32.112747, 52.972042>,  <35.961136, 32.045185, 52.748966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286209, 32.112747, 52.972042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456319, -0.410722, 0.789355,
		0.362379, -0.895980, -0.256714,
		0.812684, 0.168902, 0.557689,
		36.530014, 32.163418, 53.139347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874603, 31.516674, 53.290295>,  <35.961136, 32.045185, 52.748966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874603, 31.516674, 53.290295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.610413, 31.242634, 53.413197>,  <35.451897, 31.078211, 53.486938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.610413, 31.242634, 53.413197>,  <35.874603, 31.516674, 53.290295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610413, 31.242634, 53.413197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372619, -0.056197, -0.926281,
		0.651861, -0.726279, -0.218164,
		-0.660479, -0.685099, 0.307258,
		35.412270, 31.037104, 53.505375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890156, 30.929085, 52.989193>,  <35.874603, 31.516674, 53.290295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890156, 30.929085, 52.989193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504078, 30.941992, 53.093002>,  <35.272430, 30.949736, 53.155289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504078, 30.941992, 53.093002>,  <35.890156, 30.929085, 52.989193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504078, 30.941992, 53.093002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261465, -0.097625, -0.960263,
		-0.005646, -0.994700, 0.102664,
		-0.965196, 0.032264, 0.259528,
		35.214520, 30.951672, 53.170860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577080, 30.551970, 52.505199>,  <35.890156, 30.929085, 52.989193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577080, 30.551970, 52.505199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264194, 30.762770, 52.638119>,  <35.076466, 30.889250, 52.717869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264194, 30.762770, 52.638119>,  <35.577080, 30.551970, 52.505199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264194, 30.762770, 52.638119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350827, 0.068174, -0.933955,
		-0.514847, -0.847128, 0.131560,
		-0.782210, 0.526999, 0.332295,
		35.029530, 30.920870, 52.737808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909271, 30.181494, 52.261642>,  <35.577080, 30.551970, 52.505199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909271, 30.181494, 52.261642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.793636, 30.556347, 52.339836>,  <34.724255, 30.781260, 52.386753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.793636, 30.556347, 52.339836>,  <34.909271, 30.181494, 52.261642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793636, 30.556347, 52.339836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439239, 0.051592, -0.896888,
		-0.850588, -0.345138, 0.396711,
		-0.289083, 0.937133, 0.195482,
		34.706913, 30.837486, 52.398479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348381, 30.310999, 51.745441>,  <34.909271, 30.181494, 52.261642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348381, 30.310999, 51.745441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423000, 30.684349, 51.868084>,  <34.467773, 30.908360, 51.941669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423000, 30.684349, 51.868084>,  <34.348381, 30.310999, 51.745441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423000, 30.684349, 51.868084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272305, 0.348979, -0.896696,
		-0.943954, 0.083788, 0.319265,
		0.186549, 0.933378, 0.306604,
		34.478966, 30.964363, 51.960064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768501, 30.695845, 51.548519>,  <34.348381, 30.310999, 51.745441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768501, 30.695845, 51.548519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.067272, 30.957705, 51.595055>,  <34.246532, 31.114820, 51.622974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.067272, 30.957705, 51.595055>,  <33.768501, 30.695845, 51.548519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067272, 30.957705, 51.595055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156775, 0.343431, -0.926000,
		-0.646162, 0.673414, 0.359150,
		0.746925, 0.654652, 0.116337,
		34.291351, 31.154100, 51.629955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521709, 31.315136, 51.232143>,  <33.768501, 30.695845, 51.548519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521709, 31.315136, 51.232143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.918301, 31.366436, 51.241280>,  <34.156254, 31.397215, 51.246761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.918301, 31.366436, 51.241280>,  <33.521709, 31.315136, 51.232143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918301, 31.366436, 51.241280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026462, 0.369982, -0.928662,
		-0.127552, 0.920144, 0.370223,
		0.991479, 0.128249, 0.022843,
		34.215744, 31.404911, 51.248131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607361, 31.957668, 50.934975>,  <33.521709, 31.315136, 51.232143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607361, 31.957668, 50.934975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.974983, 31.804485, 50.897724>,  <34.195557, 31.712576, 50.875374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.974983, 31.804485, 50.897724>,  <33.607361, 31.957668, 50.934975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974983, 31.804485, 50.897724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088115, 0.429975, -0.898531,
		0.384141, 0.817598, 0.428917,
		0.919060, -0.382957, -0.093128,
		34.250702, 31.689598, 50.869785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004658, 32.491192, 50.657127>,  <33.607361, 31.957668, 50.934975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004658, 32.491192, 50.657127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.171394, 32.140083, 50.562664>,  <34.271435, 31.929419, 50.505985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.171394, 32.140083, 50.562664>,  <34.004658, 32.491192, 50.657127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171394, 32.140083, 50.562664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076728, 0.292853, -0.953074,
		0.905736, 0.379160, 0.189422,
		0.416840, -0.877767, -0.236155,
		34.296448, 31.876753, 50.491817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574089, 32.637066, 50.310234>,  <34.004658, 32.491192, 50.657127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574089, 32.637066, 50.310234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.535393, 32.255993, 50.194973>,  <34.512177, 32.027348, 50.125816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.535393, 32.255993, 50.194973>,  <34.574089, 32.637066, 50.310234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535393, 32.255993, 50.194973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171447, 0.269236, -0.947691,
		0.980432, -0.141083, 0.137289,
		-0.096739, -0.952684, -0.288156,
		34.506371, 31.970188, 50.108524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142475, 32.606308, 49.980347>,  <34.574089, 32.637066, 50.310234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142475, 32.606308, 49.980347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937332, 32.284561, 49.860371>,  <34.814247, 32.091511, 49.788383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937332, 32.284561, 49.860371>,  <35.142475, 32.606308, 49.980347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937332, 32.284561, 49.860371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098414, 0.291997, -0.951343,
		0.852812, -0.517425, -0.070592,
		-0.512861, -0.804369, -0.299940,
		34.783474, 32.043251, 49.770390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594425, 32.280300, 49.552956>,  <35.142475, 32.606308, 49.980347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594425, 32.280300, 49.552956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225651, 32.167557, 49.446686>,  <35.004387, 32.099911, 49.382923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225651, 32.167557, 49.446686>,  <35.594425, 32.280300, 49.552956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225651, 32.167557, 49.446686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144727, 0.385554, -0.911264,
		0.359269, -0.878584, -0.314668,
		-0.921943, -0.281848, -0.265673,
		34.949070, 32.083000, 49.366982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676163, 31.994659, 48.911095>,  <35.594425, 32.280300, 49.552956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676163, 31.994659, 48.911095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.289108, 32.092327, 48.936562>,  <35.056873, 32.150928, 48.951843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.289108, 32.092327, 48.936562>,  <35.676163, 31.994659, 48.911095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289108, 32.092327, 48.936562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045173, 0.415867, -0.908303,
		-0.248258, -0.876034, -0.413440,
		-0.967640, 0.244170, 0.063669,
		34.998817, 32.165577, 48.955662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462986, 31.926226, 48.292820>,  <35.676163, 31.994659, 48.911095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462986, 31.926226, 48.292820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168045, 32.156898, 48.433533>,  <34.991081, 32.295303, 48.517960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168045, 32.156898, 48.433533>,  <35.462986, 31.926226, 48.292820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168045, 32.156898, 48.433533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029451, 0.492828, -0.869628,
		-0.674868, -0.651582, -0.346403,
		-0.737351, 0.576682, 0.351784,
		34.946838, 32.329903, 48.539066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991745, 31.895491, 47.722416>,  <35.462986, 31.926226, 48.292820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991745, 31.895491, 47.722416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.911518, 32.223705, 47.936516>,  <34.863380, 32.420635, 48.064976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.911518, 32.223705, 47.936516>,  <34.991745, 31.895491, 47.722416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911518, 32.223705, 47.936516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068974, 0.533171, -0.843191,
		-0.977248, -0.206038, -0.050342,
		-0.200570, 0.820535, 0.535251,
		34.851349, 32.469864, 48.097092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430378, 32.266048, 47.289562>,  <34.991745, 31.895491, 47.722416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430378, 32.266048, 47.289562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.573997, 32.548325, 47.533886>,  <34.660168, 32.717690, 47.680481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.573997, 32.548325, 47.533886>,  <34.430378, 32.266048, 47.289562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573997, 32.548325, 47.533886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084019, 0.627354, -0.774188,
		-0.929529, 0.329291, 0.165959,
		0.359049, 0.705687, 0.610811,
		34.681713, 32.760029, 47.717129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983761, 32.775070, 47.059059>,  <34.430378, 32.266048, 47.289562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983761, 32.775070, 47.059059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.309814, 32.931961, 47.229572>,  <34.505447, 33.026096, 47.331879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.309814, 32.931961, 47.229572>,  <33.983761, 32.775070, 47.059059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309814, 32.931961, 47.229572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071738, 0.661872, -0.746176,
		-0.574818, 0.638811, 0.511375,
		0.815130, 0.392231, 0.426283,
		34.554352, 33.049629, 47.357456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806953, 33.491486, 47.234100>,  <33.983761, 32.775070, 47.059059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806953, 33.491486, 47.234100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.197788, 33.436337, 47.169239>,  <34.432289, 33.403248, 47.130322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.197788, 33.436337, 47.169239>,  <33.806953, 33.491486, 47.234100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197788, 33.436337, 47.169239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084309, 0.448796, -0.889648,
		0.195433, 0.882934, 0.426889,
		0.977086, -0.137876, -0.162149,
		34.490913, 33.394974, 47.120594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013077, 34.110573, 46.962612>,  <33.806953, 33.491486, 47.234100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013077, 34.110573, 46.962612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341171, 33.895767, 46.883793>,  <34.538029, 33.766884, 46.836502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341171, 33.895767, 46.883793>,  <34.013077, 34.110573, 46.962612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341171, 33.895767, 46.883793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149394, 0.533629, -0.832419,
		0.552172, 0.653342, 0.517929,
		0.820236, -0.537014, -0.197050,
		34.587242, 33.734665, 46.824677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474842, 34.647263, 46.735680>,  <34.013077, 34.110573, 46.962612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474842, 34.647263, 46.735680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.603489, 34.293842, 46.599503>,  <34.680679, 34.081791, 46.517796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.603489, 34.293842, 46.599503>,  <34.474842, 34.647263, 46.735680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603489, 34.293842, 46.599503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244500, 0.424844, -0.871623,
		0.914756, 0.197095, 0.352667,
		0.321621, -0.883550, -0.340440,
		34.699974, 34.028778, 46.497372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029858, 34.812935, 46.292622>,  <34.474842, 34.647263, 46.735680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029858, 34.812935, 46.292622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.906403, 34.446903, 46.188789>,  <34.832329, 34.227283, 46.126492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.906403, 34.446903, 46.188789>,  <35.029858, 34.812935, 46.292622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906403, 34.446903, 46.188789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100073, 0.240146, -0.965565,
		0.945901, -0.323986, 0.017456,
		-0.308637, -0.915075, -0.259577,
		34.813812, 34.172382, 46.110916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.942871, 37.626587, 28.634342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554268, 37.575169, 28.554689>,  <42.321106, 37.544319, 28.506897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554268, 37.575169, 28.554689>,  <42.942871, 37.626587, 28.634342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554268, 37.575169, 28.554689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102989, -0.527756, 0.843129,
		-0.213473, 0.839613, 0.499479,
		-0.971505, -0.128544, -0.199133,
		42.262817, 37.536606, 28.494949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568840, 37.991692, 29.126265>,  <42.942871, 37.626587, 28.634342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568840, 37.991692, 29.126265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.331043, 37.699913, 28.990917>,  <42.188366, 37.524845, 28.909708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.331043, 37.699913, 28.990917>,  <42.568840, 37.991692, 29.126265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331043, 37.699913, 28.990917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159756, -0.519560, 0.839366,
		-0.788072, 0.444940, 0.425407,
		-0.594492, -0.729442, -0.338369,
		42.152695, 37.481079, 28.889406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935734, 37.853298, 29.626232>,  <42.568840, 37.991692, 29.126265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935734, 37.853298, 29.626232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.008949, 37.541576, 29.386507>,  <42.052879, 37.354542, 29.242672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.008949, 37.541576, 29.386507>,  <41.935734, 37.853298, 29.626232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008949, 37.541576, 29.386507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085167, -0.594752, 0.799385,
		-0.979410, -0.197360, -0.042491,
		0.183038, -0.779307, -0.599315,
		42.063862, 37.307785, 29.206713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415051, 37.455223, 29.829662>,  <41.935734, 37.853298, 29.626232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415051, 37.455223, 29.829662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.691326, 37.219036, 29.662670>,  <41.857094, 37.077324, 29.562475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.691326, 37.219036, 29.662670>,  <41.415051, 37.455223, 29.829662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691326, 37.219036, 29.662670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025437, -0.596790, 0.801994,
		-0.722700, -0.543313, -0.427219,
		0.690694, -0.590468, -0.417480,
		41.898533, 37.041897, 29.537426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118896, 36.873466, 30.099947>,  <41.415051, 37.455223, 29.829662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118896, 36.873466, 30.099947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.478859, 36.770885, 29.958862>,  <41.694836, 36.709339, 29.874212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.478859, 36.770885, 29.958862>,  <41.118896, 36.873466, 30.099947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478859, 36.770885, 29.958862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156838, -0.564363, 0.810491,
		-0.406906, -0.784684, -0.467653,
		0.899905, -0.256448, -0.352711,
		41.748829, 36.693951, 29.853048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178349, 36.162079, 30.099651>,  <41.118896, 36.873466, 30.099947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178349, 36.162079, 30.099651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.559875, 36.282059, 30.093237>,  <41.788792, 36.354046, 30.089388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.559875, 36.282059, 30.093237>,  <41.178349, 36.162079, 30.099651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559875, 36.282059, 30.093237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255189, -0.781001, 0.570015,
		0.158454, -0.547783, -0.821478,
		0.953819, 0.299953, -0.016035,
		41.846020, 36.372044, 30.088427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615833, 35.545055, 29.914780>,  <41.178349, 36.162079, 30.099651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615833, 35.545055, 29.914780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.871578, 35.803368, 30.081720>,  <42.025024, 35.958355, 30.181885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.871578, 35.803368, 30.081720>,  <41.615833, 35.545055, 29.914780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871578, 35.803368, 30.081720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360992, -0.731356, 0.578622,
		0.678895, -0.219290, -0.700724,
		0.639365, 0.645779, 0.417352,
		42.063389, 35.997101, 30.206926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200573, 35.189816, 29.931974>,  <41.615833, 35.545055, 29.914780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200573, 35.189816, 29.931974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.269943, 35.470676, 30.208210>,  <42.311565, 35.639191, 30.373951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.269943, 35.470676, 30.208210>,  <42.200573, 35.189816, 29.931974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269943, 35.470676, 30.208210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212151, -0.711386, 0.670017,
		0.961725, 0.030309, -0.272335,
		0.173427, 0.702148, 0.690587,
		42.321972, 35.681320, 30.415386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904354, 35.254150, 30.059031>,  <42.200573, 35.189816, 29.931974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904354, 35.254150, 30.059031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.743622, 35.405216, 30.392714>,  <42.647182, 35.495857, 30.592922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.743622, 35.405216, 30.392714>,  <42.904354, 35.254150, 30.059031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743622, 35.405216, 30.392714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458361, -0.705697, 0.540276,
		0.792741, 0.599466, 0.110462,
		-0.401829, 0.377667, 0.834207,
		42.623074, 35.518517, 30.642975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343864, 35.098591, 30.527416>,  <42.904354, 35.254150, 30.059031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343864, 35.098591, 30.527416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.016308, 35.179741, 30.742172>,  <42.819775, 35.228432, 30.871027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.016308, 35.179741, 30.742172>,  <43.343864, 35.098591, 30.527416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016308, 35.179741, 30.742172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286318, -0.666334, 0.688492,
		0.497426, 0.717525, 0.487571,
		-0.818895, 0.202874, 0.536892,
		42.770638, 35.240604, 30.903240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663223, 35.236843, 31.115652>,  <43.343864, 35.098591, 30.527416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663223, 35.236843, 31.115652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.278584, 35.166950, 31.200315>,  <43.047798, 35.125015, 31.251114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.278584, 35.166950, 31.200315>,  <43.663223, 35.236843, 31.115652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278584, 35.166950, 31.200315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273519, -0.673887, 0.686340,
		0.022710, 0.717876, 0.695800,
		-0.961599, -0.174728, 0.211656,
		42.990105, 35.114532, 31.263813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690609, 35.320080, 31.800526>,  <43.663223, 35.236843, 31.115652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690609, 35.320080, 31.800526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.361385, 35.106888, 31.722027>,  <43.163853, 34.978973, 31.674929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.361385, 35.106888, 31.722027>,  <43.690609, 35.320080, 31.800526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361385, 35.106888, 31.722027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303601, -0.704886, 0.641063,
		-0.480002, 0.468051, 0.741974,
		-0.823058, -0.532976, -0.196246,
		43.114468, 34.946995, 31.663153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369720, 34.981812, 32.418938>,  <43.690609, 35.320080, 31.800526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369720, 34.981812, 32.418938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.206081, 34.757252, 32.131195>,  <43.107899, 34.622517, 31.958549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.206081, 34.757252, 32.131195>,  <43.369720, 34.981812, 32.418938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206081, 34.757252, 32.131195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240956, -0.826824, 0.508235,
		-0.880101, 0.034586, 0.473526,
		-0.409100, -0.561396, -0.719355,
		43.083351, 34.588833, 31.915388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834522, 34.574772, 32.741341>,  <43.369720, 34.981812, 32.418938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834522, 34.574772, 32.741341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.923965, 34.366508, 32.411758>,  <42.977631, 34.241550, 32.214008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.923965, 34.366508, 32.411758>,  <42.834522, 34.574772, 32.741341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923965, 34.366508, 32.411758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385064, -0.729405, 0.565414,
		-0.895391, -0.443709, 0.037387,
		0.223609, -0.520663, -0.823959,
		42.991047, 34.210308, 32.164570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554169, 33.909199, 32.827278>,  <42.834522, 34.574772, 32.741341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554169, 33.909199, 32.827278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.840649, 33.876759, 32.550011>,  <43.012535, 33.857296, 32.383648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.840649, 33.876759, 32.550011>,  <42.554169, 33.909199, 32.827278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840649, 33.876759, 32.550011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347955, -0.819482, 0.455386,
		-0.604973, -0.567338, -0.558690,
		0.716195, -0.081097, -0.693173,
		43.055508, 33.852428, 32.342060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639088, 33.197029, 32.786465>,  <42.554169, 33.909199, 32.827278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639088, 33.197029, 32.786465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.968620, 33.355511, 32.624317>,  <43.166340, 33.450600, 32.527027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.968620, 33.355511, 32.624317>,  <42.639088, 33.197029, 32.786465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968620, 33.355511, 32.624317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563600, -0.648868, 0.511201,
		-0.060493, -0.649610, -0.757857,
		0.823830, 0.396204, -0.405372,
		43.215771, 33.474373, 32.502705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033791, 32.697342, 32.396187>,  <42.639088, 33.197029, 32.786465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033791, 32.697342, 32.396187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309261, 32.971439, 32.490986>,  <43.474545, 33.135899, 32.547867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309261, 32.971439, 32.490986>,  <43.033791, 32.697342, 32.396187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309261, 32.971439, 32.490986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532793, -0.699951, 0.475605,
		0.491792, -0.201267, -0.847132,
		0.688674, 0.685244, 0.236997,
		43.515865, 33.177013, 32.562084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632401, 32.317593, 32.353043>,  <43.033791, 32.697342, 32.396187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632401, 32.317593, 32.353043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.745468, 32.646297, 32.550953>,  <43.813309, 32.843521, 32.669701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.745468, 32.646297, 32.550953>,  <43.632401, 32.317593, 32.353043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745468, 32.646297, 32.550953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681771, -0.534964, 0.499001,
		0.674748, 0.196272, -0.711472,
		0.282672, 0.821761, 0.494778,
		43.830269, 32.892826, 32.699387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.316166, 32.242920, 32.347523>,  <43.632401, 32.317593, 32.353043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.316166, 32.242920, 32.347523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.247868, 32.491226, 32.653595>,  <44.206890, 32.640209, 32.837238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.247868, 32.491226, 32.653595>,  <44.316166, 32.242920, 32.347523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247868, 32.491226, 32.653595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724224, -0.447494, 0.524642,
		0.668092, 0.643740, -0.373164,
		-0.170744, 0.620763, 0.765179,
		44.196644, 32.677456, 32.883148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933899, 32.368439, 32.553188>,  <44.316166, 32.242920, 32.347523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933899, 32.368439, 32.553188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.685589, 32.445225, 32.857235>,  <44.536602, 32.491299, 33.039665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.685589, 32.445225, 32.857235>,  <44.933899, 32.368439, 32.553188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685589, 32.445225, 32.857235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644534, -0.427009, 0.634224,
		0.446330, 0.883635, 0.141347,
		-0.620779, 0.191970, 0.760119,
		44.499355, 32.502815, 33.085270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.347652, 32.777069, 33.088707>,  <44.933899, 32.368439, 32.553188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.347652, 32.777069, 33.088707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.044380, 32.564926, 33.240437>,  <44.862419, 32.437641, 33.331474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.044380, 32.564926, 33.240437>,  <45.347652, 32.777069, 33.088707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044380, 32.564926, 33.240437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617708, -0.397896, 0.678318,
		-0.208819, 0.748598, 0.629282,
		-0.758176, -0.530359, 0.379327,
		44.816929, 32.405819, 33.354233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.029953, 32.754803, 33.527550>,  <45.347652, 32.777069, 33.088707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.029953, 32.754803, 33.527550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.737022, 32.571568, 33.729084>,  <45.561264, 32.461628, 33.850006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.737022, 32.571568, 33.729084>,  <46.029953, 32.754803, 33.527550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737022, 32.571568, 33.729084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611986, -0.767216, 0.191972,
		0.298611, 0.448927, 0.842197,
		-0.732328, -0.458088, 0.503836,
		45.517323, 32.434139, 33.880234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.032063, 33.139404, 34.068245>,  <46.029953, 32.754803, 33.527550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.032063, 33.139404, 34.068245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.310532, 33.405418, 34.176373>,  <46.477612, 33.565025, 34.241249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.310532, 33.405418, 34.176373>,  <46.032063, 33.139404, 34.068245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.310532, 33.405418, 34.176373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027158, 0.400687, -0.915812,
		-0.717360, 0.630223, 0.297009,
		0.696173, 0.665033, 0.270321,
		46.519382, 33.604927, 34.257469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699017, 33.784081, 33.916950>,  <46.032063, 33.139404, 34.068245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.699017, 33.784081, 33.916950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.093990, 33.842709, 33.940609>,  <46.330975, 33.877888, 33.954803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.093990, 33.842709, 33.940609>,  <45.699017, 33.784081, 33.916950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.093990, 33.842709, 33.940609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006653, 0.412426, -0.910967,
		-0.157917, 0.899122, 0.408217,
		0.987430, 0.146573, 0.059147,
		46.390221, 33.886681, 33.958351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747791, 34.504623, 33.826366>,  <45.699017, 33.784081, 33.916950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747791, 34.504623, 33.826366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083488, 34.304649, 33.740829>,  <46.284908, 34.184666, 33.689507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083488, 34.304649, 33.740829>,  <45.747791, 34.504623, 33.826366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083488, 34.304649, 33.740829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060564, 0.476766, -0.876941,
		0.540370, 0.723018, 0.430402,
		0.839245, -0.499939, -0.213841,
		46.335262, 34.154667, 33.676678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157639, 35.114033, 33.767906>,  <45.747791, 34.504623, 33.826366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157639, 35.114033, 33.767906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.325466, 34.797573, 33.589901>,  <46.426163, 34.607697, 33.483097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.325466, 34.797573, 33.589901>,  <46.157639, 35.114033, 33.767906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.325466, 34.797573, 33.589901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037676, 0.474655, -0.879365,
		0.906940, 0.385723, 0.169345,
		0.419572, -0.791151, -0.445016,
		46.451340, 34.560226, 33.456398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.590298, 35.430737, 33.304146>,  <46.157639, 35.114033, 33.767906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.590298, 35.430737, 33.304146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.555752, 35.057487, 33.164536>,  <46.535023, 34.833538, 33.080769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.555752, 35.057487, 33.164536>,  <46.590298, 35.430737, 33.304146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.555752, 35.057487, 33.164536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072359, 0.355289, -0.931952,
		0.993632, -0.055234, -0.098205,
		-0.086366, -0.933123, -0.349030,
		46.529842, 34.777550, 33.059826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.102234, 35.355923, 32.728710>,  <46.590298, 35.430737, 33.304146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.102234, 35.355923, 32.728710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.850624, 35.050434, 32.670662>,  <46.699657, 34.867142, 32.635834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.850624, 35.050434, 32.670662>,  <47.102234, 35.355923, 32.728710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.850624, 35.050434, 32.670662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158054, 0.308416, -0.938029,
		0.761150, -0.567105, -0.314710,
		-0.629022, -0.763722, -0.145117,
		46.661919, 34.821316, 32.627129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.404179, 35.070839, 32.087669>,  <47.102234, 35.355923, 32.728710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.404179, 35.070839, 32.087669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.030704, 34.930035, 32.113953>,  <46.806622, 34.845551, 32.129723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.030704, 34.930035, 32.113953>,  <47.404179, 35.070839, 32.087669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.030704, 34.930035, 32.113953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179134, 0.300250, -0.936889,
		0.310098, -0.886519, -0.343399,
		-0.933675, -0.352042, 0.065699,
		46.750599, 34.824432, 32.133667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.312290, 34.625156, 31.392735>,  <47.404179, 35.070839, 32.087669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.312290, 34.625156, 31.392735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.953186, 34.717449, 31.542816>,  <46.737724, 34.772827, 31.632866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.953186, 34.717449, 31.542816>,  <47.312290, 34.625156, 31.392735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.953186, 34.717449, 31.542816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365942, 0.083411, -0.926892,
		-0.245164, -0.969434, 0.009553,
		-0.897765, 0.230737, 0.375206,
		46.683857, 34.786671, 31.655378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.801285, 34.303318, 30.953278>,  <47.312290, 34.625156, 31.392735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.801285, 34.303318, 30.953278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.596561, 34.579575, 31.157660>,  <46.473728, 34.745327, 31.280289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.596561, 34.579575, 31.157660>,  <46.801285, 34.303318, 30.953278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596561, 34.579575, 31.157660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543337, 0.200483, -0.815225,
		-0.665463, -0.694857, 0.272641,
		-0.511805, 0.690637, 0.510955,
		46.443020, 34.786766, 31.310946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007774, 34.202374, 30.812922>,  <46.801285, 34.303318, 30.953278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007774, 34.202374, 30.812922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.055309, 34.574310, 30.952219>,  <46.083832, 34.797470, 31.035797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.055309, 34.574310, 30.952219>,  <46.007774, 34.202374, 30.812922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.055309, 34.574310, 30.952219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583042, 0.349245, -0.733546,
		-0.803703, -0.115867, 0.583640,
		0.118840, 0.929840, 0.348245,
		46.090961, 34.853264, 31.056692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.315392, 34.464520, 30.878544>,  <46.007774, 34.202374, 30.812922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.315392, 34.464520, 30.878544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.544079, 34.790504, 30.840639>,  <45.681290, 34.986095, 30.817896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.544079, 34.790504, 30.840639>,  <45.315392, 34.464520, 30.878544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544079, 34.790504, 30.840639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580705, 0.320353, -0.748436,
		-0.579589, 0.482920, 0.656403,
		0.571715, 0.814961, -0.094761,
		45.715595, 35.034992, 30.812210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826828, 34.800480, 30.504478>,  <45.315392, 34.464520, 30.878544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826828, 34.800480, 30.504478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.156933, 35.026340, 30.508665>,  <45.354996, 35.161858, 30.511177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.156933, 35.026340, 30.508665>,  <44.826828, 34.800480, 30.504478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156933, 35.026340, 30.508665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382487, 0.572467, -0.725249,
		-0.415505, 0.594517, 0.688407,
		0.825263, 0.564651, 0.010468,
		45.404510, 35.195736, 30.511805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619125, 35.499222, 30.687462>,  <44.826828, 34.800480, 30.504478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619125, 35.499222, 30.687462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.942272, 35.462662, 30.454565>,  <45.136158, 35.440727, 30.314827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.942272, 35.462662, 30.454565>,  <44.619125, 35.499222, 30.687462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.942272, 35.462662, 30.454565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437237, 0.569491, -0.696063,
		0.395198, 0.816901, 0.420109,
		0.807863, -0.091396, -0.582241,
		45.184631, 35.435242, 30.279892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604816, 36.147114, 30.309183>,  <44.619125, 35.499222, 30.687462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604816, 36.147114, 30.309183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.853844, 35.917084, 30.096882>,  <45.003262, 35.779064, 29.969501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.853844, 35.917084, 30.096882>,  <44.604816, 36.147114, 30.309183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.853844, 35.917084, 30.096882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350144, 0.401846, -0.846120,
		0.699862, 0.712608, 0.048818,
		0.622569, -0.575074, -0.530752,
		45.040615, 35.744560, 29.937656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986572, 36.617447, 29.893751>,  <44.604816, 36.147114, 30.309183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986572, 36.617447, 29.893751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016048, 36.265800, 29.705402>,  <45.033733, 36.054813, 29.592394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016048, 36.265800, 29.705402>,  <44.986572, 36.617447, 29.893751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016048, 36.265800, 29.705402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197190, 0.449990, -0.870991,
		0.977592, 0.157031, -0.140196,
		0.073686, -0.879119, -0.470871,
		45.038155, 36.002064, 29.564140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338444, 36.816818, 29.337402>,  <44.986572, 36.617447, 29.893751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.338444, 36.816818, 29.337402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.165550, 36.463219, 29.266159>,  <45.061813, 36.251060, 29.223413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.165550, 36.463219, 29.266159>,  <45.338444, 36.816818, 29.337402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165550, 36.463219, 29.266159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337901, 0.341895, -0.876887,
		0.836058, -0.318841, -0.446483,
		-0.432237, -0.883996, -0.178108,
		45.035877, 36.198021, 29.212727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480488, 36.661884, 28.648035>,  <45.338444, 36.816818, 29.337402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.480488, 36.661884, 28.648035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.163502, 36.432152, 28.730141>,  <44.973309, 36.294312, 28.779404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.163502, 36.432152, 28.730141>,  <45.480488, 36.661884, 28.648035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163502, 36.432152, 28.730141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444911, 0.314159, -0.838665,
		0.417191, -0.755938, -0.504489,
		-0.792468, -0.574336, 0.205260,
		44.925762, 36.259853, 28.791719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122730, 36.664577, 28.006584>,  <45.480488, 36.661884, 28.648035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122730, 36.664577, 28.006584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.846870, 36.488693, 28.236727>,  <44.681355, 36.383163, 28.374813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.846870, 36.488693, 28.236727>,  <45.122730, 36.664577, 28.006584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.846870, 36.488693, 28.236727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695859, 0.182522, -0.694598,
		0.200416, -0.879392, -0.431861,
		-0.689648, -0.439723, 0.575352,
		44.639977, 36.356781, 28.409334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775753, 36.095230, 27.559681>,  <45.122730, 36.664577, 28.006584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775753, 36.095230, 27.559681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.514938, 36.216309, 27.837736>,  <44.358448, 36.288956, 28.004570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.514938, 36.216309, 27.837736>,  <44.775753, 36.095230, 27.559681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514938, 36.216309, 27.837736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719922, 0.040403, -0.692878,
		-0.237820, -0.952229, 0.191577,
		-0.652039, 0.302701, 0.695139,
		44.319328, 36.307117, 28.046278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167286, 35.650986, 27.467327>,  <44.775753, 36.095230, 27.559681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167286, 35.650986, 27.467327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.068432, 36.007675, 27.618990>,  <44.009121, 36.221687, 27.709988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.068432, 36.007675, 27.618990>,  <44.167286, 35.650986, 27.467327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068432, 36.007675, 27.618990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715903, 0.095666, -0.691615,
		-0.652999, -0.442364, 0.614741,
		-0.247136, 0.891719, 0.379159,
		43.994289, 36.275192, 27.732738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.700275, 35.443432, 42.547031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501270, 35.096485, 42.541977>,  <39.381866, 34.888317, 42.538944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501270, 35.096485, 42.541977>,  <39.700275, 35.443432, 42.547031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501270, 35.096485, 42.541977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259209, -0.134750, -0.956375,
		0.827824, -0.479083, 0.291868,
		-0.497513, -0.867365, -0.012633,
		39.352016, 34.836277, 42.538185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206791, 34.945610, 42.372475>,  <39.700275, 35.443432, 42.547031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206791, 34.945610, 42.372475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844894, 34.802692, 42.279705>,  <39.627758, 34.716942, 42.224045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844894, 34.802692, 42.279705>,  <40.206791, 34.945610, 42.372475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844894, 34.802692, 42.279705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291866, -0.123411, -0.948464,
		0.310263, -0.925801, 0.215938,
		-0.904738, -0.357298, -0.231920,
		39.573471, 34.695503, 42.210129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335098, 34.348083, 42.031578>,  <40.206791, 34.945610, 42.372475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335098, 34.348083, 42.031578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962860, 34.451561, 41.927979>,  <39.739517, 34.513645, 41.865818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962860, 34.451561, 41.927979>,  <40.335098, 34.348083, 42.031578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962860, 34.451561, 41.927979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213409, -0.191453, -0.958020,
		-0.297417, -0.946797, 0.122957,
		-0.930591, 0.258692, -0.258997,
		39.683681, 34.529167, 41.850281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017994, 33.782669, 41.707649>,  <40.335098, 34.348083, 42.031578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017994, 33.782669, 41.707649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793217, 34.078362, 41.559185>,  <39.658352, 34.255775, 41.470108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793217, 34.078362, 41.559185>,  <40.017994, 33.782669, 41.707649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793217, 34.078362, 41.559185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075828, -0.400783, -0.913030,
		-0.823695, -0.541212, 0.169162,
		-0.561940, 0.739231, -0.371162,
		39.624634, 34.300129, 41.447838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735321, 33.549374, 41.148781>,  <40.017994, 33.782669, 41.707649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735321, 33.549374, 41.148781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668510, 33.937508, 41.078865>,  <39.628426, 34.170387, 41.036915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668510, 33.937508, 41.078865>,  <39.735321, 33.549374, 41.148781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668510, 33.937508, 41.078865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068160, -0.165496, -0.983852,
		-0.983594, -0.176240, -0.038496,
		-0.167023, 0.970335, -0.174794,
		39.618404, 34.228607, 41.026428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137085, 33.632908, 40.646034>,  <39.735321, 33.549374, 41.148781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137085, 33.632908, 40.646034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325859, 33.980907, 40.588921>,  <39.439121, 34.189705, 40.554653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325859, 33.980907, 40.588921>,  <39.137085, 33.632908, 40.646034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325859, 33.980907, 40.588921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009939, -0.156689, -0.987598,
		-0.881578, 0.467500, -0.065300,
		0.471933, 0.869996, -0.142780,
		39.467438, 34.241905, 40.546085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804409, 33.958416, 40.077660>,  <39.137085, 33.632908, 40.646034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804409, 33.958416, 40.077660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147675, 34.159336, 40.120094>,  <39.353634, 34.279888, 40.145554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147675, 34.159336, 40.120094>,  <38.804409, 33.958416, 40.077660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147675, 34.159336, 40.120094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091839, 0.053106, -0.994357,
		-0.505102, 0.863060, -0.000558,
		0.858160, 0.502302, 0.106086,
		39.405121, 34.310028, 40.151920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867306, 34.593933, 39.637650>,  <38.804409, 33.958416, 40.077660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867306, 34.593933, 39.637650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251419, 34.527496, 39.727325>,  <39.481888, 34.487633, 39.781132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251419, 34.527496, 39.727325>,  <38.867306, 34.593933, 39.637650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251419, 34.527496, 39.727325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227932, 0.003566, -0.973670,
		0.160918, 0.986104, 0.041282,
		0.960288, -0.166090, 0.224191,
		39.539505, 34.477669, 39.794582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289150, 35.030411, 39.178879>,  <38.867306, 34.593933, 39.637650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289150, 35.030411, 39.178879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565643, 34.766808, 39.297478>,  <39.731541, 34.608646, 39.368637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565643, 34.766808, 39.297478>,  <39.289150, 35.030411, 39.178879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565643, 34.766808, 39.297478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445564, 0.065652, -0.892840,
		0.568920, 0.749268, 0.339009,
		0.691233, -0.659004, 0.296496,
		39.773014, 34.569107, 39.386425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915070, 35.298466, 38.900822>,  <39.289150, 35.030411, 39.178879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915070, 35.298466, 38.900822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968575, 34.908298, 38.970875>,  <40.000675, 34.674198, 39.012905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968575, 34.908298, 38.970875>,  <39.915070, 35.298466, 38.900822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968575, 34.908298, 38.970875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321410, -0.124471, -0.938724,
		0.937446, 0.181854, 0.296859,
		0.133760, -0.975416, 0.175134,
		40.008701, 34.615673, 39.023415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531132, 35.117832, 38.627399>,  <39.915070, 35.298466, 38.900822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531132, 35.117832, 38.627399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401489, 34.739716, 38.642223>,  <40.323704, 34.512844, 38.651119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401489, 34.739716, 38.642223>,  <40.531132, 35.117832, 38.627399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401489, 34.739716, 38.642223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425820, -0.180756, -0.886569,
		0.844767, -0.271562, 0.461110,
		-0.324107, -0.945294, 0.037060,
		40.304256, 34.456127, 38.653343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028366, 34.555290, 38.457458>,  <40.531132, 35.117832, 38.627399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028366, 34.555290, 38.457458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672024, 34.404663, 38.355816>,  <40.458218, 34.314285, 38.294830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672024, 34.404663, 38.355816>,  <41.028366, 34.555290, 38.457458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672024, 34.404663, 38.355816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330032, -0.152115, -0.931633,
		0.312170, -0.913815, 0.259793,
		-0.890858, -0.376568, -0.254103,
		40.404766, 34.291695, 38.279587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112827, 33.984062, 38.136395>,  <41.028366, 34.555290, 38.457458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112827, 33.984062, 38.136395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748402, 34.096210, 38.015488>,  <40.529747, 34.163498, 37.942944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748402, 34.096210, 38.015488>,  <41.112827, 33.984062, 38.136395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748402, 34.096210, 38.015488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274745, -0.133746, -0.952170,
		-0.307385, -0.950529, 0.044821,
		-0.911059, 0.280369, -0.302265,
		40.475082, 34.180321, 37.924809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974274, 33.525169, 37.725014>,  <41.112827, 33.984062, 38.136395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974274, 33.525169, 37.725014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775749, 33.859627, 37.631596>,  <40.656635, 34.060299, 37.575546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775749, 33.859627, 37.631596>,  <40.974274, 33.525169, 37.725014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775749, 33.859627, 37.631596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297745, -0.088754, -0.950511,
		-0.815488, -0.541287, -0.204907,
		-0.496313, 0.836140, -0.233543,
		40.626854, 34.110470, 37.561531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048389, 33.153259, 37.102432>,  <40.974274, 33.525169, 37.725014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048389, 33.153259, 37.102432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119682, 32.793880, 36.941921>,  <41.162460, 32.578251, 36.845615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119682, 32.793880, 36.941921>,  <41.048389, 33.153259, 37.102432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119682, 32.793880, 36.941921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455798, -0.436799, 0.775535,
		-0.872055, 0.044672, -0.487365,
		0.178236, -0.898449, -0.401274,
		41.173153, 32.524345, 36.821541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368809, 32.749004, 37.033684>,  <41.048389, 33.153259, 37.102432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368809, 32.749004, 37.033684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682850, 32.509087, 37.095470>,  <40.871273, 32.365135, 37.132542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682850, 32.509087, 37.095470>,  <40.368809, 32.749004, 37.033684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682850, 32.509087, 37.095470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523157, -0.508694, 0.683766,
		-0.331546, -0.617635, -0.713165,
		0.785101, -0.599797, 0.154465,
		40.918381, 32.329147, 37.141811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074306, 32.049088, 37.308868>,  <40.368809, 32.749004, 37.033684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074306, 32.049088, 37.308868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462723, 32.034603, 37.403328>,  <40.695774, 32.025913, 37.460003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462723, 32.034603, 37.403328>,  <40.074306, 32.049088, 37.308868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462723, 32.034603, 37.403328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231224, -0.391131, 0.890815,
		0.060112, -0.919623, -0.388177,
		0.971042, -0.036207, 0.236151,
		40.754036, 32.023743, 37.474174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179531, 31.381102, 37.666153>,  <40.074306, 32.049088, 37.308868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179531, 31.381102, 37.666153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517136, 31.579550, 37.747654>,  <40.719696, 31.698618, 37.796555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517136, 31.579550, 37.747654>,  <40.179531, 31.381102, 37.666153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517136, 31.579550, 37.747654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041033, -0.319049, 0.946849,
		0.534757, -0.807510, -0.248923,
		0.844009, 0.496120, 0.203748,
		40.770340, 31.728386, 37.808777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613064, 30.869755, 38.018894>,  <40.179531, 31.381102, 37.666153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613064, 30.869755, 38.018894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737488, 31.224157, 38.156433>,  <40.812141, 31.436800, 38.238956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737488, 31.224157, 38.156433>,  <40.613064, 30.869755, 38.018894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737488, 31.224157, 38.156433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007104, -0.359618, 0.933072,
		0.950363, -0.292685, -0.105569,
		0.311061, 0.886008, 0.343847,
		40.830807, 31.489960, 38.259586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053898, 30.695719, 38.552128>,  <40.613064, 30.869755, 38.018894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053898, 30.695719, 38.552128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961773, 31.075348, 38.638119>,  <40.906498, 31.303125, 38.689713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961773, 31.075348, 38.638119>,  <41.053898, 30.695719, 38.552128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961773, 31.075348, 38.638119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035565, -0.212558, 0.976501,
		0.972468, 0.232542, 0.015200,
		-0.230309, 0.949075, 0.214976,
		40.892681, 31.360071, 38.702610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569660, 30.809166, 39.024525>,  <41.053898, 30.695719, 38.552128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569660, 30.809166, 39.024525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281090, 31.082041, 39.072124>,  <41.107948, 31.245766, 39.100685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281090, 31.082041, 39.072124>,  <41.569660, 30.809166, 39.024525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281090, 31.082041, 39.072124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133113, -0.032029, 0.990583,
		0.679575, 0.730476, -0.067701,
		-0.721428, 0.682187, 0.119002,
		41.064663, 31.286697, 39.107826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722130, 31.260515, 39.675705>,  <41.569660, 30.809166, 39.024525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722130, 31.260515, 39.675705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341492, 31.354954, 39.596989>,  <41.113110, 31.411617, 39.549759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341492, 31.354954, 39.596989>,  <41.722130, 31.260515, 39.675705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341492, 31.354954, 39.596989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161427, 0.160955, 0.973671,
		0.261554, 0.958307, -0.115052,
		-0.951594, 0.236095, -0.196795,
		41.056015, 31.425781, 39.537949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527039, 31.860283, 40.026375>,  <41.722130, 31.260515, 39.675705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527039, 31.860283, 40.026375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179203, 31.669765, 39.974285>,  <40.970501, 31.555456, 39.943031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179203, 31.669765, 39.974285>,  <41.527039, 31.860283, 40.026375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179203, 31.669765, 39.974285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137600, -0.019538, 0.990295,
		-0.474214, 0.879070, -0.048548,
		-0.869590, -0.476292, -0.130225,
		40.918327, 31.526878, 39.935219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982479, 32.149891, 40.518070>,  <41.527039, 31.860283, 40.026375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982479, 32.149891, 40.518070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828522, 31.791176, 40.430775>,  <40.736149, 31.575947, 40.378399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828522, 31.791176, 40.430775>,  <40.982479, 32.149891, 40.518070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828522, 31.791176, 40.430775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232880, -0.134439, 0.963168,
		-0.893099, 0.421537, -0.157100,
		-0.384891, -0.896790, -0.218235,
		40.713055, 31.522139, 40.365303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316284, 32.163284, 40.814735>,  <40.982479, 32.149891, 40.518070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316284, 32.163284, 40.814735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393612, 31.776045, 40.750977>,  <40.440010, 31.543701, 40.712723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393612, 31.776045, 40.750977>,  <40.316284, 32.163284, 40.814735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393612, 31.776045, 40.750977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263193, -0.207677, 0.942125,
		-0.945176, -0.140179, -0.294945,
		0.193320, -0.968101, -0.159397,
		40.451607, 31.485615, 40.703156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756699, 31.829269, 41.139404>,  <40.316284, 32.163284, 40.814735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756699, 31.829269, 41.139404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042423, 31.550863, 41.110210>,  <40.213856, 31.383820, 41.092693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042423, 31.550863, 41.110210>,  <39.756699, 31.829269, 41.139404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042423, 31.550863, 41.110210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187385, -0.290701, 0.938286,
		-0.674279, -0.656547, -0.338073,
		0.714307, -0.696016, -0.072986,
		40.256714, 31.342058, 41.088314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448349, 31.255110, 41.275295>,  <39.756699, 31.829269, 41.139404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448349, 31.255110, 41.275295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834682, 31.185287, 41.351921>,  <40.066483, 31.143394, 41.397896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834682, 31.185287, 41.351921>,  <39.448349, 31.255110, 41.275295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834682, 31.185287, 41.351921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243658, -0.359741, 0.900676,
		-0.088303, -0.916579, -0.389981,
		0.965833, -0.174554, 0.191566,
		40.124432, 31.132921, 41.409389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420902, 30.540030, 41.637901>,  <39.448349, 31.255110, 41.275295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420902, 30.540030, 41.637901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776390, 30.697981, 41.731068>,  <39.989681, 30.792751, 41.786968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776390, 30.697981, 41.731068>,  <39.420902, 30.540030, 41.637901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776390, 30.697981, 41.731068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159813, -0.209349, 0.964693,
		0.429697, -0.894564, -0.122946,
		0.888718, 0.394877, 0.232920,
		40.043007, 30.816444, 41.800945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470196, 29.816366, 41.694054>,  <39.420902, 30.540030, 41.637901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470196, 29.816366, 41.694054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101513, 29.675304, 41.629433>,  <38.880302, 29.590668, 41.590660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101513, 29.675304, 41.629433>,  <39.470196, 29.816366, 41.694054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101513, 29.675304, 41.629433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242302, -0.198214, -0.949737,
		0.302909, -0.914519, 0.268143,
		-0.921703, -0.352656, -0.161550,
		38.825001, 29.569508, 41.580967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556675, 29.348682, 41.246784>,  <39.470196, 29.816366, 41.694054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556675, 29.348682, 41.246784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158749, 29.372232, 41.213623>,  <38.919991, 29.386362, 41.193726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158749, 29.372232, 41.213623>,  <39.556675, 29.348682, 41.246784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158749, 29.372232, 41.213623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079119, -0.063862, -0.994817,
		-0.063862, -0.996221, 0.058873,
		0.994817, -0.058873, 0.082898,
		38.860302, 29.389894, 41.188755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325214, 28.794516, 40.737198>,  <39.556675, 29.348682, 41.246784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325214, 28.794516, 40.737198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017532, 29.049940, 40.746708>,  <38.832924, 29.203194, 40.752415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017532, 29.049940, 40.746708>,  <39.325214, 28.794516, 40.737198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017532, 29.049940, 40.746708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010172, 0.049433, -0.998726,
		-0.638921, -0.767983, -0.044519,
		-0.769205, 0.638560, 0.023772,
		38.786770, 29.241508, 40.753838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865593, 28.513721, 40.323502>,  <39.325214, 28.794516, 40.737198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865593, 28.513721, 40.323502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770092, 28.902082, 40.316116>,  <38.712791, 29.135099, 40.311687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770092, 28.902082, 40.316116>,  <38.865593, 28.513721, 40.323502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770092, 28.902082, 40.316116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180067, -0.062945, -0.981638,
		-0.954239, -0.231046, 0.189856,
		-0.238754, 0.970905, -0.018461,
		38.698467, 29.193354, 40.310577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329124, 28.528950, 39.907032>,  <38.865593, 28.513721, 40.323502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329124, 28.528950, 39.907032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417107, 28.917870, 39.938652>,  <38.469894, 29.151222, 39.957626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417107, 28.917870, 39.938652>,  <38.329124, 28.528950, 39.907032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417107, 28.917870, 39.938652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297640, 0.144064, -0.943745,
		-0.928994, 0.184053, 0.321084,
		0.219956, 0.972301, 0.079053,
		38.483093, 29.209560, 39.962368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742443, 28.897858, 39.746185>,  <38.329124, 28.528950, 39.907032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742443, 28.897858, 39.746185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037975, 29.159628, 39.681866>,  <38.215294, 29.316690, 39.643276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037975, 29.159628, 39.681866>,  <37.742443, 28.897858, 39.746185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037975, 29.159628, 39.681866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394648, 0.226770, -0.890409,
		-0.546243, 0.721320, 0.425812,
		0.738831, 0.654426, -0.160796,
		38.259624, 29.355955, 39.633629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424629, 29.443857, 39.494694>,  <37.742443, 28.897858, 39.746185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424629, 29.443857, 39.494694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806515, 29.484875, 39.382969>,  <38.035645, 29.509485, 39.315933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806515, 29.484875, 39.382969>,  <37.424629, 29.443857, 39.494694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806515, 29.484875, 39.382969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296492, 0.249128, -0.921969,
		-0.024956, 0.963027, 0.268248,
		0.954709, 0.102542, -0.279312,
		38.092926, 29.515636, 39.299175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419533, 29.986805, 39.062244>,  <37.424629, 29.443857, 39.494694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419533, 29.986805, 39.062244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770557, 29.817377, 38.972378>,  <37.981171, 29.715721, 38.918457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770557, 29.817377, 38.972378>,  <37.419533, 29.986805, 39.062244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770557, 29.817377, 38.972378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046306, 0.391505, -0.919010,
		0.477221, 0.816892, 0.323956,
		0.877562, -0.423570, -0.224662,
		38.033825, 29.690306, 38.904980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856327, 30.627308, 38.834663>,  <37.419533, 29.986805, 39.062244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856327, 30.627308, 38.834663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020287, 30.285017, 38.708359>,  <38.118664, 30.079641, 38.632576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020287, 30.285017, 38.708359>,  <37.856327, 30.627308, 38.834663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020287, 30.285017, 38.708359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257182, 0.440568, -0.860092,
		0.875121, 0.271345, 0.400668,
		0.409903, -0.855729, -0.315765,
		38.143257, 30.028299, 38.613628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452412, 30.826868, 38.447971>,  <37.856327, 30.627308, 38.834663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452412, 30.826868, 38.447971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360188, 30.459425, 38.319599>,  <38.304852, 30.238958, 38.242577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360188, 30.459425, 38.319599>,  <38.452412, 30.826868, 38.447971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360188, 30.459425, 38.319599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124788, 0.299183, -0.946001,
		0.965023, -0.258158, 0.045652,
		-0.230560, -0.918610, -0.320934,
		38.291019, 30.183842, 38.223320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913078, 30.837809, 37.902504>,  <38.452412, 30.826868, 38.447971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913078, 30.837809, 37.902504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619049, 30.575886, 37.832188>,  <38.442631, 30.418732, 37.789997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619049, 30.575886, 37.832188>,  <38.913078, 30.837809, 37.902504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619049, 30.575886, 37.832188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045922, 0.210603, -0.976493,
		0.676436, -0.725861, -0.124738,
		-0.735069, -0.654807, -0.175793,
		38.398529, 30.379444, 37.779449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170105, 30.363413, 37.391495>,  <38.913078, 30.837809, 37.902504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170105, 30.363413, 37.391495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775955, 30.430891, 37.381859>,  <38.539467, 30.471378, 37.376076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775955, 30.430891, 37.381859>,  <39.170105, 30.363413, 37.391495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775955, 30.430891, 37.381859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040711, 0.095750, -0.994573,
		-0.165476, -0.981006, -0.101217,
		-0.985373, 0.168699, -0.024094,
		38.480343, 30.481501, 37.374630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.067020, 28.549063, 45.094067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.674599, 28.568207, 45.018974>,  <38.439144, 28.579693, 44.973919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.674599, 28.568207, 45.018974>,  <39.067020, 28.549063, 45.094067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674599, 28.568207, 45.018974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187199, -0.015372, -0.982202,
		-0.049898, -0.998736, 0.006121,
		-0.981054, 0.047864, -0.187729,
		38.380283, 28.582563, 44.962654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950638, 27.988577, 44.634132>,  <39.067020, 28.549063, 45.094067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950638, 27.988577, 44.634132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.643929, 28.243385, 44.602482>,  <38.459904, 28.396271, 44.583492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.643929, 28.243385, 44.602482>,  <38.950638, 27.988577, 44.634132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643929, 28.243385, 44.602482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029810, -0.087790, -0.995693,
		-0.641221, -0.765833, 0.048326,
		-0.766777, 0.637019, -0.079122,
		38.413895, 28.434490, 44.578747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397961, 27.777060, 44.089645>,  <38.950638, 27.988577, 44.634132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397961, 27.777060, 44.089645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.329887, 28.170166, 44.118523>,  <38.289043, 28.406029, 44.135849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.329887, 28.170166, 44.118523>,  <38.397961, 27.777060, 44.089645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329887, 28.170166, 44.118523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039133, 0.066459, -0.997022,
		-0.984635, -0.172500, 0.027149,
		-0.170182, 0.982765, 0.072189,
		38.278831, 28.464996, 44.140179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909931, 27.856821, 43.592026>,  <38.397961, 27.777060, 44.089645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909931, 27.856821, 43.592026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027870, 28.234760, 43.649059>,  <38.098633, 28.461523, 43.683281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027870, 28.234760, 43.649059>,  <37.909931, 27.856821, 43.592026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027870, 28.234760, 43.649059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064915, 0.168678, -0.983531,
		-0.953336, 0.280737, 0.111069,
		0.294849, 0.944846, 0.142583,
		38.116325, 28.518213, 43.691833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400646, 28.315786, 43.226467>,  <37.909931, 27.856821, 43.592026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400646, 28.315786, 43.226467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.733276, 28.531479, 43.279694>,  <37.932854, 28.660894, 43.311630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.733276, 28.531479, 43.279694>,  <37.400646, 28.315786, 43.226467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733276, 28.531479, 43.279694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011715, 0.256555, -0.966459,
		-0.555284, 0.802127, 0.219662,
		0.831578, 0.539232, 0.133064,
		37.982750, 28.693249, 43.319614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308712, 29.096716, 42.989952>,  <37.400646, 28.315786, 43.226467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308712, 29.096716, 42.989952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.702965, 29.030949, 43.005413>,  <37.939518, 28.991489, 43.014690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.702965, 29.030949, 43.005413>,  <37.308712, 29.096716, 42.989952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702965, 29.030949, 43.005413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116407, 0.495438, -0.860808,
		0.122380, 0.852941, 0.507460,
		0.985633, -0.164417, 0.038657,
		37.998653, 28.981623, 43.017010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566231, 29.723106, 42.705418>,  <37.308712, 29.096716, 42.989952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566231, 29.723106, 42.705418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876770, 29.472198, 42.680679>,  <38.063091, 29.321653, 42.665836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876770, 29.472198, 42.680679>,  <37.566231, 29.723106, 42.705418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876770, 29.472198, 42.680679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207067, 0.346492, -0.914913,
		0.595326, 0.697480, 0.398883,
		0.776344, -0.627268, -0.061850,
		38.109673, 29.284018, 42.662125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114716, 30.096115, 42.394554>,  <37.566231, 29.723106, 42.705418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114716, 30.096115, 42.394554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.251698, 29.722982, 42.349735>,  <38.333885, 29.499104, 42.322845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.251698, 29.722982, 42.349735>,  <38.114716, 30.096115, 42.394554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251698, 29.722982, 42.349735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376601, 0.245543, -0.893241,
		0.860754, 0.263696, 0.435392,
		0.342452, -0.932831, -0.112043,
		38.354431, 29.443132, 42.316124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989666, 30.095755, 42.242695>,  <38.114716, 30.096115, 42.394554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989666, 30.095755, 42.242695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.776817, 29.791788, 42.093361>,  <38.649109, 29.609407, 42.003761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.776817, 29.791788, 42.093361>,  <38.989666, 30.095755, 42.242695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776817, 29.791788, 42.093361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395974, 0.166381, -0.903063,
		0.748368, -0.628365, 0.212373,
		-0.532118, -0.759918, -0.373330,
		38.617180, 29.563812, 41.981361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679371, 30.162783, 42.487904>,  <38.989666, 30.095755, 42.242695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679371, 30.162783, 42.487904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.949127, 30.445072, 42.401043>,  <40.110981, 30.614445, 42.348927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.949127, 30.445072, 42.401043>,  <39.679371, 30.162783, 42.487904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949127, 30.445072, 42.401043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241505, 0.067103, 0.968077,
		0.697766, -0.705303, -0.125182,
		0.674388, 0.705723, -0.217156,
		40.151443, 30.656790, 42.335896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358585, 30.070072, 42.827572>,  <39.679371, 30.162783, 42.487904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358585, 30.070072, 42.827572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.337624, 30.464689, 42.765621>,  <40.325047, 30.701460, 42.728451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.337624, 30.464689, 42.765621>,  <40.358585, 30.070072, 42.827572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337624, 30.464689, 42.765621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150466, 0.161119, 0.975398,
		0.987225, 0.027814, -0.156884,
		-0.052407, 0.986543, -0.154875,
		40.321903, 30.760653, 42.719158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764755, 30.261625, 43.408791>,  <40.358585, 30.070072, 42.827572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764755, 30.261625, 43.408791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.586784, 30.592991, 43.272690>,  <40.480003, 30.791811, 43.191029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.586784, 30.592991, 43.272690>,  <40.764755, 30.261625, 43.408791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586784, 30.592991, 43.272690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118887, 0.321930, 0.939269,
		0.887641, 0.458357, -0.044748,
		-0.444926, 0.828414, -0.340250,
		40.453308, 30.841515, 43.170616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214027, 30.826725, 43.543468>,  <40.764755, 30.261625, 43.408791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214027, 30.826725, 43.543468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.858257, 31.001171, 43.488728>,  <40.644794, 31.105839, 43.455883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.858257, 31.001171, 43.488728>,  <41.214027, 30.826725, 43.543468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858257, 31.001171, 43.488728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045700, 0.213068, 0.975968,
		0.454792, 0.874304, -0.169577,
		-0.889424, 0.436113, -0.136857,
		40.591431, 31.132006, 43.447670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313721, 31.383730, 43.912876>,  <41.214027, 30.826725, 43.543468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313721, 31.383730, 43.912876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.924500, 31.301401, 43.871284>,  <40.690968, 31.252005, 43.846329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.924500, 31.301401, 43.871284>,  <41.313721, 31.383730, 43.912876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924500, 31.301401, 43.871284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130781, 0.121203, 0.983975,
		-0.189922, 0.971055, -0.144854,
		-0.973050, -0.205822, -0.103976,
		40.632584, 31.239655, 43.840092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896889, 31.933350, 44.124660>,  <41.313721, 31.383730, 43.912876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896889, 31.933350, 44.124660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.649330, 31.622812, 44.172428>,  <40.500797, 31.436489, 44.201088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.649330, 31.622812, 44.172428>,  <40.896889, 31.933350, 44.124660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649330, 31.622812, 44.172428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090105, 0.221201, 0.971057,
		-0.780291, 0.590220, -0.206852,
		-0.618892, -0.776345, 0.119419,
		40.463661, 31.389910, 44.208256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426586, 32.151283, 44.599178>,  <40.896889, 31.933350, 44.124660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426586, 32.151283, 44.599178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.341347, 31.760868, 44.616779>,  <40.290203, 31.526619, 44.627342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.341347, 31.760868, 44.616779>,  <40.426586, 32.151283, 44.599178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341347, 31.760868, 44.616779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110212, 0.068767, 0.991526,
		-0.970794, 0.206443, -0.122225,
		-0.213099, -0.976039, 0.044006,
		40.277416, 31.468056, 44.629982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861588, 32.099892, 45.202251>,  <40.426586, 32.151283, 44.599178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861588, 32.099892, 45.202251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.038692, 31.748901, 45.128502>,  <40.144955, 31.538307, 45.084251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.038692, 31.748901, 45.128502>,  <39.861588, 32.099892, 45.202251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038692, 31.748901, 45.128502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095747, -0.250727, 0.963311,
		-0.891510, -0.408868, -0.195029,
		0.442766, -0.877475, -0.184378,
		40.171524, 31.485659, 45.073189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539795, 31.644739, 45.618580>,  <39.861588, 32.099892, 45.202251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539795, 31.644739, 45.618580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.882225, 31.450937, 45.546581>,  <40.087681, 31.334656, 45.503384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.882225, 31.450937, 45.546581>,  <39.539795, 31.644739, 45.618580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882225, 31.450937, 45.546581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008658, -0.361645, 0.932276,
		-0.516786, -0.796535, -0.313788,
		0.856071, -0.484504, -0.179997,
		40.139046, 31.305586, 45.492580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394253, 30.882755, 45.701149>,  <39.539795, 31.644739, 45.618580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394253, 30.882755, 45.701149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.785213, 30.953585, 45.747345>,  <40.019791, 30.996082, 45.775063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.785213, 30.953585, 45.747345>,  <39.394253, 30.882755, 45.701149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785213, 30.953585, 45.747345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067655, -0.255569, 0.964421,
		0.200291, -0.950436, -0.237813,
		0.977398, 0.177075, 0.115490,
		40.078434, 31.006708, 45.781990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689526, 30.351831, 46.039604>,  <39.394253, 30.882755, 45.701149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689526, 30.351831, 46.039604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947819, 30.653309, 46.088566>,  <40.102795, 30.834194, 46.117943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947819, 30.653309, 46.088566>,  <39.689526, 30.351831, 46.039604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947819, 30.653309, 46.088566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030280, -0.185456, 0.982186,
		0.762966, -0.630520, -0.142576,
		0.645729, 0.753692, 0.122404,
		40.141537, 30.879416, 46.125286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161434, 30.063801, 46.462879>,  <39.689526, 30.351831, 46.039604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161434, 30.063801, 46.462879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.225883, 30.454029, 46.522610>,  <40.264553, 30.688166, 46.558449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.225883, 30.454029, 46.522610>,  <40.161434, 30.063801, 46.462879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225883, 30.454029, 46.522610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126926, -0.170526, 0.977144,
		0.978738, -0.138488, -0.151301,
		0.161124, 0.975573, 0.149322,
		40.274220, 30.746700, 46.567406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797455, 30.167931, 46.812252>,  <40.161434, 30.063801, 46.462879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797455, 30.167931, 46.812252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.589447, 30.496241, 46.906830>,  <40.464642, 30.693226, 46.963577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.589447, 30.496241, 46.906830>,  <40.797455, 30.167931, 46.812252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589447, 30.496241, 46.906830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174502, -0.168893, 0.970064,
		0.836136, 0.545717, -0.055399,
		-0.520024, 0.820773, 0.236446,
		40.433441, 30.742472, 46.977764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078129, 30.303104, 47.397591>,  <40.797455, 30.167931, 46.812252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078129, 30.303104, 47.397591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.766155, 30.553198, 47.408794>,  <40.578972, 30.703255, 47.415516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.766155, 30.553198, 47.408794>,  <41.078129, 30.303104, 47.397591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766155, 30.553198, 47.408794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114987, 0.099155, 0.988406,
		0.615208, 0.774113, -0.149228,
		-0.779934, 0.625234, 0.028012,
		40.532173, 30.740768, 47.417198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.173058, 30.795341, 46.527149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.515888, 30.602413, 46.454716>,  <32.721584, 30.486656, 46.411255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.515888, 30.602413, 46.454716>,  <32.173058, 30.795341, 46.527149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515888, 30.602413, 46.454716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043710, 0.418301, -0.907256,
		0.513336, 0.769670, 0.379597,
		0.857074, -0.482319, -0.181087,
		32.773010, 30.457718, 46.400391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618977, 31.258495, 46.388386>,  <32.173058, 30.795341, 46.527149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618977, 31.258495, 46.388386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.776627, 30.922092, 46.240131>,  <32.871216, 30.720251, 46.151180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.776627, 30.922092, 46.240131>,  <32.618977, 31.258495, 46.388386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776627, 30.922092, 46.240131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259204, 0.488624, -0.833102,
		0.881748, 0.232275, 0.410571,
		0.394124, -0.841008, -0.370637,
		32.894863, 30.669790, 46.128941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349689, 31.486048, 46.120724>,  <32.618977, 31.258495, 46.388386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349689, 31.486048, 46.120724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271004, 31.139359, 45.937382>,  <33.223793, 30.931345, 45.827377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271004, 31.139359, 45.937382>,  <33.349689, 31.486048, 46.120724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271004, 31.139359, 45.937382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153778, 0.434430, -0.887481,
		0.968326, -0.245066, 0.047824,
		-0.196716, -0.866725, -0.458356,
		33.211990, 30.879341, 45.799873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877544, 31.408211, 45.504650>,  <33.349689, 31.486048, 46.120724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877544, 31.408211, 45.504650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.576466, 31.160065, 45.416481>,  <33.395817, 31.011177, 45.363579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.576466, 31.160065, 45.416481>,  <33.877544, 31.408211, 45.504650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576466, 31.160065, 45.416481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188827, 0.117313, -0.974978,
		0.630703, -0.775488, 0.028840,
		-0.752701, -0.620367, -0.220423,
		33.350655, 30.973955, 45.350353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119114, 30.857462, 45.053822>,  <33.877544, 31.408211, 45.504650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119114, 30.857462, 45.053822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.723034, 30.870331, 44.999474>,  <33.485386, 30.878052, 44.966866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.723034, 30.870331, 44.999474>,  <34.119114, 30.857462, 45.053822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723034, 30.870331, 44.999474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138969, 0.132772, -0.981356,
		-0.013536, -0.990624, -0.135943,
		-0.990204, 0.032176, -0.135869,
		33.425972, 30.879984, 44.958714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054165, 30.526400, 44.432255>,  <34.119114, 30.857462, 45.053822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054165, 30.526400, 44.432255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687130, 30.685364, 44.436169>,  <33.466908, 30.780743, 44.438519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687130, 30.685364, 44.436169>,  <34.054165, 30.526400, 44.432255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687130, 30.685364, 44.436169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058419, 0.159148, -0.985525,
		-0.393215, -0.903735, -0.169249,
		-0.917589, 0.397410, 0.009784,
		33.411854, 30.804586, 44.439102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757980, 30.162733, 43.883118>,  <34.054165, 30.526400, 44.432255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757980, 30.162733, 43.883118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.547264, 30.496651, 43.947132>,  <33.420834, 30.697001, 43.985542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.547264, 30.496651, 43.947132>,  <33.757980, 30.162733, 43.883118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547264, 30.496651, 43.947132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187314, 0.297662, -0.936115,
		-0.829100, -0.463159, -0.313174,
		-0.526790, 0.834794, 0.160035,
		33.389229, 30.747089, 43.995144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425549, 30.367245, 43.239857>,  <33.757980, 30.162733, 43.883118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425549, 30.367245, 43.239857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402893, 30.711891, 43.441612>,  <33.389297, 30.918678, 43.562664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402893, 30.711891, 43.441612>,  <33.425549, 30.367245, 43.239857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402893, 30.711891, 43.441612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129342, 0.507276, -0.852022,
		-0.989981, 0.016980, -0.140176,
		-0.056640, 0.861616, 0.504390,
		33.385902, 30.970377, 43.592930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926373, 30.827652, 42.877525>,  <33.425549, 30.367245, 43.239857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926373, 30.827652, 42.877525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.175159, 31.056890, 43.090961>,  <33.324432, 31.194433, 43.219021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.175159, 31.056890, 43.090961>,  <32.926373, 30.827652, 42.877525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175159, 31.056890, 43.090961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168309, 0.567658, -0.805876,
		-0.764741, 0.591036, 0.256608,
		0.621967, 0.573097, 0.533588,
		33.361752, 31.228819, 43.251038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628613, 31.452858, 42.815102>,  <32.926373, 30.827652, 42.877525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628613, 31.452858, 42.815102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.005108, 31.534914, 42.922432>,  <33.231003, 31.584146, 42.986828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.005108, 31.534914, 42.922432>,  <32.628613, 31.452858, 42.815102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005108, 31.534914, 42.922432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093356, 0.605470, -0.790374,
		-0.324598, 0.768976, 0.550737,
		0.941234, 0.205139, 0.268323,
		33.287479, 31.596457, 43.002930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716408, 32.157578, 42.588718>,  <32.628613, 31.452858, 42.815102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716408, 32.157578, 42.588718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086372, 32.015011, 42.641632>,  <33.308353, 31.929470, 42.673378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086372, 32.015011, 42.641632>,  <32.716408, 32.157578, 42.588718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086372, 32.015011, 42.641632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325986, 0.564486, -0.758346,
		0.195620, 0.744526, 0.638289,
		0.924914, -0.356421, 0.132281,
		33.363846, 31.908085, 42.681316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228687, 32.766125, 42.580872>,  <32.716408, 32.157578, 42.588718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228687, 32.766125, 42.580872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.432007, 32.434288, 42.488434>,  <33.554001, 32.235188, 42.432972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.432007, 32.434288, 42.488434>,  <33.228687, 32.766125, 42.580872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432007, 32.434288, 42.488434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457213, 0.487376, -0.743922,
		0.729783, 0.272477, 0.627035,
		0.508303, -0.829591, -0.231099,
		33.584499, 32.185410, 42.419106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927738, 32.938061, 42.467777>,  <33.228687, 32.766125, 42.580872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927738, 32.938061, 42.467777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.899117, 32.584721, 42.282490>,  <33.881943, 32.372715, 42.171318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.899117, 32.584721, 42.282490>,  <33.927738, 32.938061, 42.467777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899117, 32.584721, 42.282490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458440, 0.383322, -0.801808,
		0.885840, -0.269731, 0.377535,
		-0.071555, -0.883351, -0.463218,
		33.877651, 32.319714, 42.143524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621517, 32.766850, 42.185120>,  <33.927738, 32.938061, 42.467777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621517, 32.766850, 42.185120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.340866, 32.568245, 41.980694>,  <34.172474, 32.449081, 41.858036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.340866, 32.568245, 41.980694>,  <34.621517, 32.766850, 42.185120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340866, 32.568245, 41.980694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356775, 0.376058, -0.855156,
		0.616788, -0.782339, -0.086710,
		-0.701630, -0.496514, -0.511067,
		34.130379, 32.419292, 41.827374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441982, 33.090366, 42.032986>,  <34.621517, 32.766850, 42.185120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441982, 33.090366, 42.032986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.612503, 33.452080, 42.042168>,  <35.714817, 33.669109, 42.047676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.612503, 33.452080, 42.042168>,  <35.441982, 33.090366, 42.032986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612503, 33.452080, 42.042168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033606, -0.041190, 0.998586,
		0.903955, -0.424932, -0.047949,
		0.426306, 0.904288, 0.022954,
		35.740395, 33.723366, 42.049053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637020, 33.100155, 42.712471>,  <35.441982, 33.090366, 42.032986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637020, 33.100155, 42.712471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.708633, 33.484215, 42.626629>,  <35.751602, 33.714653, 42.575123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.708633, 33.484215, 42.626629>,  <35.637020, 33.100155, 42.712471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708633, 33.484215, 42.626629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053378, 0.227291, 0.972363,
		0.982395, -0.162626, 0.091943,
		0.179030, 0.960152, -0.214609,
		35.762341, 33.772259, 42.562244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314362, 33.365601, 43.052460>,  <35.637020, 33.100155, 42.712471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314362, 33.365601, 43.052460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.021000, 33.629211, 42.985767>,  <35.844982, 33.787376, 42.945751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.021000, 33.629211, 42.985767>,  <36.314362, 33.365601, 43.052460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021000, 33.629211, 42.985767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079263, 0.160688, 0.983817,
		0.675153, 0.734754, -0.065613,
		-0.733407, 0.659027, -0.166728,
		35.800980, 33.826920, 42.935749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423313, 33.977116, 43.431087>,  <36.314362, 33.365601, 43.052460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423313, 33.977116, 43.431087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.027943, 33.994438, 43.372932>,  <35.790722, 34.004833, 43.338039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.027943, 33.994438, 43.372932>,  <36.423313, 33.977116, 43.431087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027943, 33.994438, 43.372932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141092, 0.089724, 0.985922,
		0.055743, 0.995025, -0.082575,
		-0.988426, 0.043307, -0.145392,
		35.731415, 34.007431, 43.329315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177040, 34.451576, 43.825294>,  <36.423313, 33.977116, 43.431087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177040, 34.451576, 43.825294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.841778, 34.248852, 43.744659>,  <35.640621, 34.127216, 43.696278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.841778, 34.248852, 43.744659>,  <36.177040, 34.451576, 43.825294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841778, 34.248852, 43.744659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235222, 0.002405, 0.971939,
		-0.492107, 0.862052, -0.121229,
		-0.838154, -0.506813, -0.201590,
		35.590332, 34.096809, 43.684181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654003, 34.779518, 44.170181>,  <36.177040, 34.451576, 43.825294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654003, 34.779518, 44.170181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.501358, 34.416935, 44.097836>,  <35.409771, 34.199387, 44.054428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.501358, 34.416935, 44.097836>,  <35.654003, 34.779518, 44.170181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501358, 34.416935, 44.097836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360929, -0.034002, 0.931973,
		-0.850941, 0.420933, -0.314191,
		-0.381615, -0.906454, -0.180860,
		35.386875, 34.145000, 44.043579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916267, 34.913651, 44.441460>,  <35.654003, 34.779518, 44.170181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916267, 34.913651, 44.441460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004604, 34.524025, 44.421741>,  <35.057606, 34.290249, 44.409912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004604, 34.524025, 44.421741>,  <34.916267, 34.913651, 44.441460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004604, 34.524025, 44.421741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327626, -0.121692, 0.936937,
		-0.918636, -0.190762, -0.346003,
		0.220838, -0.974064, -0.049292,
		35.070854, 34.231804, 44.406956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290558, 34.596413, 44.594589>,  <34.916267, 34.913651, 44.441460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290558, 34.596413, 44.594589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.593754, 34.350475, 44.681705>,  <34.775669, 34.202915, 44.733974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.593754, 34.350475, 44.681705>,  <34.290558, 34.596413, 44.594589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593754, 34.350475, 44.681705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402323, -0.177889, 0.898049,
		-0.513415, -0.768328, -0.382201,
		0.757985, -0.614840, 0.217786,
		34.821148, 34.166023, 44.747040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934250, 34.102825, 44.874683>,  <34.290558, 34.596413, 44.594589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934250, 34.102825, 44.874683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.310215, 34.062881, 45.005283>,  <34.535793, 34.038914, 45.083641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.310215, 34.062881, 45.005283>,  <33.934250, 34.102825, 44.874683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310215, 34.062881, 45.005283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340319, -0.197043, 0.919433,
		-0.027479, -0.975296, -0.219186,
		0.939908, -0.099858, 0.326498,
		34.592186, 34.032925, 45.103233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979298, 33.484505, 45.338825>,  <33.934250, 34.102825, 44.874683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979298, 33.484505, 45.338825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.316433, 33.675667, 45.437801>,  <34.518715, 33.790363, 45.497189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.316433, 33.675667, 45.437801>,  <33.979298, 33.484505, 45.338825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316433, 33.675667, 45.437801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031839, -0.503269, 0.863543,
		0.537220, -0.719951, -0.439392,
		0.842841, 0.477903, 0.247444,
		34.569286, 33.819038, 45.512035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380089, 33.006283, 45.675289>,  <33.979298, 33.484505, 45.338825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380089, 33.006283, 45.675289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.523796, 33.357456, 45.801876>,  <34.610020, 33.568161, 45.877827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.523796, 33.357456, 45.801876>,  <34.380089, 33.006283, 45.675289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523796, 33.357456, 45.801876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047851, -0.355991, 0.933264,
		0.932006, -0.320152, -0.169908,
		0.359272, 0.877937, 0.316466,
		34.631577, 33.620838, 45.896816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153229, 32.985306, 45.948769>,  <34.380089, 33.006283, 45.675289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153229, 32.985306, 45.948769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.962204, 33.287701, 46.127842>,  <34.847588, 33.469135, 46.235287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.962204, 33.287701, 46.127842>,  <35.153229, 32.985306, 45.948769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962204, 33.287701, 46.127842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252092, -0.370212, 0.894088,
		0.841653, 0.539843, -0.013777,
		-0.477567, 0.755984, 0.447680,
		34.818935, 33.514496, 46.262146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639381, 33.020321, 46.520046>,  <35.153229, 32.985306, 45.948769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639381, 33.020321, 46.520046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.322987, 33.247498, 46.611061>,  <35.133148, 33.383804, 46.665672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.322987, 33.247498, 46.611061>,  <35.639381, 33.020321, 46.520046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322987, 33.247498, 46.611061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110213, -0.233553, 0.966078,
		0.601822, 0.789235, 0.122144,
		-0.790989, 0.567945, 0.227541,
		35.085690, 33.417881, 46.679325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797096, 33.390144, 47.115532>,  <35.639381, 33.020321, 46.520046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797096, 33.390144, 47.115532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397263, 33.393692, 47.104588>,  <35.157360, 33.395821, 47.098022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397263, 33.393692, 47.104588>,  <35.797096, 33.390144, 47.115532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397263, 33.393692, 47.104588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028608, -0.207838, 0.977745,
		0.002982, 0.978123, 0.208005,
		-0.999586, 0.008867, -0.027362,
		35.097385, 33.396351, 47.096378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376343, 33.915771, 47.191662>,  <35.797096, 33.390144, 47.115532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376343, 33.915771, 47.191662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.735054, 33.965103, 47.361641>,  <36.950279, 33.994701, 47.463627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.735054, 33.965103, 47.361641>,  <36.376343, 33.915771, 47.191662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735054, 33.965103, 47.361641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328117, 0.458971, -0.825642,
		-0.296861, 0.879850, 0.371130,
		0.896779, 0.123327, 0.424944,
		37.004089, 34.002102, 47.489124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580593, 34.697613, 47.179790>,  <36.376343, 33.915771, 47.191662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580593, 34.697613, 47.179790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.914597, 34.479458, 47.208954>,  <37.114998, 34.348564, 47.226452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.914597, 34.479458, 47.208954>,  <36.580593, 34.697613, 47.179790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914597, 34.479458, 47.208954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373396, 0.464328, -0.803103,
		0.404147, 0.697822, 0.591363,
		0.835009, -0.545384, 0.072907,
		37.165100, 34.315842, 47.230827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068405, 35.108208, 46.818157>,  <36.580593, 34.697613, 47.179790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068405, 35.108208, 46.818157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.260536, 34.759182, 46.853745>,  <37.375813, 34.549767, 46.875095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.260536, 34.759182, 46.853745>,  <37.068405, 35.108208, 46.818157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260536, 34.759182, 46.853745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459648, 0.164032, -0.872822,
		0.747002, 0.460131, 0.479862,
		0.480325, -0.872567, 0.088966,
		37.404633, 34.497414, 46.880436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775429, 35.228928, 46.694286>,  <37.068405, 35.108208, 46.818157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775429, 35.228928, 46.694286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.757618, 34.833588, 46.636063>,  <37.746933, 34.596386, 46.601128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.757618, 34.833588, 46.636063>,  <37.775429, 35.228928, 46.694286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757618, 34.833588, 46.636063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588681, 0.091761, -0.803140,
		0.807138, -0.121444, 0.577736,
		-0.044523, -0.988348, -0.145556,
		37.744263, 34.537083, 46.592396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515823, 35.021450, 46.591301>,  <37.775429, 35.228928, 46.694286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515823, 35.021450, 46.591301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.302074, 34.718918, 46.440357>,  <38.173824, 34.537399, 46.349789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.302074, 34.718918, 46.440357>,  <38.515823, 35.021450, 46.591301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302074, 34.718918, 46.440357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656652, -0.090363, -0.748761,
		0.532214, -0.647914, 0.544936,
		-0.534375, -0.756335, -0.377362,
		38.141762, 34.492016, 46.327148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017006, 34.605568, 46.233616>,  <38.515823, 35.021450, 46.591301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017006, 34.605568, 46.233616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673653, 34.481148, 46.070438>,  <38.467640, 34.406494, 45.972530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673653, 34.481148, 46.070438>,  <39.017006, 34.605568, 46.233616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673653, 34.481148, 46.070438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470017, -0.158202, -0.868364,
		0.205572, -0.937132, 0.281999,
		-0.858385, -0.311056, -0.407947,
		38.416138, 34.387833, 45.948055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190929, 34.086922, 45.861351>,  <39.017006, 34.605568, 46.233616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190929, 34.086922, 45.861351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.839146, 34.205147, 45.712112>,  <38.628075, 34.276081, 45.622570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.839146, 34.205147, 45.712112>,  <39.190929, 34.086922, 45.861351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839146, 34.205147, 45.712112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372601, -0.060273, -0.926032,
		-0.296187, -0.953420, -0.057119,
		-0.879455, 0.295562, -0.373098,
		38.575310, 34.293816, 45.600182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132877, 33.649902, 45.345222>,  <39.190929, 34.086922, 45.861351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132877, 33.649902, 45.345222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.895794, 33.965092, 45.278530>,  <38.753544, 34.154205, 45.238514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.895794, 33.965092, 45.278530>,  <39.132877, 33.649902, 45.345222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895794, 33.965092, 45.278530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325061, 0.044625, -0.944640,
		-0.736910, -0.614091, -0.282589,
		-0.592705, 0.787972, -0.166732,
		38.717983, 34.201485, 45.228512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726791, 33.573303, 44.707512>,  <39.132877, 33.649902, 45.345222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726791, 33.573303, 44.707512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.738499, 33.965984, 44.782768>,  <38.745525, 34.201595, 44.827923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.738499, 33.965984, 44.782768>,  <38.726791, 33.573303, 44.707512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738499, 33.965984, 44.782768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248575, 0.175160, -0.952643,
		-0.968170, 0.074651, -0.238901,
		0.029270, 0.981706, 0.188141,
		38.747280, 34.260494, 44.839211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260509, 33.801952, 44.243473>,  <38.726791, 33.573303, 44.707512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260509, 33.801952, 44.243473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.499477, 34.106415, 44.344452>,  <38.642860, 34.289093, 44.405041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.499477, 34.106415, 44.344452>,  <38.260509, 33.801952, 44.243473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499477, 34.106415, 44.344452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167533, 0.189393, -0.967504,
		-0.784231, 0.620302, -0.014371,
		0.597423, 0.761154, 0.252449,
		38.678703, 34.334763, 44.420185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939831, 34.457932, 43.891327>,  <38.260509, 33.801952, 44.243473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939831, 34.457932, 43.891327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.328941, 34.478615, 43.981682>,  <38.562408, 34.491024, 44.035896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.328941, 34.478615, 43.981682>,  <37.939831, 34.457932, 43.891327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328941, 34.478615, 43.981682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197597, 0.324149, -0.925139,
		-0.121054, 0.944592, 0.305109,
		0.972780, 0.051704, 0.225888,
		38.620777, 34.494125, 44.049450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070824, 35.073429, 43.702030>,  <37.939831, 34.457932, 43.891327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070824, 35.073429, 43.702030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.417538, 34.874023, 43.707092>,  <38.625568, 34.754379, 43.710129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.417538, 34.874023, 43.707092>,  <38.070824, 35.073429, 43.702030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417538, 34.874023, 43.707092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129711, 0.200883, -0.970990,
		0.481512, 0.843284, 0.238786,
		0.866788, -0.498516, 0.012655,
		38.677574, 34.724468, 43.710888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485107, 35.486748, 43.164883>,  <38.070824, 35.073429, 43.702030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485107, 35.486748, 43.164883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.721359, 35.176689, 43.254604>,  <38.863110, 34.990654, 43.308437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.721359, 35.176689, 43.254604>,  <38.485107, 35.486748, 43.164883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721359, 35.176689, 43.254604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292951, -0.053038, -0.954655,
		0.751890, 0.629557, 0.195753,
		0.590627, -0.775142, 0.224308,
		38.898548, 34.944145, 43.321896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165199, 35.630413, 42.965183>,  <38.485107, 35.486748, 43.164883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165199, 35.630413, 42.965183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.114983, 35.234299, 42.941277>,  <39.084854, 34.996632, 42.926933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.114983, 35.234299, 42.941277>,  <39.165199, 35.630413, 42.965183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114983, 35.234299, 42.941277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243670, 0.027621, -0.969465,
		0.961699, -0.136270, 0.237835,
		-0.125540, -0.990287, -0.059768,
		39.077320, 34.937214, 42.923347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.790661, 40.064240, 37.956894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.835155, 40.204315, 37.584873>,  <29.861853, 40.288361, 37.361660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.835155, 40.204315, 37.584873>,  <29.790661, 40.064240, 37.956894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835155, 40.204315, 37.584873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212144, -0.905920, -0.366474,
		-0.970887, 0.238071, -0.026483,
		0.111238, 0.350186, -0.930051,
		29.868526, 40.309372, 37.305859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257553, 39.772842, 37.557915>,  <29.790661, 40.064240, 37.956894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257553, 39.772842, 37.557915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498781, 39.919571, 37.274578>,  <29.643518, 40.007607, 37.104576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498781, 39.919571, 37.274578>,  <29.257553, 39.772842, 37.557915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498781, 39.919571, 37.274578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082931, -0.854352, -0.513036,
		-0.793364, 0.368141, -0.484815,
		0.603072, 0.366818, -0.708342,
		29.679703, 40.029617, 37.062077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967827, 39.747707, 36.858231>,  <29.257553, 39.772842, 37.557915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967827, 39.747707, 36.858231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.362984, 39.742813, 36.796364>,  <29.600077, 39.739876, 36.759243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.362984, 39.742813, 36.796364>,  <28.967827, 39.747707, 36.858231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362984, 39.742813, 36.796364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083816, -0.881001, -0.465632,
		-0.130568, 0.472957, -0.871358,
		0.987890, -0.012237, -0.154671,
		29.659351, 39.739143, 36.749962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890751, 39.773464, 36.203522>,  <28.967827, 39.747707, 36.858231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890751, 39.773464, 36.203522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.258911, 39.632393, 36.271027>,  <29.479807, 39.547749, 36.311531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.258911, 39.632393, 36.271027>,  <28.890751, 39.773464, 36.203522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258911, 39.632393, 36.271027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269678, -0.885189, -0.379097,
		0.283090, 0.303408, -0.909837,
		0.920399, -0.352682, 0.168766,
		29.535030, 39.526588, 36.321655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045286, 39.411209, 35.573429>,  <28.890751, 39.773464, 36.203522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045286, 39.411209, 35.573429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.308739, 39.279552, 35.844093>,  <29.466810, 39.200558, 36.006493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.308739, 39.279552, 35.844093>,  <29.045286, 39.411209, 35.573429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308739, 39.279552, 35.844093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077231, -0.924078, -0.374319,
		0.748493, 0.194278, -0.634046,
		0.658630, -0.329143, 0.676662,
		29.506329, 39.180809, 36.047092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512196, 38.993149, 35.151337>,  <29.045286, 39.411209, 35.573429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512196, 38.993149, 35.151337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486467, 38.874825, 35.532570>,  <29.471031, 38.803829, 35.761311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486467, 38.874825, 35.532570>,  <29.512196, 38.993149, 35.151337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486467, 38.874825, 35.532570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360173, -0.883801, -0.298614,
		0.930666, -0.362480, -0.049698,
		-0.064318, -0.295810, 0.953079,
		29.467173, 38.786083, 35.818493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644955, 38.328735, 35.105549>,  <29.512196, 38.993149, 35.151337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644955, 38.328735, 35.105549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461237, 38.359573, 35.459522>,  <29.351006, 38.378075, 35.671906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461237, 38.359573, 35.459522>,  <29.644955, 38.328735, 35.105549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461237, 38.359573, 35.459522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384465, -0.915332, -0.119804,
		0.800772, -0.395251, 0.450046,
		-0.459294, 0.077091, 0.884933,
		29.323448, 38.382702, 35.725002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965210, 37.845615, 35.542801>,  <29.644955, 38.328735, 35.105549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965210, 37.845615, 35.542801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606960, 37.905865, 35.710213>,  <29.392010, 37.942013, 35.810661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606960, 37.905865, 35.710213>,  <29.965210, 37.845615, 35.542801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606960, 37.905865, 35.710213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290722, -0.910356, -0.294505,
		0.336655, -0.385442, 0.859126,
		-0.895625, 0.150621, 0.418532,
		29.338272, 37.951050, 35.835773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859356, 37.268433, 36.083218>,  <29.965210, 37.845615, 35.542801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859356, 37.268433, 36.083218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.497812, 37.428352, 36.022285>,  <29.280886, 37.524303, 35.985725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.497812, 37.428352, 36.022285>,  <29.859356, 37.268433, 36.083218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497812, 37.428352, 36.022285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372677, -0.910607, -0.178626,
		-0.210129, -0.104681, 0.972053,
		-0.903857, 0.399797, -0.152333,
		29.226656, 37.548290, 35.976585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454012, 36.886753, 36.505768>,  <29.859356, 37.268433, 36.083218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454012, 36.886753, 36.505768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.188723, 37.042274, 36.249966>,  <29.029549, 37.135586, 36.096485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.188723, 37.042274, 36.249966>,  <29.454012, 36.886753, 36.505768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188723, 37.042274, 36.249966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499919, -0.866034, -0.008066,
		-0.556969, 0.314351, 0.768745,
		-0.663224, 0.388803, -0.639505,
		28.989756, 37.158916, 36.058113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775309, 36.645187, 36.746979>,  <29.454012, 36.886753, 36.505768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775309, 36.645187, 36.746979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.774498, 36.734608, 36.357101>,  <28.774012, 36.788261, 36.123177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.774498, 36.734608, 36.357101>,  <28.775309, 36.645187, 36.746979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774498, 36.734608, 36.357101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418012, -0.885640, -0.202259,
		-0.908440, 0.407021, 0.095244,
		-0.002028, 0.223553, -0.974690,
		28.773890, 36.801674, 36.064693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190479, 36.276936, 36.539177>,  <28.775309, 36.645187, 36.746979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190479, 36.276936, 36.539177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.392120, 36.373707, 36.207550>,  <28.513105, 36.431770, 36.008575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.392120, 36.373707, 36.207550>,  <28.190479, 36.276936, 36.539177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392120, 36.373707, 36.207550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111788, -0.933609, -0.340407,
		-0.856377, 0.264280, -0.443592,
		0.504104, 0.241929, -0.829065,
		28.543352, 36.446285, 35.958832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739391, 36.028763, 36.093040>,  <28.190479, 36.276936, 36.539177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739391, 36.028763, 36.093040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.098667, 36.069935, 35.922081>,  <28.314232, 36.094639, 35.819508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.098667, 36.069935, 35.922081>,  <27.739391, 36.028763, 36.093040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098667, 36.069935, 35.922081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136850, -0.858436, -0.494327,
		-0.417770, 0.502488, -0.756951,
		0.898187, 0.102926, -0.427394,
		28.368124, 36.100811, 35.793861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650028, 35.737938, 35.381184>,  <27.739391, 36.028763, 36.093040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650028, 35.737938, 35.381184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.045475, 35.715508, 35.437027>,  <28.282743, 35.702049, 35.470531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.045475, 35.715508, 35.437027>,  <27.650028, 35.737938, 35.381184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045475, 35.715508, 35.437027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040741, -0.793491, -0.607216,
		0.144825, 0.605993, -0.782175,
		0.988618, -0.056073, 0.139606,
		28.342060, 35.698685, 35.478909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030216, 35.735657, 34.662766>,  <27.650028, 35.737938, 35.381184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030216, 35.735657, 34.662766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.273785, 35.564747, 34.930092>,  <28.419926, 35.462200, 35.090488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.273785, 35.564747, 34.930092>,  <28.030216, 35.735657, 34.662766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273785, 35.564747, 34.930092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011087, -0.837859, -0.545774,
		0.793153, 0.339743, -0.505454,
		0.608922, -0.427278, 0.668317,
		28.456461, 35.436562, 35.130589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422569, 35.308773, 34.169353>,  <28.030216, 35.735657, 34.662766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422569, 35.308773, 34.169353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.528412, 35.154930, 34.523090>,  <28.591917, 35.062626, 34.735332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.528412, 35.154930, 34.523090>,  <28.422569, 35.308773, 34.169353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528412, 35.154930, 34.523090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014145, -0.915382, -0.402338,
		0.964253, 0.118971, -0.236776,
		0.264607, -0.384607, 0.884342,
		28.607794, 35.039547, 34.788391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966366, 34.874916, 33.996002>,  <28.422569, 35.308773, 34.169353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966366, 34.874916, 33.996002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.820675, 34.759968, 34.350349>,  <28.733261, 34.690998, 34.562958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.820675, 34.759968, 34.350349>,  <28.966366, 34.874916, 33.996002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820675, 34.759968, 34.350349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002052, -0.951450, -0.307798,
		0.931309, -0.110290, 0.347132,
		-0.364225, -0.287367, 0.885867,
		28.711407, 34.673759, 34.616108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341246, 34.230122, 34.096752>,  <28.966366, 34.874916, 33.996002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341246, 34.230122, 34.096752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.023375, 34.230194, 34.339565>,  <28.832651, 34.230236, 34.485252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.023375, 34.230194, 34.339565>,  <29.341246, 34.230122, 34.096752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023375, 34.230194, 34.339565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134049, -0.975364, -0.175201,
		0.592043, -0.220601, 0.775126,
		-0.794680, 0.000178, 0.607029,
		28.784971, 34.230247, 34.521675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400730, 33.626167, 34.487831>,  <29.341246, 34.230122, 34.096752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400730, 33.626167, 34.487831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.012529, 33.721817, 34.500095>,  <28.779608, 33.779209, 34.507454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.012529, 33.721817, 34.500095>,  <29.400730, 33.626167, 34.487831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012529, 33.721817, 34.500095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240852, -0.967277, -0.079779,
		0.010584, -0.084812, 0.996341,
		-0.970504, 0.239126, 0.030665,
		28.721378, 33.793556, 34.509296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110037, 33.171726, 34.908031>,  <29.400730, 33.626167, 34.487831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110037, 33.171726, 34.908031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.838604, 33.327709, 34.659046>,  <28.675743, 33.421299, 34.509655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.838604, 33.327709, 34.659046>,  <29.110037, 33.171726, 34.908031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838604, 33.327709, 34.659046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396651, -0.907794, -0.136301,
		-0.618217, 0.154408, 0.770692,
		-0.678584, 0.389960, -0.622459,
		28.635029, 33.444698, 34.472309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178934, 32.515182, 34.468109>,  <29.110037, 33.171726, 34.908031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178934, 32.515182, 34.468109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569410, 32.513638, 34.381359>,  <29.803696, 32.512711, 34.329311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569410, 32.513638, 34.381359>,  <29.178934, 32.515182, 34.468109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569410, 32.513638, 34.381359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186296, 0.527031, 0.829175,
		0.111096, -0.849837, 0.515204,
		0.976192, -0.003863, -0.216872,
		29.862268, 32.512478, 34.316296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413088, 32.283447, 35.053463>,  <29.178934, 32.515182, 34.468109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413088, 32.283447, 35.053463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.737003, 32.436718, 34.875736>,  <29.931353, 32.528679, 34.769100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.737003, 32.436718, 34.875736>,  <29.413088, 32.283447, 35.053463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737003, 32.436718, 34.875736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264492, 0.437570, 0.859405,
		0.523727, -0.813453, 0.252990,
		0.809786, 0.383179, -0.444319,
		29.979939, 32.551670, 34.742439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967333, 32.123123, 35.384312>,  <29.413088, 32.283447, 35.053463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967333, 32.123123, 35.384312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.100496, 32.441204, 35.181602>,  <30.180393, 32.632053, 35.059975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.100496, 32.441204, 35.181602>,  <29.967333, 32.123123, 35.384312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100496, 32.441204, 35.181602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392243, 0.371948, 0.841309,
		0.857507, -0.478856, -0.188090,
		0.332907, 0.795205, -0.506776,
		30.200369, 32.679764, 35.029568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564434, 32.304016, 35.678139>,  <29.967333, 32.123123, 35.384312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564434, 32.304016, 35.678139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.476377, 32.646576, 35.491329>,  <30.423544, 32.852112, 35.379242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.476377, 32.646576, 35.491329>,  <30.564434, 32.304016, 35.678139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476377, 32.646576, 35.491329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553287, 0.503929, 0.663271,
		0.803375, -0.112388, -0.584771,
		-0.220140, 0.856402, -0.467027,
		30.410336, 32.903496, 35.351223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207462, 32.677578, 35.769203>,  <30.564434, 32.304016, 35.678139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207462, 32.677578, 35.769203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.932222, 32.953808, 35.680096>,  <30.767078, 33.119545, 35.626633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.932222, 32.953808, 35.680096>,  <31.207462, 32.677578, 35.769203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932222, 32.953808, 35.680096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444180, 0.643636, 0.623247,
		0.573779, 0.329908, -0.749625,
		-0.688100, 0.690575, -0.222767,
		30.725792, 33.160980, 35.613266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608715, 33.245106, 35.648090>,  <31.207462, 32.677578, 35.769203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608715, 33.245106, 35.648090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.234028, 33.368835, 35.713669>,  <31.009216, 33.443073, 35.753017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.234028, 33.368835, 35.713669>,  <31.608715, 33.245106, 35.648090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234028, 33.368835, 35.713669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346537, 0.752699, 0.559782,
		0.049751, 0.581172, -0.812259,
		-0.936716, 0.309327, 0.163950,
		30.953012, 33.461632, 35.762856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575218, 33.902687, 35.498920>,  <31.608715, 33.245106, 35.648090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575218, 33.902687, 35.498920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.266558, 33.843952, 35.746468>,  <31.081362, 33.808712, 35.894997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.266558, 33.843952, 35.746468>,  <31.575218, 33.902687, 35.498920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266558, 33.843952, 35.746468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213954, 0.856368, 0.469956,
		-0.598983, 0.495050, -0.629400,
		-0.771650, -0.146833, 0.618867,
		31.035063, 33.799904, 35.932129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148827, 34.555416, 35.477505>,  <31.575218, 33.902687, 35.498920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148827, 34.555416, 35.477505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.089447, 34.351265, 35.816322>,  <31.053820, 34.228775, 36.019611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.089447, 34.351265, 35.816322>,  <31.148827, 34.555416, 35.477505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089447, 34.351265, 35.816322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206345, 0.821692, 0.531267,
		-0.967153, 0.253648, -0.016665,
		-0.148448, -0.510378, 0.847041,
		31.044912, 34.198151, 36.070435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754145, 35.051994, 35.962490>,  <31.148827, 34.555416, 35.477505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754145, 35.051994, 35.962490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.870630, 34.780651, 36.232311>,  <30.940521, 34.617844, 36.394203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.870630, 34.780651, 36.232311>,  <30.754145, 35.051994, 35.962490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870630, 34.780651, 36.232311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001991, 0.705545, 0.708662,
		-0.956656, -0.205030, 0.206815,
		0.291214, -0.678358, 0.674556,
		30.957994, 34.577145, 36.434677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314423, 35.170940, 36.522976>,  <30.754145, 35.051994, 35.962490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314423, 35.170940, 36.522976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.656544, 34.998394, 36.637787>,  <30.861816, 34.894867, 36.706673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.656544, 34.998394, 36.637787>,  <30.314423, 35.170940, 36.522976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656544, 34.998394, 36.637787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052167, 0.622849, 0.780601,
		-0.515498, -0.652676, 0.555226,
		0.855302, -0.431363, 0.287029,
		30.913134, 34.868984, 36.723896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184425, 35.149483, 37.158493>,  <30.314423, 35.170940, 36.522976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184425, 35.149483, 37.158493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.574219, 35.061180, 37.142269>,  <30.808096, 35.008198, 37.132534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.574219, 35.061180, 37.142269>,  <30.184425, 35.149483, 37.158493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574219, 35.061180, 37.142269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155107, 0.531701, 0.832608,
		-0.162236, -0.817655, 0.552376,
		0.974485, -0.220756, -0.040563,
		30.866564, 34.994953, 37.130100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289238, 34.929398, 37.826771>,  <30.184425, 35.149483, 37.158493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289238, 34.929398, 37.826771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.647293, 35.050129, 37.695541>,  <30.862125, 35.122570, 37.616806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.647293, 35.050129, 37.695541>,  <30.289238, 34.929398, 37.826771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647293, 35.050129, 37.695541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118126, 0.549019, 0.827420,
		0.429859, -0.779407, 0.455792,
		0.895136, 0.301832, -0.328069,
		30.915834, 35.140678, 37.597122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820505, 35.031914, 38.378838>,  <30.289238, 34.929398, 37.826771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820505, 35.031914, 38.378838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996738, 35.261337, 38.102604>,  <31.102478, 35.398991, 37.936863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996738, 35.261337, 38.102604>,  <30.820505, 35.031914, 38.378838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996738, 35.261337, 38.102604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098143, 0.733889, 0.672142,
		0.892330, -0.363911, 0.267049,
		0.440584, 0.573564, -0.690587,
		31.128914, 35.433407, 37.895428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394350, 35.347878, 38.770855>,  <30.820505, 35.031914, 38.378838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394350, 35.347878, 38.770855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.338575, 35.565147, 38.439671>,  <31.305111, 35.695511, 38.240959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.338575, 35.565147, 38.439671>,  <31.394350, 35.347878, 38.770855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338575, 35.565147, 38.439671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241887, 0.829482, 0.503438,
		0.960233, -0.130074, -0.247049,
		-0.139438, 0.543176, -0.827959,
		31.296743, 35.728100, 38.191284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974052, 35.695637, 38.631527>,  <31.394350, 35.347878, 38.770855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974052, 35.695637, 38.631527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.661804, 35.886288, 38.469807>,  <31.474455, 36.000679, 38.372776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.661804, 35.886288, 38.469807>,  <31.974052, 35.695637, 38.631527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661804, 35.886288, 38.469807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199235, 0.802891, 0.561846,
		0.592398, 0.358039, -0.721715,
		-0.780622, 0.476627, -0.404297,
		31.427618, 36.029278, 38.348518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264900, 36.385662, 38.587288>,  <31.974052, 35.695637, 38.631527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264900, 36.385662, 38.587288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.888329, 36.474316, 38.485622>,  <31.662386, 36.527508, 38.424625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.888329, 36.474316, 38.485622>,  <32.264900, 36.385662, 38.587288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888329, 36.474316, 38.485622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155561, 0.954128, 0.255814,
		0.299198, 0.201293, -0.932718,
		-0.941425, 0.221633, -0.254160,
		31.605902, 36.540806, 38.409374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231884, 37.060581, 38.157494>,  <32.264900, 36.385662, 38.587288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231884, 37.060581, 38.157494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.868217, 37.012627, 38.317013>,  <31.650017, 36.983852, 38.412724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.868217, 37.012627, 38.317013>,  <32.231884, 37.060581, 38.157494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868217, 37.012627, 38.317013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011857, 0.964726, 0.262988,
		-0.416261, 0.234371, -0.878520,
		-0.909168, -0.119888, 0.398799,
		31.595467, 36.976662, 38.436653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010029, 37.665939, 38.103588>,  <32.231884, 37.060581, 38.157494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010029, 37.665939, 38.103588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.717474, 37.563370, 38.356358>,  <31.541941, 37.501827, 38.508018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.717474, 37.563370, 38.356358>,  <32.010029, 37.665939, 38.103588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717474, 37.563370, 38.356358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145352, 0.963941, 0.222915,
		-0.666293, 0.071186, -0.742284,
		-0.731386, -0.256420, 0.631920,
		31.498058, 37.486443, 38.545933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268629, 38.016449, 37.924641>,  <32.010029, 37.665939, 38.103588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268629, 38.016449, 37.924641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.272585, 37.923698, 38.313717>,  <31.274960, 37.868046, 38.547165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.272585, 37.923698, 38.313717>,  <31.268629, 38.016449, 37.924641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272585, 37.923698, 38.313717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117917, 0.965684, 0.231408,
		-0.992974, -0.116986, -0.017790,
		0.009891, -0.231880, 0.972694,
		31.275553, 37.854134, 38.605526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757128, 38.416943, 38.225037>,  <31.268629, 38.016449, 37.924641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757128, 38.416943, 38.225037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.004719, 38.324715, 38.525356>,  <31.153273, 38.269379, 38.705547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.004719, 38.324715, 38.525356>,  <30.757128, 38.416943, 38.225037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004719, 38.324715, 38.525356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088294, 0.929452, 0.358222,
		-0.780430, -0.288023, 0.554952,
		0.618977, -0.230568, 0.750803,
		31.190413, 38.255543, 38.750599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563713, 38.816532, 38.758266>,  <30.757128, 38.416943, 38.225037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563713, 38.816532, 38.758266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.913162, 38.696388, 38.911404>,  <31.122831, 38.624302, 39.003284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.913162, 38.696388, 38.911404>,  <30.563713, 38.816532, 38.758266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913162, 38.696388, 38.911404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126183, 0.899682, 0.417912,
		-0.469961, -0.316789, 0.823882,
		0.873622, -0.300362, 0.382842,
		31.175249, 38.606281, 39.026257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546694, 38.916687, 39.425011>,  <30.563713, 38.816532, 38.758266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546694, 38.916687, 39.425011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.928513, 38.941647, 39.308430>,  <31.157604, 38.956623, 39.238480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.928513, 38.941647, 39.308430>,  <30.546694, 38.916687, 39.425011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928513, 38.941647, 39.308430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061040, 0.916190, 0.396068,
		0.291739, -0.395856, 0.870739,
		0.954548, 0.062398, -0.291452,
		31.214876, 38.960365, 39.220993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.273808, 30.786503, 47.956249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.880318, 30.832096, 47.900700>,  <40.644222, 30.859453, 47.867371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.880318, 30.832096, 47.900700>,  <41.273808, 30.786503, 47.956249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880318, 30.832096, 47.900700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125675, 0.115801, 0.985290,
		0.128390, 0.986710, -0.099592,
		-0.983728, 0.113985, -0.138872,
		40.585197, 30.866291, 47.859039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268200, 31.432716, 48.372704>,  <41.273808, 30.786503, 47.956249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268200, 31.432716, 48.372704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.910686, 31.258554, 48.329685>,  <40.696178, 31.154057, 48.303875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.910686, 31.258554, 48.329685>,  <41.268200, 31.432716, 48.372704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910686, 31.258554, 48.329685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187572, 0.145082, 0.971477,
		-0.407383, 0.888467, -0.211342,
		-0.893788, -0.435405, -0.107547,
		40.642551, 31.127934, 48.297421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784740, 31.834362, 48.715008>,  <41.268200, 31.432716, 48.372704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784740, 31.834362, 48.715008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.614651, 31.473763, 48.682796>,  <40.512596, 31.257402, 48.663471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.614651, 31.473763, 48.682796>,  <40.784740, 31.834362, 48.715008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614651, 31.473763, 48.682796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203858, 0.008712, 0.978962,
		-0.881832, 0.432691, -0.187483,
		-0.425222, -0.901500, -0.080525,
		40.487083, 31.203312, 48.658638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027981, 31.877632, 49.068741>,  <40.784740, 31.834362, 48.715008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027981, 31.877632, 49.068741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.107765, 31.485748, 49.060867>,  <40.155636, 31.250618, 49.056145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.107765, 31.485748, 49.060867>,  <40.027981, 31.877632, 49.068741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107765, 31.485748, 49.060867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344400, -0.088896, 0.934605,
		-0.917390, -0.179638, -0.355143,
		0.199461, -0.979708, -0.019685,
		40.167603, 31.191835, 49.054962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440441, 31.438217, 49.000908>,  <40.027981, 31.877632, 49.068741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440441, 31.438217, 49.000908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.735096, 31.257748, 49.202423>,  <39.911888, 31.149466, 49.323334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.735096, 31.257748, 49.202423>,  <39.440441, 31.438217, 49.000908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735096, 31.257748, 49.202423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612052, -0.127888, 0.780408,
		-0.287672, -0.883224, -0.370350,
		0.736639, -0.451175, 0.503790,
		39.956089, 31.122396, 49.353561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046776, 30.939657, 49.438423>,  <39.440441, 31.438217, 49.000908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046776, 30.939657, 49.438423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.422642, 30.928640, 49.574814>,  <39.648163, 30.922029, 49.656647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.422642, 30.928640, 49.574814>,  <39.046776, 30.939657, 49.438423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422642, 30.928640, 49.574814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339658, -0.193621, 0.920404,
		0.040672, -0.980690, -0.191294,
		0.939669, -0.027540, 0.340974,
		39.704544, 30.920378, 49.677105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043648, 30.378550, 49.906815>,  <39.046776, 30.939657, 49.438423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043648, 30.378550, 49.906815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.364334, 30.574009, 50.044495>,  <39.556747, 30.691284, 50.127102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.364334, 30.574009, 50.044495>,  <39.043648, 30.378550, 49.906815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364334, 30.574009, 50.044495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309576, -0.153135, 0.938463,
		0.511286, -0.858938, 0.028503,
		0.801716, 0.488647, 0.344203,
		39.604851, 30.720602, 50.147755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357052, 29.950989, 50.397362>,  <39.043648, 30.378550, 49.906815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357052, 29.950989, 50.397362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.459675, 30.330256, 50.472359>,  <39.521248, 30.557816, 50.517357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.459675, 30.330256, 50.472359>,  <39.357052, 29.950989, 50.397362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459675, 30.330256, 50.472359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313101, -0.101993, 0.944227,
		0.914410, -0.300953, 0.270706,
		0.256558, 0.948169, 0.187492,
		39.536644, 30.614706, 50.528606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607754, 29.910282, 51.084057>,  <39.357052, 29.950989, 50.397362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607754, 29.910282, 51.084057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.531075, 30.299122, 51.029976>,  <39.485065, 30.532425, 50.997528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.531075, 30.299122, 51.029976>,  <39.607754, 29.910282, 51.084057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531075, 30.299122, 51.029976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358257, 0.058941, 0.931760,
		0.913731, 0.227051, 0.336962,
		-0.191697, 0.972097, -0.135199,
		39.473564, 30.590752, 50.989414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861835, 30.186068, 51.749317>,  <39.607754, 29.910282, 51.084057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861835, 30.186068, 51.749317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.626701, 30.471834, 51.597496>,  <39.485622, 30.643293, 51.506405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.626701, 30.471834, 51.597496>,  <39.861835, 30.186068, 51.749317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626701, 30.471834, 51.597496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393467, 0.157453, 0.905755,
		0.706848, 0.681776, 0.188543,
		-0.587835, 0.714416, -0.379552,
		39.450352, 30.686159, 51.483631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838173, 30.656992, 52.278362>,  <39.861835, 30.186068, 51.749317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838173, 30.656992, 52.278362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.525131, 30.718393, 52.037045>,  <39.337307, 30.755234, 51.892254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.525131, 30.718393, 52.037045>,  <39.838173, 30.656992, 52.278362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525131, 30.718393, 52.037045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595884, 0.095700, 0.797348,
		0.180132, 0.983503, 0.016575,
		-0.782608, 0.153505, -0.603292,
		39.290348, 30.764444, 51.856056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554382, 31.136612, 52.661457>,  <39.838173, 30.656992, 52.278362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554382, 31.136612, 52.661457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.280350, 30.997599, 52.405365>,  <39.115932, 30.914190, 52.251709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.280350, 30.997599, 52.405365>,  <39.554382, 31.136612, 52.661457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280350, 30.997599, 52.405365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698316, 0.063058, 0.713007,
		-0.207422, 0.935545, -0.285887,
		-0.685078, -0.347533, -0.640226,
		39.074825, 30.893339, 52.213299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945068, 31.634180, 52.567497>,  <39.554382, 31.136612, 52.661457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945068, 31.634180, 52.567497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792915, 31.279404, 52.462696>,  <38.701622, 31.066538, 52.399815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792915, 31.279404, 52.462696>,  <38.945068, 31.634180, 52.567497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792915, 31.279404, 52.462696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786956, 0.161597, 0.595472,
		-0.485809, 0.432695, -0.759451,
		-0.380382, -0.886940, -0.262006,
		38.678802, 31.013321, 52.384094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223812, 31.610212, 52.220345>,  <38.945068, 31.634180, 52.567497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223812, 31.610212, 52.220345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.300419, 31.300934, 52.462166>,  <38.346382, 31.115366, 52.607258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.300419, 31.300934, 52.462166>,  <38.223812, 31.610212, 52.220345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300419, 31.300934, 52.462166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874409, 0.145353, 0.462906,
		-0.445791, -0.617283, -0.648253,
		0.191518, -0.773198, 0.604554,
		38.357876, 31.068975, 52.643532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759102, 31.914736, 52.617458>,  <38.223812, 31.610212, 52.220345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759102, 31.914736, 52.617458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397194, 32.082867, 52.644958>,  <37.180050, 32.183746, 52.661457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397194, 32.082867, 52.644958>,  <37.759102, 31.914736, 52.617458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397194, 32.082867, 52.644958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110047, 0.386641, -0.915641,
		-0.411448, -0.820875, -0.396075,
		-0.904765, 0.420326, 0.068748,
		37.125763, 32.208965, 52.665585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385700, 31.762577, 51.967781>,  <37.759102, 31.914736, 52.617458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385700, 31.762577, 51.967781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202095, 32.081657, 52.124233>,  <37.091934, 32.273106, 52.218105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202095, 32.081657, 52.124233>,  <37.385700, 31.762577, 51.967781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202095, 32.081657, 52.124233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116604, 0.382345, -0.916633,
		-0.880746, -0.466351, -0.082485,
		-0.459010, 0.797702, 0.391127,
		37.064392, 32.320969, 52.241573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730724, 31.781393, 51.660442>,  <37.385700, 31.762577, 51.967781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730724, 31.781393, 51.660442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795246, 32.145100, 51.813915>,  <36.833958, 32.363323, 51.905998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795246, 32.145100, 51.813915>,  <36.730724, 31.781393, 51.660442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795246, 32.145100, 51.813915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216717, 0.411920, -0.885074,
		-0.962817, 0.059611, 0.263497,
		0.161300, 0.909268, 0.383685,
		36.843636, 32.417881, 51.929020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182545, 32.164364, 51.319389>,  <36.730724, 31.781393, 51.660442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182545, 32.164364, 51.319389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443829, 32.435993, 51.453365>,  <36.600597, 32.598969, 51.533752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443829, 32.435993, 51.453365>,  <36.182545, 32.164364, 51.319389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443829, 32.435993, 51.453365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135864, 0.540288, -0.830439,
		-0.744890, 0.496943, 0.445182,
		0.653208, 0.679070, 0.334938,
		36.639790, 32.639713, 51.553848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770718, 32.838772, 51.269909>,  <36.182545, 32.164364, 51.319389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770718, 32.838772, 51.269909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162842, 32.917717, 51.272163>,  <36.398117, 32.965084, 51.273518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162842, 32.917717, 51.272163>,  <35.770718, 32.838772, 51.269909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162842, 32.917717, 51.272163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114862, 0.593292, -0.796750,
		-0.160595, 0.780418, 0.604283,
		0.980314, 0.197363, 0.005639,
		36.456936, 32.976925, 51.273853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907757, 33.668377, 51.286327>,  <35.770718, 32.838772, 51.269909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907757, 33.668377, 51.286327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.219482, 33.457577, 51.150715>,  <36.406517, 33.331097, 51.069347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.219482, 33.457577, 51.150715>,  <35.907757, 33.668377, 51.286327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219482, 33.457577, 51.150715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030091, 0.571883, -0.819783,
		0.625912, 0.628665, 0.461533,
		0.779312, -0.527000, -0.339032,
		36.453278, 33.299477, 51.049004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326485, 34.170601, 51.010975>,  <35.907757, 33.668377, 51.286327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326485, 34.170601, 51.010975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430019, 33.819698, 50.849274>,  <36.492138, 33.609158, 50.752254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430019, 33.819698, 50.849274>,  <36.326485, 34.170601, 51.010975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430019, 33.819698, 50.849274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092934, 0.439191, -0.893574,
		0.961441, 0.193719, 0.195205,
		0.258834, -0.877259, -0.404253,
		36.507671, 33.556522, 50.727997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925064, 34.368904, 50.587887>,  <36.326485, 34.170601, 51.010975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925064, 34.368904, 50.587887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808743, 34.010921, 50.452541>,  <36.738949, 33.796131, 50.371334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808743, 34.010921, 50.452541>,  <36.925064, 34.368904, 50.587887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808743, 34.010921, 50.452541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120104, 0.316707, -0.940889,
		0.949214, -0.314255, 0.015387,
		-0.290806, -0.894953, -0.338366,
		36.721500, 33.742435, 50.351032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434109, 34.098202, 50.172630>,  <36.925064, 34.368904, 50.587887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434109, 34.098202, 50.172630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.111019, 33.891819, 50.058521>,  <36.917168, 33.767990, 49.990055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.111019, 33.891819, 50.058521>,  <37.434109, 34.098202, 50.172630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111019, 33.891819, 50.058521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320056, 0.022628, -0.947128,
		0.495129, -0.856318, 0.146856,
		-0.807720, -0.515953, -0.285274,
		36.868702, 33.737034, 49.972939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698853, 33.692722, 49.691750>,  <37.434109, 34.098202, 50.172630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698853, 33.692722, 49.691750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.304111, 33.673504, 49.630016>,  <37.067268, 33.661972, 49.592976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.304111, 33.673504, 49.630016>,  <37.698853, 33.692722, 49.691750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304111, 33.673504, 49.630016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142184, 0.196114, -0.970218,
		0.076876, -0.979404, -0.186704,
		-0.986850, -0.048040, -0.154332,
		37.008057, 33.659092, 49.583717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616127, 33.148312, 49.243713>,  <37.698853, 33.692722, 49.691750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616127, 33.148312, 49.243713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.294102, 33.379822, 49.191723>,  <37.100887, 33.518726, 49.160530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.294102, 33.379822, 49.191723>,  <37.616127, 33.148312, 49.243713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294102, 33.379822, 49.191723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117338, -0.059408, -0.991313,
		-0.581466, -0.813323, -0.020085,
		-0.805064, 0.578772, -0.129978,
		37.052582, 33.553452, 49.152729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278801, 32.793858, 48.684715>,  <37.616127, 33.148312, 49.243713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278801, 32.793858, 48.684715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.148312, 33.170677, 48.716015>,  <37.070019, 33.396770, 48.734795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.148312, 33.170677, 48.716015>,  <37.278801, 32.793858, 48.684715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148312, 33.170677, 48.716015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048388, 0.099315, -0.993879,
		-0.944053, -0.320441, -0.077983,
		-0.326224, 0.942048, 0.078253,
		37.050446, 33.453293, 48.739491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847729, 32.910740, 48.134533>,  <37.278801, 32.793858, 48.684715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847729, 32.910740, 48.134533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933037, 33.281254, 48.258804>,  <36.984222, 33.503563, 48.333366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933037, 33.281254, 48.258804>,  <36.847729, 32.910740, 48.134533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933037, 33.281254, 48.258804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004121, 0.317134, -0.948372,
		-0.976985, 0.203538, 0.063817,
		0.213268, 0.926282, 0.310674,
		36.997017, 33.559139, 48.352005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386139, 33.310249, 47.718319>,  <36.847729, 32.910740, 48.134533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386139, 33.310249, 47.718319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680195, 33.550568, 47.843933>,  <36.856628, 33.694759, 47.919300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680195, 33.550568, 47.843933>,  <36.386139, 33.310249, 47.718319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680195, 33.550568, 47.843933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086422, 0.376401, -0.922417,
		-0.672385, 0.705245, 0.224786,
		0.735140, 0.600793, 0.314035,
		36.900738, 33.730804, 47.938145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615097, 33.556427, 47.787861>,  <36.386139, 33.310249, 47.718319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615097, 33.556427, 47.787861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.294189, 33.364826, 47.645363>,  <35.101643, 33.249866, 47.559864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.294189, 33.364826, 47.645363>,  <35.615097, 33.556427, 47.787861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294189, 33.364826, 47.645363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084695, -0.499401, 0.862221,
		-0.590919, 0.721909, 0.360087,
		-0.802273, -0.479005, -0.356248,
		35.053509, 33.221127, 47.538490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099144, 33.762623, 48.335899>,  <35.615097, 33.556427, 47.787861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099144, 33.762623, 48.335899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.979675, 33.432911, 48.143501>,  <34.907993, 33.235085, 48.028061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.979675, 33.432911, 48.143501>,  <35.099144, 33.762623, 48.335899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979675, 33.432911, 48.143501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263772, -0.413068, 0.871665,
		-0.917180, 0.387217, -0.094049,
		-0.298675, -0.824281, -0.480994,
		34.890072, 33.185627, 47.999203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531754, 33.558422, 48.666878>,  <35.099144, 33.762623, 48.335899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531754, 33.558422, 48.666878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642029, 33.207775, 48.509125>,  <34.708195, 32.997387, 48.414474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642029, 33.207775, 48.509125>,  <34.531754, 33.558422, 48.666878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642029, 33.207775, 48.509125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167534, -0.447818, 0.878289,
		-0.946534, -0.176063, -0.270323,
		0.275690, -0.876619, -0.394379,
		34.724735, 32.944790, 48.390812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069233, 33.144146, 48.938858>,  <34.531754, 33.558422, 48.666878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069233, 33.144146, 48.938858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341457, 32.880440, 48.810978>,  <34.504791, 32.722214, 48.734249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341457, 32.880440, 48.810978>,  <34.069233, 33.144146, 48.938858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341457, 32.880440, 48.810978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223205, -0.602141, 0.766555,
		-0.697871, -0.450324, -0.556942,
		0.680555, -0.659269, -0.319702,
		34.545624, 32.682659, 48.715069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755226, 32.421062, 48.910805>,  <34.069233, 33.144146, 48.938858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755226, 32.421062, 48.910805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.145348, 32.343327, 48.952793>,  <34.379421, 32.296684, 48.977985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.145348, 32.343327, 48.952793>,  <33.755226, 32.421062, 48.910805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145348, 32.343327, 48.952793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197239, -0.552354, 0.809940,
		-0.099425, -0.810639, -0.577043,
		0.975301, -0.194343, 0.104972,
		34.437939, 32.285023, 48.984283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729965, 31.690451, 49.074081>,  <33.755226, 32.421062, 48.910805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729965, 31.690451, 49.074081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102760, 31.798073, 49.171242>,  <34.326439, 31.862646, 49.229538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102760, 31.798073, 49.171242>,  <33.729965, 31.690451, 49.074081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102760, 31.798073, 49.171242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060867, -0.544437, 0.836591,
		0.357335, -0.794480, -0.491033,
		0.931991, 0.269056, 0.242904,
		34.382359, 31.878790, 49.244114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007080, 31.116640, 49.249432>,  <33.729965, 31.690451, 49.074081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007080, 31.116640, 49.249432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249519, 31.392998, 49.407066>,  <34.394985, 31.558813, 49.501648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249519, 31.392998, 49.407066>,  <34.007080, 31.116640, 49.249432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249519, 31.392998, 49.407066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053450, -0.529724, 0.846484,
		0.793590, -0.491990, -0.357994,
		0.606100, 0.690896, 0.394087,
		34.431351, 31.600267, 49.525291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917912, 30.373777, 49.147972>,  <34.007080, 31.116640, 49.249432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917912, 30.373777, 49.147972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612263, 30.118124, 49.182915>,  <33.428875, 29.964731, 49.203880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612263, 30.118124, 49.182915>,  <33.917912, 30.373777, 49.147972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612263, 30.118124, 49.182915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089245, -0.029379, -0.995576,
		0.638874, -0.768534, -0.034591,
		-0.764118, -0.639134, 0.087357,
		33.383026, 29.926384, 49.209122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145065, 29.959156, 48.658482>,  <33.917912, 30.373777, 49.147972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145065, 29.959156, 48.658482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757477, 29.880033, 48.717770>,  <33.524925, 29.832560, 48.753342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757477, 29.880033, 48.717770>,  <34.145065, 29.959156, 48.658482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757477, 29.880033, 48.717770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129576, -0.104155, -0.986084,
		0.210495, -0.974691, 0.075291,
		-0.968970, -0.197809, 0.148221,
		33.466785, 29.820690, 48.762238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032539, 29.216322, 48.459881>,  <34.145065, 29.959156, 48.658482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032539, 29.216322, 48.459881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725800, 29.471708, 48.433662>,  <33.541756, 29.624941, 48.417931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725800, 29.471708, 48.433662>,  <34.032539, 29.216322, 48.459881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725800, 29.471708, 48.433662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026258, -0.133245, -0.990735,
		-0.641287, -0.758026, 0.118944,
		-0.766852, 0.638469, -0.065544,
		33.495743, 29.663248, 48.413998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681885, 28.951345, 47.833256>,  <34.032539, 29.216322, 48.459881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681885, 28.951345, 47.833256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.506195, 29.307831, 47.878536>,  <33.400780, 29.521723, 47.905704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.506195, 29.307831, 47.878536>,  <33.681885, 28.951345, 47.833256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506195, 29.307831, 47.878536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073391, 0.089986, -0.993235,
		-0.895373, -0.444564, 0.025882,
		-0.439228, 0.891215, 0.113198,
		33.374428, 29.575195, 47.912495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162418, 29.025414, 47.195229>,  <33.681885, 28.951345, 47.833256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162418, 29.025414, 47.195229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.152794, 29.393414, 47.351700>,  <33.147018, 29.614214, 47.445583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.152794, 29.393414, 47.351700>,  <33.162418, 29.025414, 47.195229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152794, 29.393414, 47.351700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156665, 0.382983, -0.910374,
		-0.987359, -0.083188, 0.134917,
		-0.024062, 0.920002, 0.391174,
		33.145576, 29.669415, 47.469051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453480, 29.419794, 47.074917>,  <33.162418, 29.025414, 47.195229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453480, 29.419794, 47.074917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743595, 29.693680, 47.103558>,  <32.917664, 29.858011, 47.120743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743595, 29.693680, 47.103558>,  <32.453480, 29.419794, 47.074917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743595, 29.693680, 47.103558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111283, 0.219236, -0.969305,
		-0.679392, 0.695057, 0.235206,
		0.725287, 0.684713, 0.071599,
		32.961182, 29.899094, 47.125038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088184, 30.083029, 46.772587>,  <32.453480, 29.419794, 47.074917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088184, 30.083029, 46.772587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485268, 30.129389, 46.759300>,  <32.723518, 30.157206, 46.751328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485268, 30.129389, 46.759300>,  <32.088184, 30.083029, 46.772587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485268, 30.129389, 46.759300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069515, 0.325083, -0.943127,
		-0.098509, 0.938556, 0.330769,
		0.992705, 0.115900, -0.033220,
		32.783081, 30.164160, 46.749332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.069958, 28.161411, 51.346149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.045208, 28.555929, 51.407333>,  <37.030357, 28.792639, 51.444042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.045208, 28.555929, 51.407333>,  <37.069958, 28.161411, 51.346149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045208, 28.555929, 51.407333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431466, 0.164625, -0.886981,
		-0.900005, 0.011113, -0.435738,
		-0.061876, 0.986294, 0.152958,
		37.026646, 28.851818, 51.453220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591251, 28.448038, 50.855244>,  <37.069958, 28.161411, 51.346149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591251, 28.448038, 50.855244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.877960, 28.706217, 50.960793>,  <37.049988, 28.861124, 51.024124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.877960, 28.706217, 50.960793>,  <36.591251, 28.448038, 50.855244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877960, 28.706217, 50.960793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314943, 0.037963, -0.948351,
		-0.622127, 0.762862, -0.176068,
		0.716776, 0.645447, 0.263876,
		37.092995, 28.899851, 51.039955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570091, 28.968050, 50.363087>,  <36.591251, 28.448038, 50.855244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570091, 28.968050, 50.363087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936462, 29.001204, 50.520164>,  <37.156284, 29.021095, 50.614410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936462, 29.001204, 50.520164>,  <36.570091, 28.968050, 50.363087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936462, 29.001204, 50.520164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382153, 0.118888, -0.916419,
		-0.122642, 0.989442, 0.077219,
		0.915925, 0.082882, 0.392699,
		37.211239, 29.026068, 50.637974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851650, 29.695827, 50.100555>,  <36.570091, 28.968050, 50.363087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851650, 29.695827, 50.100555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.122581, 29.425203, 50.216141>,  <37.285141, 29.262829, 50.285492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.122581, 29.425203, 50.216141>,  <36.851650, 29.695827, 50.100555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122581, 29.425203, 50.216141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444231, 0.063037, -0.893692,
		0.586421, 0.733685, 0.343245,
		0.677325, -0.676560, 0.288959,
		37.325779, 29.222235, 50.302830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468372, 29.898617, 49.842674>,  <36.851650, 29.695827, 50.100555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468372, 29.898617, 49.842674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.538368, 29.512354, 49.919491>,  <37.580368, 29.280596, 49.965580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.538368, 29.512354, 49.919491>,  <37.468372, 29.898617, 49.842674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538368, 29.512354, 49.919491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473602, -0.088447, -0.876287,
		0.863179, 0.244297, 0.441860,
		0.174993, -0.965658, 0.192045,
		37.590866, 29.222656, 49.977104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179840, 29.844612, 49.625217>,  <37.468372, 29.898617, 49.842674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179840, 29.844612, 49.625217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.017105, 29.480152, 49.651421>,  <37.919464, 29.261477, 49.667141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.017105, 29.480152, 49.651421>,  <38.179840, 29.844612, 49.625217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017105, 29.480152, 49.651421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382919, -0.235199, -0.893339,
		0.829373, -0.338358, 0.444584,
		-0.406834, -0.911151, 0.065504,
		37.895054, 29.206806, 49.671070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641178, 29.276100, 49.375069>,  <38.179840, 29.844612, 49.625217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641178, 29.276100, 49.375069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.277092, 29.115343, 49.335098>,  <38.058640, 29.018888, 49.311115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.277092, 29.115343, 49.335098>,  <38.641178, 29.276100, 49.375069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277092, 29.115343, 49.335098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271887, -0.397921, -0.876206,
		0.312379, -0.824706, 0.471465,
		-0.910218, -0.401893, -0.099925,
		38.004028, 28.994776, 49.305122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723221, 28.983627, 48.693897>,  <38.641178, 29.276100, 49.375069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723221, 28.983627, 48.693897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.333168, 28.916351, 48.751617>,  <38.099136, 28.875986, 48.786247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.333168, 28.916351, 48.751617>,  <38.723221, 28.983627, 48.693897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333168, 28.916351, 48.751617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061544, -0.419992, -0.905438,
		0.212888, -0.891807, 0.399199,
		-0.975136, -0.168189, 0.144297,
		38.040627, 28.865894, 48.794907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563713, 28.269882, 48.419178>,  <38.723221, 28.983627, 48.693897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563713, 28.269882, 48.419178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.225552, 28.482639, 48.438694>,  <38.022655, 28.610294, 48.450405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.225552, 28.482639, 48.438694>,  <38.563713, 28.269882, 48.419178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225552, 28.482639, 48.438694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188634, -0.211853, -0.958924,
		-0.499710, -0.819882, 0.279434,
		-0.845403, 0.531894, 0.048792,
		37.971931, 28.642208, 48.453331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075401, 27.852962, 48.086655>,  <38.563713, 28.269882, 48.419178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075401, 27.852962, 48.086655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.940922, 28.229591, 48.078552>,  <37.860233, 28.455568, 48.073692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.940922, 28.229591, 48.078552>,  <38.075401, 27.852962, 48.086655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940922, 28.229591, 48.078552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260323, -0.113580, -0.958818,
		-0.905097, -0.317084, 0.283298,
		-0.336203, 0.941572, -0.020256,
		37.840061, 28.512062, 48.072475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425190, 27.695950, 47.725384>,  <38.075401, 27.852962, 48.086655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425190, 27.695950, 47.725384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.525982, 28.083038, 47.723637>,  <37.586456, 28.315292, 47.722588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.525982, 28.083038, 47.723637>,  <37.425190, 27.695950, 47.725384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525982, 28.083038, 47.723637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245679, 0.059605, -0.967517,
		-0.936028, 0.244868, 0.252768,
		0.251981, 0.967723, -0.004367,
		37.601578, 28.373356, 47.722328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991447, 27.945004, 47.281807>,  <37.425190, 27.695950, 47.725384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991447, 27.945004, 47.281807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.292191, 28.208702, 47.286045>,  <37.472637, 28.366920, 47.288586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.292191, 28.208702, 47.286045>,  <36.991447, 27.945004, 47.281807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292191, 28.208702, 47.286045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127274, 0.160880, -0.978733,
		-0.646929, 0.734516, 0.204863,
		0.751854, 0.659245, 0.010593,
		37.517746, 28.406475, 47.289223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379093, 28.245983, 47.272091>,  <36.991447, 27.945004, 47.281807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379093, 28.245983, 47.272091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.991306, 28.205528, 47.182732>,  <35.758636, 28.181255, 47.129116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.991306, 28.205528, 47.182732>,  <36.379093, 28.245983, 47.272091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991306, 28.205528, 47.182732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167015, -0.394741, 0.903485,
		-0.179563, 0.913209, 0.365796,
		-0.969465, -0.101139, -0.223401,
		35.700466, 28.175186, 47.115711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063755, 28.444418, 47.835388>,  <36.379093, 28.245983, 47.272091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063755, 28.444418, 47.835388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.794975, 28.209028, 47.655529>,  <35.633709, 28.067795, 47.547615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.794975, 28.209028, 47.655529>,  <36.063755, 28.444418, 47.835388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794975, 28.209028, 47.655529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266358, -0.374490, 0.888150,
		-0.691041, 0.716559, 0.094894,
		-0.671949, -0.588472, -0.449649,
		35.593391, 28.032486, 47.520634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754261, 28.047836, 48.341549>,  <36.063755, 28.444418, 47.835388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754261, 28.047836, 48.341549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.556713, 27.871937, 48.041492>,  <35.438183, 27.766397, 47.861458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.556713, 27.871937, 48.041492>,  <35.754261, 28.047836, 48.341549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556713, 27.871937, 48.041492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528030, -0.533742, 0.660533,
		-0.690849, 0.722317, 0.031401,
		-0.493874, -0.439748, -0.750140,
		35.408550, 27.740013, 47.816452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013737, 28.080500, 48.521057>,  <35.754261, 28.047836, 48.341549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013737, 28.080500, 48.521057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.057095, 27.773247, 48.268639>,  <35.083107, 27.588894, 48.117188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.057095, 27.773247, 48.268639>,  <35.013737, 28.080500, 48.521057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057095, 27.773247, 48.268639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369250, -0.620483, 0.691849,
		-0.922988, 0.158024, -0.350888,
		0.108391, -0.768134, -0.631049,
		35.089611, 27.542807, 48.079323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283340, 27.894426, 48.170002>,  <35.013737, 28.080500, 48.521057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283340, 27.894426, 48.170002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.557728, 27.603374, 48.170258>,  <34.722359, 27.428743, 48.170410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.557728, 27.603374, 48.170258>,  <34.283340, 27.894426, 48.170002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557728, 27.603374, 48.170258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556100, -0.523691, 0.645369,
		-0.469254, -0.443059, -0.763871,
		0.685969, -0.727630, 0.000641,
		34.763519, 27.385086, 48.170452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991280, 27.185247, 48.276226>,  <34.283340, 27.894426, 48.170002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991280, 27.185247, 48.276226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.373840, 27.136871, 48.382557>,  <34.603378, 27.107845, 48.446354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.373840, 27.136871, 48.382557>,  <33.991280, 27.185247, 48.276226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373840, 27.136871, 48.382557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288889, -0.525268, 0.800398,
		0.042829, -0.842299, -0.537307,
		0.956404, -0.120942, 0.265828,
		34.660763, 27.100588, 48.462303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990829, 26.567553, 48.653599>,  <33.991280, 27.185247, 48.276226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990829, 26.567553, 48.653599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.345341, 26.730148, 48.742393>,  <34.558048, 26.827705, 48.795670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.345341, 26.730148, 48.742393>,  <33.990829, 26.567553, 48.653599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345341, 26.730148, 48.742393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077638, -0.342126, 0.936441,
		0.456603, -0.847181, -0.271658,
		0.886276, 0.406491, 0.221989,
		34.611225, 26.852095, 48.808990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316307, 26.038645, 49.015759>,  <33.990829, 26.567553, 48.653599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316307, 26.038645, 49.015759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.487171, 26.381580, 49.130653>,  <34.589691, 26.587341, 49.199589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.487171, 26.381580, 49.130653>,  <34.316307, 26.038645, 49.015759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487171, 26.381580, 49.130653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101027, -0.270432, 0.957424,
		0.898512, -0.437995, -0.028904,
		0.427164, 0.857337, 0.287236,
		34.615322, 26.638781, 49.216824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883572, 25.932789, 49.533047>,  <34.316307, 26.038645, 49.015759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883572, 25.932789, 49.533047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.757114, 26.308865, 49.583801>,  <34.681240, 26.534510, 49.614254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.757114, 26.308865, 49.583801>,  <34.883572, 25.932789, 49.533047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757114, 26.308865, 49.583801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180372, -0.190874, 0.964901,
		0.931409, 0.282155, 0.229926,
		-0.316139, 0.940189, 0.126889,
		34.662273, 26.590921, 49.621868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053967, 26.113573, 50.390701>,  <34.883572, 25.932789, 49.533047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053967, 26.113573, 50.390701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.828918, 26.426008, 50.282364>,  <34.693890, 26.613470, 50.217361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.828918, 26.426008, 50.282364>,  <35.053967, 26.113573, 50.390701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828918, 26.426008, 50.282364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417041, 0.014724, 0.908769,
		0.713816, 0.624247, 0.317462,
		-0.562622, 0.781088, -0.270847,
		34.660133, 26.660336, 50.201111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208347, 26.674234, 50.919750>,  <35.053967, 26.113573, 50.390701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208347, 26.674234, 50.919750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.858295, 26.777979, 50.756344>,  <34.648266, 26.840225, 50.658302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.858295, 26.777979, 50.756344>,  <35.208347, 26.674234, 50.919750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858295, 26.777979, 50.756344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397325, 0.096720, 0.912567,
		0.276197, 0.960925, 0.018408,
		-0.875127, 0.259362, -0.408513,
		34.595757, 26.855787, 50.633789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002151, 27.296570, 51.212177>,  <35.208347, 26.674234, 50.919750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002151, 27.296570, 51.212177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.664047, 27.140968, 51.065639>,  <34.461185, 27.047607, 50.977715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.664047, 27.140968, 51.065639>,  <35.002151, 27.296570, 51.212177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664047, 27.140968, 51.065639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422702, 0.067358, 0.903762,
		-0.326892, 0.918770, -0.221368,
		-0.845260, -0.389005, -0.366347,
		34.410469, 27.024267, 50.955734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451042, 27.820974, 51.501724>,  <35.002151, 27.296570, 51.212177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451042, 27.820974, 51.501724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.275871, 27.480352, 51.386433>,  <34.170769, 27.275980, 51.317257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.275871, 27.480352, 51.386433>,  <34.451042, 27.820974, 51.501724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275871, 27.480352, 51.386433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622807, 0.056153, 0.780358,
		-0.648333, 0.521250, -0.554945,
		-0.437923, -0.851555, -0.288232,
		34.144493, 27.224886, 51.299961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806992, 28.000401, 51.487648>,  <34.451042, 27.820974, 51.501724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806992, 28.000401, 51.487648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.799423, 27.602789, 51.530636>,  <33.794884, 27.364222, 51.556427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.799423, 27.602789, 51.530636>,  <33.806992, 28.000401, 51.487648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799423, 27.602789, 51.530636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588646, 0.097955, 0.802434,
		-0.808170, -0.048080, -0.586984,
		-0.018917, -0.994029, 0.107467,
		33.793747, 27.304581, 51.562878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039894, 28.347370, 51.638172>,  <33.806992, 28.000401, 51.487648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039894, 28.347370, 51.638172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.763161, 28.625984, 51.714287>,  <32.597122, 28.793152, 51.759956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.763161, 28.625984, 51.714287>,  <33.039894, 28.347370, 51.638172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763161, 28.625984, 51.714287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047579, 0.306935, -0.950541,
		-0.720490, -0.648560, -0.245487,
		-0.691831, 0.696535, 0.190286,
		32.555611, 28.834944, 51.771374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443439, 28.339186, 51.152370>,  <33.039894, 28.347370, 51.638172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443439, 28.339186, 51.152370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.499218, 28.705004, 51.304245>,  <32.532684, 28.924494, 51.395370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.499218, 28.705004, 51.304245>,  <32.443439, 28.339186, 51.152370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499218, 28.705004, 51.304245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117653, 0.365419, -0.923378,
		-0.983216, 0.173433, -0.056642,
		0.139446, 0.914544, 0.379691,
		32.541050, 28.979366, 51.418152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136196, 28.717144, 50.753220>,  <32.443439, 28.339186, 51.152370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136196, 28.717144, 50.753220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.404827, 28.974735, 50.899796>,  <32.566006, 29.129290, 50.987740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.404827, 28.974735, 50.899796>,  <32.136196, 28.717144, 50.753220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404827, 28.974735, 50.899796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130077, 0.384410, -0.913953,
		-0.729429, 0.661453, 0.174393,
		0.671575, 0.643979, 0.366439,
		32.606300, 29.167929, 51.009727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026138, 29.562860, 50.573792>,  <32.136196, 28.717144, 50.753220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026138, 29.562860, 50.573792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.410801, 29.480829, 50.646633>,  <32.641598, 29.431610, 50.690338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.410801, 29.480829, 50.646633>,  <32.026138, 29.562860, 50.573792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410801, 29.480829, 50.646633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258711, 0.457908, -0.850523,
		0.091035, 0.865022, 0.493406,
		0.961655, -0.205077, 0.182105,
		32.699299, 29.419306, 50.701263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384895, 30.158407, 50.489296>,  <32.026138, 29.562860, 50.573792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384895, 30.158407, 50.489296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.653725, 29.866297, 50.440273>,  <32.815022, 29.691031, 50.410862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.653725, 29.866297, 50.440273>,  <32.384895, 30.158407, 50.489296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653725, 29.866297, 50.440273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352672, 0.461202, -0.814196,
		0.651108, 0.503976, 0.567508,
		0.672072, -0.730274, -0.122554,
		32.855347, 29.647215, 50.403507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936172, 30.521124, 50.199814>,  <32.384895, 30.158407, 50.489296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936172, 30.521124, 50.199814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.019379, 30.139681, 50.112766>,  <33.069302, 29.910814, 50.060535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.019379, 30.139681, 50.112766>,  <32.936172, 30.521124, 50.199814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019379, 30.139681, 50.112766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223522, 0.262947, -0.938561,
		0.952243, 0.146592, 0.267850,
		0.208015, -0.953609, -0.217623,
		33.081783, 29.853598, 50.047478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592270, 30.517599, 49.894360>,  <32.936172, 30.521124, 50.199814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592270, 30.517599, 49.894360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.431370, 30.175694, 49.763165>,  <33.334831, 29.970551, 49.684448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.431370, 30.175694, 49.763165>,  <33.592270, 30.517599, 49.894360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431370, 30.175694, 49.763165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143097, 0.295151, -0.944674,
		0.904279, -0.426927, 0.003590,
		-0.402247, -0.854763, -0.327991,
		33.310696, 29.919264, 49.664768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312912, 30.739393, 49.764839>,  <33.592270, 30.517599, 49.894360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312912, 30.739393, 49.764839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.386200, 31.116596, 49.875957>,  <34.430172, 31.342918, 49.942627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.386200, 31.116596, 49.875957>,  <34.312912, 30.739393, 49.764839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386200, 31.116596, 49.875957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064276, -0.293463, 0.953807,
		0.980969, -0.156897, -0.114379,
		0.183216, 0.943008, 0.277793,
		34.441166, 31.399498, 49.959297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914005, 30.774286, 50.153389>,  <34.312912, 30.739393, 49.764839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914005, 30.774286, 50.153389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.724018, 31.110739, 50.256855>,  <34.610027, 31.312611, 50.318935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.724018, 31.110739, 50.256855>,  <34.914005, 30.774286, 50.153389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724018, 31.110739, 50.256855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182360, -0.193477, 0.964008,
		0.860902, 0.505041, -0.061493,
		-0.474966, 0.841130, 0.258664,
		34.581528, 31.363077, 50.334454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319195, 30.960842, 50.645203>,  <34.914005, 30.774286, 50.153389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319195, 30.960842, 50.645203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.989956, 31.176626, 50.716183>,  <34.792412, 31.306097, 50.758770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.989956, 31.176626, 50.716183>,  <35.319195, 30.960842, 50.645203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989956, 31.176626, 50.716183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141522, -0.107766, 0.984052,
		0.549979, 0.835087, 0.012357,
		-0.823101, 0.539459, 0.177452,
		34.743027, 31.338465, 50.769417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494106, 31.417366, 51.163216>,  <35.319195, 30.960842, 50.645203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494106, 31.417366, 51.163216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.095329, 31.394030, 51.184006>,  <34.856064, 31.380028, 51.196480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.095329, 31.394030, 51.184006>,  <35.494106, 31.417366, 51.163216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095329, 31.394030, 51.184006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057745, -0.102010, 0.993106,
		-0.052639, 0.993071, 0.105067,
		-0.996943, -0.058343, 0.051976,
		34.796246, 31.376526, 51.199600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279633, 32.011799, 51.659248>,  <35.494106, 31.417366, 51.163216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279633, 32.011799, 51.659248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.965855, 31.763720, 51.660603>,  <34.777588, 31.614874, 51.661415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.965855, 31.763720, 51.660603>,  <35.279633, 32.011799, 51.659248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965855, 31.763720, 51.660603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102995, -0.124879, 0.986812,
		-0.611591, 0.774445, 0.161837,
		-0.784441, -0.620194, 0.003389,
		34.730522, 31.577662, 51.661621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061092, 32.061836, 52.247517>,  <35.279633, 32.011799, 51.659248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061092, 32.061836, 52.247517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.830879, 31.744839, 52.166809>,  <34.692753, 31.554640, 52.118385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.830879, 31.744839, 52.166809>,  <35.061092, 32.061836, 52.247517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830879, 31.744839, 52.166809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024385, -0.229985, 0.972889,
		-0.817415, 0.564849, 0.113039,
		-0.575532, -0.792498, -0.201767,
		34.658218, 31.507090, 52.106277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529644, 32.035873, 52.726604>,  <35.061092, 32.061836, 52.247517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529644, 32.035873, 52.726604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.549408, 31.648056, 52.630657>,  <34.561268, 31.415365, 52.573090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.549408, 31.648056, 52.630657>,  <34.529644, 32.035873, 52.726604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549408, 31.648056, 52.630657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184394, -0.227182, 0.956236,
		-0.981610, -0.091480, 0.167553,
		0.049412, -0.969546, -0.239872,
		34.564232, 31.357193, 52.558697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025078, 31.634523, 53.164616>,  <34.529644, 32.035873, 52.726604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025078, 31.634523, 53.164616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.325916, 31.394068, 53.056557>,  <34.506420, 31.249794, 52.991722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.325916, 31.394068, 53.056557>,  <34.025078, 31.634523, 53.164616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325916, 31.394068, 53.056557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134648, -0.261098, 0.955876,
		-0.645148, -0.755288, -0.115430,
		0.752100, -0.601139, -0.270145,
		34.551548, 31.213726, 52.975513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998737, 31.047266, 53.535061>,  <34.025078, 31.634523, 53.164616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998737, 31.047266, 53.535061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.378704, 31.014439, 53.414452>,  <34.606686, 30.994741, 53.342087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.378704, 31.014439, 53.414452>,  <33.998737, 31.047266, 53.535061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378704, 31.014439, 53.414452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293557, -0.096448, 0.951064,
		-0.107147, -0.991948, -0.067522,
		0.949918, -0.082082, -0.301527,
		34.663681, 30.989819, 53.323994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.538879, 34.059910, 37.343266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929821, 33.988171, 37.388187>,  <37.164387, 33.945126, 37.415142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929821, 33.988171, 37.388187>,  <36.538879, 34.059910, 37.343266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929821, 33.988171, 37.388187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172789, -0.370011, 0.912817,
		-0.122157, -0.911551, -0.392621,
		0.977354, -0.179348, 0.112307,
		37.223026, 33.934364, 37.421879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567051, 33.341270, 37.659466>,  <36.538879, 34.059910, 37.343266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567051, 33.341270, 37.659466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887371, 33.550407, 37.776321>,  <37.079563, 33.675892, 37.846436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887371, 33.550407, 37.776321>,  <36.567051, 33.341270, 37.659466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887371, 33.550407, 37.776321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214011, -0.205774, 0.954912,
		0.559386, -0.827219, -0.052890,
		0.800804, 0.522845, 0.292141,
		37.127613, 33.707260, 37.863964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817696, 32.977478, 38.238911>,  <36.567051, 33.341270, 37.659466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817696, 32.977478, 38.238911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973358, 33.342621, 38.288307>,  <37.066757, 33.561707, 38.317947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973358, 33.342621, 38.288307>,  <36.817696, 32.977478, 38.238911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973358, 33.342621, 38.288307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195781, -0.049036, 0.979421,
		0.900127, -0.405324, 0.159638,
		0.389154, 0.912857, 0.123494,
		37.090103, 33.616478, 38.325356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313271, 32.956524, 38.837212>,  <36.817696, 32.977478, 38.238911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313271, 32.956524, 38.837212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222740, 33.339321, 38.764603>,  <37.168423, 33.569000, 38.721039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222740, 33.339321, 38.764603>,  <37.313271, 32.956524, 38.837212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222740, 33.339321, 38.764603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145870, 0.150952, 0.977720,
		0.963067, 0.247762, 0.105432,
		-0.226327, 0.956989, -0.181518,
		37.154842, 33.626419, 38.710148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621559, 33.267815, 39.361885>,  <37.313271, 32.956524, 38.837212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621559, 33.267815, 39.361885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358635, 33.548725, 39.252518>,  <37.200882, 33.717270, 39.186897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358635, 33.548725, 39.252518>,  <37.621559, 33.267815, 39.361885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358635, 33.548725, 39.252518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201503, 0.185817, 0.961701,
		0.726185, 0.687227, 0.019373,
		-0.657307, 0.702276, -0.273416,
		37.161442, 33.759407, 39.170494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645355, 33.849812, 39.818565>,  <37.621559, 33.267815, 39.361885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645355, 33.849812, 39.818565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275288, 33.873089, 39.668537>,  <37.053249, 33.887054, 39.578518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275288, 33.873089, 39.668537>,  <37.645355, 33.849812, 39.818565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275288, 33.873089, 39.668537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340814, 0.307591, 0.888388,
		0.167071, 0.949737, -0.264738,
		-0.925167, 0.058198, -0.375073,
		36.997738, 33.890549, 39.556015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404133, 34.483871, 40.127796>,  <37.645355, 33.849812, 39.818565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404133, 34.483871, 40.127796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078590, 34.303577, 39.981110>,  <36.883266, 34.195400, 39.893097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078590, 34.303577, 39.981110>,  <37.404133, 34.483871, 40.127796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078590, 34.303577, 39.981110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509629, 0.250513, 0.823117,
		-0.279137, 0.856788, -0.433587,
		-0.813856, -0.450730, -0.366716,
		36.834435, 34.168358, 39.871094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863514, 34.955032, 40.392609>,  <37.404133, 34.483871, 40.127796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863514, 34.955032, 40.392609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718746, 34.592392, 40.305813>,  <36.631886, 34.374809, 40.253735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718746, 34.592392, 40.305813>,  <36.863514, 34.955032, 40.392609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718746, 34.592392, 40.305813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610311, 0.054495, 0.790285,
		-0.704650, 0.418452, -0.573032,
		-0.361924, -0.906602, -0.216986,
		36.610168, 34.320412, 40.240719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190159, 34.985264, 40.653854>,  <36.863514, 34.955032, 40.392609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190159, 34.985264, 40.653854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244713, 34.594643, 40.587223>,  <36.277443, 34.360271, 40.547245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244713, 34.594643, 40.587223>,  <36.190159, 34.985264, 40.653854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244713, 34.594643, 40.587223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708349, -0.213679, 0.672743,
		-0.692561, 0.026243, -0.720881,
		0.136383, -0.976551, -0.166575,
		36.285629, 34.301678, 40.537251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525623, 34.666100, 40.636848>,  <36.190159, 34.985264, 40.653854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525623, 34.666100, 40.636848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777664, 34.374786, 40.744606>,  <35.928890, 34.199997, 40.809261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777664, 34.374786, 40.744606>,  <35.525623, 34.666100, 40.636848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777664, 34.374786, 40.744606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500089, -0.115195, 0.858278,
		-0.594040, -0.675521, -0.436793,
		0.630101, -0.728286, 0.269390,
		35.966694, 34.156300, 40.825424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121651, 34.063549, 40.894951>,  <35.525623, 34.666100, 40.636848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121651, 34.063549, 40.894951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490246, 34.022793, 41.044872>,  <35.711403, 33.998341, 41.134827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490246, 34.022793, 41.044872>,  <35.121651, 34.063549, 40.894951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490246, 34.022793, 41.044872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387131, -0.162765, 0.907544,
		-0.031458, -0.981390, -0.189428,
		0.921488, -0.101883, 0.374807,
		35.766693, 33.992226, 41.157314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113014, 33.438316, 41.410606>,  <35.121651, 34.063549, 40.894951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113014, 33.438316, 41.410606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415089, 33.682053, 41.507263>,  <35.596336, 33.828293, 41.565258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415089, 33.682053, 41.507263>,  <35.113014, 33.438316, 41.410606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415089, 33.682053, 41.507263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189897, -0.149454, 0.970362,
		0.627396, -0.778695, 0.002846,
		0.755191, 0.609342, 0.241638,
		35.641647, 33.864857, 41.579754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932594, 32.654259, 41.379932>,  <35.113014, 33.438316, 41.410606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932594, 32.654259, 41.379932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560715, 32.508217, 41.360504>,  <34.337585, 32.420593, 41.348846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560715, 32.508217, 41.360504>,  <34.932594, 32.654259, 41.379932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560715, 32.508217, 41.360504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019882, 0.181436, -0.983202,
		0.367787, -0.913114, -0.175940,
		-0.929697, -0.365107, -0.048575,
		34.281807, 32.398685, 41.345932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922394, 32.088596, 40.985779>,  <34.932594, 32.654259, 41.379932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922394, 32.088596, 40.985779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550316, 32.234241, 40.967228>,  <34.327068, 32.321629, 40.956097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550316, 32.234241, 40.967228>,  <34.922394, 32.088596, 40.985779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550316, 32.234241, 40.967228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046067, -0.009539, -0.998893,
		-0.364153, -0.931306, -0.007901,
		-0.930199, 0.364114, -0.046376,
		34.271255, 32.343475, 40.953316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520317, 31.705334, 40.484486>,  <34.922394, 32.088596, 40.985779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520317, 31.705334, 40.484486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319916, 32.047977, 40.533825>,  <34.199677, 32.253563, 40.563427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319916, 32.047977, 40.533825>,  <34.520317, 31.705334, 40.484486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319916, 32.047977, 40.533825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171354, 0.041520, -0.984334,
		-0.848314, -0.514288, 0.125982,
		-0.501001, 0.856612, 0.123347,
		34.169617, 32.304962, 40.570827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866451, 31.589094, 40.135365>,  <34.520317, 31.705334, 40.484486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866451, 31.589094, 40.135365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942623, 31.981678, 40.144039>,  <33.988327, 32.217228, 40.149242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942623, 31.981678, 40.144039>,  <33.866451, 31.589094, 40.135365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942623, 31.981678, 40.144039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205331, 0.061422, -0.976763,
		-0.959986, 0.181557, 0.213221,
		0.190434, 0.981461, 0.021685,
		33.999752, 32.276115, 40.150543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279121, 31.873026, 39.890129>,  <33.866451, 31.589094, 40.135365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279121, 31.873026, 39.890129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522289, 32.187481, 39.845562>,  <33.668190, 32.376156, 39.818821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522289, 32.187481, 39.845562>,  <33.279121, 31.873026, 39.890129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522289, 32.187481, 39.845562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126358, -0.042751, -0.991063,
		-0.783877, 0.616569, 0.073346,
		0.607923, 0.786139, -0.111420,
		33.704666, 32.423325, 39.812138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946636, 32.385586, 39.495461>,  <33.279121, 31.873026, 39.890129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946636, 32.385586, 39.495461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331814, 32.480198, 39.443626>,  <33.562920, 32.536964, 39.412525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331814, 32.480198, 39.443626>,  <32.946636, 32.385586, 39.495461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331814, 32.480198, 39.443626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128345, -0.020688, -0.991514,
		-0.237204, 0.971404, 0.010436,
		0.962944, 0.236530, -0.129583,
		33.620697, 32.551155, 39.404751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987160, 32.829411, 39.037224>,  <32.946636, 32.385586, 39.495461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987160, 32.829411, 39.037224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373352, 32.728508, 39.011276>,  <33.605068, 32.667969, 38.995708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373352, 32.728508, 39.011276>,  <32.987160, 32.829411, 39.037224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373352, 32.728508, 39.011276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051510, 0.059216, -0.996915,
		0.255317, 0.965848, 0.044178,
		0.965484, -0.252254, -0.064870,
		33.662998, 32.652832, 38.991814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308525, 33.196327, 38.467522>,  <32.987160, 32.829411, 39.037224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308525, 33.196327, 38.467522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573425, 32.902069, 38.524452>,  <33.732365, 32.725513, 38.558613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573425, 32.902069, 38.524452>,  <33.308525, 33.196327, 38.467522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573425, 32.902069, 38.524452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157729, -0.048830, -0.986274,
		0.732496, 0.675607, 0.083695,
		0.662247, -0.735643, 0.142331,
		33.772099, 32.681377, 38.567150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807537, 33.299343, 37.955772>,  <33.308525, 33.196327, 38.467522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807537, 33.299343, 37.955772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850342, 32.914948, 38.057793>,  <33.876022, 32.684311, 38.119007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850342, 32.914948, 38.057793>,  <33.807537, 33.299343, 37.955772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850342, 32.914948, 38.057793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066457, -0.262867, -0.962540,
		0.992034, 0.086051, -0.091994,
		0.107009, -0.960987, 0.255055,
		33.882446, 32.626652, 38.134308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343159, 32.999157, 37.514233>,  <33.807537, 33.299343, 37.955772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343159, 32.999157, 37.514233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158043, 32.667454, 37.639557>,  <34.046974, 32.468433, 37.714752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158043, 32.667454, 37.639557>,  <34.343159, 32.999157, 37.514233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158043, 32.667454, 37.639557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258692, -0.211711, -0.942474,
		0.847883, -0.517215, -0.116545,
		-0.462788, -0.829257, 0.313306,
		34.019207, 32.418678, 37.733547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500587, 32.516727, 37.080280>,  <34.343159, 32.999157, 37.514233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500587, 32.516727, 37.080280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189102, 32.327942, 37.245617>,  <34.002209, 32.214672, 37.344818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189102, 32.327942, 37.245617>,  <34.500587, 32.516727, 37.080280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189102, 32.327942, 37.245617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343176, -0.231096, -0.910398,
		0.525195, -0.850791, 0.017992,
		-0.778717, -0.471962, 0.413342,
		33.955486, 32.186352, 37.369621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463505, 31.812403, 36.734390>,  <34.500587, 32.516727, 37.080280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463505, 31.812403, 36.734390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100822, 31.912163, 36.870438>,  <33.883213, 31.972019, 36.952065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100822, 31.912163, 36.870438>,  <34.463505, 31.812403, 36.734390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100822, 31.912163, 36.870438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402209, -0.268650, -0.875246,
		-0.126912, -0.930391, 0.343898,
		-0.906709, 0.249398, 0.340117,
		33.828812, 31.986982, 36.972473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076393, 31.196068, 36.570023>,  <34.463505, 31.812403, 36.734390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076393, 31.196068, 36.570023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809570, 31.489471, 36.622173>,  <33.649475, 31.665514, 36.653465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809570, 31.489471, 36.622173>,  <34.076393, 31.196068, 36.570023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809570, 31.489471, 36.622173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513509, -0.325902, -0.793786,
		-0.539759, -0.596452, 0.594059,
		-0.667060, 0.733508, 0.130375,
		33.609451, 31.709524, 36.661285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373512, 30.895000, 36.605106>,  <34.076393, 31.196068, 36.570023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373512, 30.895000, 36.605106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349545, 31.275560, 36.484280>,  <33.335163, 31.503897, 36.411785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349545, 31.275560, 36.484280>,  <33.373512, 30.895000, 36.605106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349545, 31.275560, 36.484280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475432, -0.293284, -0.829427,
		-0.877710, 0.093914, 0.469900,
		-0.059919, 0.951402, -0.302068,
		33.331570, 31.560982, 36.393658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343491, 30.585463, 37.324062>,  <33.373512, 30.895000, 36.605106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343491, 30.585463, 37.324062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063618, 30.590483, 37.038326>,  <32.895695, 30.593494, 36.866882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063618, 30.590483, 37.038326>,  <33.343491, 30.585463, 37.324062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063618, 30.590483, 37.038326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583251, -0.567422, -0.581249,
		-0.412629, -0.823332, 0.389695,
		-0.699683, 0.012550, -0.714344,
		32.853714, 30.594248, 36.824024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228680, 29.904905, 37.244862>,  <33.343491, 30.585463, 37.324062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228680, 29.904905, 37.244862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111855, 30.082325, 36.905933>,  <33.041759, 30.188778, 36.702576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111855, 30.082325, 36.905933>,  <33.228680, 29.904905, 37.244862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111855, 30.082325, 36.905933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354875, -0.772447, -0.526678,
		-0.888122, -0.454519, 0.068201,
		-0.292066, 0.443551, -0.847325,
		33.024235, 30.215391, 36.651737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758438, 29.419703, 37.665520>,  <33.228680, 29.904905, 37.244862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758438, 29.419703, 37.665520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388382, 29.322952, 37.782558>,  <33.166348, 29.264902, 37.852779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388382, 29.322952, 37.782558>,  <33.758438, 29.419703, 37.665520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388382, 29.322952, 37.782558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329531, -0.894334, 0.302616,
		0.188482, 0.376381, 0.907090,
		-0.925140, -0.241876, 0.292595,
		33.110840, 29.250389, 37.870338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535988, 29.252417, 37.925465>,  <33.758438, 29.419703, 37.665520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535988, 29.252417, 37.925465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887638, 29.317591, 37.746311>,  <35.098629, 29.356695, 37.638821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887638, 29.317591, 37.746311>,  <34.535988, 29.252417, 37.925465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887638, 29.317591, 37.746311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417103, 0.191642, 0.888425,
		0.230589, -0.967846, 0.100516,
		0.879121, 0.162935, -0.447882,
		35.151375, 29.366470, 37.611946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913475, 28.772738, 38.163307>,  <34.535988, 29.252417, 37.925465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913475, 28.772738, 38.163307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133987, 29.097672, 38.087196>,  <35.266296, 29.292631, 38.041531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133987, 29.097672, 38.087196>,  <34.913475, 28.772738, 38.163307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133987, 29.097672, 38.087196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423527, -0.075984, 0.902691,
		0.718828, -0.578222, -0.385934,
		0.551281, 0.812333, -0.190273,
		35.299374, 29.341372, 38.030113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608143, 28.593431, 38.278271>,  <34.913475, 28.772738, 38.163307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608143, 28.593431, 38.278271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562263, 28.988350, 38.322258>,  <35.534737, 29.225300, 38.348648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562263, 28.988350, 38.322258>,  <35.608143, 28.593431, 38.278271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562263, 28.988350, 38.322258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419840, -0.052148, 0.906099,
		0.900321, 0.150096, -0.408525,
		-0.114698, 0.987295, 0.109966,
		35.527855, 29.284538, 38.355247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208759, 28.856539, 38.581013>,  <35.608143, 28.593431, 38.278271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208759, 28.856539, 38.581013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930855, 29.136253, 38.648304>,  <35.764111, 29.304083, 38.688679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930855, 29.136253, 38.648304>,  <36.208759, 28.856539, 38.581013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930855, 29.136253, 38.648304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333520, 0.105997, 0.936765,
		0.637236, 0.706938, -0.306870,
		-0.694762, 0.699288, 0.168233,
		35.722427, 29.346039, 38.698772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549606, 29.332335, 39.085224>,  <36.208759, 28.856539, 38.581013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549606, 29.332335, 39.085224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169117, 29.451464, 39.117401>,  <35.940823, 29.522942, 39.136707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169117, 29.451464, 39.117401>,  <36.549606, 29.332335, 39.085224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169117, 29.451464, 39.117401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104636, 0.066180, 0.992306,
		0.290209, 0.952324, -0.094115,
		-0.951226, 0.297824, 0.080441,
		35.883751, 29.540812, 39.141533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554073, 29.829617, 39.549583>,  <36.549606, 29.332335, 39.085224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554073, 29.829617, 39.549583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187595, 29.670275, 39.567039>,  <35.967709, 29.574671, 39.577515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187595, 29.670275, 39.567039>,  <36.554073, 29.829617, 39.549583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187595, 29.670275, 39.567039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043537, 0.207205, 0.977328,
		-0.398365, 0.893522, -0.207183,
		-0.916193, -0.398353, 0.043642,
		35.912739, 29.550768, 39.580132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134567, 30.287201, 39.896584>,  <36.554073, 29.829617, 39.549583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134567, 30.287201, 39.896584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958382, 29.930452, 39.937672>,  <35.852669, 29.716402, 39.962322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958382, 29.930452, 39.937672>,  <36.134567, 30.287201, 39.896584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958382, 29.930452, 39.937672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277194, 0.243929, 0.929334,
		-0.853903, 0.380870, -0.354665,
		-0.440468, -0.891873, 0.102717,
		35.826241, 29.662891, 39.968487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493496, 30.535576, 40.196156>,  <36.134567, 30.287201, 39.896584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493496, 30.535576, 40.196156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524925, 30.143814, 40.270550>,  <35.543781, 29.908756, 40.315186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524925, 30.143814, 40.270550>,  <35.493496, 30.535576, 40.196156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524925, 30.143814, 40.270550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078364, 0.179920, 0.980555,
		-0.993823, -0.091621, -0.062613,
		0.078574, -0.979405, 0.185988,
		35.548496, 29.849993, 40.326347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917496, 30.493690, 40.685349>,  <35.493496, 30.535576, 40.196156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917496, 30.493690, 40.685349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154217, 30.172136, 40.709152>,  <35.296249, 29.979204, 40.723434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154217, 30.172136, 40.709152>,  <34.917496, 30.493690, 40.685349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154217, 30.172136, 40.709152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111678, -0.008658, 0.993707,
		-0.798311, -0.594722, -0.094900,
		0.591801, -0.803885, 0.059506,
		35.331757, 29.930971, 40.727005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607449, 30.075323, 41.190250>,  <34.917496, 30.493690, 40.685349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607449, 30.075323, 41.190250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985897, 29.945835, 41.193169>,  <35.212967, 29.868141, 41.194920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985897, 29.945835, 41.193169>,  <34.607449, 30.075323, 41.190250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985897, 29.945835, 41.193169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004102, 0.010541, 0.999936,
		-0.323778, -0.946093, 0.008645,
		0.946124, -0.323722, 0.007294,
		35.269733, 29.848719, 41.195358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594524, 29.452532, 41.537117>,  <34.607449, 30.075323, 41.190250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594524, 29.452532, 41.537117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980068, 29.553371, 41.571590>,  <35.211395, 29.613874, 41.592274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980068, 29.553371, 41.571590>,  <34.594524, 29.452532, 41.537117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980068, 29.553371, 41.571590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056864, -0.121367, 0.990978,
		0.260284, -0.960060, -0.102645,
		0.963856, 0.252099, 0.086183,
		35.269226, 29.629002, 41.597446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828728, 28.892706, 41.941284>,  <34.594524, 29.452532, 41.537117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828728, 28.892706, 41.941284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096977, 29.189390, 41.945824>,  <35.257927, 29.367401, 41.948547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096977, 29.189390, 41.945824>,  <34.828728, 28.892706, 41.941284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096977, 29.189390, 41.945824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023465, -0.036505, 0.999058,
		0.741425, -0.669727, -0.041885,
		0.670625, 0.741710, 0.011351,
		35.298164, 29.411903, 41.949230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414532, 28.709175, 42.506493>,  <34.828728, 28.892706, 41.941284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414532, 28.709175, 42.506493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426228, 29.107594, 42.472946>,  <35.433247, 29.346645, 42.452820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426228, 29.107594, 42.472946>,  <35.414532, 28.709175, 42.506493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426228, 29.107594, 42.472946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123911, 0.079641, 0.989092,
		0.991862, -0.039311, -0.121093,
		0.029239, 0.996048, -0.083864,
		35.434998, 29.406408, 42.447788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914238, 28.883001, 43.114876>,  <35.414532, 28.709175, 42.506493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914238, 28.883001, 43.114876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703796, 29.207550, 43.012978>,  <35.577534, 29.402279, 42.951839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703796, 29.207550, 43.012978>,  <35.914238, 28.883001, 43.114876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703796, 29.207550, 43.012978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030430, 0.317318, 0.947831,
		0.849878, 0.490901, -0.191631,
		-0.526100, 0.811373, -0.254743,
		35.545967, 29.450962, 42.936554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304337, 29.392725, 43.422306>,  <35.914238, 28.883001, 43.114876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304337, 29.392725, 43.422306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943584, 29.562473, 43.390007>,  <35.727135, 29.664322, 43.370628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943584, 29.562473, 43.390007>,  <36.304337, 29.392725, 43.422306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943584, 29.562473, 43.390007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029050, 0.126910, 0.991489,
		0.431005, 0.896551, -0.102130,
		-0.901882, 0.424370, -0.080743,
		35.673019, 29.689785, 43.365784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288563, 30.002861, 43.789093>,  <36.304337, 29.392725, 43.422306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288563, 30.002861, 43.789093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904507, 29.903429, 43.737953>,  <35.674072, 29.843769, 43.707268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904507, 29.903429, 43.737953>,  <36.288563, 30.002861, 43.789093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904507, 29.903429, 43.737953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187635, 0.234102, 0.953934,
		-0.207200, 0.939896, -0.271412,
		-0.960136, -0.248581, -0.127852,
		35.616467, 29.828856, 43.699596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972942, 30.531893, 44.062489>,  <36.288563, 30.002861, 43.789093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972942, 30.531893, 44.062489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694527, 30.245058, 44.048000>,  <35.527477, 30.072958, 44.039307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694527, 30.245058, 44.048000>,  <35.972942, 30.531893, 44.062489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694527, 30.245058, 44.048000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130966, 0.077199, 0.988377,
		-0.705955, 0.692696, -0.147648,
		-0.696042, -0.717086, -0.036220,
		35.485714, 30.029932, 44.037136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471966, 30.677559, 44.596462>,  <35.972942, 30.531893, 44.062489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471966, 30.677559, 44.596462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413624, 30.291525, 44.509430>,  <35.378620, 30.059904, 44.457211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413624, 30.291525, 44.509430>,  <35.471966, 30.677559, 44.596462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413624, 30.291525, 44.509430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029081, -0.215653, 0.976037,
		-0.988879, 0.148683, 0.003387,
		-0.145851, -0.965084, -0.217579,
		35.369869, 30.001999, 44.444157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084385, 30.466871, 45.221088>,  <35.471966, 30.677559, 44.596462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084385, 30.466871, 45.221088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180378, 30.122126, 45.042381>,  <35.237972, 29.915277, 44.935158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180378, 30.122126, 45.042381>,  <35.084385, 30.466871, 45.221088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180378, 30.122126, 45.042381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177157, -0.491369, 0.852744,
		-0.954477, -0.125491, -0.270603,
		0.239977, -0.861863, -0.446768,
		35.252373, 29.863567, 44.908352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586826, 29.905973, 45.260426>,  <35.084385, 30.466871, 45.221088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586826, 29.905973, 45.260426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953110, 29.745823, 45.246704>,  <35.172878, 29.649733, 45.238472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953110, 29.745823, 45.246704>,  <34.586826, 29.905973, 45.260426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953110, 29.745823, 45.246704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119643, -0.353147, 0.927886,
		-0.383627, -0.845565, -0.371281,
		0.915705, -0.400384, -0.034311,
		35.227821, 29.625710, 45.236412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538433, 29.093981, 45.274231>,  <34.586826, 29.905973, 45.260426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538433, 29.093981, 45.274231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913658, 29.184425, 45.379242>,  <35.138794, 29.238693, 45.442249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913658, 29.184425, 45.379242>,  <34.538433, 29.093981, 45.274231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913658, 29.184425, 45.379242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018187, -0.788788, 0.614396,
		0.346001, -0.571565, -0.744041,
		0.938058, 0.226113, 0.262526,
		35.195076, 29.252260, 45.458000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794827, 28.442366, 45.383041>,  <34.538433, 29.093981, 45.274231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794827, 28.442366, 45.383041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075722, 28.673666, 45.549168>,  <35.244259, 28.812447, 45.648846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075722, 28.673666, 45.549168>,  <34.794827, 28.442366, 45.383041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075722, 28.673666, 45.549168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000994, -0.584154, 0.811643,
		0.711944, -0.569551, -0.410788,
		0.702235, 0.578252, 0.415319,
		35.286392, 28.847141, 45.673763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296352, 27.998226, 45.486492>,  <34.794827, 28.442366, 45.383041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296352, 27.998226, 45.486492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343269, 28.310059, 45.732582>,  <35.371418, 28.497158, 45.880234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343269, 28.310059, 45.732582>,  <35.296352, 27.998226, 45.486492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343269, 28.310059, 45.732582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082123, -0.624988, 0.776302,
		0.989697, -0.040527, -0.137325,
		0.117288, 0.779581, 0.615221,
		35.378456, 28.543934, 45.917149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740932, 27.684498, 45.912807>,  <35.296352, 27.998226, 45.486492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740932, 27.684498, 45.912807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638550, 28.028166, 46.090038>,  <35.577122, 28.234365, 46.196377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638550, 28.028166, 46.090038>,  <35.740932, 27.684498, 45.912807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638550, 28.028166, 46.090038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203403, -0.400215, 0.893563,
		0.945047, 0.318837, -0.072320,
		-0.255957, 0.859169, 0.443074,
		35.561764, 28.285917, 46.222961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321381, 27.941963, 46.426212>,  <35.740932, 27.684498, 45.912807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321381, 27.941963, 46.426212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971260, 28.090097, 46.550594>,  <35.761189, 28.178978, 46.625225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971260, 28.090097, 46.550594>,  <36.321381, 27.941963, 46.426212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971260, 28.090097, 46.550594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092672, -0.502656, 0.859505,
		0.474611, 0.781145, 0.405656,
		-0.875303, 0.370338, 0.310957,
		35.708668, 28.201199, 46.643883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852032, 28.361597, 46.679214>,  <36.321381, 27.941963, 46.426212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852032, 28.361597, 46.679214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220066, 28.484383, 46.776558>,  <37.440887, 28.558054, 46.834965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220066, 28.484383, 46.776558>,  <36.852032, 28.361597, 46.679214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220066, 28.484383, 46.776558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168054, 0.251856, -0.953062,
		-0.353844, 0.917793, 0.180143,
		0.920083, 0.306962, 0.243356,
		37.496090, 28.576471, 46.849564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890621, 29.139778, 46.607372>,  <36.852032, 28.361597, 46.679214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890621, 29.139778, 46.607372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227798, 28.929720, 46.560600>,  <37.430103, 28.803684, 46.532536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227798, 28.929720, 46.560600>,  <36.890621, 29.139778, 46.607372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227798, 28.929720, 46.560600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032464, 0.266594, -0.963262,
		0.537027, 0.808176, 0.241771,
		0.842940, -0.525147, -0.116932,
		37.480679, 28.772175, 46.525520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311882, 29.552744, 46.132393>,  <36.890621, 29.139778, 46.607372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311882, 29.552744, 46.132393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504578, 29.202326, 46.141090>,  <37.620193, 28.992075, 46.146309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504578, 29.202326, 46.141090>,  <37.311882, 29.552744, 46.132393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504578, 29.202326, 46.141090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267094, 0.123154, -0.955769,
		0.834620, 0.466236, 0.293315,
		0.481737, -0.876046, 0.021742,
		37.649097, 28.939512, 46.147614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976418, 29.672955, 45.950768>,  <37.311882, 29.552744, 46.132393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976418, 29.672955, 45.950768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913998, 29.288982, 45.857662>,  <37.876545, 29.058599, 45.801800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913998, 29.288982, 45.857662>,  <37.976418, 29.672955, 45.950768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913998, 29.288982, 45.857662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340483, 0.168931, -0.924950,
		0.927210, -0.223595, 0.300478,
		-0.156054, -0.959931, -0.232765,
		37.867180, 29.001003, 45.787834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513908, 29.520451, 45.584038>,  <37.976418, 29.672955, 45.950768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513908, 29.520451, 45.584038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264606, 29.225677, 45.479362>,  <38.115025, 29.048813, 45.416557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264606, 29.225677, 45.479362>,  <38.513908, 29.520451, 45.584038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264606, 29.225677, 45.479362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323531, 0.061667, -0.944206,
		0.711956, -0.673145, 0.199987,
		-0.623255, -0.736935, -0.261687,
		38.077629, 29.004597, 45.400856>
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
