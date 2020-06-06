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
	<24.138220, 35.053642, 35.290920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296146, 35.015503, 34.925400>,  <24.390902, 34.992619, 34.706089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296146, 35.015503, 34.925400>,  <24.138220, 35.053642, 35.290920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.296146, 35.015503, 34.925400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501822, -0.810754, 0.301417,
		-0.769606, -0.577569, -0.272250,
		0.394817, -0.095351, -0.913798,
		24.414591, 34.986897, 34.651260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.109529, 34.401821, 35.203632>,  <24.138220, 35.053642, 35.290920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.109529, 34.401821, 35.203632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394567, 34.501995, 34.941490>,  <24.565590, 34.562099, 34.784206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394567, 34.501995, 34.941490>,  <24.109529, 34.401821, 35.203632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.394567, 34.501995, 34.941490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479991, -0.855310, 0.195072,
		-0.511680, -0.453573, -0.729695,
		0.712595, 0.250433, -0.655356,
		24.608347, 34.577126, 34.744884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.166763, 33.819660, 34.861088>,  <24.109529, 34.401821, 35.203632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.166763, 33.819660, 34.861088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.514685, 34.015057, 34.833317>,  <24.723438, 34.132294, 34.816654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.514685, 34.015057, 34.833317>,  <24.166763, 33.819660, 34.861088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.514685, 34.015057, 34.833317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488417, -0.872400, -0.019176,
		-0.069939, -0.017232, -0.997402,
		0.869803, 0.488489, -0.069431,
		24.775625, 34.161602, 34.812489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.481092, 33.585415, 34.239788>,  <24.166763, 33.819660, 34.861088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.481092, 33.585415, 34.239788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.761415, 33.712734, 34.495148>,  <24.929609, 33.789127, 34.648365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.761415, 33.712734, 34.495148>,  <24.481092, 33.585415, 34.239788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.761415, 33.712734, 34.495148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525299, -0.835749, -0.159951,
		0.482629, 0.447445, -0.752903,
		0.700807, 0.318302, 0.638399,
		24.971657, 33.808224, 34.686668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.164959, 33.807594, 33.883820>,  <24.481092, 33.585415, 34.239788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.164959, 33.807594, 33.883820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157087, 33.654430, 34.253250>,  <25.152365, 33.562531, 34.474907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157087, 33.654430, 34.253250>,  <25.164959, 33.807594, 33.883820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.157087, 33.654430, 34.253250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485521, -0.811181, -0.325969,
		0.874004, 0.442000, 0.201875,
		-0.019679, -0.382912, 0.923575,
		25.151184, 33.539558, 34.530323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860975, 33.624119, 34.013149>,  <25.164959, 33.807594, 33.883820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860975, 33.624119, 34.013149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615589, 33.402039, 34.237797>,  <25.468357, 33.268791, 34.372585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615589, 33.402039, 34.237797>,  <25.860975, 33.624119, 34.013149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.615589, 33.402039, 34.237797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423003, -0.831550, -0.359990,
		0.666880, 0.016725, 0.744977,
		-0.613465, -0.555198, 0.561619,
		25.431549, 33.235477, 34.406284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271376, 33.155464, 34.323647>,  <25.860975, 33.624119, 34.013149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271376, 33.155464, 34.323647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898165, 33.014568, 34.294281>,  <25.674238, 32.930031, 34.276661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898165, 33.014568, 34.294281>,  <26.271376, 33.155464, 34.323647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898165, 33.014568, 34.294281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347100, -0.827400, -0.441509,
		0.094777, -0.437420, 0.894249,
		-0.933027, -0.352239, -0.073410,
		25.618258, 32.908897, 34.272259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610905, 33.573830, 33.972137>,  <26.271376, 33.155464, 34.323647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610905, 33.573830, 33.972137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982206, 33.445847, 34.047997>,  <27.204988, 33.369057, 34.093513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982206, 33.445847, 34.047997>,  <26.610905, 33.573830, 33.972137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982206, 33.445847, 34.047997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371880, -0.807793, 0.457358,
		0.006860, -0.495071, -0.868825,
		0.928255, -0.319962, 0.189649,
		27.260683, 33.349857, 34.104893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599749, 32.920086, 33.747299>,  <26.610905, 33.573830, 33.972137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599749, 32.920086, 33.747299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913837, 32.934132, 33.994587>,  <27.102291, 32.942558, 34.142960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913837, 32.934132, 33.994587>,  <26.599749, 32.920086, 33.747299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913837, 32.934132, 33.994587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317338, -0.834491, 0.450467,
		0.531716, -0.549901, -0.644118,
		0.785223, 0.035118, 0.618217,
		27.149405, 32.944668, 34.180054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.850584, 32.281750, 33.801338>,  <26.599749, 32.920086, 33.747299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.850584, 32.281750, 33.801338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991833, 32.435753, 34.142410>,  <27.076582, 32.528156, 34.347054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991833, 32.435753, 34.142410>,  <26.850584, 32.281750, 33.801338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991833, 32.435753, 34.142410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171743, -0.869236, 0.463610,
		0.919679, -0.310153, -0.240824,
		0.353123, 0.385012, 0.852684,
		27.097769, 32.551258, 34.398216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214947, 31.701628, 34.018864>,  <26.850584, 32.281750, 33.801338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214947, 31.701628, 34.018864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179127, 31.928833, 34.346119>,  <27.157635, 32.065155, 34.542473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179127, 31.928833, 34.346119>,  <27.214947, 31.701628, 34.018864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179127, 31.928833, 34.346119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207994, -0.813988, 0.542366,
		0.974022, -0.121599, 0.191034,
		-0.089548, 0.568011, 0.818135,
		27.152262, 32.099236, 34.591560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501568, 31.408558, 34.725327>,  <27.214947, 31.701628, 34.018864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501568, 31.408558, 34.725327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219046, 31.668360, 34.837952>,  <27.049532, 31.824240, 34.905525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219046, 31.668360, 34.837952>,  <27.501568, 31.408558, 34.725327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219046, 31.668360, 34.837952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419936, -0.704619, 0.571983,
		0.569900, 0.285756, 0.770427,
		-0.706305, 0.649504, 0.281563,
		27.007154, 31.863211, 34.922421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399307, 31.297300, 35.461861>,  <27.501568, 31.408558, 34.725327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399307, 31.297300, 35.461861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082479, 31.498095, 35.322929>,  <26.892384, 31.618570, 35.239571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082479, 31.498095, 35.322929>,  <27.399307, 31.297300, 35.461861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082479, 31.498095, 35.322929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573631, -0.417510, 0.704722,
		0.208745, 0.757429, 0.618650,
		-0.792069, 0.501984, -0.347331,
		26.844858, 31.648689, 35.218731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655930, 31.145226, 35.356915>,  <27.399307, 31.297300, 35.461861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655930, 31.145226, 35.356915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672331, 31.396078, 35.668049>,  <26.682173, 31.546589, 35.854729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672331, 31.396078, 35.668049>,  <26.655930, 31.145226, 35.356915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672331, 31.396078, 35.668049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315290, 0.730592, -0.605663,
		-0.948109, 0.270079, -0.167770,
		0.041005, 0.627131, 0.777834,
		26.684633, 31.584217, 35.901398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152704, 31.718199, 35.311264>,  <26.655930, 31.145226, 35.356915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152704, 31.718199, 35.311264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506632, 31.817888, 35.468735>,  <26.718988, 31.877703, 35.563217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506632, 31.817888, 35.468735>,  <26.152704, 31.718199, 35.311264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506632, 31.817888, 35.468735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238871, 0.482797, -0.842525,
		-0.400043, 0.839520, 0.367656,
		0.884820, 0.249224, 0.393676,
		26.772078, 31.892654, 35.586838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211557, 32.511539, 35.397964>,  <26.152704, 31.718199, 35.311264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211557, 32.511539, 35.397964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573275, 32.343220, 35.369167>,  <26.790306, 32.242229, 35.351887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573275, 32.343220, 35.369167>,  <26.211557, 32.511539, 35.397964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573275, 32.343220, 35.369167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256881, 0.671038, -0.695500,
		0.340974, 0.610443, 0.714910,
		0.904295, -0.420794, -0.071995,
		26.844563, 32.216980, 35.347569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760788, 33.002167, 35.528950>,  <26.211557, 32.511539, 35.397964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760788, 33.002167, 35.528950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917339, 32.731705, 35.279266>,  <27.011271, 32.569427, 35.129456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917339, 32.731705, 35.279266>,  <26.760788, 33.002167, 35.528950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.917339, 32.731705, 35.279266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403285, 0.735739, -0.544105,
		0.827155, -0.038784, 0.560634,
		0.391378, -0.676154, -0.624211,
		27.034752, 32.528858, 35.092003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529209, 32.989811, 35.490097>,  <26.760788, 33.002167, 35.528950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529209, 32.989811, 35.490097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387493, 32.859566, 35.139450>,  <27.302464, 32.781418, 34.929062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387493, 32.859566, 35.139450>,  <27.529209, 32.989811, 35.490097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387493, 32.859566, 35.139450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502575, 0.724231, -0.472132,
		0.788604, -0.607836, -0.092942,
		-0.354290, -0.325615, -0.876615,
		27.281206, 32.761883, 34.876465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142324, 33.021938, 34.999130>,  <27.529209, 32.989811, 35.490097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142324, 33.021938, 34.999130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818773, 33.007664, 34.764374>,  <27.624641, 32.999100, 34.623520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818773, 33.007664, 34.764374>,  <28.142324, 33.021938, 34.999130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818773, 33.007664, 34.764374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462342, 0.578063, -0.672372,
		0.363254, -0.815212, -0.451084,
		-0.808880, -0.035687, -0.586891,
		27.576109, 32.996956, 34.588306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501715, 33.094479, 34.413738>,  <28.142324, 33.021938, 34.999130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501715, 33.094479, 34.413738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123316, 33.158367, 34.300900>,  <27.896276, 33.196701, 34.233196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123316, 33.158367, 34.300900>,  <28.501715, 33.094479, 34.413738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123316, 33.158367, 34.300900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312941, 0.677003, -0.666134,
		0.084585, -0.718440, -0.690426,
		-0.945998, 0.159718, -0.282094,
		27.839516, 33.206284, 34.216270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492455, 33.076286, 33.672451>,  <28.501715, 33.094479, 34.413738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492455, 33.076286, 33.672451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180950, 33.289444, 33.804848>,  <27.994047, 33.417339, 33.884285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180950, 33.289444, 33.804848>,  <28.492455, 33.076286, 33.672451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180950, 33.289444, 33.804848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166388, 0.684194, -0.710066,
		-0.604854, -0.497897, -0.621490,
		-0.778760, 0.532895, 0.330994,
		27.947323, 33.449314, 33.904144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059561, 33.470680, 33.774853>,  <28.492455, 33.076286, 33.672451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059561, 33.470680, 33.774853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298250, 33.357651, 33.474434>,  <29.441463, 33.289833, 33.294182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298250, 33.357651, 33.474434>,  <29.059561, 33.470680, 33.774853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298250, 33.357651, 33.474434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510625, 0.855715, 0.083749,
		0.619016, -0.433478, 0.654917,
		0.596725, -0.282575, -0.751046,
		29.477268, 33.272877, 33.249119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659019, 33.772659, 33.902843>,  <29.059561, 33.470680, 33.774853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659019, 33.772659, 33.902843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636328, 33.700886, 33.509991>,  <29.622713, 33.657822, 33.274281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636328, 33.700886, 33.509991>,  <29.659019, 33.772659, 33.902843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636328, 33.700886, 33.509991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464871, 0.865828, -0.185035,
		0.883559, -0.467062, 0.034296,
		-0.056729, -0.179433, -0.982133,
		29.619308, 33.647057, 33.215351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862391, 33.741947, 34.703564>,  <29.659019, 33.772659, 33.902843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862391, 33.741947, 34.703564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493477, 33.705513, 34.853813>,  <29.272129, 33.683655, 34.943962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493477, 33.705513, 34.853813>,  <29.862391, 33.741947, 34.703564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493477, 33.705513, 34.853813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315516, -0.383919, -0.867788,
		0.223250, -0.918864, 0.325344,
		-0.922285, -0.091082, 0.375626,
		29.216791, 33.678188, 34.966499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306698, 33.520790, 35.387848>,  <29.862391, 33.741947, 34.703564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306698, 33.520790, 35.387848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545546, 33.407776, 35.087551>,  <30.688854, 33.339966, 34.907372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545546, 33.407776, 35.087551>,  <30.306698, 33.520790, 35.387848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545546, 33.407776, 35.087551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272538, -0.951698, 0.141398,
		-0.754434, 0.120174, -0.645281,
		0.597121, -0.282539, -0.750746,
		30.724682, 33.323013, 34.862328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115503, 32.831230, 35.435135>,  <30.306698, 33.520790, 35.387848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115503, 32.831230, 35.435135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434505, 32.806709, 35.195057>,  <30.625906, 32.791996, 35.051010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434505, 32.806709, 35.195057>,  <30.115503, 32.831230, 35.435135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434505, 32.806709, 35.195057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062484, -0.997867, 0.018895,
		-0.600070, 0.022433, -0.799633,
		0.797504, -0.061303, -0.600192,
		30.673756, 32.788319, 35.014999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294615, 32.059929, 35.541237>,  <30.115503, 32.831230, 35.435135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294615, 32.059929, 35.541237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617384, 32.233646, 35.701370>,  <30.811047, 32.337875, 35.797451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617384, 32.233646, 35.701370>,  <30.294615, 32.059929, 35.541237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617384, 32.233646, 35.701370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309393, 0.266570, -0.912807,
		-0.503139, 0.860426, 0.080736,
		0.806924, 0.434290, 0.400331,
		30.859461, 32.363934, 35.821468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615715, 31.855772, 35.934052>,  <30.294615, 32.059929, 35.541237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615715, 31.855772, 35.934052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844505, 31.620718, 36.162971>,  <29.981779, 31.479687, 36.300323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844505, 31.620718, 36.162971>,  <29.615715, 31.855772, 35.934052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844505, 31.620718, 36.162971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536516, 0.259749, 0.802920,
		-0.620478, -0.766301, -0.166704,
		0.571977, -0.587634, 0.572301,
		30.016098, 31.444427, 36.334663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297802, 31.375685, 36.436325>,  <29.615715, 31.855772, 35.934052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297802, 31.375685, 36.436325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647261, 31.503370, 36.583210>,  <29.856936, 31.579981, 36.671341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647261, 31.503370, 36.583210>,  <29.297802, 31.375685, 36.436325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647261, 31.503370, 36.583210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472645, 0.377566, 0.796273,
		0.115534, -0.869223, 0.480733,
		0.873647, 0.319212, 0.367212,
		29.909355, 31.599134, 36.693375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078169, 31.392441, 37.137970>,  <29.297802, 31.375685, 36.436325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078169, 31.392441, 37.137970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428951, 31.574202, 37.200531>,  <29.639421, 31.683258, 37.238068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428951, 31.574202, 37.200531>,  <29.078169, 31.392441, 37.137970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428951, 31.574202, 37.200531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413938, 0.548910, 0.726191,
		0.244132, -0.701581, 0.669466,
		0.876958, 0.454404, 0.156405,
		29.692039, 31.710524, 37.247452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436123, 31.345869, 37.861267>,  <29.078169, 31.392441, 37.137970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436123, 31.345869, 37.861267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612827, 31.678402, 37.726368>,  <29.718851, 31.877922, 37.645428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612827, 31.678402, 37.726368>,  <29.436123, 31.345869, 37.861267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612827, 31.678402, 37.726368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393895, 0.517476, 0.759648,
		0.806035, -0.202745, 0.556059,
		0.441762, 0.831332, -0.337244,
		29.745356, 31.927801, 37.625195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861784, 31.635658, 38.376728>,  <29.436123, 31.345869, 37.861267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861784, 31.635658, 38.376728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758097, 31.927273, 38.123333>,  <29.695885, 32.102242, 37.971294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758097, 31.927273, 38.123333>,  <29.861784, 31.635658, 38.376728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758097, 31.927273, 38.123333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309853, 0.558465, 0.769486,
		0.914766, 0.395754, 0.081130,
		-0.259219, 0.729038, -0.633490,
		29.680330, 32.145985, 37.933285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981886, 32.207062, 38.686329>,  <29.861784, 31.635658, 38.376728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981886, 32.207062, 38.686329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721647, 32.337452, 38.411968>,  <29.565504, 32.415688, 38.247353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721647, 32.337452, 38.411968>,  <29.981886, 32.207062, 38.686329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721647, 32.337452, 38.411968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429278, 0.587189, 0.686243,
		0.626454, 0.740911, -0.242088,
		-0.650596, 0.325977, -0.685904,
		29.526468, 32.435246, 38.206196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971706, 32.991478, 38.605911>,  <29.981886, 32.207062, 38.686329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971706, 32.991478, 38.605911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608768, 32.886208, 38.474785>,  <29.391006, 32.823048, 38.396107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608768, 32.886208, 38.474785>,  <29.971706, 32.991478, 38.605911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608768, 32.886208, 38.474785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420178, 0.592363, 0.687427,
		0.013277, 0.761476, -0.648057,
		-0.907345, -0.263172, -0.327820,
		29.336565, 32.807255, 38.376438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424831, 33.556557, 38.573910>,  <29.971706, 32.991478, 38.605911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424831, 33.556557, 38.573910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190554, 33.232372, 38.569599>,  <29.049988, 33.037861, 38.567013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190554, 33.232372, 38.569599>,  <29.424831, 33.556557, 38.573910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190554, 33.232372, 38.569599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712297, 0.508318, 0.483990,
		-0.386779, 0.291144, -0.875007,
		-0.585692, -0.810462, -0.010775,
		29.014847, 32.989235, 38.566368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778629, 33.618378, 38.899910>,  <29.424831, 33.556557, 38.573910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778629, 33.618378, 38.899910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675791, 33.236259, 38.841522>,  <28.614088, 33.006989, 38.806488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675791, 33.236259, 38.841522>,  <28.778629, 33.618378, 38.899910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675791, 33.236259, 38.841522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877632, 0.167573, 0.449090,
		-0.404555, 0.243565, -0.881482,
		-0.257095, -0.955299, -0.145968,
		28.598661, 32.949669, 38.797733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080019, 33.675568, 38.656853>,  <28.778629, 33.618378, 38.899910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080019, 33.675568, 38.656853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192453, 33.321209, 38.804459>,  <28.259914, 33.108593, 38.893021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192453, 33.321209, 38.804459>,  <28.080019, 33.675568, 38.656853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192453, 33.321209, 38.804459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846942, -0.048167, 0.529500,
		-0.451310, -0.461367, -0.763846,
		0.281086, -0.885901, 0.369013,
		28.276779, 33.055439, 38.915161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561329, 33.165043, 38.431797>,  <28.080019, 33.675568, 38.656853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561329, 33.165043, 38.431797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734264, 33.106415, 38.787685>,  <27.838026, 33.071239, 39.001217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734264, 33.106415, 38.787685>,  <27.561329, 33.165043, 38.431797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734264, 33.106415, 38.787685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894699, 0.053078, 0.443504,
		-0.112231, -0.987775, -0.108192,
		0.432339, -0.146574, 0.889719,
		27.863966, 33.062443, 39.054600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096510, 32.533005, 38.500374>,  <27.561329, 33.165043, 38.431797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096510, 32.533005, 38.500374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388624, 32.799389, 38.439484>,  <28.563892, 32.959221, 38.402950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388624, 32.799389, 38.439484>,  <28.096510, 32.533005, 38.500374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388624, 32.799389, 38.439484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364400, -0.568239, -0.737779,
		-0.577836, 0.483318, -0.657654,
		0.730287, 0.665964, -0.152228,
		28.607710, 32.999180, 38.393814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244238, 32.591522, 37.766731>,  <28.096510, 32.533005, 38.500374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244238, 32.591522, 37.766731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583197, 32.684162, 37.957844>,  <28.786572, 32.739746, 38.072514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583197, 32.684162, 37.957844>,  <28.244238, 32.591522, 37.766731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583197, 32.684162, 37.957844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530322, -0.413229, -0.740270,
		0.025985, 0.880682, -0.472994,
		0.847398, 0.231603, 0.477783,
		28.837416, 32.753643, 38.101177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735449, 32.870293, 37.256645>,  <28.244238, 32.591522, 37.766731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735449, 32.870293, 37.256645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986752, 32.761993, 37.548397>,  <29.137533, 32.697014, 37.723446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986752, 32.761993, 37.548397>,  <28.735449, 32.870293, 37.256645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986752, 32.761993, 37.548397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616014, -0.399512, -0.678908,
		0.475207, 0.875835, -0.084213,
		0.628256, -0.270745, 0.729378,
		29.175228, 32.680771, 37.767212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318371, 33.116592, 37.054081>,  <28.735449, 32.870293, 37.256645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318371, 33.116592, 37.054081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387482, 32.819630, 37.312996>,  <29.428949, 32.641453, 37.468346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387482, 32.819630, 37.312996>,  <29.318371, 33.116592, 37.054081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387482, 32.819630, 37.312996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507327, -0.496212, -0.704552,
		0.844256, 0.450117, 0.290908,
		0.172779, -0.742407, 0.647286,
		29.439316, 32.596909, 37.507183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980219, 32.966946, 36.839607>,  <29.318371, 33.116592, 37.054081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980219, 32.966946, 36.839607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870970, 32.651794, 37.060390>,  <29.805420, 32.462704, 37.192860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870970, 32.651794, 37.060390>,  <29.980219, 32.966946, 36.839607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870970, 32.651794, 37.060390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486455, -0.608123, -0.627333,
		0.829918, 0.097163, 0.549359,
		-0.273124, -0.787874, 0.551958,
		29.789032, 32.415432, 37.225979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607359, 32.634396, 37.027164>,  <29.980219, 32.966946, 36.839607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607359, 32.634396, 37.027164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320408, 32.355835, 37.035172>,  <30.148237, 32.188698, 37.039974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320408, 32.355835, 37.035172>,  <30.607359, 32.634396, 37.027164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320408, 32.355835, 37.035172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643457, -0.673307, -0.364172,
		0.267088, -0.248366, 0.931117,
		-0.717376, -0.696399, 0.020019,
		30.105196, 32.146915, 37.041176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906755, 32.108509, 37.402214>,  <30.607359, 32.634396, 37.027164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906755, 32.108509, 37.402214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.611708, 31.938288, 37.192520>,  <30.434679, 31.836155, 37.066704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.611708, 31.938288, 37.192520>,  <30.906755, 32.108509, 37.402214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611708, 31.938288, 37.192520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673252, -0.522716, -0.522973,
		-0.051470, -0.738695, 0.672072,
		-0.737620, -0.425557, -0.524232,
		30.390421, 31.810621, 37.035252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099333, 31.458107, 37.282013>,  <30.906755, 32.108509, 37.402214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099333, 31.458107, 37.282013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834597, 31.570007, 37.003819>,  <30.675755, 31.637148, 36.836903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834597, 31.570007, 37.003819>,  <31.099333, 31.458107, 37.282013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834597, 31.570007, 37.003819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644863, -0.260610, -0.718494,
		-0.382251, -0.924024, -0.007918,
		-0.661843, 0.279751, -0.695488,
		30.636044, 31.653933, 36.795174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893036, 30.908556, 36.853577>,  <31.099333, 31.458107, 37.282013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893036, 30.908556, 36.853577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899427, 31.273066, 36.688980>,  <30.903263, 31.491772, 36.590221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899427, 31.273066, 36.688980>,  <30.893036, 30.908556, 36.853577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899427, 31.273066, 36.688980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751336, -0.282488, -0.596402,
		-0.659726, -0.299641, -0.689185,
		0.015980, 0.911272, -0.411496,
		30.904221, 31.546448, 36.565533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764597, 30.956549, 35.973633>,  <30.893036, 30.908556, 36.853577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764597, 30.956549, 35.973633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011312, 31.221579, 36.143604>,  <31.159342, 31.380596, 36.245586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011312, 31.221579, 36.143604>,  <30.764597, 30.956549, 35.973633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011312, 31.221579, 36.143604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776704, -0.424735, -0.465115,
		-0.127691, 0.616922, -0.776596,
		0.616787, 0.662576, 0.424932,
		31.196348, 31.420351, 36.271084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264885, 31.049692, 35.470345>,  <30.764597, 30.956549, 35.973633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264885, 31.049692, 35.470345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443874, 31.205395, 35.792400>,  <31.551268, 31.298817, 35.985634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443874, 31.205395, 35.792400>,  <31.264885, 31.049692, 35.470345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443874, 31.205395, 35.792400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894296, -0.193537, -0.403458,
		-0.001226, 0.900567, -0.434715,
		0.447474, 0.389258, 0.805137,
		31.578117, 31.322172, 36.033943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830061, 31.588161, 35.284180>,  <31.264885, 31.049692, 35.470345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830061, 31.588161, 35.284180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859301, 31.335712, 35.593071>,  <31.876844, 31.184242, 35.778408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859301, 31.335712, 35.593071>,  <31.830061, 31.588161, 35.284180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859301, 31.335712, 35.593071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813200, -0.410544, -0.412504,
		0.577376, 0.658132, 0.483218,
		0.073100, -0.631122, 0.772231,
		31.881231, 31.146376, 35.824741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591183, 31.566488, 35.494099>,  <31.830061, 31.588161, 35.284180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591183, 31.566488, 35.494099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385292, 31.250120, 35.626461>,  <32.261757, 31.060299, 35.705879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385292, 31.250120, 35.626461>,  <32.591183, 31.566488, 35.494099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385292, 31.250120, 35.626461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796919, -0.583715, -0.155551,
		0.316186, 0.183642, 0.930753,
		-0.514729, -0.790919, 0.330911,
		32.230873, 31.012844, 35.725735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771324, 31.290152, 36.210617>,  <32.591183, 31.566488, 35.494099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771324, 31.290152, 36.210617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656612, 31.022490, 35.936394>,  <32.587788, 30.861893, 35.771858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656612, 31.022490, 35.936394>,  <32.771324, 31.290152, 36.210617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656612, 31.022490, 35.936394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863930, -0.489887, 0.116775,
		-0.413986, -0.558785, 0.718592,
		-0.286777, -0.669156, -0.685558,
		32.570580, 30.821743, 35.730728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935825, 30.543457, 36.410385>,  <32.771324, 31.290152, 36.210617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935825, 30.543457, 36.410385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921268, 30.605377, 36.015476>,  <32.912533, 30.642529, 35.778530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921268, 30.605377, 36.015476>,  <32.935825, 30.543457, 36.410385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921268, 30.605377, 36.015476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957538, -0.277336, -0.078786,
		-0.286003, -0.948220, -0.138134,
		-0.036397, 0.154801, -0.987275,
		32.910351, 30.651817, 35.719296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493366, 30.327656, 36.877384>,  <32.935825, 30.543457, 36.410385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493366, 30.327656, 36.877384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722321, 30.601217, 37.058334>,  <33.859695, 30.765354, 37.166904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722321, 30.601217, 37.058334>,  <33.493366, 30.327656, 36.877384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722321, 30.601217, 37.058334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774631, 0.631927, 0.024786,
		-0.268918, -0.364613, 0.891482,
		0.572389, 0.683904, 0.452377,
		33.894039, 30.806389, 37.194046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053593, 30.708797, 37.089993>,  <33.493366, 30.327656, 36.877384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053593, 30.708797, 37.089993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381775, 30.936817, 37.107430>,  <33.578686, 31.073629, 37.117889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381775, 30.936817, 37.107430>,  <33.053593, 30.708797, 37.089993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381775, 30.936817, 37.107430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545477, 0.803357, -0.238898,
		-0.171201, 0.172228, 0.970066,
		0.820454, 0.570048, 0.043589,
		33.627911, 31.107832, 37.120506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077675, 31.284637, 37.508053>,  <33.053593, 30.708797, 37.089993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077675, 31.284637, 37.508053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334812, 31.378117, 37.216263>,  <33.489094, 31.434204, 37.041187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334812, 31.378117, 37.216263>,  <33.077675, 31.284637, 37.508053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334812, 31.378117, 37.216263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538614, 0.815043, -0.213542,
		0.544649, 0.530180, 0.649820,
		0.642847, 0.233697, -0.729475,
		33.527668, 31.448225, 36.997421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105804, 31.977329, 37.594173>,  <33.077675, 31.284637, 37.508053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105804, 31.977329, 37.594173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194626, 31.910889, 37.209862>,  <33.247921, 31.871023, 36.979275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194626, 31.910889, 37.209862>,  <33.105804, 31.977329, 37.594173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194626, 31.910889, 37.209862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511355, 0.819157, -0.259803,
		0.830185, 0.548991, 0.096961,
		0.222056, -0.166103, -0.960781,
		33.261242, 31.861057, 36.921627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640110, 32.359028, 37.225315>,  <33.105804, 31.977329, 37.594173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640110, 32.359028, 37.225315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339859, 32.253803, 36.982876>,  <33.159710, 32.190666, 36.837410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339859, 32.253803, 36.982876>,  <33.640110, 32.359028, 37.225315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339859, 32.253803, 36.982876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178191, 0.963933, -0.197690,
		0.636247, -0.040389, -0.770428,
		-0.750625, -0.263063, -0.606102,
		33.114670, 32.174885, 36.801044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406578, 32.670757, 37.831337>,  <33.640110, 32.359028, 37.225315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406578, 32.670757, 37.831337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457798, 32.757160, 37.444153>,  <33.488529, 32.809002, 37.211842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457798, 32.757160, 37.444153>,  <33.406578, 32.670757, 37.831337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457798, 32.757160, 37.444153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963598, -0.203866, -0.172967,
		-0.234696, 0.954871, 0.182041,
		0.128049, 0.216009, -0.967958,
		33.496212, 32.821964, 37.153767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779739, 33.243980, 37.698524>,  <33.406578, 32.670757, 37.831337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779739, 33.243980, 37.698524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979153, 32.987373, 37.465313>,  <34.098801, 32.833412, 37.325386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979153, 32.987373, 37.465313>,  <33.779739, 33.243980, 37.698524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979153, 32.987373, 37.465313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099870, 0.625588, -0.773735,
		0.861098, 0.443961, 0.247809,
		0.498534, -0.641513, -0.583031,
		34.128712, 32.794918, 37.290405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256672, 33.567371, 37.291981>,  <33.779739, 33.243980, 37.698524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256672, 33.567371, 37.291981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192650, 33.231606, 37.084225>,  <34.154236, 33.030148, 36.959572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192650, 33.231606, 37.084225>,  <34.256672, 33.567371, 37.291981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192650, 33.231606, 37.084225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172805, 0.541873, -0.822504,
		0.971864, -0.041895, -0.231786,
		-0.160057, -0.839416, -0.519387,
		34.144634, 32.979782, 36.928410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692894, 33.593700, 36.580875>,  <34.256672, 33.567371, 37.291981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692894, 33.593700, 36.580875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352039, 33.384567, 36.571846>,  <34.147526, 33.259087, 36.566429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352039, 33.384567, 36.571846>,  <34.692894, 33.593700, 36.580875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352039, 33.384567, 36.571846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314705, 0.546435, -0.776124,
		0.418117, -0.654261, -0.630176,
		-0.852138, -0.522830, -0.022574,
		34.096397, 33.227718, 36.565075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729504, 33.545357, 35.790554>,  <34.692894, 33.593700, 36.580875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729504, 33.545357, 35.790554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580021, 33.343967, 35.478951>,  <34.490330, 33.223133, 35.291988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580021, 33.343967, 35.478951>,  <34.729504, 33.545357, 35.790554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580021, 33.343967, 35.478951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829316, -0.557520, -0.037515,
		-0.415427, -0.660066, 0.625886,
		-0.373706, -0.503472, -0.779012,
		34.467911, 33.192924, 35.245247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686180, 32.841808, 35.989460>,  <34.729504, 33.545357, 35.790554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686180, 32.841808, 35.989460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745338, 32.924641, 35.602627>,  <34.780834, 32.974342, 35.370529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745338, 32.924641, 35.602627>,  <34.686180, 32.841808, 35.989460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745338, 32.924641, 35.602627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906129, -0.420202, 0.048597,
		-0.396305, -0.883485, -0.249792,
		0.147898, 0.207084, -0.967079,
		34.789707, 32.986767, 35.312504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801197, 32.239674, 35.568462>,  <34.686180, 32.841808, 35.989460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801197, 32.239674, 35.568462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007133, 32.554520, 35.432583>,  <35.130695, 32.743427, 35.351055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007133, 32.554520, 35.432583>,  <34.801197, 32.239674, 35.568462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007133, 32.554520, 35.432583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843476, -0.535921, 0.036575,
		-0.153265, -0.305362, -0.939821,
		0.514838, 0.787111, -0.339703,
		35.161587, 32.790653, 35.330673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396706, 31.768696, 35.603775>,  <34.801197, 32.239674, 35.568462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396706, 31.768696, 35.603775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132702, 31.482445, 35.695213>,  <34.974300, 31.310694, 35.750076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132702, 31.482445, 35.695213>,  <35.396706, 31.768696, 35.603775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132702, 31.482445, 35.695213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004874, -0.308357, -0.951258,
		0.751238, -0.626729, 0.207008,
		-0.660014, -0.715630, 0.228595,
		34.934696, 31.267756, 35.763790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618240, 31.113094, 35.511940>,  <35.396706, 31.768696, 35.603775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618240, 31.113094, 35.511940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227600, 31.138786, 35.429844>,  <34.993217, 31.154202, 35.380585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227600, 31.138786, 35.429844>,  <35.618240, 31.113094, 35.511940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227600, 31.138786, 35.429844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183556, -0.248338, -0.951123,
		-0.112060, -0.966542, 0.230737,
		-0.976601, 0.064230, -0.205243,
		34.934620, 31.158056, 35.368271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292458, 30.466053, 35.292580>,  <35.618240, 31.113094, 35.511940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292458, 30.466053, 35.292580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067402, 30.762957, 35.146984>,  <34.932369, 30.941099, 35.059628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067402, 30.762957, 35.146984>,  <35.292458, 30.466053, 35.292580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067402, 30.762957, 35.146984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304250, -0.223468, -0.926009,
		-0.768677, -0.631757, -0.100099,
		-0.562644, 0.742257, -0.363987,
		34.898609, 30.985634, 35.037788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939587, 30.154493, 34.702587>,  <35.292458, 30.466053, 35.292580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939587, 30.154493, 34.702587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954010, 30.549679, 34.642422>,  <34.962666, 30.786791, 34.606323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954010, 30.549679, 34.642422>,  <34.939587, 30.154493, 34.702587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954010, 30.549679, 34.642422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286067, -0.154417, -0.945686,
		-0.957531, -0.008929, -0.288192,
		0.036058, 0.987965, -0.150413,
		34.964828, 30.846069, 34.597298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443676, 30.344795, 34.132889>,  <34.939587, 30.154493, 34.702587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443676, 30.344795, 34.132889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701378, 30.649668, 34.158245>,  <34.855999, 30.832592, 34.173458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701378, 30.649668, 34.158245>,  <34.443676, 30.344795, 34.132889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701378, 30.649668, 34.158245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225985, -0.110522, -0.967841,
		-0.730666, 0.637857, -0.243446,
		0.644250, 0.762184, 0.063391,
		34.894653, 30.878323, 34.177261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424286, 30.625313, 33.537884>,  <34.443676, 30.344795, 34.132889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424286, 30.625313, 33.537884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764652, 30.788370, 33.670406>,  <34.968872, 30.886204, 33.749920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764652, 30.788370, 33.670406>,  <34.424286, 30.625313, 33.537884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764652, 30.788370, 33.670406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320152, 0.097577, -0.942328,
		-0.416460, 0.907914, -0.047477,
		0.850920, 0.407642, 0.331307,
		35.019928, 30.910662, 33.769798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561699, 31.188217, 33.011517>,  <34.424286, 30.625313, 33.537884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561699, 31.188217, 33.011517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914822, 31.148104, 33.195076>,  <35.126698, 31.124037, 33.305210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914822, 31.148104, 33.195076>,  <34.561699, 31.188217, 33.011517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914822, 31.148104, 33.195076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466796, 0.078313, -0.880891,
		0.052399, 0.991872, 0.115947,
		0.882811, -0.100281, 0.458898,
		35.179665, 31.118019, 33.332745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970177, 31.714201, 32.683853>,  <34.561699, 31.188217, 33.011517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970177, 31.714201, 32.683853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229622, 31.454353, 32.842495>,  <35.385288, 31.298445, 32.937679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229622, 31.454353, 32.842495>,  <34.970177, 31.714201, 32.683853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229622, 31.454353, 32.842495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572281, 0.072709, -0.816828,
		0.501790, 0.756775, 0.418925,
		0.648615, -0.649619, 0.396603,
		35.424206, 31.259468, 32.961475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608654, 32.002621, 32.580162>,  <34.970177, 31.714201, 32.683853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608654, 32.002621, 32.580162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672478, 31.610292, 32.624928>,  <35.710773, 31.374895, 32.651787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672478, 31.610292, 32.624928>,  <35.608654, 32.002621, 32.580162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672478, 31.610292, 32.624928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611932, 0.009308, -0.790856,
		0.774649, 0.194672, 0.601683,
		0.159558, -0.980824, 0.111916,
		35.720345, 31.316046, 32.658501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371616, 31.893990, 32.517284>,  <35.608654, 32.002621, 32.580162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371616, 31.893990, 32.517284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180470, 31.549124, 32.449974>,  <36.065781, 31.342205, 32.409588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180470, 31.549124, 32.449974>,  <36.371616, 31.893990, 32.517284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180470, 31.549124, 32.449974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470796, -0.089646, -0.877676,
		0.741616, -0.498634, 0.448742,
		-0.477867, -0.862164, -0.168272,
		36.037109, 31.290474, 32.399494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979893, 31.419355, 32.391518>,  <36.371616, 31.893990, 32.517284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979893, 31.419355, 32.391518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637569, 31.292768, 32.227837>,  <36.432175, 31.216816, 32.129627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637569, 31.292768, 32.227837>,  <36.979893, 31.419355, 32.391518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637569, 31.292768, 32.227837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455348, -0.085488, -0.886200,
		0.245473, -0.944743, 0.217265,
		-0.855804, -0.316469, -0.409202,
		36.380829, 31.197828, 32.105076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231655, 30.834221, 32.036583>,  <36.979893, 31.419355, 32.391518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231655, 30.834221, 32.036583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860767, 30.848862, 31.887489>,  <36.638237, 30.857645, 31.798033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860767, 30.848862, 31.887489>,  <37.231655, 30.834221, 32.036583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860767, 30.848862, 31.887489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373475, 0.164893, -0.912867,
		0.028049, -0.985632, -0.166561,
		-0.927216, 0.036601, -0.372734,
		36.582603, 30.859842, 31.775669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121601, 30.272072, 31.711174>,  <37.231655, 30.834221, 32.036583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121601, 30.272072, 31.711174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865185, 30.531607, 31.547184>,  <36.711334, 30.687328, 31.448790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865185, 30.531607, 31.547184>,  <37.121601, 30.272072, 31.711174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865185, 30.531607, 31.547184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400547, -0.172836, -0.899828,
		-0.654701, -0.741038, -0.149096,
		-0.641038, 0.648838, -0.409976,
		36.672874, 30.726257, 31.424191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815166, 29.901760, 31.150097>,  <37.121601, 30.272072, 31.711174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815166, 29.901760, 31.150097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754082, 30.292337, 31.089121>,  <36.717430, 30.526684, 31.052536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754082, 30.292337, 31.089121>,  <36.815166, 29.901760, 31.150097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754082, 30.292337, 31.089121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319808, -0.097122, -0.942491,
		-0.935095, -0.192680, -0.297443,
		-0.152711, 0.976443, -0.152439,
		36.708267, 30.585270, 31.043388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302608, 29.952435, 30.688555>,  <36.815166, 29.901760, 31.150097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302608, 29.952435, 30.688555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519173, 30.288429, 30.674147>,  <36.649109, 30.490026, 30.665503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519173, 30.288429, 30.674147>,  <36.302608, 29.952435, 30.688555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519173, 30.288429, 30.674147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138856, -0.131589, -0.981531,
		-0.829215, 0.526407, -0.187881,
		0.541408, 0.839988, -0.036021,
		36.681595, 30.540426, 30.663340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180328, 30.253189, 30.068302>,  <36.302608, 29.952435, 30.688555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180328, 30.253189, 30.068302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502270, 30.473524, 30.156651>,  <36.695435, 30.605726, 30.209660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502270, 30.473524, 30.156651>,  <36.180328, 30.253189, 30.068302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502270, 30.473524, 30.156651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241200, 0.036427, -0.969791,
		-0.542245, 0.833816, -0.103544,
		0.804855, 0.550840, 0.220869,
		36.743725, 30.638777, 30.222912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100266, 30.835203, 29.618605>,  <36.180328, 30.253189, 30.068302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100266, 30.835203, 29.618605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475761, 30.795076, 29.750486>,  <36.701057, 30.771000, 29.829617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475761, 30.795076, 29.750486>,  <36.100266, 30.835203, 29.618605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475761, 30.795076, 29.750486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306389, -0.195071, -0.931704,
		0.157782, 0.975645, -0.152384,
		0.938739, -0.100318, 0.329706,
		36.757381, 30.764980, 29.849398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444355, 31.318001, 29.310812>,  <36.100266, 30.835203, 29.618605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444355, 31.318001, 29.310812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740326, 31.057449, 29.377995>,  <36.917908, 30.901117, 29.418304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740326, 31.057449, 29.377995>,  <36.444355, 31.318001, 29.310812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740326, 31.057449, 29.377995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203834, -0.020835, -0.978784,
		0.641060, 0.758465, 0.117357,
		0.739928, -0.651381, 0.167958,
		36.962303, 30.862036, 29.428381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049885, 31.623539, 29.002518>,  <36.444355, 31.318001, 29.310812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049885, 31.623539, 29.002518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133743, 31.234509, 29.042807>,  <37.184059, 31.001091, 29.066980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133743, 31.234509, 29.042807>,  <37.049885, 31.623539, 29.002518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133743, 31.234509, 29.042807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325868, -0.027623, -0.945012,
		0.921878, 0.230939, 0.311140,
		0.209645, -0.972576, 0.100721,
		37.196636, 30.942736, 29.073023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710808, 31.575447, 28.741207>,  <37.049885, 31.623539, 29.002518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710808, 31.575447, 28.741207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558311, 31.206545, 28.715603>,  <37.466816, 30.985203, 28.700241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558311, 31.206545, 28.715603>,  <37.710808, 31.575447, 28.741207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558311, 31.206545, 28.715603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416764, -0.109651, -0.902377,
		0.825206, -0.370698, 0.426167,
		-0.381239, -0.922258, -0.064010,
		37.443939, 30.929867, 28.696400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204750, 31.210665, 28.379229>,  <37.710808, 31.575447, 28.741207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204750, 31.210665, 28.379229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863548, 31.006300, 28.336624>,  <37.658825, 30.883680, 28.311062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863548, 31.006300, 28.336624>,  <38.204750, 31.210665, 28.379229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863548, 31.006300, 28.336624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171596, -0.081820, -0.981764,
		0.492880, -0.855731, 0.157463,
		-0.853009, -0.510912, -0.106512,
		37.607647, 30.853027, 28.304670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327637, 30.686378, 27.863028>,  <38.204750, 31.210665, 28.379229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327637, 30.686378, 27.863028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931366, 30.631962, 27.860281>,  <37.693604, 30.599312, 27.858633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931366, 30.631962, 27.860281>,  <38.327637, 30.686378, 27.863028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931366, 30.631962, 27.860281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019434, -0.091270, -0.995637,
		0.134820, -0.986490, 0.093063,
		-0.990679, -0.136040, -0.006866,
		37.634163, 30.591150, 27.858221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186516, 30.018990, 27.419220>,  <38.327637, 30.686378, 27.863028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186516, 30.018990, 27.419220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863098, 30.254082, 27.430702>,  <37.669048, 30.395138, 27.437592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863098, 30.254082, 27.430702>,  <38.186516, 30.018990, 27.419220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863098, 30.254082, 27.430702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120641, -0.117826, -0.985679,
		-0.575933, -0.800430, 0.166172,
		-0.808546, 0.587733, 0.028704,
		37.620533, 30.430401, 27.439314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713070, 29.716337, 27.046591>,  <38.186516, 30.018990, 27.419220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713070, 29.716337, 27.046591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520462, 30.066881, 27.042042>,  <37.404896, 30.277208, 27.039312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520462, 30.066881, 27.042042>,  <37.713070, 29.716337, 27.046591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520462, 30.066881, 27.042042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027963, -0.028333, -0.999207,
		-0.875987, -0.480824, 0.038148,
		-0.481524, 0.876360, -0.011374,
		37.376003, 30.329788, 27.038630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014050, 29.671770, 26.596807>,  <37.713070, 29.716337, 27.046591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014050, 29.671770, 26.596807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146709, 30.048586, 26.617088>,  <37.226307, 30.274675, 26.629257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146709, 30.048586, 26.617088>,  <37.014050, 29.671770, 26.596807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146709, 30.048586, 26.617088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099846, 0.088493, -0.991060,
		-0.938103, 0.323626, 0.123407,
		0.331654, 0.942038, 0.050703,
		37.246204, 30.331198, 26.632299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508759, 29.989231, 26.198059>,  <37.014050, 29.671770, 26.596807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508759, 29.989231, 26.198059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806217, 30.255413, 26.223854>,  <36.984692, 30.415123, 26.239330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806217, 30.255413, 26.223854>,  <36.508759, 29.989231, 26.198059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806217, 30.255413, 26.223854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091375, 0.196712, -0.976194,
		-0.662299, 0.720051, 0.207091,
		0.743647, 0.665456, 0.064487,
		37.029312, 30.455050, 26.243200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308029, 30.508976, 25.808027>,  <36.508759, 29.989231, 26.198059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308029, 30.508976, 25.808027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706600, 30.535410, 25.829031>,  <36.945744, 30.551271, 25.841633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706600, 30.535410, 25.829031>,  <36.308029, 30.508976, 25.808027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706600, 30.535410, 25.829031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045289, 0.106370, -0.993295,
		-0.071229, 0.992128, 0.102997,
		0.996431, 0.066087, 0.052509,
		37.005531, 30.555237, 25.844784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564335, 31.147724, 25.476210>,  <36.308029, 30.508976, 25.808027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564335, 31.147724, 25.476210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873920, 30.895111, 25.457708>,  <37.059673, 30.743544, 25.446608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873920, 30.895111, 25.457708>,  <36.564335, 31.147724, 25.476210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873920, 30.895111, 25.457708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160811, 0.266678, -0.950275,
		0.612466, 0.728044, 0.307958,
		0.773967, -0.631534, -0.046254,
		37.106110, 30.705650, 25.443832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936619, 31.457411, 24.941195>,  <36.564335, 31.147724, 25.476210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936619, 31.457411, 24.941195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128338, 31.109159, 24.985525>,  <37.243370, 30.900209, 25.012123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128338, 31.109159, 24.985525>,  <36.936619, 31.457411, 24.941195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128338, 31.109159, 24.985525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596853, 0.230760, -0.768450,
		0.643459, 0.434464, 0.630239,
		0.479298, -0.870626, 0.110826,
		37.272129, 30.847971, 25.018772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690865, 31.559284, 24.874695>,  <36.936619, 31.457411, 24.941195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690865, 31.559284, 24.874695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653896, 31.167292, 24.804159>,  <37.631718, 30.932096, 24.761837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653896, 31.167292, 24.804159>,  <37.690865, 31.559284, 24.874695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653896, 31.167292, 24.804159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548386, 0.097725, -0.830495,
		0.831103, -0.173455, 0.528377,
		-0.092418, -0.979981, -0.176340,
		37.626171, 30.873297, 24.751257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265377, 31.399504, 24.612843>,  <37.690865, 31.559284, 24.874695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265377, 31.399504, 24.612843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065655, 31.066839, 24.515652>,  <37.945820, 30.867241, 24.457338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065655, 31.066839, 24.515652>,  <38.265377, 31.399504, 24.612843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065655, 31.066839, 24.515652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560325, -0.096050, -0.822685,
		0.660855, -0.546916, 0.513958,
		-0.499306, -0.831659, -0.242976,
		37.915863, 30.817341, 24.442759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792747, 30.847916, 24.434658>,  <38.265377, 31.399504, 24.612843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792747, 30.847916, 24.434658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440769, 30.777954, 24.257978>,  <38.229580, 30.735977, 24.151972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440769, 30.777954, 24.257978>,  <38.792747, 30.847916, 24.434658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440769, 30.777954, 24.257978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432870, 0.087881, -0.897162,
		0.195733, -0.980656, -0.001621,
		-0.879950, -0.174903, -0.441697,
		38.176785, 30.725483, 24.125469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956543, 30.460503, 23.935810>,  <38.792747, 30.847916, 24.434658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956543, 30.460503, 23.935810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588795, 30.561672, 23.815285>,  <38.368145, 30.622374, 23.742970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588795, 30.561672, 23.815285>,  <38.956543, 30.460503, 23.935810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588795, 30.561672, 23.815285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321772, 0.042826, -0.945848,
		-0.226326, -0.966537, -0.120758,
		-0.919369, 0.252927, -0.301311,
		38.312984, 30.637550, 23.724892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762840, 30.036501, 23.233431>,  <38.956543, 30.460503, 23.935810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762840, 30.036501, 23.233431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521996, 30.355530, 23.248079>,  <38.377487, 30.546947, 23.256868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521996, 30.355530, 23.248079>,  <38.762840, 30.036501, 23.233431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521996, 30.355530, 23.248079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221263, 0.210759, -0.952168,
		-0.767139, -0.565210, -0.303374,
		-0.602114, 0.797570, 0.036621,
		38.341362, 30.594801, 23.259066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369545, 29.995338, 22.642128>,  <38.762840, 30.036501, 23.233431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369545, 29.995338, 22.642128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313560, 30.379177, 22.739769>,  <38.279968, 30.609480, 22.798353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313560, 30.379177, 22.739769>,  <38.369545, 29.995338, 22.642128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313560, 30.379177, 22.739769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212096, 0.269864, -0.939249,
		-0.967174, -0.079688, -0.241298,
		-0.139965, 0.959595, 0.244104,
		38.271572, 30.667055, 22.813000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932831, 30.292732, 22.201345>,  <38.369545, 29.995338, 22.642128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932831, 30.292732, 22.201345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146557, 30.596273, 22.350290>,  <38.274792, 30.778399, 22.439657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146557, 30.596273, 22.350290>,  <37.932831, 30.292732, 22.201345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146557, 30.596273, 22.350290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306534, 0.236579, -0.921991,
		-0.787749, 0.606771, -0.106208,
		0.534311, 0.758854, 0.372361,
		38.306850, 30.823929, 22.461998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820477, 30.875919, 21.756451>,  <37.932831, 30.292732, 22.201345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820477, 30.875919, 21.756451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157307, 30.999050, 21.933605>,  <38.359406, 31.072927, 22.039898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157307, 30.999050, 21.933605>,  <37.820477, 30.875919, 21.756451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157307, 30.999050, 21.933605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288928, 0.435926, -0.852343,
		-0.455438, 0.845702, 0.278145,
		0.842079, 0.307826, 0.442884,
		38.409931, 31.091398, 22.066471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911350, 31.696396, 21.640482>,  <37.820477, 30.875919, 21.756451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911350, 31.696396, 21.640482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268307, 31.540628, 21.731686>,  <38.482483, 31.447168, 21.786407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268307, 31.540628, 21.731686>,  <37.911350, 31.696396, 21.640482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268307, 31.540628, 21.731686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440124, 0.639556, -0.630285,
		0.099620, 0.662814, 0.742128,
		0.892394, -0.389417, 0.228008,
		38.536026, 31.423803, 21.800089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362041, 32.205490, 21.654922>,  <37.911350, 31.696396, 21.640482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362041, 32.205490, 21.654922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617886, 31.898705, 21.634243>,  <38.771393, 31.714634, 21.621836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617886, 31.898705, 21.634243>,  <38.362041, 32.205490, 21.654922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617886, 31.898705, 21.634243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464557, 0.439250, -0.768926,
		0.612444, 0.467794, 0.637245,
		0.639608, -0.766960, -0.051699,
		38.809769, 31.668617, 21.618732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934414, 32.531452, 21.443325>,  <38.362041, 32.205490, 21.654922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934414, 32.531452, 21.443325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988987, 32.148937, 21.339863>,  <39.021729, 31.919428, 21.277786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988987, 32.148937, 21.339863>,  <38.934414, 32.531452, 21.443325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988987, 32.148937, 21.339863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375905, 0.291542, -0.879601,
		0.916560, 0.022774, 0.399248,
		0.136429, -0.956287, -0.258655,
		39.029915, 31.862051, 21.262266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557907, 32.583378, 21.067427>,  <38.934414, 32.531452, 21.443325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557907, 32.583378, 21.067427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416920, 32.223717, 20.963659>,  <39.332329, 32.007919, 20.901400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416920, 32.223717, 20.963659>,  <39.557907, 32.583378, 21.067427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416920, 32.223717, 20.963659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424328, 0.093520, -0.900666,
		0.834094, -0.427533, 0.348572,
		-0.352466, -0.899149, -0.259418,
		39.311180, 31.953972, 20.885834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078510, 32.327122, 20.761824>,  <39.557907, 32.583378, 21.067427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078510, 32.327122, 20.761824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748825, 32.145134, 20.626965>,  <39.551014, 32.035942, 20.546049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748825, 32.145134, 20.626965>,  <40.078510, 32.327122, 20.761824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748825, 32.145134, 20.626965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369178, 0.019735, -0.929149,
		0.429392, -0.890286, 0.151700,
		-0.824215, -0.454974, -0.337148,
		39.501560, 32.008640, 20.525820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250172, 31.766439, 20.354454>,  <40.078510, 32.327122, 20.761824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250172, 31.766439, 20.354454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871685, 31.844496, 20.251228>,  <39.644592, 31.891329, 20.189293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871685, 31.844496, 20.251228>,  <40.250172, 31.766439, 20.354454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871685, 31.844496, 20.251228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296502, 0.203818, -0.933030,
		-0.129474, -0.959363, -0.250716,
		-0.946215, 0.195141, -0.258064,
		39.587822, 31.903038, 20.173809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084949, 31.321230, 19.773260>,  <40.250172, 31.766439, 20.354454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084949, 31.321230, 19.773260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811665, 31.613218, 19.765572>,  <39.647694, 31.788410, 19.760958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811665, 31.613218, 19.765572>,  <40.084949, 31.321230, 19.773260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811665, 31.613218, 19.765572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154179, 0.118471, -0.980914,
		-0.713760, -0.673134, -0.193486,
		-0.683210, 0.729969, -0.019223,
		39.606701, 31.832209, 19.759804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475086, 31.162489, 19.377464>,  <40.084949, 31.321230, 19.773260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475086, 31.162489, 19.377464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503185, 31.559900, 19.341755>,  <39.520042, 31.798347, 19.320330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503185, 31.559900, 19.341755>,  <39.475086, 31.162489, 19.377464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503185, 31.559900, 19.341755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098973, -0.082110, -0.991697,
		-0.992608, 0.078498, 0.092564,
		0.070246, 0.993527, -0.089273,
		39.524258, 31.857958, 19.314974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943584, 31.371429, 18.943752>,  <39.475086, 31.162489, 19.377464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943584, 31.371429, 18.943752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171616, 31.699978, 18.936140>,  <39.308434, 31.897106, 18.931572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171616, 31.699978, 18.936140>,  <38.943584, 31.371429, 18.943752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171616, 31.699978, 18.936140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198021, 0.114883, -0.973442,
		-0.797370, 0.558707, 0.228141,
		0.570078, 0.821370, -0.019032,
		39.342640, 31.946388, 18.930431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646084, 31.953171, 18.619282>,  <38.943584, 31.371429, 18.943752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646084, 31.953171, 18.619282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038418, 31.967094, 18.542591>,  <39.273819, 31.975449, 18.496576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038418, 31.967094, 18.542591>,  <38.646084, 31.953171, 18.619282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038418, 31.967094, 18.542591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192857, 0.032674, -0.980683,
		-0.027872, 0.998860, 0.038760,
		0.980831, 0.034808, -0.191727,
		39.332668, 31.977537, 18.485073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377052, 32.516624, 18.351240>,  <38.646084, 31.953171, 18.619282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377052, 32.516624, 18.351240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238850, 32.876743, 18.245335>,  <38.155930, 33.092815, 18.181791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238850, 32.876743, 18.245335>,  <38.377052, 32.516624, 18.351240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238850, 32.876743, 18.245335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062213, -0.259543, -0.963726,
		-0.936353, -0.349441, 0.033663,
		-0.345502, 0.900293, -0.264764,
		38.135201, 33.146832, 18.165905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740017, 32.469616, 18.035835>,  <38.377052, 32.516624, 18.351240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740017, 32.469616, 18.035835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916809, 32.790382, 17.875040>,  <38.022884, 32.982841, 17.778563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916809, 32.790382, 17.875040>,  <37.740017, 32.469616, 18.035835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916809, 32.790382, 17.875040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032845, -0.433366, -0.900620,
		-0.896425, 0.411257, -0.165199,
		0.441977, 0.801912, -0.401988,
		38.049400, 33.030956, 17.754444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015949, 32.711597, 17.369074>,  <37.740017, 32.469616, 18.035835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015949, 32.711597, 17.369074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019875, 32.644455, 16.974770>,  <38.022228, 32.604172, 16.738186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019875, 32.644455, 16.974770>,  <38.015949, 32.711597, 17.369074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019875, 32.644455, 16.974770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974427, 0.222921, -0.028258,
		0.224491, -0.960277, 0.165749,
		0.009814, -0.167854, -0.985763,
		38.022820, 32.594097, 16.679041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673851, 32.615734, 17.277489>,  <38.015949, 32.711597, 17.369074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673851, 32.615734, 17.277489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530426, 32.649586, 16.905624>,  <38.444370, 32.669895, 16.682507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530426, 32.649586, 16.905624>,  <38.673851, 32.615734, 17.277489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530426, 32.649586, 16.905624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898913, 0.299890, -0.319408,
		0.251766, -0.950213, -0.183600,
		-0.358566, 0.084625, -0.929661,
		38.422855, 32.674973, 16.626726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188751, 33.052895, 17.267275>,  <38.673851, 32.615734, 17.277489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188751, 33.052895, 17.267275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934212, 33.288105, 17.067560>,  <38.781487, 33.429230, 16.947731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934212, 33.288105, 17.067560>,  <39.188751, 33.052895, 17.267275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934212, 33.288105, 17.067560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554836, 0.100777, 0.825834,
		0.535926, 0.802541, 0.262128,
		-0.636349, 0.588024, -0.499288,
		38.743305, 33.464512, 16.917774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943016, 33.696186, 17.701250>,  <39.188751, 33.052895, 17.267275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943016, 33.696186, 17.701250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649437, 33.587605, 17.452211>,  <38.473289, 33.522453, 17.302788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649437, 33.587605, 17.452211>,  <38.943016, 33.696186, 17.701250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649437, 33.587605, 17.452211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658420, 0.059335, 0.750308,
		-0.166736, 0.960619, -0.222282,
		-0.733950, -0.271458, -0.622598,
		38.429253, 33.506168, 17.265432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365524, 34.281391, 17.600693>,  <38.943016, 33.696186, 17.701250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365524, 34.281391, 17.600693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271591, 33.892647, 17.608009>,  <38.215233, 33.659401, 17.612400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271591, 33.892647, 17.608009>,  <38.365524, 34.281391, 17.600693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271591, 33.892647, 17.608009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445929, 0.124432, 0.886377,
		-0.863714, 0.199991, -0.462603,
		-0.234830, -0.971864, 0.018292,
		38.201141, 33.601086, 17.613497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568676, 34.213985, 17.768898>,  <38.365524, 34.281391, 17.600693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568676, 34.213985, 17.768898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786877, 33.909119, 17.908342>,  <37.917797, 33.726200, 17.992010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786877, 33.909119, 17.908342>,  <37.568676, 34.213985, 17.768898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786877, 33.909119, 17.908342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394355, 0.133611, 0.909193,
		-0.739533, -0.633446, -0.227678,
		0.545505, -0.762164, 0.348612,
		37.950527, 33.680470, 18.012926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021606, 33.867428, 18.105934>,  <37.568676, 34.213985, 17.768898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021606, 33.867428, 18.105934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372368, 33.722157, 18.231882>,  <37.582825, 33.634995, 18.307451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372368, 33.722157, 18.231882>,  <37.021606, 33.867428, 18.105934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372368, 33.722157, 18.231882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402693, -0.197401, 0.893796,
		-0.262457, -0.910566, -0.319353,
		0.876901, -0.363184, 0.314869,
		37.635437, 33.613201, 18.326344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826168, 33.386486, 18.543552>,  <37.021606, 33.867428, 18.105934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826168, 33.386486, 18.543552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197609, 33.478752, 18.659826>,  <37.420471, 33.534111, 18.729589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197609, 33.478752, 18.659826>,  <36.826168, 33.386486, 18.543552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197609, 33.478752, 18.659826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273728, -0.103117, 0.956263,
		0.250556, -0.967553, -0.032614,
		0.928598, 0.230670, 0.290683,
		37.476189, 33.547955, 18.747030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886196, 33.083008, 19.183958>,  <36.826168, 33.386486, 18.543552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886196, 33.083008, 19.183958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212299, 33.314541, 19.191008>,  <37.407963, 33.453461, 19.195238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212299, 33.314541, 19.191008>,  <36.886196, 33.083008, 19.183958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212299, 33.314541, 19.191008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018681, -0.004131, 0.999817,
		0.578797, -0.815437, 0.007445,
		0.815258, 0.578831, 0.017624,
		37.456875, 33.488190, 19.196295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250935, 32.813190, 19.730803>,  <36.886196, 33.083008, 19.183958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250935, 32.813190, 19.730803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389549, 33.182674, 19.665482>,  <37.472717, 33.404366, 19.626289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389549, 33.182674, 19.665482>,  <37.250935, 32.813190, 19.730803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389549, 33.182674, 19.665482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013166, 0.169285, 0.985479,
		0.937945, -0.343653, 0.046502,
		0.346535, 0.923713, -0.163305,
		37.493511, 33.459789, 19.616489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587322, 32.831356, 20.262674>,  <37.250935, 32.813190, 19.730803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587322, 32.831356, 20.262674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584816, 33.220070, 20.168358>,  <37.583313, 33.453297, 20.111769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584816, 33.220070, 20.168358>,  <37.587322, 32.831356, 20.262674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584816, 33.220070, 20.168358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132892, 0.234513, 0.962987,
		0.991111, -0.025296, -0.130613,
		-0.006270, 0.971784, -0.235790,
		37.582935, 33.511604, 20.097620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200394, 33.272694, 20.566465>,  <37.587322, 32.831356, 20.262674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200394, 33.272694, 20.566465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884872, 33.516232, 20.532787>,  <37.695560, 33.662354, 20.512581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884872, 33.516232, 20.532787>,  <38.200394, 33.272694, 20.566465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884872, 33.516232, 20.532787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004505, 0.131251, 0.991339,
		0.614626, 0.782353, -0.100789,
		-0.788805, 0.608849, -0.084195,
		37.648232, 33.698887, 20.507528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374058, 33.772915, 21.093838>,  <38.200394, 33.272694, 20.566465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374058, 33.772915, 21.093838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991230, 33.862873, 21.020700>,  <37.761532, 33.916847, 20.976818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991230, 33.862873, 21.020700>,  <38.374058, 33.772915, 21.093838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991230, 33.862873, 21.020700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118873, 0.270770, 0.955276,
		0.264349, 0.936004, -0.232413,
		-0.957073, 0.224899, -0.182843,
		37.704109, 33.930344, 20.965847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173187, 34.521996, 21.339869>,  <38.374058, 33.772915, 21.093838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173187, 34.521996, 21.339869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822086, 34.330868, 21.325796>,  <37.611427, 34.216190, 21.317352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822086, 34.330868, 21.325796>,  <38.173187, 34.521996, 21.339869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822086, 34.330868, 21.325796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210199, 0.318071, 0.924471,
		-0.430541, 0.818852, -0.379625,
		-0.877753, -0.477820, -0.035179,
		37.558762, 34.187523, 21.315243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727203, 35.082279, 21.472328>,  <38.173187, 34.521996, 21.339869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727203, 35.082279, 21.472328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556667, 34.731346, 21.560444>,  <37.454346, 34.520786, 21.613314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556667, 34.731346, 21.560444>,  <37.727203, 35.082279, 21.472328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556667, 34.731346, 21.560444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073425, 0.276293, 0.958265,
		-0.901579, 0.392369, -0.182212,
		-0.426337, -0.877331, 0.220290,
		37.428768, 34.468147, 21.626532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082241, 35.210728, 21.955099>,  <37.727203, 35.082279, 21.472328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082241, 35.210728, 21.955099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162289, 34.819901, 21.984203>,  <37.210316, 34.585403, 22.001667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162289, 34.819901, 21.984203>,  <37.082241, 35.210728, 21.955099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162289, 34.819901, 21.984203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190984, 0.033939, 0.981006,
		-0.960977, -0.210214, -0.179812,
		0.200119, -0.977066, 0.072763,
		37.222324, 34.526779, 22.006033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507347, 34.947578, 22.350407>,  <37.082241, 35.210728, 21.955099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507347, 34.947578, 22.350407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823826, 34.708134, 22.400497>,  <37.013714, 34.564468, 22.430552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823826, 34.708134, 22.400497>,  <36.507347, 34.947578, 22.350407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823826, 34.708134, 22.400497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163439, -0.009645, 0.986506,
		-0.589322, -0.800984, -0.105467,
		0.791193, -0.598607, 0.125228,
		37.061184, 34.528553, 22.438066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287991, 34.326294, 22.829365>,  <36.507347, 34.947578, 22.350407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287991, 34.326294, 22.829365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684780, 34.375763, 22.839890>,  <36.922855, 34.405445, 22.846205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684780, 34.375763, 22.839890>,  <36.287991, 34.326294, 22.829365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684780, 34.375763, 22.839890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002659, -0.228466, 0.973548,
		0.126413, -0.965665, -0.226961,
		0.991974, 0.123672, 0.026313,
		36.982372, 34.412865, 22.847784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419136, 33.852791, 23.286789>,  <36.287991, 34.326294, 22.829365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419136, 33.852791, 23.286789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761829, 34.059090, 23.285307>,  <36.967445, 34.182869, 23.284418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761829, 34.059090, 23.285307>,  <36.419136, 33.852791, 23.286789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761829, 34.059090, 23.285307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070713, -0.110346, 0.991375,
		0.510888, -0.849606, -0.131007,
		0.856734, 0.515745, -0.003704,
		37.018848, 34.213814, 23.284195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756996, 33.423222, 23.680113>,  <36.419136, 33.852791, 23.286789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756996, 33.423222, 23.680113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924526, 33.785667, 23.656326>,  <37.025043, 34.003136, 23.642054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924526, 33.785667, 23.656326>,  <36.756996, 33.423222, 23.680113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924526, 33.785667, 23.656326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019700, 0.056407, 0.998214,
		0.907853, -0.419249, 0.005774,
		0.418826, 0.906118, -0.059469,
		37.050175, 34.057503, 23.638485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104492, 33.479519, 24.266701>,  <36.756996, 33.423222, 23.680113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104492, 33.479519, 24.266701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074039, 33.856083, 24.135279>,  <37.055767, 34.082020, 24.056425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074039, 33.856083, 24.135279>,  <37.104492, 33.479519, 24.266701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074039, 33.856083, 24.135279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050889, 0.332751, 0.941641,
		0.995799, 0.054965, -0.073239,
		-0.076128, 0.941412, -0.328556,
		37.051201, 34.138508, 24.036713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498268, 33.855278, 24.702070>,  <37.104492, 33.479519, 24.266701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498268, 33.855278, 24.702070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252819, 34.128284, 24.543257>,  <37.105549, 34.292088, 24.447969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252819, 34.128284, 24.543257>,  <37.498268, 33.855278, 24.702070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252819, 34.128284, 24.543257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186985, 0.362922, 0.912866,
		0.767140, 0.634395, -0.095076,
		-0.613623, 0.682518, -0.397034,
		37.068733, 34.333038, 24.424147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627441, 34.461422, 25.025288>,  <37.498268, 33.855278, 24.702070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627441, 34.461422, 25.025288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259377, 34.484848, 24.870436>,  <37.038536, 34.498901, 24.777525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259377, 34.484848, 24.870436>,  <37.627441, 34.461422, 25.025288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259377, 34.484848, 24.870436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356587, 0.282985, 0.890373,
		0.161695, 0.957335, -0.239510,
		-0.920163, 0.058562, -0.387130,
		36.983326, 34.502419, 24.754297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321171, 34.986698, 25.391768>,  <37.627441, 34.461422, 25.025288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321171, 34.986698, 25.391768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007050, 34.781837, 25.252625>,  <36.818577, 34.658920, 25.169140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007050, 34.781837, 25.252625>,  <37.321171, 34.986698, 25.391768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007050, 34.781837, 25.252625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552377, 0.325853, 0.767267,
		-0.279603, 0.794685, -0.538792,
		-0.785303, -0.512147, -0.347857,
		36.771458, 34.628193, 25.148268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756012, 35.492878, 25.431555>,  <37.321171, 34.986698, 25.391768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756012, 35.492878, 25.431555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591515, 35.128696, 25.413851>,  <36.492817, 34.910187, 25.403229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591515, 35.128696, 25.413851>,  <36.756012, 35.492878, 25.431555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591515, 35.128696, 25.413851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691449, 0.279944, 0.665981,
		-0.593953, 0.304481, -0.744655,
		-0.411240, -0.910452, -0.044259,
		36.468143, 34.855560, 25.400574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017815, 35.541538, 25.511843>,  <36.756012, 35.492878, 25.431555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017815, 35.541538, 25.511843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076622, 35.155193, 25.597166>,  <36.111908, 34.923386, 25.648359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076622, 35.155193, 25.597166>,  <36.017815, 35.541538, 25.511843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076622, 35.155193, 25.597166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644473, 0.070056, 0.761411,
		-0.750359, -0.249415, -0.612171,
		0.147021, -0.965859, 0.213309,
		36.120728, 34.865437, 25.661160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436253, 35.375950, 25.710890>,  <36.017815, 35.541538, 25.511843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436253, 35.375950, 25.710890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675381, 35.097904, 25.870602>,  <35.818855, 34.931076, 25.966429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675381, 35.097904, 25.870602>,  <35.436253, 35.375950, 25.710890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675381, 35.097904, 25.870602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515943, 0.047566, 0.855302,
		-0.613528, -0.717319, -0.330206,
		0.597818, -0.695119, 0.399279,
		35.854725, 34.889370, 25.990385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973770, 35.011677, 26.122093>,  <35.436253, 35.375950, 25.710890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973770, 35.011677, 26.122093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315346, 34.889999, 26.290977>,  <35.520290, 34.816994, 26.392309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315346, 34.889999, 26.290977>,  <34.973770, 35.011677, 26.122093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315346, 34.889999, 26.290977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468319, -0.095502, 0.878383,
		-0.226874, -0.947812, -0.224010,
		0.853936, -0.304190, 0.422212,
		35.571526, 34.798744, 26.417641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746796, 34.499699, 26.568495>,  <34.973770, 35.011677, 26.122093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746796, 34.499699, 26.568495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130676, 34.507389, 26.680645>,  <35.361004, 34.512001, 26.747934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130676, 34.507389, 26.680645>,  <34.746796, 34.499699, 26.568495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130676, 34.507389, 26.680645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258481, -0.331211, 0.907462,
		0.110306, -0.943361, -0.312894,
		0.959698, 0.019221, 0.280375,
		35.418587, 34.513157, 26.764757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984921, 33.851807, 26.823036>,  <34.746796, 34.499699, 26.568495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984921, 33.851807, 26.823036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200504, 34.134289, 27.006687>,  <35.329853, 34.303780, 27.116877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200504, 34.134289, 27.006687>,  <34.984921, 33.851807, 26.823036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200504, 34.134289, 27.006687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143605, -0.460049, 0.876203,
		0.830003, -0.538167, -0.146530,
		0.538955, 0.706209, 0.459126,
		35.362190, 34.346153, 27.144424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397995, 33.570637, 27.323423>,  <34.984921, 33.851807, 26.823036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397995, 33.570637, 27.323423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401440, 33.954983, 27.434172>,  <35.403507, 34.185593, 27.500622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401440, 33.954983, 27.434172>,  <35.397995, 33.570637, 27.323423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401440, 33.954983, 27.434172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233339, -0.267308, 0.934933,
		0.972357, -0.072656, 0.221906,
		0.008611, 0.960868, 0.276873,
		35.404022, 34.243244, 27.517233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852356, 33.593868, 27.991173>,  <35.397995, 33.570637, 27.323423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852356, 33.593868, 27.991173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595814, 33.900623, 28.000610>,  <35.441891, 34.084675, 28.006273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595814, 33.900623, 28.000610>,  <35.852356, 33.593868, 27.991173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595814, 33.900623, 28.000610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231934, -0.223099, 0.946802,
		0.731350, 0.601762, 0.320952,
		-0.641353, 0.766883, 0.023594,
		35.403408, 34.130688, 28.007689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871628, 33.780571, 28.762985>,  <35.852356, 33.593868, 27.991173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871628, 33.780571, 28.762985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565521, 33.985241, 28.606752>,  <35.381859, 34.108044, 28.513012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565521, 33.985241, 28.606752>,  <35.871628, 33.780571, 28.762985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565521, 33.985241, 28.606752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374338, 0.139876, 0.916682,
		0.523678, 0.847715, 0.084498,
		-0.765266, 0.511677, -0.390582,
		35.335941, 34.138744, 28.489578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917404, 34.392479, 29.076429>,  <35.871628, 33.780571, 28.762985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917404, 34.392479, 29.076429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542351, 34.319435, 28.958111>,  <35.317318, 34.275608, 28.887119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542351, 34.319435, 28.958111>,  <35.917404, 34.392479, 29.076429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542351, 34.319435, 28.958111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278463, -0.114807, 0.953560,
		-0.208087, 0.976460, 0.056798,
		-0.937634, -0.182608, -0.295798,
		35.261059, 34.264652, 28.869371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523090, 34.836494, 29.502497>,  <35.917404, 34.392479, 29.076429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523090, 34.836494, 29.502497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256561, 34.564537, 29.380018>,  <35.096645, 34.401363, 29.306530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256561, 34.564537, 29.380018>,  <35.523090, 34.836494, 29.502497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256561, 34.564537, 29.380018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414381, -0.003762, 0.910096,
		-0.619922, 0.733299, -0.279229,
		-0.666322, -0.679896, -0.306197,
		35.056664, 34.360569, 29.288158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886505, 35.151737, 29.706409>,  <35.523090, 34.836494, 29.502497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886505, 35.151737, 29.706409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838917, 34.754852, 29.691647>,  <34.810364, 34.516720, 29.682789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838917, 34.754852, 29.691647>,  <34.886505, 35.151737, 29.706409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838917, 34.754852, 29.691647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424287, 0.017197, 0.905364,
		-0.897679, 0.123368, -0.423029,
		-0.118968, -0.992212, -0.036906,
		34.803226, 34.457188, 29.680574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222198, 35.036350, 29.918743>,  <34.886505, 35.151737, 29.706409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222198, 35.036350, 29.918743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394123, 34.677273, 29.957558>,  <34.497276, 34.461826, 29.980846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394123, 34.677273, 29.957558>,  <34.222198, 35.036350, 29.918743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394123, 34.677273, 29.957558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387298, -0.086214, 0.917915,
		-0.815636, -0.432112, -0.384729,
		0.429811, -0.897689, 0.097037,
		34.523067, 34.407967, 29.986670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678299, 34.556866, 30.273380>,  <34.222198, 35.036350, 29.918743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678299, 34.556866, 30.273380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020454, 34.351482, 30.300741>,  <34.225746, 34.228252, 30.317158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020454, 34.351482, 30.300741>,  <33.678299, 34.556866, 30.273380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020454, 34.351482, 30.300741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297726, -0.379285, 0.876072,
		-0.423884, -0.769742, -0.477304,
		0.855384, -0.513458, 0.068400,
		34.277069, 34.197445, 30.321262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388222, 33.878067, 30.359566>,  <33.678299, 34.556866, 30.273380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388222, 33.878067, 30.359566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762947, 33.892948, 30.498703>,  <33.987782, 33.901875, 30.582186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762947, 33.892948, 30.498703>,  <33.388222, 33.878067, 30.359566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762947, 33.892948, 30.498703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323445, -0.286699, 0.901769,
		0.133272, -0.957298, -0.256551,
		0.936815, 0.037200, 0.347842,
		34.043991, 33.904110, 30.603056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480358, 33.230251, 30.734318>,  <33.388222, 33.878067, 30.359566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480358, 33.230251, 30.734318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777103, 33.453545, 30.882923>,  <33.955151, 33.587521, 30.972086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777103, 33.453545, 30.882923>,  <33.480358, 33.230251, 30.734318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777103, 33.453545, 30.882923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050371, -0.506085, 0.861012,
		0.668660, -0.657463, -0.347326,
		0.741860, 0.558229, 0.371515,
		33.999660, 33.621014, 30.994377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968410, 32.783035, 31.099558>,  <33.480358, 33.230251, 30.734318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968410, 32.783035, 31.099558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061481, 33.140465, 31.253126>,  <34.117325, 33.354923, 31.345266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061481, 33.140465, 31.253126>,  <33.968410, 32.783035, 31.099558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061481, 33.140465, 31.253126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007077, -0.393187, 0.919431,
		0.972529, -0.216644, -0.085160,
		0.232673, 0.893571, 0.383919,
		34.131283, 33.408535, 31.368301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535587, 32.680134, 31.622553>,  <33.968410, 32.783035, 31.099558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535587, 32.680134, 31.622553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338764, 33.019875, 31.698959>,  <34.220673, 33.223717, 31.744802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338764, 33.019875, 31.698959>,  <34.535587, 32.680134, 31.622553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338764, 33.019875, 31.698959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096953, -0.271513, 0.957539,
		0.865148, 0.452643, 0.215947,
		-0.492056, 0.849349, 0.191014,
		34.191147, 33.274681, 31.756264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877628, 33.027756, 32.181206>,  <34.535587, 32.680134, 31.622553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877628, 33.027756, 32.181206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507118, 33.178493, 32.181141>,  <34.284813, 33.268936, 32.181103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507118, 33.178493, 32.181141>,  <34.877628, 33.027756, 32.181206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507118, 33.178493, 32.181141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081461, -0.199810, 0.976442,
		0.367938, 0.904468, 0.215778,
		-0.926275, 0.376848, -0.000161,
		34.229237, 33.291550, 32.181091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905167, 33.414925, 32.848953>,  <34.877628, 33.027756, 32.181206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905167, 33.414925, 32.848953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531544, 33.333073, 32.731876>,  <34.307369, 33.283962, 32.661633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531544, 33.333073, 32.731876>,  <34.905167, 33.414925, 32.848953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531544, 33.333073, 32.731876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205980, -0.360817, 0.909606,
		-0.291739, 0.909911, 0.294874,
		-0.934056, -0.204630, -0.292688,
		34.251328, 33.271683, 32.644070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325260, 32.998600, 33.396416>,  <34.905167, 33.414925, 32.848953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325260, 32.998600, 33.396416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110641, 32.684952, 33.271660>,  <34.981873, 32.496761, 33.196808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110641, 32.684952, 33.271660>,  <35.325260, 32.998600, 33.396416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110641, 32.684952, 33.271660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765352, -0.296481, -0.571258,
		0.355467, -0.545208, 0.759204,
		-0.536544, -0.784122, -0.311887,
		34.949677, 32.449715, 33.178093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041386, 33.282146, 33.533844>,  <35.325260, 32.998600, 33.396416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041386, 33.282146, 33.533844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334496, 33.510521, 33.681938>,  <36.510361, 33.647545, 33.770794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334496, 33.510521, 33.681938>,  <36.041386, 33.282146, 33.533844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334496, 33.510521, 33.681938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126905, 0.419878, -0.898665,
		-0.668534, 0.705502, 0.235220,
		0.732774, 0.570937, 0.370234,
		36.554329, 33.681801, 33.793007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854076, 34.045242, 33.357376>,  <36.041386, 33.282146, 33.533844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854076, 34.045242, 33.357376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246677, 33.972164, 33.380295>,  <36.482239, 33.928318, 33.394047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246677, 33.972164, 33.380295>,  <35.854076, 34.045242, 33.357376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246677, 33.972164, 33.380295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144558, 0.510816, -0.847449,
		0.125557, 0.840053, 0.527775,
		0.981498, -0.182697, 0.057300,
		36.541126, 33.917355, 33.397484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043129, 34.642059, 33.027161>,  <35.854076, 34.045242, 33.357376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043129, 34.642059, 33.027161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366325, 34.406532, 33.018776>,  <36.560242, 34.265217, 33.013744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366325, 34.406532, 33.018776>,  <36.043129, 34.642059, 33.027161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366325, 34.406532, 33.018776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362554, 0.524918, -0.770075,
		0.464439, 0.614614, 0.637609,
		0.807991, -0.588821, -0.020961,
		36.608723, 34.229885, 33.012489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682510, 35.090137, 33.078072>,  <36.043129, 34.642059, 33.027161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682510, 35.090137, 33.078072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774193, 34.751293, 32.886295>,  <36.829205, 34.547985, 32.771229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774193, 34.751293, 32.886295>,  <36.682510, 35.090137, 33.078072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774193, 34.751293, 32.886295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474244, 0.527327, -0.704996,
		0.850033, -0.065782, 0.522606,
		0.229208, -0.847112, -0.479442,
		36.842957, 34.497158, 32.742462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236248, 35.344353, 32.742737>,  <36.682510, 35.090137, 33.078072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236248, 35.344353, 32.742737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123623, 35.008297, 32.557308>,  <37.056049, 34.806664, 32.446053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123623, 35.008297, 32.557308>,  <37.236248, 35.344353, 32.742737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123623, 35.008297, 32.557308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314131, 0.375785, -0.871841,
		0.906666, -0.391100, 0.158105,
		-0.281563, -0.840135, -0.463568,
		37.039154, 34.756256, 32.418236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734184, 35.265347, 32.273441>,  <37.236248, 35.344353, 32.742737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734184, 35.265347, 32.273441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443878, 35.031509, 32.128380>,  <37.269695, 34.891209, 32.041344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443878, 35.031509, 32.128380>,  <37.734184, 35.265347, 32.273441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443878, 35.031509, 32.128380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342978, 0.149501, -0.927370,
		0.596352, -0.797434, 0.092000,
		-0.725762, -0.584593, -0.362657,
		37.226151, 34.856133, 32.019581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022240, 34.678616, 31.826645>,  <37.734184, 35.265347, 32.273441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022240, 34.678616, 31.826645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642490, 34.756527, 31.728048>,  <37.414642, 34.803276, 31.668890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642490, 34.756527, 31.728048>,  <38.022240, 34.678616, 31.826645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642490, 34.756527, 31.728048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272126, 0.117775, -0.955027,
		-0.156993, -0.973750, -0.164817,
		-0.949369, 0.194784, -0.246493,
		37.357681, 34.814960, 31.654100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025612, 34.514137, 31.108404>,  <38.022240, 34.678616, 31.826645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025612, 34.514137, 31.108404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669842, 34.696323, 31.123726>,  <37.456379, 34.805637, 31.132919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669842, 34.696323, 31.123726>,  <38.025612, 34.514137, 31.108404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669842, 34.696323, 31.123726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027802, 0.137561, -0.990103,
		-0.456232, -0.879559, -0.135013,
		-0.889427, 0.455470, 0.038307,
		37.403015, 34.832966, 31.135218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607769, 34.265614, 30.552418>,  <38.025612, 34.514137, 31.108404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607769, 34.265614, 30.552418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472141, 34.629272, 30.649145>,  <37.390762, 34.847469, 30.707182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472141, 34.629272, 30.649145>,  <37.607769, 34.265614, 30.552418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472141, 34.629272, 30.649145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155439, 0.307655, -0.938715,
		-0.927830, -0.280706, -0.245635,
		-0.339074, 0.909149, 0.241819,
		37.370419, 34.902016, 30.721691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275196, 34.323883, 29.947725>,  <37.607769, 34.265614, 30.552418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275196, 34.323883, 29.947725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265381, 34.691479, 30.105131>,  <37.259491, 34.912037, 30.199574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265381, 34.691479, 30.105131>,  <37.275196, 34.323883, 29.947725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265381, 34.691479, 30.105131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022845, 0.393014, -0.919249,
		-0.999438, -0.031548, 0.011350,
		-0.024540, 0.918991, 0.393514,
		37.258018, 34.967175, 30.223185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765469, 34.890259, 29.572012>,  <37.275196, 34.323883, 29.947725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765469, 34.890259, 29.572012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043503, 35.101768, 29.766846>,  <37.210323, 35.228676, 29.883747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043503, 35.101768, 29.766846>,  <36.765469, 34.890259, 29.572012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043503, 35.101768, 29.766846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164301, 0.542751, -0.823666,
		-0.699902, 0.652547, 0.290380,
		0.695085, 0.528776, 0.487086,
		37.252029, 35.260403, 29.912971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613266, 35.570606, 29.278397>,  <36.765469, 34.890259, 29.572012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613266, 35.570606, 29.278397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983746, 35.553730, 29.428265>,  <37.206032, 35.543606, 29.518187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983746, 35.553730, 29.428265>,  <36.613266, 35.570606, 29.278397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983746, 35.553730, 29.428265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357029, 0.417575, -0.835561,
		-0.121202, 0.907662, 0.401820,
		0.926197, -0.042190, 0.374672,
		37.261604, 35.541073, 29.540667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885315, 36.209976, 29.352802>,  <36.613266, 35.570606, 29.278397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885315, 36.209976, 29.352802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204868, 35.973766, 29.307083>,  <37.396603, 35.832043, 29.279652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204868, 35.973766, 29.307083>,  <36.885315, 36.209976, 29.352802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204868, 35.973766, 29.307083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259491, 0.509807, -0.820221,
		0.542627, 0.625604, 0.560513,
		0.798887, -0.590522, -0.114297,
		37.444534, 35.796608, 29.272795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353634, 36.740791, 29.107290>,  <36.885315, 36.209976, 29.352802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353634, 36.740791, 29.107290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528744, 36.388851, 29.033293>,  <37.633808, 36.177689, 28.988894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528744, 36.388851, 29.033293>,  <37.353634, 36.740791, 29.107290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528744, 36.388851, 29.033293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417093, 0.381020, -0.825141,
		0.796484, 0.284065, 0.533779,
		0.437774, -0.879847, -0.184995,
		37.660076, 36.124897, 28.977795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960751, 36.873745, 28.849947>,  <37.353634, 36.740791, 29.107290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960751, 36.873745, 28.849947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874977, 36.516197, 28.692463>,  <37.823513, 36.301666, 28.597973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874977, 36.516197, 28.692463>,  <37.960751, 36.873745, 28.849947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874977, 36.516197, 28.692463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372697, 0.297709, -0.878900,
		0.902837, -0.335203, 0.269304,
		-0.214436, -0.893872, -0.393712,
		37.810646, 36.248035, 28.574348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450462, 36.775692, 28.309044>,  <37.960751, 36.873745, 28.849947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450462, 36.775692, 28.309044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181908, 36.499271, 28.201950>,  <38.020775, 36.333420, 28.137693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181908, 36.499271, 28.201950>,  <38.450462, 36.775692, 28.309044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181908, 36.499271, 28.201950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259322, 0.119361, -0.958386,
		0.694255, -0.712878, 0.099068,
		-0.671388, -0.691055, -0.267733,
		37.980492, 36.291954, 28.121630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852680, 36.310516, 27.905861>,  <38.450462, 36.775692, 28.309044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852680, 36.310516, 27.905861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474937, 36.247414, 27.790411>,  <38.248291, 36.209553, 27.721142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474937, 36.247414, 27.790411>,  <38.852680, 36.310516, 27.905861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474937, 36.247414, 27.790411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286824, 0.034561, -0.957360,
		0.161007, -0.986873, 0.012611,
		-0.944356, -0.157759, -0.288623,
		38.191631, 36.200089, 27.703823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789742, 35.693977, 27.505064>,  <38.852680, 36.310516, 27.905861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789742, 35.693977, 27.505064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466286, 35.901886, 27.394835>,  <38.272213, 36.026630, 27.328697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466286, 35.901886, 27.394835>,  <38.789742, 35.693977, 27.505064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466286, 35.901886, 27.394835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300433, -0.037891, -0.953050,
		-0.505812, -0.853463, -0.125517,
		-0.808637, 0.519774, -0.275574,
		38.223694, 36.057819, 27.312162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509823, 35.249058, 26.987955>,  <38.789742, 35.693977, 27.505064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509823, 35.249058, 26.987955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340405, 35.606335, 26.927532>,  <38.238754, 35.820702, 26.891279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340405, 35.606335, 26.927532>,  <38.509823, 35.249058, 26.987955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340405, 35.606335, 26.927532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173339, -0.083760, -0.981294,
		-0.889136, -0.441806, -0.119349,
		-0.423545, 0.893192, -0.151056,
		38.213341, 35.874290, 26.882215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060051, 35.141609, 26.457737>,  <38.509823, 35.249058, 26.987955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060051, 35.141609, 26.457737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144375, 35.530998, 26.493313>,  <38.194969, 35.764633, 26.514658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144375, 35.530998, 26.493313>,  <38.060051, 35.141609, 26.457737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144375, 35.530998, 26.493313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142186, 0.059482, -0.988051,
		-0.967131, 0.220935, -0.125875,
		0.210808, 0.973473, 0.088941,
		38.207619, 35.823040, 26.519995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597019, 35.379833, 26.016516>,  <38.060051, 35.141609, 26.457737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597019, 35.379833, 26.016516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895565, 35.640915, 26.068552>,  <38.074692, 35.797562, 26.099773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895565, 35.640915, 26.068552>,  <37.597019, 35.379833, 26.016516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895565, 35.640915, 26.068552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209993, -0.045474, -0.976645,
		-0.631540, 0.756250, -0.171003,
		0.746364, 0.652700, 0.130089,
		38.119473, 35.836723, 26.107578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510735, 35.985790, 25.573532>,  <37.597019, 35.379833, 26.016516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510735, 35.985790, 25.573532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901485, 35.956985, 25.654055>,  <38.135937, 35.939701, 25.702368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901485, 35.956985, 25.654055>,  <37.510735, 35.985790, 25.573532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901485, 35.956985, 25.654055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198072, -0.049598, -0.978932,
		0.080480, 0.996170, -0.034187,
		0.976878, -0.072013, 0.201305,
		38.194550, 35.935383, 25.714447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839485, 36.559582, 25.214418>,  <37.510735, 35.985790, 25.573532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839485, 36.559582, 25.214418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140747, 36.305870, 25.284208>,  <38.321503, 36.153641, 25.326082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140747, 36.305870, 25.284208>,  <37.839485, 36.559582, 25.214418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140747, 36.305870, 25.284208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172539, -0.065476, -0.982824,
		0.634813, 0.770323, 0.060125,
		0.753155, -0.634284, 0.174476,
		38.366695, 36.115585, 25.336552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275433, 36.795357, 24.758408>,  <37.839485, 36.559582, 25.214418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275433, 36.795357, 24.758408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416077, 36.434242, 24.857485>,  <38.500465, 36.217575, 24.916931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416077, 36.434242, 24.857485>,  <38.275433, 36.795357, 24.758408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416077, 36.434242, 24.857485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394639, -0.096989, -0.913703,
		0.848898, 0.419021, 0.322170,
		0.351614, -0.902782, 0.247695,
		38.521561, 36.163406, 24.931793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927166, 36.841640, 24.454205>,  <38.275433, 36.795357, 24.758408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927166, 36.841640, 24.454205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834339, 36.457222, 24.514244>,  <38.778641, 36.226570, 24.550268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834339, 36.457222, 24.514244>,  <38.927166, 36.841640, 24.454205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834339, 36.457222, 24.514244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405622, -0.235871, -0.883083,
		0.884089, -0.144055, 0.444561,
		-0.232071, -0.961048, 0.150099,
		38.764717, 36.168907, 24.559275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594666, 36.523697, 24.441868>,  <38.927166, 36.841640, 24.454205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594666, 36.523697, 24.441868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321987, 36.242550, 24.360611>,  <39.158379, 36.073864, 24.311857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321987, 36.242550, 24.360611>,  <39.594666, 36.523697, 24.441868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321987, 36.242550, 24.360611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536581, -0.291550, -0.791884,
		0.497361, -0.648829, 0.575893,
		-0.681699, -0.702865, -0.203144,
		39.117477, 36.031689, 24.299667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997097, 36.052589, 24.152782>,  <39.594666, 36.523697, 24.441868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997097, 36.052589, 24.152782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623112, 35.950729, 24.053993>,  <39.398720, 35.889614, 23.994719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623112, 35.950729, 24.053993>,  <39.997097, 36.052589, 24.152782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623112, 35.950729, 24.053993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351072, -0.564257, -0.747236,
		0.050929, -0.785344, 0.616961,
		-0.934963, -0.254654, -0.246975,
		39.342625, 35.874332, 23.979900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990463, 35.372566, 24.004303>,  <39.997097, 36.052589, 24.152782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990463, 35.372566, 24.004303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687317, 35.515408, 23.785902>,  <39.505428, 35.601112, 23.654861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687317, 35.515408, 23.785902>,  <39.990463, 35.372566, 24.004303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687317, 35.515408, 23.785902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315763, -0.531575, -0.785953,
		-0.570911, -0.768052, 0.290099,
		-0.757861, 0.357106, -0.546004,
		39.459957, 35.622540, 23.622101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783611, 34.802681, 23.687387>,  <39.990463, 35.372566, 24.004303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783611, 34.802681, 23.687387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610092, 35.095955, 23.477907>,  <39.505981, 35.271919, 23.352219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610092, 35.095955, 23.477907>,  <39.783611, 34.802681, 23.687387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610092, 35.095955, 23.477907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193864, -0.491674, -0.848925,
		-0.879906, -0.469791, 0.071150,
		-0.433799, 0.733181, -0.523703,
		39.479954, 35.315910, 23.320797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362701, 34.384445, 23.213085>,  <39.783611, 34.802681, 23.687387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362701, 34.384445, 23.213085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433498, 34.745781, 23.056801>,  <39.475979, 34.962582, 22.963030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433498, 34.745781, 23.056801>,  <39.362701, 34.384445, 23.213085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433498, 34.745781, 23.056801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409222, -0.428583, -0.805515,
		-0.895103, -0.017315, -0.445523,
		0.176996, 0.903337, -0.390711,
		39.486599, 35.016781, 22.939587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123032, 34.280636, 22.548326>,  <39.362701, 34.384445, 23.213085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123032, 34.280636, 22.548326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319340, 34.626423, 22.504816>,  <39.437126, 34.833897, 22.478710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319340, 34.626423, 22.504816>,  <39.123032, 34.280636, 22.548326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319340, 34.626423, 22.504816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327050, -0.298492, -0.896627,
		-0.807577, 0.404465, -0.429217,
		0.490772, 0.864471, -0.108775,
		39.466572, 34.885765, 22.472183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862091, 34.654041, 21.898537>,  <39.123032, 34.280636, 22.548326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862091, 34.654041, 21.898537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226013, 34.781769, 22.004589>,  <39.444366, 34.858406, 22.068220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226013, 34.781769, 22.004589>,  <38.862091, 34.654041, 21.898537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226013, 34.781769, 22.004589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324763, -0.149942, -0.933834,
		-0.258437, 0.935709, -0.240121,
		0.909801, 0.319320, 0.265133,
		39.498955, 34.877563, 22.084129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090916, 35.106922, 21.402498>,  <38.862091, 34.654041, 21.898537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090916, 35.106922, 21.402498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427467, 34.992756, 21.586073>,  <39.629398, 34.924255, 21.696217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427467, 34.992756, 21.586073>,  <39.090916, 35.106922, 21.402498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427467, 34.992756, 21.586073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418359, -0.193622, -0.887404,
		0.342139, 0.938642, -0.043502,
		0.841378, -0.285416, 0.458935,
		39.679882, 34.907131, 21.723753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578728, 35.385700, 20.981201>,  <39.090916, 35.106922, 21.402498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578728, 35.385700, 20.981201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770855, 35.102913, 21.188852>,  <39.886131, 34.933239, 21.313442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770855, 35.102913, 21.188852>,  <39.578728, 35.385700, 20.981201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770855, 35.102913, 21.188852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404644, -0.346512, -0.846282,
		0.778178, 0.616543, 0.119636,
		0.480314, -0.706968, 0.519129,
		39.914948, 34.890823, 21.344591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334202, 35.401600, 20.752577>,  <39.578728, 35.385700, 20.981201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334202, 35.401600, 20.752577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276642, 35.039532, 20.912556>,  <40.242107, 34.822292, 21.008543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276642, 35.039532, 20.912556>,  <40.334202, 35.401600, 20.752577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276642, 35.039532, 20.912556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501396, -0.415125, -0.759126,
		0.853168, 0.091297, 0.513585,
		-0.143896, -0.905172, 0.399947,
		40.233475, 34.767979, 21.032539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968102, 35.149834, 20.865574>,  <40.334202, 35.401600, 20.752577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968102, 35.149834, 20.865574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744129, 34.818432, 20.862423>,  <40.609745, 34.619591, 20.860533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744129, 34.818432, 20.862423>,  <40.968102, 35.149834, 20.865574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744129, 34.818432, 20.862423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648981, -0.432652, -0.625808,
		0.515076, -0.355520, 0.779937,
		-0.559929, -0.828503, -0.007878,
		40.576149, 34.569881, 20.860060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441021, 34.686771, 21.075317>,  <40.968102, 35.149834, 20.865574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441021, 34.686771, 21.075317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132061, 34.520832, 20.882942>,  <40.946686, 34.421268, 20.767517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132061, 34.520832, 20.882942>,  <41.441021, 34.686771, 21.075317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132061, 34.520832, 20.882942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628995, -0.394564, -0.669839,
		0.088123, -0.819890, 0.565699,
		-0.772399, -0.414850, -0.480937,
		40.900341, 34.396378, 20.738661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531387, 33.981647, 20.979618>,  <41.441021, 34.686771, 21.075317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531387, 33.981647, 20.979618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284298, 34.072113, 20.678349>,  <41.136044, 34.126392, 20.497587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284298, 34.072113, 20.678349>,  <41.531387, 33.981647, 20.979618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284298, 34.072113, 20.678349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611437, -0.464166, -0.640854,
		-0.494536, -0.856387, 0.148440,
		-0.617720, 0.226164, -0.753175,
		41.098980, 34.139961, 20.452396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401497, 33.411221, 20.490435>,  <41.531387, 33.981647, 20.979618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401497, 33.411221, 20.490435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784248, 33.303596, 20.446630>,  <42.013901, 33.239021, 20.420347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784248, 33.303596, 20.446630>,  <41.401497, 33.411221, 20.490435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784248, 33.303596, 20.446630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208588, 0.374020, 0.903660,
		-0.202178, -0.887534, 0.414013,
		0.956878, -0.269058, -0.109510,
		42.071312, 33.222878, 20.413778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609718, 32.860332, 20.978004>,  <41.401497, 33.411221, 20.490435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609718, 32.860332, 20.978004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938545, 33.077469, 20.909258>,  <42.135841, 33.207748, 20.868010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938545, 33.077469, 20.909258>,  <41.609718, 32.860332, 20.978004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938545, 33.077469, 20.909258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087563, 0.177731, 0.980176,
		0.562623, -0.820816, 0.098574,
		0.822063, 0.542838, -0.171868,
		42.185165, 33.240318, 20.857697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150440, 32.675495, 21.531340>,  <41.609718, 32.860332, 20.978004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150440, 32.675495, 21.531340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307377, 33.012989, 21.384819>,  <42.401539, 33.215485, 21.296906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307377, 33.012989, 21.384819>,  <42.150440, 32.675495, 21.531340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307377, 33.012989, 21.384819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196181, 0.312313, 0.929502,
		0.898656, -0.436543, -0.042992,
		0.392340, 0.843737, -0.366303,
		42.425079, 33.266109, 21.274929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649502, 32.808086, 22.010139>,  <42.150440, 32.675495, 21.531340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649502, 32.808086, 22.010139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632061, 33.157261, 21.815788>,  <42.621597, 33.366764, 21.699177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632061, 33.157261, 21.815788>,  <42.649502, 32.808086, 22.010139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632061, 33.157261, 21.815788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282330, 0.477285, 0.832159,
		0.958326, -0.100892, -0.267269,
		-0.043605, 0.872938, -0.485879,
		42.618980, 33.419144, 21.670025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294823, 33.144627, 22.100628>,  <42.649502, 32.808086, 22.010139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294823, 33.144627, 22.100628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005188, 33.410789, 22.028051>,  <42.831406, 33.570488, 21.984505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005188, 33.410789, 22.028051>,  <43.294823, 33.144627, 22.100628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005188, 33.410789, 22.028051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294911, 0.536517, 0.790681,
		0.623474, 0.519016, -0.584724,
		-0.724091, 0.665411, -0.181441,
		42.787960, 33.610413, 21.973619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608070, 33.786022, 22.382809>,  <43.294823, 33.144627, 22.100628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608070, 33.786022, 22.382809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220535, 33.881973, 22.358137>,  <42.988014, 33.939545, 22.343334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220535, 33.881973, 22.358137>,  <43.608070, 33.786022, 22.382809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220535, 33.881973, 22.358137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081807, 0.544972, 0.834453,
		0.233781, 0.803407, -0.547616,
		-0.968841, 0.239878, -0.061680,
		42.929882, 33.953938, 22.339634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650742, 34.377136, 22.740835>,  <43.608070, 33.786022, 22.382809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650742, 34.377136, 22.740835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267448, 34.265114, 22.717672>,  <43.037472, 34.197903, 22.703773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267448, 34.265114, 22.717672>,  <43.650742, 34.377136, 22.740835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267448, 34.265114, 22.717672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206975, 0.539416, 0.816205,
		-0.197344, 0.794103, -0.574852,
		-0.958236, -0.280054, -0.057909,
		42.979977, 34.181099, 22.700300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239349, 34.978325, 22.852272>,  <43.650742, 34.377136, 22.740835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239349, 34.978325, 22.852272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994675, 34.672520, 22.933619>,  <42.847870, 34.489037, 22.982428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994675, 34.672520, 22.933619>,  <43.239349, 34.978325, 22.852272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994675, 34.672520, 22.933619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241658, 0.425354, 0.872167,
		-0.753287, 0.484347, -0.444934,
		-0.611686, -0.764514, 0.203368,
		42.811169, 34.443165, 22.994629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572784, 35.276440, 23.058790>,  <43.239349, 34.978325, 22.852272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572784, 35.276440, 23.058790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621372, 34.909470, 23.210354>,  <42.650524, 34.689285, 23.301292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621372, 34.909470, 23.210354>,  <42.572784, 35.276440, 23.058790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621372, 34.909470, 23.210354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292341, 0.331740, 0.896931,
		-0.948569, -0.219720, -0.227905,
		0.121468, -0.917427, 0.378911,
		42.657814, 34.634243, 23.324028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048767, 35.315937, 23.540665>,  <42.572784, 35.276440, 23.058790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048767, 35.315937, 23.540665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257984, 34.997593, 23.662668>,  <42.383514, 34.806587, 23.735870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257984, 34.997593, 23.662668>,  <42.048767, 35.315937, 23.540665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257984, 34.997593, 23.662668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244160, 0.202951, 0.948260,
		-0.816588, -0.570448, -0.088167,
		0.523040, -0.795864, 0.305007,
		42.414898, 34.758835, 23.754171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624660, 34.985081, 24.058851>,  <42.048767, 35.315937, 23.540665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624660, 34.985081, 24.058851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991455, 34.837925, 24.120541>,  <42.211533, 34.749630, 24.157555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991455, 34.837925, 24.120541>,  <41.624660, 34.985081, 24.058851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991455, 34.837925, 24.120541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154680, 0.028446, 0.987555,
		-0.367702, -0.929433, -0.030821,
		0.916990, -0.367893, 0.154225,
		42.266552, 34.727558, 24.166807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611240, 34.362091, 24.461395>,  <41.624660, 34.985081, 24.058851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611240, 34.362091, 24.461395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980679, 34.489136, 24.547270>,  <42.202343, 34.565365, 24.598795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980679, 34.489136, 24.547270>,  <41.611240, 34.362091, 24.461395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980679, 34.489136, 24.547270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187035, -0.115517, 0.975538,
		0.334646, -0.941157, -0.047286,
		0.923596, 0.317615, 0.214686,
		42.257759, 34.584419, 24.611675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974674, 33.870388, 24.928516>,  <41.611240, 34.362091, 24.461395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974674, 33.870388, 24.928516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149132, 34.228401, 24.965822>,  <42.253807, 34.443211, 24.988205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149132, 34.228401, 24.965822>,  <41.974674, 33.870388, 24.928516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149132, 34.228401, 24.965822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069964, -0.069600, 0.995119,
		0.897154, -0.440538, 0.032264,
		0.436142, 0.895032, 0.093264,
		42.279976, 34.496910, 24.993801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577492, 33.813911, 25.399107>,  <41.974674, 33.870388, 24.928516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577492, 33.813911, 25.399107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499382, 34.206211, 25.398352>,  <42.452518, 34.441589, 25.397898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499382, 34.206211, 25.398352>,  <42.577492, 33.813911, 25.399107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499382, 34.206211, 25.398352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348645, -0.067617, 0.934812,
		0.916687, 0.183202, 0.355136,
		-0.195272, 0.980747, -0.001889,
		42.440800, 34.500435, 25.397785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907955, 34.037254, 26.030760>,  <42.577492, 33.813911, 25.399107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907955, 34.037254, 26.030760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625332, 34.298527, 25.921858>,  <42.455757, 34.455292, 25.856516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625332, 34.298527, 25.921858>,  <42.907955, 34.037254, 26.030760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625332, 34.298527, 25.921858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315370, 0.053769, 0.947444,
		0.633494, 0.755288, 0.168003,
		-0.706560, 0.653183, -0.272257,
		42.413364, 34.494480, 25.840181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922180, 34.548786, 26.521551>,  <42.907955, 34.037254, 26.030760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922180, 34.548786, 26.521551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550880, 34.597187, 26.380859>,  <42.328102, 34.626228, 26.296444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550880, 34.597187, 26.380859>,  <42.922180, 34.548786, 26.521551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550880, 34.597187, 26.380859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314779, 0.248243, 0.916128,
		0.198168, 0.961111, -0.192343,
		-0.928248, 0.121002, -0.351731,
		42.272408, 34.633488, 26.275341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603092, 35.004997, 27.042421>,  <42.922180, 34.548786, 26.521551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603092, 35.004997, 27.042421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284832, 34.907837, 26.820452>,  <42.093876, 34.849541, 26.687269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284832, 34.907837, 26.820452>,  <42.603092, 35.004997, 27.042421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284832, 34.907837, 26.820452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602955, 0.229556, 0.764035,
		-0.058197, 0.942499, -0.329104,
		-0.795649, -0.242899, -0.554925,
		42.046139, 34.834969, 26.653975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164734, 35.528107, 27.215803>,  <42.603092, 35.004997, 27.042421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164734, 35.528107, 27.215803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952751, 35.222069, 27.069506>,  <41.825562, 35.038445, 26.981728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952751, 35.222069, 27.069506>,  <42.164734, 35.528107, 27.215803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952751, 35.222069, 27.069506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671440, 0.115136, 0.732060,
		-0.517988, 0.633535, -0.574736,
		-0.529959, -0.765099, -0.365742,
		41.793762, 34.992538, 26.959784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475407, 35.775570, 27.212208>,  <42.164734, 35.528107, 27.215803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475407, 35.775570, 27.212208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434555, 35.378242, 27.190720>,  <41.410046, 35.139847, 27.177826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434555, 35.378242, 27.190720>,  <41.475407, 35.775570, 27.212208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434555, 35.378242, 27.190720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712452, 0.035347, 0.700830,
		-0.694249, 0.109846, -0.711303,
		-0.102126, -0.993320, -0.053720,
		41.403915, 35.080246, 27.174604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823635, 35.631447, 27.073997>,  <41.475407, 35.775570, 27.212208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823635, 35.631447, 27.073997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959778, 35.292572, 27.237177>,  <41.041466, 35.089245, 27.335085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959778, 35.292572, 27.237177>,  <40.823635, 35.631447, 27.073997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959778, 35.292572, 27.237177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680589, 0.077401, 0.728565,
		-0.648810, -0.525620, -0.550245,
		0.340359, -0.847191, 0.407950,
		41.061886, 35.038414, 27.359562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249569, 35.346741, 27.331318>,  <40.823635, 35.631447, 27.073997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249569, 35.346741, 27.331318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537327, 35.159187, 27.536304>,  <40.709980, 35.046654, 27.659296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537327, 35.159187, 27.536304>,  <40.249569, 35.346741, 27.331318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537327, 35.159187, 27.536304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568051, 0.027449, 0.822535,
		-0.399740, -0.882834, -0.246603,
		0.719393, -0.468883, 0.512467,
		40.753143, 35.018524, 27.690044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862030, 34.940163, 27.763620>,  <40.249569, 35.346741, 27.331318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862030, 34.940163, 27.763620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226379, 34.918716, 27.927294>,  <40.444988, 34.905849, 28.025497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226379, 34.918716, 27.927294>,  <39.862030, 34.940163, 27.763620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226379, 34.918716, 27.927294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411382, -0.039355, 0.910613,
		-0.032649, -0.997790, -0.057872,
		0.910878, -0.053538, 0.409188,
		40.499641, 34.902630, 28.050049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860439, 34.309074, 28.179195>,  <39.862030, 34.940163, 27.763620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860439, 34.309074, 28.179195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128120, 34.586575, 28.285692>,  <40.288727, 34.753075, 28.349590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128120, 34.586575, 28.285692>,  <39.860439, 34.309074, 28.179195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128120, 34.586575, 28.285692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504566, 0.161200, 0.848191,
		0.545514, -0.701944, 0.457918,
		0.669199, 0.693750, 0.266240,
		40.328880, 34.794701, 28.365564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172787, 34.004185, 28.654306>,  <39.860439, 34.309074, 28.179195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172787, 34.004185, 28.654306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246925, 34.389339, 28.732796>,  <40.291409, 34.620430, 28.779888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246925, 34.389339, 28.732796>,  <40.172787, 34.004185, 28.654306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246925, 34.389339, 28.732796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280966, -0.139419, 0.949537,
		0.941650, -0.231122, 0.244697,
		0.185344, 0.962883, 0.196222,
		40.302528, 34.678204, 28.791662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723999, 34.117340, 29.232651>,  <40.172787, 34.004185, 28.654306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723999, 34.117340, 29.232651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521339, 34.461506, 29.210728>,  <40.399746, 34.668003, 29.197575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521339, 34.461506, 29.210728>,  <40.723999, 34.117340, 29.232651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521339, 34.461506, 29.210728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139588, -0.019134, 0.990025,
		0.850779, 0.509242, 0.129797,
		-0.506646, 0.860410, -0.054805,
		40.369347, 34.719627, 29.194286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988525, 34.365078, 29.778269>,  <40.723999, 34.117340, 29.232651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988525, 34.365078, 29.778269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683487, 34.618362, 29.725365>,  <40.500465, 34.770332, 29.693623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683487, 34.618362, 29.725365>,  <40.988525, 34.365078, 29.778269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683487, 34.618362, 29.725365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039614, 0.158358, 0.986587,
		0.645666, 0.757603, -0.095678,
		-0.762592, 0.633215, -0.132258,
		40.454708, 34.808327, 29.685688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099983, 34.933876, 30.247833>,  <40.988525, 34.365078, 29.778269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099983, 34.933876, 30.247833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709148, 34.974495, 30.173006>,  <40.474648, 34.998867, 30.128109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709148, 34.974495, 30.173006>,  <41.099983, 34.933876, 30.247833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709148, 34.974495, 30.173006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189113, -0.010802, 0.981896,
		0.097692, 0.994772, 0.029759,
		-0.977084, 0.101551, -0.187069,
		40.416023, 35.004959, 30.116886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005894, 35.566902, 30.516533>,  <41.099983, 34.933876, 30.247833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005894, 35.566902, 30.516533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660686, 35.364849, 30.514149>,  <40.453560, 35.243618, 30.512718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660686, 35.364849, 30.514149>,  <41.005894, 35.566902, 30.516533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660686, 35.364849, 30.514149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161084, 0.263987, 0.950980,
		-0.478799, 0.821675, -0.309195,
		-0.863020, -0.505134, -0.005962,
		40.401779, 35.213310, 30.512360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527004, 36.003094, 30.868149>,  <41.005894, 35.566902, 30.516533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527004, 36.003094, 30.868149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369160, 35.637493, 30.905840>,  <40.274452, 35.418133, 30.928455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369160, 35.637493, 30.905840>,  <40.527004, 36.003094, 30.868149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369160, 35.637493, 30.905840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041093, 0.120005, 0.991923,
		-0.917928, 0.387555, -0.084914,
		-0.394614, -0.914002, 0.094230,
		40.250774, 35.363293, 30.934109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052277, 36.061310, 31.430464>,  <40.527004, 36.003094, 30.868149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052277, 36.061310, 31.430464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126595, 35.670788, 31.386078>,  <40.171185, 35.436474, 31.359446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126595, 35.670788, 31.386078>,  <40.052277, 36.061310, 31.430464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126595, 35.670788, 31.386078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066855, -0.125230, 0.989872,
		-0.980312, -0.176490, -0.088537,
		0.185790, -0.976303, -0.110965,
		40.182331, 35.377895, 31.352789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724041, 35.802246, 31.964420>,  <40.052277, 36.061310, 31.430464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724041, 35.802246, 31.964420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963600, 35.494633, 31.875055>,  <40.107334, 35.310066, 31.821436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963600, 35.494633, 31.875055>,  <39.724041, 35.802246, 31.964420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963600, 35.494633, 31.875055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078698, -0.221110, 0.972068,
		-0.796950, -0.599751, -0.071900,
		0.598897, -0.769032, -0.223413,
		40.143269, 35.263924, 31.808031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527630, 35.253864, 32.434589>,  <39.724041, 35.802246, 31.964420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527630, 35.253864, 32.434589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902195, 35.172470, 32.320248>,  <40.126934, 35.123634, 32.251640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902195, 35.172470, 32.320248>,  <39.527630, 35.253864, 32.434589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902195, 35.172470, 32.320248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274364, -0.083234, 0.958017,
		-0.218741, -0.975532, -0.022110,
		0.936417, -0.203492, -0.285858,
		40.183121, 35.111423, 32.234489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742622, 34.822872, 32.876621>,  <39.527630, 35.253864, 32.434589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742622, 34.822872, 32.876621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082951, 34.958176, 32.715782>,  <40.287148, 35.039360, 32.619278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082951, 34.958176, 32.715782>,  <39.742622, 34.822872, 32.876621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082951, 34.958176, 32.715782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355053, 0.194024, 0.914490,
		0.387356, -0.920832, 0.044978,
		0.850819, 0.338264, -0.402100,
		40.338196, 35.059654, 32.595154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235844, 34.725979, 33.395035>,  <39.742622, 34.822872, 32.876621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235844, 34.725979, 33.395035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439816, 34.976639, 33.159309>,  <40.562199, 35.127033, 33.017876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439816, 34.976639, 33.159309>,  <40.235844, 34.725979, 33.395035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439816, 34.976639, 33.159309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480907, 0.360344, 0.799300,
		0.713235, -0.690987, -0.117612,
		0.509925, 0.626649, -0.589311,
		40.592793, 35.164635, 32.982517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993168, 34.591526, 33.474518>,  <40.235844, 34.725979, 33.395035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993168, 34.591526, 33.474518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933708, 34.959793, 33.330147>,  <40.898033, 35.180756, 33.243523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933708, 34.959793, 33.330147>,  <40.993168, 34.591526, 33.474518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933708, 34.959793, 33.330147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445544, 0.388194, 0.806719,
		0.882833, -0.040892, -0.467904,
		-0.148649, 0.920670, -0.360930,
		40.889114, 35.235992, 33.221867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632423, 34.883701, 33.588142>,  <40.993168, 34.591526, 33.474518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632423, 34.883701, 33.588142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379166, 35.191547, 33.555107>,  <41.227211, 35.376255, 33.535286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379166, 35.191547, 33.555107>,  <41.632423, 34.883701, 33.588142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379166, 35.191547, 33.555107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364784, 0.390793, 0.845111,
		0.682684, 0.504952, -0.528172,
		-0.633147, 0.769613, -0.082590,
		41.189220, 35.422432, 33.530331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995476, 35.400436, 33.799793>,  <41.632423, 34.883701, 33.588142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995476, 35.400436, 33.799793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623867, 35.541740, 33.843830>,  <41.400902, 35.626522, 33.870251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623867, 35.541740, 33.843830>,  <41.995476, 35.400436, 33.799793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623867, 35.541740, 33.843830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264729, 0.426711, 0.864775,
		0.258513, 0.832542, -0.489943,
		-0.929026, 0.353258, 0.110088,
		41.345158, 35.647717, 33.876858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063896, 36.020859, 33.967731>,  <41.995476, 35.400436, 33.799793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063896, 36.020859, 33.967731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706146, 35.938602, 34.126629>,  <41.491497, 35.889248, 34.221966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706146, 35.938602, 34.126629>,  <42.063896, 36.020859, 33.967731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706146, 35.938602, 34.126629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264374, 0.473340, 0.840271,
		-0.360824, 0.856540, -0.368979,
		-0.894378, -0.205642, 0.397240,
		41.437832, 35.876911, 34.245800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841309, 36.668240, 34.322868>,  <42.063896, 36.020859, 33.967731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841309, 36.668240, 34.322868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625107, 36.376305, 34.490288>,  <41.495384, 36.201141, 34.590740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625107, 36.376305, 34.490288>,  <41.841309, 36.668240, 34.322868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625107, 36.376305, 34.490288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075573, 0.453353, 0.888122,
		-0.837938, 0.511667, -0.189884,
		-0.540507, -0.729841, 0.418550,
		41.462955, 36.157352, 34.615852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320797, 36.969040, 34.784306>,  <41.841309, 36.668240, 34.322868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320797, 36.969040, 34.784306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340736, 36.589939, 34.910336>,  <41.352699, 36.362476, 34.985954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340736, 36.589939, 34.910336>,  <41.320797, 36.969040, 34.784306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340736, 36.589939, 34.910336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021278, 0.316404, 0.948386,
		-0.998530, -0.040572, 0.035939,
		0.049849, -0.947757, 0.315076,
		41.355690, 36.305611, 35.004860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752308, 36.749062, 35.225681>,  <41.320797, 36.969040, 34.784306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752308, 36.749062, 35.225681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098740, 36.586239, 35.341763>,  <41.306599, 36.488544, 35.411411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098740, 36.586239, 35.341763>,  <40.752308, 36.749062, 35.225681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098740, 36.586239, 35.341763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068920, 0.477732, 0.875798,
		-0.495139, -0.778508, 0.385698,
		0.866076, -0.407059, 0.290199,
		41.358562, 36.464123, 35.428822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633221, 36.340775, 35.891125>,  <40.752308, 36.749062, 35.225681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633221, 36.340775, 35.891125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014778, 36.460567, 35.883224>,  <41.243713, 36.532444, 35.878483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014778, 36.460567, 35.883224>,  <40.633221, 36.340775, 35.891125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014778, 36.460567, 35.883224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127612, 0.464276, 0.876449,
		0.271648, -0.833523, 0.481089,
		0.953899, 0.299478, -0.019752,
		41.300949, 36.550411, 35.877300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810734, 36.271923, 36.606800>,  <40.633221, 36.340775, 35.891125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810734, 36.271923, 36.606800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120556, 36.465122, 36.443447>,  <41.306450, 36.581039, 36.345436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120556, 36.465122, 36.443447>,  <40.810734, 36.271923, 36.606800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120556, 36.465122, 36.443447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165863, 0.467961, 0.868045,
		0.610367, -0.740087, 0.282352,
		0.774558, 0.482994, -0.408381,
		41.352924, 36.610020, 36.320934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477093, 36.182381, 37.003490>,  <40.810734, 36.271923, 36.606800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477093, 36.182381, 37.003490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478394, 36.550152, 36.846191>,  <41.479176, 36.770813, 36.751812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478394, 36.550152, 36.846191>,  <41.477093, 36.182381, 37.003490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478394, 36.550152, 36.846191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087446, 0.391486, 0.916020,
		0.996164, -0.037368, -0.079127,
		0.003253, 0.919425, -0.393252,
		41.479370, 36.825981, 36.728214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620358, 36.555153, 37.549244>,  <41.477093, 36.182381, 37.003490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620358, 36.555153, 37.549244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552494, 36.851921, 37.289776>,  <41.511776, 37.029984, 37.134094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552494, 36.851921, 37.289776>,  <41.620358, 36.555153, 37.549244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552494, 36.851921, 37.289776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130778, 0.669338, 0.731358,
		0.976788, 0.039247, -0.210583,
		-0.169654, 0.741921, -0.648668,
		41.501598, 37.074497, 37.095177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218189, 37.017658, 37.506298>,  <41.620358, 36.555153, 37.549244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218189, 37.017658, 37.506298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886421, 37.206978, 37.387604>,  <41.687363, 37.320572, 37.316387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886421, 37.206978, 37.387604>,  <42.218189, 37.017658, 37.506298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886421, 37.206978, 37.387604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205254, 0.752232, 0.626114,
		0.519558, 0.458402, -0.721060,
		-0.829416, 0.473303, -0.296739,
		41.637596, 37.348969, 37.298580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347023, 37.573414, 37.480015>,  <42.218189, 37.017658, 37.506298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347023, 37.573414, 37.480015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954220, 37.641544, 37.512638>,  <41.718536, 37.682423, 37.532211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954220, 37.641544, 37.512638>,  <42.347023, 37.573414, 37.480015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954220, 37.641544, 37.512638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181805, 0.735869, 0.652261,
		0.051083, 0.655352, -0.753594,
		-0.982007, 0.170326, 0.081556,
		41.659618, 37.692642, 37.537106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306198, 38.226898, 37.268837>,  <42.347023, 37.573414, 37.480015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306198, 38.226898, 37.268837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003716, 38.138447, 37.515171>,  <41.822224, 38.085377, 37.662971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003716, 38.138447, 37.515171>,  <42.306198, 38.226898, 37.268837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003716, 38.138447, 37.515171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052343, 0.917704, 0.393800,
		-0.652234, 0.330030, -0.682401,
		-0.756209, -0.221131, 0.615832,
		41.776852, 38.072109, 37.699921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952957, 38.857811, 37.419910>,  <42.306198, 38.226898, 37.268837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952957, 38.857811, 37.419910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744686, 38.636848, 37.680290>,  <41.619724, 38.504269, 37.836517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744686, 38.636848, 37.680290>,  <41.952957, 38.857811, 37.419910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744686, 38.636848, 37.680290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226617, 0.824533, 0.518449,
		-0.823127, 0.122429, -0.554503,
		-0.520679, -0.552409, 0.650951,
		41.588482, 38.471127, 37.875576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692097, 39.362408, 37.627499>,  <41.952957, 38.857811, 37.419910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692097, 39.362408, 37.627499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596264, 39.069393, 37.882370>,  <41.538765, 38.893585, 38.035294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596264, 39.069393, 37.882370>,  <41.692097, 39.362408, 37.627499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596264, 39.069393, 37.882370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060878, 0.666334, 0.743165,
		-0.968965, 0.139261, -0.204238,
		-0.239584, -0.732534, 0.637176,
		41.524387, 38.849632, 38.073524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044842, 39.551521, 37.991562>,  <41.692097, 39.362408, 37.627499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044842, 39.551521, 37.991562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272579, 39.321808, 38.226864>,  <41.409222, 39.183979, 38.368046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272579, 39.321808, 38.226864>,  <41.044842, 39.551521, 37.991562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272579, 39.321808, 38.226864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189736, 0.604443, 0.773724,
		-0.799907, -0.552126, 0.235171,
		0.569340, -0.574287, 0.588257,
		41.443382, 39.149521, 38.403339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748119, 39.386646, 38.644791>,  <41.044842, 39.551521, 37.991562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748119, 39.386646, 38.644791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145386, 39.377914, 38.690639>,  <41.383747, 39.372677, 38.718147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145386, 39.377914, 38.690639>,  <40.748119, 39.386646, 38.644791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145386, 39.377914, 38.690639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068187, 0.688599, 0.721930,
		-0.094686, -0.724814, 0.682407,
		0.993169, -0.021825, 0.114623,
		41.443336, 39.371368, 38.725025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802429, 39.696960, 39.154602>,  <40.748119, 39.386646, 38.644791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802429, 39.696960, 39.154602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195137, 39.683796, 39.079727>,  <41.430763, 39.675896, 39.034801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195137, 39.683796, 39.079727>,  <40.802429, 39.696960, 39.154602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195137, 39.683796, 39.079727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148553, 0.747218, 0.647764,
		0.118552, -0.663764, 0.738487,
		0.981773, -0.032910, -0.187188,
		41.489670, 39.673923, 39.023571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268383, 39.599472, 39.739853>,  <40.802429, 39.696960, 39.154602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268383, 39.599472, 39.739853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460209, 39.806801, 39.456623>,  <41.575306, 39.931198, 39.286686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460209, 39.806801, 39.456623>,  <41.268383, 39.599472, 39.739853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460209, 39.806801, 39.456623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145993, 0.748538, 0.646820,
		0.865277, -0.413565, 0.283301,
		0.479564, 0.518319, -0.708071,
		41.604080, 39.962296, 39.244202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834801, 39.894688, 40.051723>,  <41.268383, 39.599472, 39.739853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834801, 39.894688, 40.051723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769974, 40.127735, 39.733154>,  <41.731079, 40.267563, 39.542015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769974, 40.127735, 39.733154>,  <41.834801, 39.894688, 40.051723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769974, 40.127735, 39.733154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010633, 0.808075, 0.588983,
		0.986723, 0.086986, -0.137156,
		-0.162065, 0.582622, -0.796421,
		41.721355, 40.302521, 39.494228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341759, 40.251179, 40.264008>,  <41.834801, 39.894688, 40.051723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341759, 40.251179, 40.264008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111862, 40.458534, 40.010723>,  <41.973927, 40.582947, 39.858753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111862, 40.458534, 40.010723>,  <42.341759, 40.251179, 40.264008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111862, 40.458534, 40.010723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109240, 0.815448, 0.568429,
		0.811014, 0.257525, -0.525297,
		-0.574737, 0.518387, -0.633208,
		41.939442, 40.614052, 39.820763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626179, 40.860790, 40.301094>,  <42.341759, 40.251179, 40.264008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626179, 40.860790, 40.301094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287933, 40.967335, 40.116062>,  <42.084984, 41.031261, 40.005043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287933, 40.967335, 40.116062>,  <42.626179, 40.860790, 40.301094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287933, 40.967335, 40.116062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022322, 0.848198, 0.529209,
		0.533322, 0.457834, -0.711306,
		-0.845618, 0.266360, -0.462582,
		42.034248, 41.047241, 39.977287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785297, 41.399029, 39.950394>,  <42.626179, 40.860790, 40.301094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785297, 41.399029, 39.950394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389385, 41.406738, 40.006901>,  <42.151836, 41.411362, 40.040806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389385, 41.406738, 40.006901>,  <42.785297, 41.399029, 39.950394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389385, 41.406738, 40.006901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087593, 0.863978, 0.495853,
		-0.112500, 0.503161, -0.856839,
		-0.989783, 0.019270, 0.141271,
		42.092449, 41.412518, 40.049282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484718, 42.039551, 39.709728>,  <42.785297, 41.399029, 39.950394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484718, 42.039551, 39.709728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228924, 41.892811, 39.979980>,  <42.075447, 41.804768, 40.142132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228924, 41.892811, 39.979980>,  <42.484718, 42.039551, 39.709728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228924, 41.892811, 39.979980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045418, 0.895303, 0.443136,
		-0.767463, 0.252692, -0.589193,
		-0.639483, -0.366850, 0.675635,
		42.037079, 41.782757, 40.182671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960178, 42.495186, 39.752811>,  <42.484718, 42.039551, 39.709728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960178, 42.495186, 39.752811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984051, 42.309944, 40.106529>,  <41.998375, 42.198799, 40.318760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984051, 42.309944, 40.106529>,  <41.960178, 42.495186, 39.752811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984051, 42.309944, 40.106529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189889, 0.864428, 0.465518,
		-0.979990, -0.195699, -0.036350,
		0.059679, -0.463105, 0.884292,
		42.001953, 42.171013, 40.371819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837437, 43.146717, 40.098137>,  <41.960178, 42.495186, 39.752811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837437, 43.146717, 40.098137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444370, 43.101479, 40.156887>,  <41.208530, 43.074337, 40.192139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444370, 43.101479, 40.156887>,  <41.837437, 43.146717, 40.098137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444370, 43.101479, 40.156887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184094, -0.688233, 0.701743,
		0.021721, 0.716620, 0.697125,
		-0.982668, -0.113094, 0.146875,
		41.149570, 43.067551, 40.200951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525131, 43.242870, 40.806240>,  <41.837437, 43.146717, 40.098137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525131, 43.242870, 40.806240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352066, 42.953152, 40.591507>,  <41.248226, 42.779320, 40.462666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352066, 42.953152, 40.591507>,  <41.525131, 43.242870, 40.806240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352066, 42.953152, 40.591507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446865, -0.689454, 0.570057,
		-0.783015, 0.006751, 0.621967,
		-0.432666, -0.724298, -0.536836,
		41.222267, 42.735863, 40.430454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126736, 43.242184, 41.391804>,  <41.525131, 43.242870, 40.806240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126736, 43.242184, 41.391804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963341, 42.931782, 41.584034>,  <41.865303, 42.745541, 41.699371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963341, 42.931782, 41.584034>,  <42.126736, 43.242184, 41.391804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963341, 42.931782, 41.584034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291580, -0.387979, -0.874330,
		0.864940, -0.497278, -0.067784,
		-0.408486, -0.776007, 0.480574,
		41.840794, 42.698978, 41.728207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277260, 42.753666, 40.989277>,  <42.126736, 43.242184, 41.391804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277260, 42.753666, 40.989277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967316, 42.608120, 41.196041>,  <41.781349, 42.520794, 41.320099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967316, 42.608120, 41.196041>,  <42.277260, 42.753666, 40.989277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967316, 42.608120, 41.196041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199432, -0.635248, -0.746114,
		0.599850, -0.681222, 0.419663,
		-0.774860, -0.363862, 0.516911,
		41.734859, 42.498962, 41.351116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318951, 42.033306, 41.172047>,  <42.277260, 42.753666, 40.989277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318951, 42.033306, 41.172047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929901, 42.111336, 41.121536>,  <41.696472, 42.158154, 41.091232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929901, 42.111336, 41.121536>,  <42.318951, 42.033306, 41.172047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929901, 42.111336, 41.121536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049134, -0.703762, -0.708735,
		-0.227119, -0.683130, 0.694082,
		-0.972627, 0.195070, -0.126273,
		41.638115, 42.169857, 41.083652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870453, 41.413029, 41.130547>,  <42.318951, 42.033306, 41.172047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870453, 41.413029, 41.130547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703838, 41.710930, 40.921989>,  <41.603870, 41.889671, 40.796856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703838, 41.710930, 40.921989>,  <41.870453, 41.413029, 41.130547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703838, 41.710930, 40.921989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143241, -0.620110, -0.771327,
		-0.897766, -0.246597, 0.364974,
		-0.416531, 0.744750, -0.521391,
		41.578880, 41.934357, 40.765572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188717, 41.315193, 41.012558>,  <41.870453, 41.413029, 41.130547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188717, 41.315193, 41.012558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438602, 41.484539, 40.750111>,  <41.588531, 41.586147, 40.592640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438602, 41.484539, 40.750111>,  <41.188717, 41.315193, 41.012558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438602, 41.484539, 40.750111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092039, -0.794479, -0.600276,
		-0.775412, 0.435389, -0.457354,
		0.624712, 0.423367, -0.656122,
		41.626015, 41.611549, 40.553272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781517, 41.250000, 40.317993>,  <41.188717, 41.315193, 41.012558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781517, 41.250000, 40.317993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162060, 41.326832, 40.221634>,  <41.390385, 41.372929, 40.163818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162060, 41.326832, 40.221634>,  <40.781517, 41.250000, 40.317993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162060, 41.326832, 40.221634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006628, -0.768942, -0.639284,
		-0.308028, 0.609782, -0.730263,
		0.951354, 0.192077, -0.240898,
		41.447468, 41.384457, 40.149364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827129, 41.309086, 39.529224>,  <40.781517, 41.250000, 40.317993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827129, 41.309086, 39.529224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206001, 41.247784, 39.641907>,  <41.433327, 41.211002, 39.709515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206001, 41.247784, 39.641907>,  <40.827129, 41.309086, 39.529224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206001, 41.247784, 39.641907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071223, -0.755952, -0.650741,
		0.312686, 0.636434, -0.705109,
		0.947182, -0.153258, 0.281704,
		41.490154, 41.201805, 39.726418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261421, 41.445301, 39.011623>,  <40.827129, 41.309086, 39.529224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261421, 41.445301, 39.011623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404938, 41.169022, 39.262764>,  <41.491047, 41.003254, 39.413448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404938, 41.169022, 39.262764>,  <41.261421, 41.445301, 39.011623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404938, 41.169022, 39.262764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028162, -0.664323, -0.746915,
		0.932993, 0.285667, -0.218901,
		0.358790, -0.690702, 0.627854,
		41.512573, 40.961811, 39.451118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617126, 41.150223, 38.513165>,  <41.261421, 41.445301, 39.011623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617126, 41.150223, 38.513165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642834, 40.882359, 38.809116>,  <41.658257, 40.721638, 38.986687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642834, 40.882359, 38.809116>,  <41.617126, 41.150223, 38.513165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642834, 40.882359, 38.809116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133863, -0.740496, -0.658594,
		0.988914, -0.056716, -0.137234,
		0.064268, -0.669664, 0.739879,
		41.662113, 40.681461, 39.031078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975601, 40.657955, 38.237289>,  <41.617126, 41.150223, 38.513165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975601, 40.657955, 38.237289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845814, 40.451740, 38.554512>,  <41.767941, 40.328011, 38.744846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845814, 40.451740, 38.554512>,  <41.975601, 40.657955, 38.237289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845814, 40.451740, 38.554512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105301, -0.813522, -0.571921,
		0.940018, -0.269079, 0.209675,
		-0.324467, -0.515537, 0.793059,
		41.748474, 40.297081, 38.792431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509354, 40.204094, 38.468575>,  <41.975601, 40.657955, 38.237289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509354, 40.204094, 38.468575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247185, 40.141865, 38.764202>,  <42.089882, 40.104527, 38.941578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247185, 40.141865, 38.764202>,  <42.509354, 40.204094, 38.468575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247185, 40.141865, 38.764202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050595, -0.985401, -0.162560,
		0.753565, -0.069153, 0.653726,
		-0.655423, -0.155575, 0.739065,
		42.050556, 40.095192, 38.985920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770725, 39.632442, 38.615063>,  <42.509354, 40.204094, 38.468575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770725, 39.632442, 38.615063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400909, 39.640007, 38.767307>,  <42.179020, 39.644547, 38.858654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400909, 39.640007, 38.767307>,  <42.770725, 39.632442, 38.615063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400909, 39.640007, 38.767307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143914, -0.942137, -0.302765,
		0.352864, -0.334694, 0.873766,
		-0.924541, 0.018912, 0.380613,
		42.123547, 39.645679, 38.881493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647453, 39.096973, 39.121342>,  <42.770725, 39.632442, 38.615063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647453, 39.096973, 39.121342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282978, 39.167801, 38.972542>,  <42.064293, 39.210297, 38.883263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282978, 39.167801, 38.972542>,  <42.647453, 39.096973, 39.121342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282978, 39.167801, 38.972542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052220, -0.945282, -0.322048,
		-0.408671, -0.274020, 0.870575,
		-0.911187, 0.177073, -0.372000,
		42.009621, 39.220924, 38.860943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376015, 38.549706, 39.099506>,  <42.647453, 39.096973, 39.121342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376015, 38.549706, 39.099506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123119, 38.733433, 38.849930>,  <41.971382, 38.843670, 38.700184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123119, 38.733433, 38.849930>,  <42.376015, 38.549706, 39.099506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123119, 38.733433, 38.849930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236749, -0.881333, -0.408904,
		-0.737719, -0.110805, 0.665952,
		-0.632235, 0.459320, -0.623943,
		41.933449, 38.871227, 38.662746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823841, 38.091175, 39.081249>,  <42.376015, 38.549706, 39.099506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823841, 38.091175, 39.081249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762810, 38.323074, 38.761097>,  <41.726189, 38.462215, 38.569004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762810, 38.323074, 38.761097>,  <41.823841, 38.091175, 39.081249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762810, 38.323074, 38.761097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393354, -0.778576, -0.488970,
		-0.906637, 0.240224, 0.346845,
		-0.152582, 0.579751, -0.800379,
		41.717033, 38.496998, 38.520985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134327, 37.938938, 38.780457>,  <41.823841, 38.091175, 39.081249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134327, 37.938938, 38.780457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370396, 38.054985, 38.479118>,  <41.512035, 38.124615, 38.298317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370396, 38.054985, 38.479118>,  <41.134327, 37.938938, 38.780457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370396, 38.054985, 38.479118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479014, -0.625305, -0.616067,
		-0.649804, 0.724448, -0.230066,
		0.590170, 0.290118, -0.753346,
		41.547447, 38.142021, 38.253113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660862, 37.891987, 38.339767>,  <41.134327, 37.938938, 38.780457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660862, 37.891987, 38.339767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993572, 37.947689, 38.124821>,  <41.193199, 37.981110, 37.995853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993572, 37.947689, 38.124821>,  <40.660862, 37.891987, 38.339767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993572, 37.947689, 38.124821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421636, -0.471178, -0.774735,
		-0.361080, 0.870977, -0.333199,
		0.831772, 0.139253, -0.537368,
		41.243103, 37.989464, 37.963612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413403, 37.835350, 37.707272>,  <40.660862, 37.891987, 38.339767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413403, 37.835350, 37.707272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806629, 37.798065, 37.644161>,  <41.042564, 37.775696, 37.606297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806629, 37.798065, 37.644161>,  <40.413403, 37.835350, 37.707272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806629, 37.798065, 37.644161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182786, -0.437494, -0.880448,
		0.013039, 0.894378, -0.447122,
		0.983066, -0.093208, -0.157775,
		41.101547, 37.770103, 37.596828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559376, 37.917160, 36.945259>,  <40.413403, 37.835350, 37.707272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559376, 37.917160, 36.945259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902466, 37.752789, 37.068832>,  <41.108318, 37.654163, 37.142979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902466, 37.752789, 37.068832>,  <40.559376, 37.917160, 36.945259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902466, 37.752789, 37.068832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093767, -0.465795, -0.879911,
		0.505485, 0.783690, -0.360993,
		0.857726, -0.410932, 0.308937,
		41.159782, 37.629509, 37.161514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044090, 38.065331, 36.388851>,  <40.559376, 37.917160, 36.945259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044090, 38.065331, 36.388851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199955, 37.765297, 36.602596>,  <41.293472, 37.585278, 36.730843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199955, 37.765297, 36.602596>,  <41.044090, 38.065331, 36.388851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199955, 37.765297, 36.602596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159640, -0.516428, -0.841319,
		0.907016, 0.413136, -0.081489,
		0.389663, -0.750081, 0.534361,
		41.316853, 37.540272, 36.762905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637489, 37.906239, 35.882946>,  <41.044090, 38.065331, 36.388851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637489, 37.906239, 35.882946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577713, 37.584934, 36.113575>,  <41.541847, 37.392151, 36.251953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577713, 37.584934, 36.113575>,  <41.637489, 37.906239, 35.882946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577713, 37.584934, 36.113575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203168, -0.595622, -0.777147,
		0.967672, 0.001001, 0.252210,
		-0.149444, -0.803264, 0.576570,
		41.532879, 37.343956, 36.286545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275440, 37.426144, 35.904003>,  <41.637489, 37.906239, 35.882946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275440, 37.426144, 35.904003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980225, 37.176952, 36.007687>,  <41.803093, 37.027435, 36.069897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980225, 37.176952, 36.007687>,  <42.275440, 37.426144, 35.904003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980225, 37.176952, 36.007687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336451, -0.672761, -0.658933,
		0.584889, -0.399108, 0.706128,
		-0.738041, -0.622981, 0.259210,
		41.758812, 36.990059, 36.085449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524204, 36.764614, 36.033447>,  <42.275440, 37.426144, 35.904003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524204, 36.764614, 36.033447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137585, 36.700241, 35.953556>,  <41.905613, 36.661617, 35.905621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137585, 36.700241, 35.953556>,  <42.524204, 36.764614, 36.033447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137585, 36.700241, 35.953556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254399, -0.700885, -0.666364,
		-0.032750, -0.694882, 0.718378,
		-0.966545, -0.160931, -0.199732,
		41.847622, 36.651962, 35.893635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475769, 36.067226, 35.926395>,  <42.524204, 36.764614, 36.033447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475769, 36.067226, 35.926395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141186, 36.214401, 35.763931>,  <41.940437, 36.302708, 35.666454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141186, 36.214401, 35.763931>,  <42.475769, 36.067226, 35.926395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141186, 36.214401, 35.763931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060185, -0.674963, -0.735393,
		-0.544722, -0.639567, 0.542432,
		-0.836454, 0.367938, -0.406159,
		41.890251, 36.324783, 35.642082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367393, 36.334595, 35.347668>,  <42.475769, 36.067226, 35.926395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367393, 36.334595, 35.347668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751495, 36.247292, 35.417267>,  <42.981956, 36.194908, 35.459026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751495, 36.247292, 35.417267>,  <42.367393, 36.334595, 35.347668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751495, 36.247292, 35.417267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138217, -0.169785, -0.975740,
		0.242505, 0.961008, -0.132870,
		0.960254, -0.218257, 0.174001,
		43.039570, 36.181816, 35.469467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825047, 36.744556, 35.026936>,  <42.367393, 36.334595, 35.347668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825047, 36.744556, 35.026936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991390, 36.382278, 35.059875>,  <43.091198, 36.164913, 35.079639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991390, 36.382278, 35.059875>,  <42.825047, 36.744556, 35.026936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991390, 36.382278, 35.059875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047152, -0.111907, -0.992599,
		0.908205, 0.408900, -0.089242,
		0.415861, -0.905692, 0.082354,
		43.116150, 36.110569, 35.084583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300087, 36.816730, 34.581482>,  <42.825047, 36.744556, 35.026936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300087, 36.816730, 34.581482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208370, 36.430435, 34.630096>,  <43.153339, 36.198658, 34.659267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208370, 36.430435, 34.630096>,  <43.300087, 36.816730, 34.581482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208370, 36.430435, 34.630096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102702, -0.100167, -0.989656,
		0.967925, -0.239398, -0.076216,
		-0.229288, -0.965741, 0.121540,
		43.139584, 36.140713, 34.666557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751286, 36.303398, 34.182938>,  <43.300087, 36.816730, 34.581482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751286, 36.303398, 34.182938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376015, 36.175976, 34.237118>,  <43.150852, 36.099522, 34.269627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376015, 36.175976, 34.237118>,  <43.751286, 36.303398, 34.182938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376015, 36.175976, 34.237118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203670, 0.191602, -0.960108,
		0.279898, -0.928337, -0.244637,
		-0.938177, -0.318558, 0.135445,
		43.094563, 36.080410, 34.277752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514103, 35.996777, 33.540592>,  <43.751286, 36.303398, 34.182938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514103, 35.996777, 33.540592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159771, 36.053238, 33.717396>,  <42.947170, 36.087112, 33.823479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159771, 36.053238, 33.717396>,  <43.514103, 35.996777, 33.540592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159771, 36.053238, 33.717396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447217, -0.005817, -0.894407,
		-0.123679, -0.989971, 0.068279,
		-0.885833, 0.141154, 0.442012,
		42.894020, 36.095585, 33.849998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020969, 35.541870, 33.213001>,  <43.514103, 35.996777, 33.540592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020969, 35.541870, 33.213001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868999, 35.887051, 33.346245>,  <42.777817, 36.094158, 33.426193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868999, 35.887051, 33.346245>,  <43.020969, 35.541870, 33.213001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868999, 35.887051, 33.346245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395802, 0.173825, -0.901735,
		-0.836059, -0.474442, 0.275518,
		-0.379929, 0.862954, 0.333113,
		42.755020, 36.145935, 33.446178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267975, 34.924446, 32.916653>,  <43.020969, 35.541870, 33.213001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267975, 34.924446, 32.916653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371025, 35.150295, 33.230297>,  <43.432854, 35.285805, 33.418484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371025, 35.150295, 33.230297>,  <43.267975, 34.924446, 32.916653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371025, 35.150295, 33.230297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948116, -0.304178, -0.092479,
		0.186293, 0.767253, -0.613692,
		0.257627, 0.564623, 0.784111,
		43.448315, 35.319683, 33.465530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733799, 35.538841, 32.771835>,  <43.267975, 34.924446, 32.916653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733799, 35.538841, 32.771835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796326, 35.418961, 33.148293>,  <43.833839, 35.347031, 33.374165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796326, 35.418961, 33.148293>,  <43.733799, 35.538841, 32.771835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796326, 35.418961, 33.148293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945016, -0.231730, -0.230751,
		0.287247, 0.925462, 0.247000,
		0.156314, -0.299701, 0.941140,
		43.843220, 35.329052, 33.430634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432739, 35.818199, 32.996433>,  <43.733799, 35.538841, 32.771835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432739, 35.818199, 32.996433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331951, 35.488586, 33.199402>,  <44.271477, 35.290817, 33.321182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331951, 35.488586, 33.199402>,  <44.432739, 35.818199, 32.996433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331951, 35.488586, 33.199402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852268, -0.437341, -0.287004,
		0.458418, 0.360146, 0.812495,
		-0.251974, -0.824031, 0.507426,
		44.256359, 35.241379, 33.351631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848061, 35.498886, 33.611904>,  <44.432739, 35.818199, 32.996433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848061, 35.498886, 33.611904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649731, 35.257927, 33.361698>,  <44.530731, 35.113350, 33.211575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649731, 35.257927, 33.361698>,  <44.848061, 35.498886, 33.611904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649731, 35.257927, 33.361698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868406, -0.339645, -0.361264,
		0.005171, -0.722329, 0.691531,
		-0.495826, -0.602398, -0.625519,
		44.500984, 35.077209, 33.174042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048683, 34.990261, 33.078472>,  <44.848061, 35.498886, 33.611904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048683, 34.990261, 33.078472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.393806, 35.019173, 33.278606>,  <45.600880, 35.036522, 33.398689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.393806, 35.019173, 33.278606>,  <45.048683, 34.990261, 33.078472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.393806, 35.019173, 33.278606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464309, 0.278161, -0.840859,
		-0.199955, 0.957811, 0.206438,
		0.862806, 0.072283, 0.500340,
		45.652649, 35.040859, 33.428707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.636475, 34.569645, 32.854588>,  <45.048683, 34.990261, 33.078472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.636475, 34.569645, 32.854588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318588, 34.336754, 32.923218>,  <45.127857, 34.197018, 32.964397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318588, 34.336754, 32.923218>,  <45.636475, 34.569645, 32.854588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318588, 34.336754, 32.923218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526682, 0.801962, 0.281893,
		-0.301728, 0.133656, -0.943979,
		-0.794712, -0.582231, 0.171580,
		45.080173, 34.162083, 32.974693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601665, 33.899834, 32.605705>,  <45.636475, 34.569645, 32.854588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601665, 33.899834, 32.605705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495190, 33.530781, 32.717342>,  <45.431305, 33.309349, 32.784325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495190, 33.530781, 32.717342>,  <45.601665, 33.899834, 32.605705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495190, 33.530781, 32.717342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365188, 0.364483, 0.856615,
		-0.892065, 0.126102, -0.433956,
		-0.266190, -0.922633, 0.279092,
		45.415333, 33.253990, 32.801071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385174, 34.115013, 32.607819>,  <45.601665, 33.899834, 32.605705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385174, 34.115013, 32.607819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.406624, 33.762688, 32.795982>,  <46.419495, 33.551292, 32.908882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.406624, 33.762688, 32.795982>,  <46.385174, 34.115013, 32.607819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.406624, 33.762688, 32.795982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753339, -0.344905, -0.559930,
		0.655442, -0.324354, -0.682048,
		0.053626, -0.880815, 0.470414,
		46.422710, 33.498444, 32.937107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.809063, 34.434719, 32.070297>,  <46.385174, 34.115013, 32.607819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.809063, 34.434719, 32.070297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530121, 34.615288, 32.292976>,  <46.362755, 34.723629, 32.426586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530121, 34.615288, 32.292976>,  <46.809063, 34.434719, 32.070297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.530121, 34.615288, 32.292976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708945, 0.320310, 0.628330,
		0.105323, 0.832840, -0.543401,
		-0.697355, 0.451420, 0.556702,
		46.320915, 34.750713, 32.459988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.909122, 35.242813, 32.140808>,  <46.809063, 34.434719, 32.070297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.909122, 35.242813, 32.140808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.715366, 35.049034, 32.432198>,  <46.599113, 34.932766, 32.607033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.715366, 35.049034, 32.432198>,  <46.909122, 35.242813, 32.140808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.715366, 35.049034, 32.432198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636340, 0.376329, 0.673385,
		-0.600366, 0.789739, 0.125983,
		-0.484388, -0.484446, 0.728478,
		46.570049, 34.903702, 32.650742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.586571, 35.792217, 32.565903>,  <46.909122, 35.242813, 32.140808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.586571, 35.792217, 32.565903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.627987, 35.450047, 32.768890>,  <46.652836, 35.244743, 32.890682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.627987, 35.450047, 32.768890>,  <46.586571, 35.792217, 32.565903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.627987, 35.450047, 32.768890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611983, 0.456993, 0.645472,
		-0.784064, 0.243731, 0.570823,
		0.103540, -0.855425, 0.507471,
		46.659050, 35.193420, 32.921131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.521465, 35.971367, 33.271412>,  <46.586571, 35.792217, 32.565903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.521465, 35.971367, 33.271412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.704105, 35.615788, 33.257095>,  <46.813690, 35.402439, 33.248505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.704105, 35.615788, 33.257095>,  <46.521465, 35.971367, 33.271412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.704105, 35.615788, 33.257095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682250, 0.324044, 0.655386,
		-0.571007, -0.323670, 0.754446,
		0.456602, -0.888951, -0.035793,
		46.841087, 35.349102, 33.246357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.610893, 35.743027, 33.868942>,  <46.521465, 35.971367, 33.271412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.610893, 35.743027, 33.868942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912521, 35.605030, 33.645382>,  <47.093498, 35.522232, 33.511246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912521, 35.605030, 33.645382>,  <46.610893, 35.743027, 33.868942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.912521, 35.605030, 33.645382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656795, 0.398882, 0.639932,
		0.002166, -0.849633, 0.527370,
		0.754066, -0.344989, -0.558899,
		47.138741, 35.501534, 33.477711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.161621, 35.385307, 34.279701>,  <46.610893, 35.743027, 33.868942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.161621, 35.385307, 34.279701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.301128, 35.586189, 33.963181>,  <47.384830, 35.706718, 33.773270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.301128, 35.586189, 33.963181>,  <47.161621, 35.385307, 34.279701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.301128, 35.586189, 33.963181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497909, 0.616022, 0.610412,
		0.794009, -0.606886, -0.035204,
		0.348764, 0.502201, -0.791301,
		47.405758, 35.736851, 33.725792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.552105, 34.926517, 34.722412>,  <47.161621, 35.385307, 34.279701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.552105, 34.926517, 34.722412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538719, 34.896412, 35.121052>,  <47.530689, 34.878349, 35.360237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538719, 34.896412, 35.121052>,  <47.552105, 34.926517, 34.722412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.538719, 34.896412, 35.121052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506153, 0.861105, 0.048038,
		-0.861794, -0.502826, -0.066909,
		-0.033461, -0.075265, 0.996602,
		47.528683, 34.873833, 35.420033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.411453, 30.105185, 27.631075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.049824, 30.164581, 27.470776>,  <40.832848, 30.200220, 27.374596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.049824, 30.164581, 27.470776>,  <41.411453, 30.105185, 27.631075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049824, 30.164581, 27.470776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363953, 0.224025, 0.904075,
		0.224025, 0.963205, -0.148491,
		-0.904075, 0.148491, -0.400748,
		40.778603, 30.209129, 27.350552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163586, 30.802771, 27.876089>,  <41.411453, 30.105185, 27.631075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163586, 30.802771, 27.876089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.851498, 30.571066, 27.781679>,  <40.664246, 30.432043, 27.725033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.851498, 30.571066, 27.781679>,  <41.163586, 30.802771, 27.876089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851498, 30.571066, 27.781679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362473, 0.111188, 0.925338,
		-0.509769, 0.807523, -0.296718,
		-0.780223, -0.579261, -0.236025,
		40.617432, 30.397287, 27.710871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649837, 31.120766, 28.257011>,  <41.163586, 30.802771, 27.876089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649837, 31.120766, 28.257011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.476555, 30.770054, 28.173498>,  <40.372585, 30.559628, 28.123390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.476555, 30.770054, 28.173498>,  <40.649837, 31.120766, 28.257011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476555, 30.770054, 28.173498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469016, 0.021492, 0.882928,
		-0.769644, 0.480415, -0.420534,
		-0.433210, -0.876778, -0.208781,
		40.346592, 30.507021, 28.110865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880302, 31.173626, 28.390480>,  <40.649837, 31.120766, 28.257011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880302, 31.173626, 28.390480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.976593, 30.785849, 28.409397>,  <40.034367, 30.553183, 28.420748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.976593, 30.785849, 28.409397>,  <39.880302, 31.173626, 28.390480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976593, 30.785849, 28.409397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536467, -0.092288, 0.838860,
		-0.808861, -0.227303, -0.542289,
		0.240722, -0.969441, 0.047293,
		40.048809, 30.495016, 28.423584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284351, 30.973890, 28.669645>,  <39.880302, 31.173626, 28.390480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284351, 30.973890, 28.669645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578678, 30.715864, 28.752077>,  <39.755272, 30.561049, 28.801537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578678, 30.715864, 28.752077>,  <39.284351, 30.973890, 28.669645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578678, 30.715864, 28.752077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376657, -0.136955, 0.916173,
		-0.562768, -0.751753, -0.343742,
		0.735813, -0.645066, 0.206079,
		39.799423, 30.522345, 28.813900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875092, 30.574150, 29.015814>,  <39.284351, 30.973890, 28.669645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875092, 30.574150, 29.015814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.254517, 30.471622, 29.090139>,  <39.482170, 30.410105, 29.134735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.254517, 30.471622, 29.090139>,  <38.875092, 30.574150, 29.015814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254517, 30.471622, 29.090139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225639, -0.135668, 0.964718,
		-0.222072, -0.957023, -0.186527,
		0.948563, -0.256324, 0.185814,
		39.539085, 30.394726, 29.145884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756958, 30.025084, 29.434673>,  <38.875092, 30.574150, 29.015814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756958, 30.025084, 29.434673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134121, 30.142551, 29.497519>,  <39.360420, 30.213032, 29.535225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134121, 30.142551, 29.497519>,  <38.756958, 30.025084, 29.434673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134121, 30.142551, 29.497519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147464, -0.054856, 0.987545,
		0.298629, -0.954332, -0.008419,
		0.942908, 0.293668, 0.157111,
		39.416992, 30.230652, 29.544651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050709, 29.617859, 29.993887>,  <38.756958, 30.025084, 29.434673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050709, 29.617859, 29.993887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.262707, 29.957058, 29.992992>,  <39.389904, 30.160578, 29.992456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.262707, 29.957058, 29.992992>,  <39.050709, 29.617859, 29.993887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262707, 29.957058, 29.992992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019471, 0.014804, 0.999701,
		0.847776, -0.529794, 0.024357,
		0.529996, 0.847997, -0.002234,
		39.421707, 30.211456, 29.992323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644783, 29.582127, 30.468386>,  <39.050709, 29.617859, 29.993887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644783, 29.582127, 30.468386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.548512, 29.966906, 30.416647>,  <39.490749, 30.197773, 30.385605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.548512, 29.966906, 30.416647>,  <39.644783, 29.582127, 30.468386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548512, 29.966906, 30.416647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013445, 0.129945, 0.991430,
		0.970511, 0.240356, -0.018342,
		-0.240680, 0.961948, -0.129345,
		39.476307, 30.255489, 30.377844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875675, 29.934546, 31.113144>,  <39.644783, 29.582127, 30.468386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875675, 29.934546, 31.113144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.666508, 30.227699, 30.939049>,  <39.541008, 30.403591, 30.834593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.666508, 30.227699, 30.939049>,  <39.875675, 29.934546, 31.113144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666508, 30.227699, 30.939049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048233, 0.484352, 0.873543,
		0.851015, 0.477787, -0.217928,
		-0.522921, 0.732887, -0.435236,
		39.509632, 30.447565, 30.808477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198532, 30.509710, 31.398319>,  <39.875675, 29.934546, 31.113144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198532, 30.509710, 31.398319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.828701, 30.579998, 31.263102>,  <39.606800, 30.622171, 31.181971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.828701, 30.579998, 31.263102>,  <40.198532, 30.509710, 31.398319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828701, 30.579998, 31.263102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219142, 0.480528, 0.849158,
		0.311654, 0.859194, -0.405779,
		-0.924580, 0.175720, -0.338044,
		39.551327, 30.632713, 31.161688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170116, 31.114021, 31.598738>,  <40.198532, 30.509710, 31.398319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170116, 31.114021, 31.598738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782703, 31.023165, 31.558052>,  <39.550255, 30.968651, 31.533640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782703, 31.023165, 31.558052>,  <40.170116, 31.114021, 31.598738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782703, 31.023165, 31.558052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221042, 0.597281, 0.770971,
		-0.114366, 0.769196, -0.628695,
		-0.968535, -0.227141, -0.101716,
		39.492142, 30.955023, 31.527536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789371, 31.703621, 31.661970>,  <40.170116, 31.114021, 31.598738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789371, 31.703621, 31.661970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.562748, 31.395639, 31.779398>,  <39.426773, 31.210850, 31.849854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.562748, 31.395639, 31.779398>,  <39.789371, 31.703621, 31.661970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562748, 31.395639, 31.779398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361055, 0.552198, 0.751476,
		-0.740710, 0.319761, -0.590848,
		-0.566558, -0.769955, 0.293567,
		39.392780, 31.164654, 31.867468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010468, 31.898064, 31.724361>,  <39.789371, 31.703621, 31.661970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010468, 31.898064, 31.724361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013409, 31.559389, 31.937178>,  <39.015171, 31.356184, 32.064869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013409, 31.559389, 31.937178>,  <39.010468, 31.898064, 31.724361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013409, 31.559389, 31.937178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393256, 0.486737, 0.780024,
		-0.919400, -0.214960, -0.329387,
		0.007349, -0.846687, 0.532040,
		39.015614, 31.305384, 32.096790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393879, 31.940844, 32.130413>,  <39.010468, 31.898064, 31.724361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393879, 31.940844, 32.130413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.624855, 31.672188, 32.316086>,  <38.763439, 31.510994, 32.427490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.624855, 31.672188, 32.316086>,  <38.393879, 31.940844, 32.130413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624855, 31.672188, 32.316086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095809, 0.508879, 0.855490,
		-0.810793, -0.538465, 0.229497,
		0.577438, -0.671638, 0.464186,
		38.798088, 31.470697, 32.455341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004025, 31.751593, 32.727501>,  <38.393879, 31.940844, 32.130413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004025, 31.751593, 32.727501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.384323, 31.669613, 32.820518>,  <38.612503, 31.620424, 32.876328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.384323, 31.669613, 32.820518>,  <38.004025, 31.751593, 32.727501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384323, 31.669613, 32.820518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118047, 0.454280, 0.883003,
		-0.286613, -0.866963, 0.407712,
		0.950746, -0.204951, 0.232545,
		38.669548, 31.608128, 32.890282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902561, 31.583408, 33.501995>,  <38.004025, 31.751593, 32.727501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902561, 31.583408, 33.501995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.293308, 31.624277, 33.426849>,  <38.527756, 31.648798, 33.381763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.293308, 31.624277, 33.426849>,  <37.902561, 31.583408, 33.501995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293308, 31.624277, 33.426849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129517, 0.416366, 0.899925,
		0.170167, -0.903438, 0.393501,
		0.976866, 0.102172, -0.187863,
		38.586369, 31.654928, 33.370491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180099, 31.445892, 34.086632>,  <37.902561, 31.583408, 33.501995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180099, 31.445892, 34.086632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.483341, 31.638103, 33.910278>,  <38.665287, 31.753429, 33.804466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.483341, 31.638103, 33.910278>,  <38.180099, 31.445892, 34.086632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483341, 31.638103, 33.910278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116484, 0.565405, 0.816547,
		0.641652, -0.670379, 0.372659,
		0.758099, 0.480530, -0.440882,
		38.710773, 31.782261, 33.778015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603779, 31.488745, 34.610565>,  <38.180099, 31.445892, 34.086632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603779, 31.488745, 34.610565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.720715, 31.772688, 34.354240>,  <38.790878, 31.943054, 34.200447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.720715, 31.772688, 34.354240>,  <38.603779, 31.488745, 34.610565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720715, 31.772688, 34.354240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238962, 0.594600, 0.767690,
		0.925977, -0.377556, 0.004197,
		0.292342, 0.709860, -0.640808,
		38.808418, 31.985645, 34.161999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259186, 31.621088, 34.836403>,  <38.603779, 31.488745, 34.610565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259186, 31.621088, 34.836403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.099178, 31.938824, 34.653534>,  <39.003174, 32.129467, 34.543812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.099178, 31.938824, 34.653534>,  <39.259186, 31.621088, 34.836403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099178, 31.938824, 34.653534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234697, 0.570972, 0.786707,
		0.885949, 0.207396, -0.414826,
		-0.400014, 0.794341, -0.457177,
		38.979176, 32.177128, 34.516380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647789, 32.211536, 35.024204>,  <39.259186, 31.621088, 34.836403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647789, 32.211536, 35.024204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327751, 32.399521, 34.875088>,  <39.135727, 32.512314, 34.785618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327751, 32.399521, 34.875088>,  <39.647789, 32.211536, 35.024204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327751, 32.399521, 34.875088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004274, 0.625911, 0.779883,
		0.599854, 0.622389, -0.502799,
		-0.800098, 0.469964, -0.372795,
		39.087723, 32.540512, 34.763248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765858, 32.861488, 35.198498>,  <39.647789, 32.211536, 35.024204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765858, 32.861488, 35.198498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385559, 32.925846, 35.092522>,  <39.157379, 32.964458, 35.028938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385559, 32.925846, 35.092522>,  <39.765858, 32.861488, 35.198498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385559, 32.925846, 35.092522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108217, 0.628654, 0.770119,
		0.290460, 0.760860, -0.580280,
		-0.950748, 0.160893, -0.264937,
		39.100334, 32.974113, 35.013039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469616, 33.082787, 35.506538>,  <39.765858, 32.861488, 35.198498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469616, 33.082787, 35.506538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.846909, 33.215370, 35.515072>,  <41.073284, 33.294918, 35.520191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.846909, 33.215370, 35.515072>,  <40.469616, 33.082787, 35.506538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846909, 33.215370, 35.515072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115910, -0.268283, -0.956341,
		-0.311260, 0.904523, -0.291472,
		0.943229, 0.331456, 0.021337,
		41.129879, 33.314808, 35.521473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570698, 33.517857, 34.931164>,  <40.469616, 33.082787, 35.506538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570698, 33.517857, 34.931164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.946171, 33.402557, 35.006832>,  <41.171455, 33.333378, 35.052235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.946171, 33.402557, 35.006832>,  <40.570698, 33.517857, 34.931164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946171, 33.402557, 35.006832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037698, -0.459579, -0.887337,
		0.342709, 0.840061, -0.420533,
		0.938685, -0.288245, 0.189170,
		41.227776, 33.316086, 35.063583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953602, 33.667843, 34.328094>,  <40.570698, 33.517857, 34.931164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953602, 33.667843, 34.328094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.182991, 33.388287, 34.499058>,  <41.320625, 33.220554, 34.601635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.182991, 33.388287, 34.499058>,  <40.953602, 33.667843, 34.328094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182991, 33.388287, 34.499058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199730, -0.386708, -0.900314,
		0.794502, 0.601676, -0.082179,
		0.573476, -0.698887, 0.427412,
		41.355034, 33.178619, 34.627281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555435, 33.615746, 33.914890>,  <40.953602, 33.667843, 34.328094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555435, 33.615746, 33.914890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.565434, 33.267448, 34.111328>,  <41.571434, 33.058468, 34.229191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.565434, 33.267448, 34.111328>,  <41.555435, 33.615746, 33.914890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565434, 33.267448, 34.111328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359797, -0.450495, -0.817068,
		0.932696, 0.197119, 0.302032,
		0.024995, -0.870746, 0.491098,
		41.572933, 33.006226, 34.258656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229649, 33.359787, 33.822102>,  <41.555435, 33.615746, 33.914890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229649, 33.359787, 33.822102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.982819, 33.059368, 33.916035>,  <41.834721, 32.879116, 33.972397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.982819, 33.059368, 33.916035>,  <42.229649, 33.359787, 33.822102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982819, 33.059368, 33.916035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420713, -0.567077, -0.708113,
		0.664996, -0.338160, 0.665904,
		-0.617074, -0.751047, 0.234836,
		41.797695, 32.834053, 33.986485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675201, 32.698231, 33.798691>,  <42.229649, 33.359787, 33.822102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675201, 32.698231, 33.798691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.290634, 32.593365, 33.765373>,  <42.059895, 32.530445, 33.745384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.290634, 32.593365, 33.765373>,  <42.675201, 32.698231, 33.798691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290634, 32.593365, 33.765373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222793, -0.564537, -0.794771,
		0.161339, -0.782667, 0.601167,
		-0.961423, -0.262164, -0.083291,
		42.002209, 32.514717, 33.740387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715282, 32.071453, 33.431129>,  <42.675201, 32.698231, 33.798691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715282, 32.071453, 33.431129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.317924, 32.110962, 33.407795>,  <42.079510, 32.134666, 33.393795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.317924, 32.110962, 33.407795>,  <42.715282, 32.071453, 33.431129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317924, 32.110962, 33.407795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001821, -0.522036, -0.852921,
		-0.114693, -0.847185, 0.518770,
		-0.993399, 0.098769, -0.058332,
		42.019905, 32.140594, 33.390297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308094, 31.329679, 33.440586>,  <42.715282, 32.071453, 33.431129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308094, 31.329679, 33.440586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.125366, 31.629251, 33.248577>,  <42.015728, 31.808994, 33.133373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.125366, 31.629251, 33.248577>,  <42.308094, 31.329679, 33.440586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125366, 31.629251, 33.248577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175504, -0.453131, -0.873997,
		-0.872075, -0.483505, 0.075559,
		-0.456819, 0.748930, -0.480021,
		41.988319, 31.853930, 33.104572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015079, 31.081818, 32.841728>,  <42.308094, 31.329679, 33.440586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015079, 31.081818, 32.841728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.005325, 31.469048, 32.741940>,  <41.999474, 31.701385, 32.682068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.005325, 31.469048, 32.741940>,  <42.015079, 31.081818, 32.841728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005325, 31.469048, 32.741940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269615, -0.233931, -0.934122,
		-0.962659, -0.090042, -0.255303,
		-0.024387, 0.968075, -0.249472,
		41.998009, 31.759470, 32.667099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607697, 31.125175, 32.202126>,  <42.015079, 31.081818, 32.841728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607697, 31.125175, 32.202126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.795151, 31.476105, 32.243473>,  <41.907623, 31.686663, 32.268280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.795151, 31.476105, 32.243473>,  <41.607697, 31.125175, 32.202126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795151, 31.476105, 32.243473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269237, -0.030405, -0.962594,
		-0.841365, 0.478933, -0.250457,
		0.468633, 0.877325, 0.103365,
		41.935741, 31.739302, 32.274483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468697, 31.474894, 31.605793>,  <41.607697, 31.125175, 32.202126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468697, 31.474894, 31.605793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.781528, 31.669432, 31.761646>,  <41.969227, 31.786154, 31.855158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.781528, 31.669432, 31.761646>,  <41.468697, 31.474894, 31.605793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781528, 31.669432, 31.761646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458703, -0.026046, -0.888208,
		-0.421828, 0.873378, -0.243458,
		0.782083, 0.486346, 0.389634,
		42.016151, 31.815336, 31.878536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524174, 32.234741, 31.191845>,  <41.468697, 31.474894, 31.605793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524174, 32.234741, 31.191845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.876781, 32.142178, 31.356462>,  <42.088348, 32.086639, 31.455233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.876781, 32.142178, 31.356462>,  <41.524174, 32.234741, 31.191845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876781, 32.142178, 31.356462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423532, 0.002360, -0.905878,
		0.208659, 0.972853, 0.100091,
		0.881522, -0.231412, 0.411542,
		42.141239, 32.072754, 31.479925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953297, 32.753365, 31.049412>,  <41.524174, 32.234741, 31.191845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953297, 32.753365, 31.049412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.171379, 32.426743, 31.125290>,  <42.302231, 32.230770, 31.170816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.171379, 32.426743, 31.125290>,  <41.953297, 32.753365, 31.049412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171379, 32.426743, 31.125290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539021, 0.168168, -0.825334,
		0.642030, 0.552229, 0.531827,
		0.545209, -0.816555, 0.189694,
		42.334942, 32.181774, 31.182198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580791, 32.925949, 30.820591>,  <41.953297, 32.753365, 31.049412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580791, 32.925949, 30.820591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.608833, 32.527950, 30.849087>,  <42.625660, 32.289150, 30.866184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.608833, 32.527950, 30.849087>,  <42.580791, 32.925949, 30.820591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608833, 32.527950, 30.849087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456145, -0.031535, -0.889346,
		0.887140, 0.094844, 0.451650,
		0.070106, -0.994993, 0.071239,
		42.629864, 32.229454, 30.870459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149174, 32.758312, 30.475513>,  <42.580791, 32.925949, 30.820591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149174, 32.758312, 30.475513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.936523, 32.419556, 30.480333>,  <42.808933, 32.216301, 30.483225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.936523, 32.419556, 30.480333>,  <43.149174, 32.758312, 30.475513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936523, 32.419556, 30.480333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222334, -0.153270, -0.962848,
		0.817275, -0.509199, 0.269776,
		-0.531630, -0.846891, 0.012052,
		42.777035, 32.165489, 30.483950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583832, 32.434544, 30.052952>,  <43.149174, 32.758312, 30.475513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583832, 32.434544, 30.052952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.227757, 32.252476, 30.060852>,  <43.014111, 32.143234, 30.065592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.227757, 32.252476, 30.060852>,  <43.583832, 32.434544, 30.052952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227757, 32.252476, 30.060852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090695, -0.219526, -0.971382,
		0.446476, -0.862920, 0.236701,
		-0.890187, -0.455167, 0.019751,
		42.960701, 32.115925, 30.066778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699860, 31.794048, 29.811220>,  <43.583832, 32.434544, 30.052952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699860, 31.794048, 29.811220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.302803, 31.803411, 29.763693>,  <43.064568, 31.809031, 29.735176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.302803, 31.803411, 29.763693>,  <43.699860, 31.794048, 29.811220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302803, 31.803411, 29.763693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111186, -0.212688, -0.970774,
		-0.047995, -0.976840, 0.208520,
		-0.992640, 0.023408, -0.118819,
		43.005013, 31.810434, 29.728046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.407459, 31.176422, 29.414078>,  <43.699860, 31.794048, 29.811220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.407459, 31.176422, 29.414078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.116886, 31.444010, 29.351116>,  <42.942543, 31.604563, 29.313339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.116886, 31.444010, 29.351116>,  <43.407459, 31.176422, 29.414078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116886, 31.444010, 29.351116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090398, -0.320063, -0.943074,
		-0.681265, -0.670851, 0.292978,
		-0.726434, 0.668968, -0.157404,
		42.898956, 31.644701, 29.303894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.813431, 30.711380, 29.000645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.762791, 31.104725, 28.948540>,  <42.732407, 31.340733, 28.917276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.762791, 31.104725, 28.948540>,  <42.813431, 30.711380, 29.000645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762791, 31.104725, 28.948540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047574, -0.137185, -0.989402,
		-0.990812, -0.119066, 0.064151,
		-0.126604, 0.983363, -0.130260,
		42.724808, 31.399734, 28.909462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365414, 30.713938, 28.450947>,  <42.813431, 30.711380, 29.000645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365414, 30.713938, 28.450947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.480175, 31.096613, 28.431229>,  <42.549030, 31.326218, 28.419397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.480175, 31.096613, 28.431229>,  <42.365414, 30.713938, 28.450947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480175, 31.096613, 28.431229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112631, -0.084789, -0.990013,
		-0.951315, 0.278487, -0.132080,
		0.286905, 0.956690, -0.049295,
		42.566246, 31.383619, 28.416441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029182, 30.968086, 27.870026>,  <42.365414, 30.713938, 28.450947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029182, 30.968086, 27.870026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.337418, 31.213818, 27.937895>,  <42.522358, 31.361258, 27.978617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.337418, 31.213818, 27.937895>,  <42.029182, 30.968086, 27.870026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337418, 31.213818, 27.937895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127894, 0.111753, -0.985472,
		-0.624367, 0.781095, 0.007546,
		0.770590, 0.614331, 0.169672,
		42.568596, 31.398117, 27.988796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910496, 31.467398, 27.439817>,  <42.029182, 30.968086, 27.870026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910496, 31.467398, 27.439817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.301991, 31.493176, 27.517704>,  <42.536888, 31.508642, 27.564436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.301991, 31.493176, 27.517704>,  <41.910496, 31.467398, 27.439817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301991, 31.493176, 27.517704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194854, 0.004202, -0.980823,
		-0.064029, 0.997912, -0.008445,
		0.978740, 0.064447, 0.194716,
		42.595612, 31.512510, 27.576118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186119, 31.967957, 26.959229>,  <41.910496, 31.467398, 27.439817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186119, 31.967957, 26.959229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.506489, 31.762745, 27.082727>,  <42.698711, 31.639618, 27.156826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.506489, 31.762745, 27.082727>,  <42.186119, 31.967957, 26.959229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506489, 31.762745, 27.082727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303944, -0.095916, -0.947849,
		0.515886, 0.852997, 0.079110,
		0.800924, -0.513027, 0.308745,
		42.746765, 31.608837, 27.175350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732628, 32.265930, 26.591024>,  <42.186119, 31.967957, 26.959229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732628, 32.265930, 26.591024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.869576, 31.906855, 26.701981>,  <42.951744, 31.691410, 26.768555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.869576, 31.906855, 26.701981>,  <42.732628, 32.265930, 26.591024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869576, 31.906855, 26.701981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371260, -0.141953, -0.917614,
		0.863106, 0.417142, 0.284676,
		0.342365, -0.897687, 0.277389,
		42.972286, 31.637548, 26.785196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470097, 32.224335, 26.289198>,  <42.732628, 32.265930, 26.591024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470097, 32.224335, 26.289198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.318291, 31.859013, 26.348310>,  <43.227207, 31.639818, 26.383778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.318291, 31.859013, 26.348310>,  <43.470097, 32.224335, 26.289198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318291, 31.859013, 26.348310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291313, -0.269571, -0.917861,
		0.878128, -0.305287, 0.368363,
		-0.379511, -0.913308, 0.147784,
		43.204437, 31.585020, 26.392645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944637, 31.766268, 26.054699>,  <43.470097, 32.224335, 26.289198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944637, 31.766268, 26.054699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.606083, 31.553291, 26.050095>,  <43.402950, 31.425505, 26.047333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.606083, 31.553291, 26.050095>,  <43.944637, 31.766268, 26.054699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606083, 31.553291, 26.050095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205326, -0.306299, -0.929528,
		0.491396, -0.789104, 0.368572,
		-0.846387, -0.532444, -0.011510,
		43.352165, 31.393559, 26.046642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119930, 31.078363, 25.935112>,  <43.944637, 31.766268, 26.054699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119930, 31.078363, 25.935112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.737316, 31.102213, 25.820934>,  <43.507748, 31.116524, 25.752428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.737316, 31.102213, 25.820934>,  <44.119930, 31.078363, 25.935112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737316, 31.102213, 25.820934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214842, -0.517768, -0.828106,
		-0.197169, -0.853441, 0.482456,
		-0.956539, 0.059625, -0.285443,
		43.450356, 31.120100, 25.735302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.029827, 30.456385, 25.627748>,  <44.119930, 31.078363, 25.935112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.029827, 30.456385, 25.627748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.745365, 30.697069, 25.482313>,  <43.574688, 30.841480, 25.395052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.745365, 30.697069, 25.482313>,  <44.029827, 30.456385, 25.627748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745365, 30.697069, 25.482313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029160, -0.491483, -0.870399,
		-0.702429, -0.629592, 0.331975,
		-0.711156, 0.601713, -0.363591,
		43.532017, 30.877583, 25.373236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446598, 30.027908, 25.397879>,  <44.029827, 30.456385, 25.627748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446598, 30.027908, 25.397879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.415310, 30.370680, 25.194094>,  <43.396538, 30.576344, 25.071823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.415310, 30.370680, 25.194094>,  <43.446598, 30.027908, 25.397879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415310, 30.370680, 25.194094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083579, -0.503593, -0.859888,
		-0.993427, -0.109838, -0.032232,
		-0.078217, 0.856930, -0.509463,
		43.391846, 30.627758, 25.041254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237877, 29.827810, 24.720278>,  <43.446598, 30.027908, 25.397879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237877, 29.827810, 24.720278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.367744, 30.200521, 24.655302>,  <43.445663, 30.424149, 24.616318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.367744, 30.200521, 24.655302>,  <43.237877, 29.827810, 24.720278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367744, 30.200521, 24.655302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152812, -0.221159, -0.963191,
		-0.933403, 0.287893, -0.214189,
		0.324666, 0.931776, -0.162437,
		43.465145, 30.480055, 24.606571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844940, 30.023640, 24.110977>,  <43.237877, 29.827810, 24.720278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844940, 30.023640, 24.110977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.152657, 30.275736, 24.069048>,  <43.337288, 30.426992, 24.043890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.152657, 30.275736, 24.069048>,  <42.844940, 30.023640, 24.110977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152657, 30.275736, 24.069048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052440, -0.225800, -0.972761,
		-0.636740, 0.742842, -0.206756,
		0.769293, 0.630238, -0.104821,
		43.383446, 30.464808, 24.037601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741913, 30.325247, 23.411850>,  <42.844940, 30.023640, 24.110977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741913, 30.325247, 23.411850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.103088, 30.454716, 23.524946>,  <43.319794, 30.532398, 23.592804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.103088, 30.454716, 23.524946>,  <42.741913, 30.325247, 23.411850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103088, 30.454716, 23.524946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288636, 0.030735, -0.956945,
		-0.318428, 0.945669, -0.065672,
		0.902936, 0.323674, 0.282741,
		43.373970, 30.551817, 23.609768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931862, 30.968550, 23.049690>,  <42.741913, 30.325247, 23.411850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931862, 30.968550, 23.049690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.273701, 30.785761, 23.148355>,  <43.478806, 30.676088, 23.207554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.273701, 30.785761, 23.148355>,  <42.931862, 30.968550, 23.049690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273701, 30.785761, 23.148355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302570, 0.052143, -0.951700,
		0.422038, 0.887952, 0.182827,
		0.854596, -0.456971, 0.246662,
		43.530079, 30.648670, 23.222355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340355, 31.238443, 22.612570>,  <42.931862, 30.968550, 23.049690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340355, 31.238443, 22.612570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.560249, 30.932333, 22.746525>,  <43.692184, 30.748667, 22.826897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.560249, 30.932333, 22.746525>,  <43.340355, 31.238443, 22.612570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560249, 30.932333, 22.746525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404180, -0.107168, -0.908380,
		0.731049, 0.634720, 0.250395,
		0.549732, -0.765275, 0.334886,
		43.725170, 30.702751, 22.846991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944870, 31.438356, 22.498180>,  <43.340355, 31.238443, 22.612570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944870, 31.438356, 22.498180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.926788, 31.038843, 22.506079>,  <43.915939, 30.799135, 22.510818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.926788, 31.038843, 22.506079>,  <43.944870, 31.438356, 22.498180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926788, 31.038843, 22.506079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125972, -0.025310, -0.991711,
		0.991003, -0.042343, 0.126963,
		-0.045205, -0.998782, 0.019748,
		43.913227, 30.739208, 22.512003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509682, 31.182589, 22.159916>,  <43.944870, 31.438356, 22.498180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509682, 31.182589, 22.159916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.233585, 30.893219, 22.165825>,  <44.067928, 30.719597, 22.169371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.233585, 30.893219, 22.165825>,  <44.509682, 31.182589, 22.159916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233585, 30.893219, 22.165825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084414, -0.100784, -0.991321,
		0.718635, -0.683007, 0.130633,
		-0.690245, -0.723425, 0.014772,
		44.026512, 30.676191, 22.170256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698204, 30.776339, 21.636782>,  <44.509682, 31.182589, 22.159916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698204, 30.776339, 21.636782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.323307, 30.645105, 21.684017>,  <44.098370, 30.566366, 21.712358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.323307, 30.645105, 21.684017>,  <44.698204, 30.776339, 21.636782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.323307, 30.645105, 21.684017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089050, -0.102217, -0.990768,
		0.337123, -0.939103, 0.066586,
		-0.937240, -0.328081, 0.118087,
		44.042133, 30.546680, 21.719442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722485, 30.127541, 21.268097>,  <44.698204, 30.776339, 21.636782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722485, 30.127541, 21.268097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.346413, 30.256445, 21.312302>,  <44.120770, 30.333788, 21.338825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.346413, 30.256445, 21.312302>,  <44.722485, 30.127541, 21.268097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346413, 30.256445, 21.312302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219210, -0.323922, -0.920338,
		-0.260788, -0.889508, 0.375187,
		-0.940179, 0.322257, 0.110514,
		44.064358, 30.353123, 21.345455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358624, 29.601126, 21.035406>,  <44.722485, 30.127541, 21.268097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358624, 29.601126, 21.035406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.123291, 29.923849, 21.013777>,  <43.982090, 30.117483, 21.000799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.123291, 29.923849, 21.013777>,  <44.358624, 29.601126, 21.035406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123291, 29.923849, 21.013777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239194, -0.237521, -0.941472,
		-0.772430, -0.540968, 0.332725,
		-0.588336, 0.806807, -0.054072,
		43.946789, 30.165892, 20.997555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941982, 29.369907, 20.552219>,  <44.358624, 29.601126, 21.035406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941982, 29.369907, 20.552219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.848934, 29.758629, 20.536793>,  <43.793106, 29.991861, 20.527536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.848934, 29.758629, 20.536793>,  <43.941982, 29.369907, 20.552219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848934, 29.758629, 20.536793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225941, -0.092566, -0.969733,
		-0.945958, -0.216868, 0.241103,
		-0.232622, 0.971802, -0.038565,
		43.779148, 30.050169, 20.525223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166119, 29.527416, 20.309431>,  <43.941982, 29.369907, 20.552219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166119, 29.527416, 20.309431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.445938, 29.801929, 20.229788>,  <43.613831, 29.966639, 20.182001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.445938, 29.801929, 20.229788>,  <43.166119, 29.527416, 20.309431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445938, 29.801929, 20.229788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165412, -0.115548, -0.979432,
		-0.695176, 0.718096, 0.032688,
		0.699549, 0.686285, -0.199108,
		43.655804, 30.007814, 20.170055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626225, 29.601963, 20.791855>,  <43.166119, 29.527416, 20.309431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626225, 29.601963, 20.791855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.838100, 29.262690, 20.790112>,  <42.965225, 29.059126, 20.789064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.838100, 29.262690, 20.790112>,  <42.626225, 29.601963, 20.791855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838100, 29.262690, 20.790112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836444, 0.521489, 0.168558,
		-0.140694, -0.092930, 0.985682,
		0.529686, -0.848183, -0.004360,
		42.997005, 29.008234, 20.788803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405556, 29.331219, 20.131502>,  <42.626225, 29.601963, 20.791855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405556, 29.331219, 20.131502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.045395, 29.194326, 20.024055>,  <41.829300, 29.112192, 19.959587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.045395, 29.194326, 20.024055>,  <42.405556, 29.331219, 20.131502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045395, 29.194326, 20.024055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402688, 0.421865, 0.812325,
		-0.164681, 0.839588, -0.517660,
		-0.900401, -0.342230, -0.268619,
		41.775276, 29.091658, 19.943470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994968, 29.837858, 20.153856>,  <42.405556, 29.331219, 20.131502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994968, 29.837858, 20.153856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.707123, 29.560173, 20.159838>,  <41.534416, 29.393562, 20.163427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.707123, 29.560173, 20.159838>,  <41.994968, 29.837858, 20.153856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707123, 29.560173, 20.159838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495842, 0.528822, 0.688831,
		-0.486105, 0.488277, -0.724768,
		-0.719613, -0.694214, 0.014955,
		41.491238, 29.351910, 20.164324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359016, 30.246403, 20.286833>,  <41.994968, 29.837858, 20.153856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359016, 30.246403, 20.286833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.266434, 29.869905, 20.385212>,  <41.210884, 29.644007, 20.444241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.266434, 29.869905, 20.385212>,  <41.359016, 30.246403, 20.286833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266434, 29.869905, 20.385212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569671, 0.336066, 0.750023,
		-0.788609, 0.033485, -0.613983,
		-0.231453, -0.941243, 0.245949,
		41.196999, 29.587532, 20.458996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589714, 30.280357, 20.376585>,  <41.359016, 30.246403, 20.286833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589714, 30.280357, 20.376585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.773769, 29.990440, 20.581701>,  <40.884201, 29.816490, 20.704771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.773769, 29.990440, 20.581701>,  <40.589714, 30.280357, 20.376585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773769, 29.990440, 20.581701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528931, 0.240108, 0.813990,
		-0.713098, -0.645776, -0.272882,
		0.460134, -0.724791, 0.512792,
		40.911808, 29.773003, 20.735538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999432, 30.051193, 20.846069>,  <40.589714, 30.280357, 20.376585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999432, 30.051193, 20.846069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.347584, 29.920847, 20.993713>,  <40.556477, 29.842640, 21.082300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.347584, 29.920847, 20.993713>,  <39.999432, 30.051193, 20.846069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347584, 29.920847, 20.993713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245984, 0.361618, 0.899291,
		-0.426524, -0.873524, 0.234589,
		0.870384, -0.325864, 0.369112,
		40.608700, 29.823088, 21.104446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854340, 29.760227, 21.402496>,  <39.999432, 30.051193, 20.846069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854340, 29.760227, 21.402496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.244026, 29.816614, 21.472952>,  <40.477840, 29.850447, 21.515224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.244026, 29.816614, 21.472952>,  <39.854340, 29.760227, 21.402496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244026, 29.816614, 21.472952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198829, 0.167574, 0.965602,
		0.106600, -0.975729, 0.191282,
		0.974220, 0.140966, 0.176140,
		40.536293, 29.858904, 21.525793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933865, 29.388449, 22.042433>,  <39.854340, 29.760227, 21.402496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933865, 29.388449, 22.042433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.243355, 29.637108, 21.993607>,  <40.429050, 29.786304, 21.964310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.243355, 29.637108, 21.993607>,  <39.933865, 29.388449, 22.042433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243355, 29.637108, 21.993607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054202, 0.256930, 0.964909,
		0.631199, -0.739958, 0.232488,
		0.773725, 0.621650, -0.122067,
		40.475471, 29.823603, 21.956987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412010, 29.281199, 22.554810>,  <39.933865, 29.388449, 22.042433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412010, 29.281199, 22.554810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.494659, 29.654097, 22.435999>,  <40.544250, 29.877836, 22.364714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.494659, 29.654097, 22.435999>,  <40.412010, 29.281199, 22.554810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494659, 29.654097, 22.435999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028784, 0.297654, 0.954240,
		0.977997, -0.205719, 0.034669,
		0.206625, 0.932246, -0.297026,
		40.556648, 29.933771, 22.346891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983654, 29.514271, 22.855305>,  <40.412010, 29.281199, 22.554810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983654, 29.514271, 22.855305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807083, 29.859798, 22.758177>,  <40.701141, 30.067114, 22.699900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807083, 29.859798, 22.758177>,  <40.983654, 29.514271, 22.855305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807083, 29.859798, 22.758177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112523, 0.321768, 0.940108,
		0.890214, 0.387666, -0.239236,
		-0.441426, 0.863818, -0.242821,
		40.674656, 30.118944, 22.685331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527966, 30.027956, 23.071651>,  <40.983654, 29.514271, 22.855305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527966, 30.027956, 23.071651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.159988, 30.179712, 23.032124>,  <40.939201, 30.270765, 23.008408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.159988, 30.179712, 23.032124>,  <41.527966, 30.027956, 23.071651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159988, 30.179712, 23.032124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000524, 0.253251, 0.967400,
		0.392047, 0.889903, -0.233176,
		-0.919945, 0.379388, -0.098820,
		40.884007, 30.293530, 23.002478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587391, 30.608114, 23.351910>,  <41.527966, 30.027956, 23.071651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587391, 30.608114, 23.351910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.198166, 30.516893, 23.365412>,  <40.964630, 30.462160, 23.373512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.198166, 30.516893, 23.365412>,  <41.587391, 30.608114, 23.351910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198166, 30.516893, 23.365412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032045, 0.278791, 0.959817,
		-0.228299, 0.932881, -0.278590,
		-0.973064, -0.228053, 0.033754,
		40.906246, 30.448477, 23.375538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311413, 31.167646, 23.653627>,  <41.587391, 30.608114, 23.351910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311413, 31.167646, 23.653627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.030941, 30.885130, 23.692602>,  <40.862656, 30.715620, 23.715986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.030941, 30.885130, 23.692602>,  <41.311413, 31.167646, 23.653627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030941, 30.885130, 23.692602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073338, 0.207380, 0.975507,
		-0.709200, 0.676863, -0.197209,
		-0.701182, -0.706293, 0.097435,
		40.820587, 30.673243, 23.721832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808430, 31.450365, 23.996481>,  <41.311413, 31.167646, 23.653627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808430, 31.450365, 23.996481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.750237, 31.059374, 24.057636>,  <40.715321, 30.824780, 24.094330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.750237, 31.059374, 24.057636>,  <40.808430, 31.450365, 23.996481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750237, 31.059374, 24.057636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075645, 0.143089, 0.986815,
		-0.986465, 0.155127, 0.053125,
		-0.145480, -0.977477, 0.152887,
		40.706593, 30.766130, 24.103502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234467, 31.540792, 24.431379>,  <40.808430, 31.450365, 23.996481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234467, 31.540792, 24.431379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.381615, 31.176062, 24.504309>,  <40.469906, 30.957224, 24.548067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.381615, 31.176062, 24.504309>,  <40.234467, 31.540792, 24.431379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381615, 31.176062, 24.504309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240251, 0.096215, 0.965931,
		-0.898303, -0.399144, -0.183673,
		0.367873, -0.911826, 0.182325,
		40.491978, 30.902514, 24.559006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843616, 31.265873, 25.061419>,  <40.234467, 31.540792, 24.431379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843616, 31.265873, 25.061419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.125164, 30.982399, 25.042103>,  <40.294094, 30.812315, 25.030514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.125164, 30.982399, 25.042103>,  <39.843616, 31.265873, 25.061419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125164, 30.982399, 25.042103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058002, -0.125094, 0.990448,
		-0.707958, -0.694345, -0.129155,
		0.703869, -0.708687, -0.048288,
		40.336323, 30.769793, 25.027617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599663, 30.682045, 25.391935>,  <39.843616, 31.265873, 25.061419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599663, 30.682045, 25.391935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999554, 30.675337, 25.398478>,  <40.239487, 30.671312, 25.402403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999554, 30.675337, 25.398478>,  <39.599663, 30.682045, 25.391935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999554, 30.675337, 25.398478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019660, -0.220933, 0.975091,
		-0.012735, -0.975145, -0.221202,
		0.999726, -0.016767, 0.016358,
		40.299473, 30.670307, 25.403385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810505, 30.093519, 25.722963>,  <39.599663, 30.682045, 25.391935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810505, 30.093519, 25.722963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.143276, 30.314034, 25.748178>,  <40.342941, 30.446342, 25.763308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.143276, 30.314034, 25.748178>,  <39.810505, 30.093519, 25.722963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143276, 30.314034, 25.748178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115867, -0.283701, 0.951887,
		0.542647, -0.784600, -0.299895,
		0.831930, 0.551287, 0.063040,
		40.392857, 30.479420, 25.767090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366447, 29.628208, 26.035412>,  <39.810505, 30.093519, 25.722963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366447, 29.628208, 26.035412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.471611, 30.008907, 26.098726>,  <40.534710, 30.237328, 26.136715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.471611, 30.008907, 26.098726>,  <40.366447, 29.628208, 26.035412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471611, 30.008907, 26.098726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108166, -0.192097, 0.975397,
		0.958738, -0.239321, -0.153451,
		0.262910, 0.951748, 0.158285,
		40.550484, 30.294432, 26.146212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004375, 29.551933, 26.392048>,  <40.366447, 29.628208, 26.035412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004375, 29.551933, 26.392048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.839722, 29.912075, 26.448507>,  <40.740929, 30.128160, 26.482384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.839722, 29.912075, 26.448507>,  <41.004375, 29.551933, 26.392048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839722, 29.912075, 26.448507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111149, -0.104125, 0.988334,
		0.904547, 0.422517, -0.057213,
		-0.411631, 0.900354, 0.141148,
		40.716232, 30.182180, 26.490852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270760, 29.581791, 27.016411>,  <41.004375, 29.551933, 26.392048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270760, 29.581791, 27.016411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.994568, 29.865511, 26.959661>,  <40.828854, 30.035742, 26.925611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.994568, 29.865511, 26.959661>,  <41.270760, 29.581791, 27.016411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994568, 29.865511, 26.959661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171644, 0.029869, 0.984706,
		0.702689, 0.704275, 0.101122,
		-0.690483, 0.709299, -0.141873,
		40.787422, 30.078300, 26.917099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.221939, 31.732056, 32.062340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.882977, 31.841057, 31.880068>,  <42.679600, 31.906458, 31.770706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.882977, 31.841057, 31.880068>,  <43.221939, 31.732056, 32.062340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882977, 31.841057, 31.880068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414436, 0.196973, 0.888507,
		0.331877, 0.941777, -0.053981,
		-0.847408, 0.272504, -0.455677,
		42.628754, 31.922808, 31.743364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078415, 32.448395, 32.157333>,  <43.221939, 31.732056, 32.062340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078415, 32.448395, 32.157333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734974, 32.260441, 32.075344>,  <42.528912, 32.147667, 32.026150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734974, 32.260441, 32.075344>,  <43.078415, 32.448395, 32.157333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734974, 32.260441, 32.075344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307935, 0.153055, 0.939015,
		-0.409855, 0.869358, -0.276107,
		-0.858600, -0.469884, -0.204975,
		42.477394, 32.119476, 32.013851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624157, 32.894245, 32.419777>,  <43.078415, 32.448395, 32.157333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624157, 32.894245, 32.419777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.433689, 32.545002, 32.377926>,  <42.319408, 32.335457, 32.352814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.433689, 32.545002, 32.377926>,  <42.624157, 32.894245, 32.419777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433689, 32.545002, 32.377926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507768, 0.175860, 0.843353,
		-0.717939, 0.454704, -0.527075,
		-0.476167, -0.873108, -0.104627,
		42.290840, 32.283070, 32.346539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980709, 33.058353, 32.473679>,  <42.624157, 32.894245, 32.419777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980709, 33.058353, 32.473679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.980438, 32.663464, 32.537407>,  <41.980278, 32.426529, 32.575645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.980438, 32.663464, 32.537407>,  <41.980709, 33.058353, 32.473679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980438, 32.663464, 32.537407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501502, 0.138170, 0.854052,
		-0.865156, -0.079323, -0.495189,
		-0.000674, -0.987227, 0.159319,
		41.980236, 32.367294, 32.585201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300774, 32.920792, 32.640194>,  <41.980709, 33.058353, 32.473679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300774, 32.920792, 32.640194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.508247, 32.607185, 32.776596>,  <41.632732, 32.419022, 32.858437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.508247, 32.607185, 32.776596>,  <41.300774, 32.920792, 32.640194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508247, 32.607185, 32.776596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422189, 0.111959, 0.899567,
		-0.743452, -0.610563, -0.272931,
		0.518686, -0.784014, 0.341010,
		41.663853, 32.371983, 32.878899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793686, 32.563282, 33.112240>,  <41.300774, 32.920792, 32.640194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793686, 32.563282, 33.112240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.153278, 32.429821, 33.225742>,  <41.369034, 32.349743, 33.293842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.153278, 32.429821, 33.225742>,  <40.793686, 32.563282, 33.112240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153278, 32.429821, 33.225742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219968, 0.216294, 0.951226,
		-0.378754, -0.917547, 0.121050,
		0.898977, -0.333654, 0.283753,
		41.422970, 32.329723, 33.310867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725407, 32.033108, 33.720078>,  <40.793686, 32.563282, 33.112240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725407, 32.033108, 33.720078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.079468, 32.218231, 33.700829>,  <41.291904, 32.329304, 33.689281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.079468, 32.218231, 33.700829>,  <40.725407, 32.033108, 33.720078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079468, 32.218231, 33.700829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061773, 0.219385, 0.973681,
		0.461181, -0.858884, 0.222778,
		0.885153, 0.462805, -0.048121,
		41.345013, 32.357071, 33.686394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099514, 31.819967, 34.447094>,  <40.725407, 32.033108, 33.720078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099514, 31.819967, 34.447094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.321934, 32.122509, 34.309265>,  <41.455387, 32.304035, 34.226566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.321934, 32.122509, 34.309265>,  <41.099514, 31.819967, 34.447094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321934, 32.122509, 34.309265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022159, 0.427917, 0.903546,
		0.830851, -0.494785, 0.254705,
		0.556054, 0.756356, -0.344572,
		41.488750, 32.349415, 34.205894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515076, 31.941021, 34.963890>,  <41.099514, 31.819967, 34.447094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515076, 31.941021, 34.963890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.544983, 32.272530, 34.742062>,  <41.562927, 32.471436, 34.608967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.544983, 32.272530, 34.742062>,  <41.515076, 31.941021, 34.963890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544983, 32.272530, 34.742062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141023, 0.541749, 0.828626,
		0.987179, -0.140165, -0.076368,
		0.074772, 0.828772, -0.554569,
		41.567413, 32.521160, 34.575691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047150, 32.237713, 35.229744>,  <41.515076, 31.941021, 34.963890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047150, 32.237713, 35.229744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827934, 32.524921, 35.058121>,  <41.696404, 32.697247, 34.955147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827934, 32.524921, 35.058121>,  <42.047150, 32.237713, 35.229744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827934, 32.524921, 35.058121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016376, 0.522066, 0.852748,
		0.836293, 0.460312, -0.297871,
		-0.548038, 0.718025, -0.429062,
		41.663525, 32.740330, 34.929401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324467, 32.768990, 35.521984>,  <42.047150, 32.237713, 35.229744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324467, 32.768990, 35.521984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991409, 32.925785, 35.365498>,  <41.791576, 33.019863, 35.271606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991409, 32.925785, 35.365498>,  <42.324467, 32.768990, 35.521984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991409, 32.925785, 35.365498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077403, 0.617100, 0.783068,
		0.548375, 0.682297, -0.483482,
		-0.832642, 0.391992, -0.391215,
		41.741615, 33.043385, 35.248135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417149, 33.513290, 35.598289>,  <42.324467, 32.768990, 35.521984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417149, 33.513290, 35.598289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.024990, 33.448544, 35.553349>,  <41.789696, 33.409695, 35.526386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.024990, 33.448544, 35.553349>,  <42.417149, 33.513290, 35.598289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024990, 33.448544, 35.553349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185080, 0.560937, 0.806905,
		-0.067589, 0.811880, -0.579898,
		-0.980397, -0.161865, -0.112350,
		41.730869, 33.399982, 35.519642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034489, 34.253857, 35.459297>,  <42.417149, 33.513290, 35.598289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034489, 34.253857, 35.459297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.810680, 33.970753, 35.631809>,  <41.676395, 33.800888, 35.735317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.810680, 33.970753, 35.631809>,  <42.034489, 34.253857, 35.459297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810680, 33.970753, 35.631809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381519, 0.681894, 0.624070,
		-0.735784, 0.184638, -0.651560,
		-0.559522, -0.707764, 0.431284,
		41.642822, 33.758423, 35.761196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202560, 34.360321, 35.404648>,  <42.034489, 34.253857, 35.459297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202560, 34.360321, 35.404648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.282700, 34.115913, 35.710983>,  <41.330784, 33.969269, 35.894787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.282700, 34.115913, 35.710983>,  <41.202560, 34.360321, 35.404648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282700, 34.115913, 35.710983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603434, 0.538862, 0.587788,
		-0.771835, -0.579895, -0.260754,
		0.200345, -0.611023, 0.765841,
		41.342804, 33.932606, 35.940735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363361, 35.092640, 35.458698>,  <41.202560, 34.360321, 35.404648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363361, 35.092640, 35.458698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358276, 35.468555, 35.322094>,  <41.355225, 35.694107, 35.240131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358276, 35.468555, 35.322094>,  <41.363361, 35.092640, 35.458698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358276, 35.468555, 35.322094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229827, -0.335137, -0.913708,
		-0.973148, 0.066870, 0.220251,
		-0.012714, 0.939793, -0.341507,
		41.354462, 35.750492, 35.219643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757866, 35.193569, 35.189926>,  <41.363361, 35.092640, 35.458698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757866, 35.193569, 35.189926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.972462, 35.479584, 35.010635>,  <41.101219, 35.651192, 34.903061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.972462, 35.479584, 35.010635>,  <40.757866, 35.193569, 35.189926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972462, 35.479584, 35.010635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382695, -0.267241, -0.884380,
		-0.752144, 0.645995, 0.130267,
		0.536492, 0.715033, -0.448223,
		41.133408, 35.694096, 34.876167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266018, 35.568695, 34.663731>,  <40.757866, 35.193569, 35.189926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266018, 35.568695, 34.663731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633739, 35.666248, 34.540184>,  <40.854374, 35.724781, 34.466057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633739, 35.666248, 34.540184>,  <40.266018, 35.568695, 34.663731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633739, 35.666248, 34.540184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270152, -0.179615, -0.945916,
		-0.286166, 0.953027, -0.099237,
		0.919308, 0.243879, -0.308862,
		40.909531, 35.739410, 34.447525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101479, 36.017956, 34.047516>,  <40.266018, 35.568695, 34.663731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101479, 36.017956, 34.047516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.484631, 35.914482, 33.997627>,  <40.714520, 35.852398, 33.967693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.484631, 35.914482, 33.997627>,  <40.101479, 36.017956, 34.047516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484631, 35.914482, 33.997627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138780, -0.036750, -0.989641,
		0.251418, 0.965264, -0.071101,
		0.957877, -0.258681, -0.124720,
		40.771996, 35.836880, 33.960213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398613, 36.434284, 33.420109>,  <40.101479, 36.017956, 34.047516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398613, 36.434284, 33.420109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.645874, 36.122990, 33.464371>,  <40.794231, 35.936214, 33.490929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.645874, 36.122990, 33.464371>,  <40.398613, 36.434284, 33.420109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645874, 36.122990, 33.464371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109792, -0.224875, -0.968182,
		0.778355, 0.586333, -0.224450,
		0.618150, -0.778232, 0.110658,
		40.831318, 35.889519, 33.497566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950531, 36.490562, 32.794079>,  <40.398613, 36.434284, 33.420109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950531, 36.490562, 32.794079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.914497, 36.116829, 32.932011>,  <40.892876, 35.892590, 33.014771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.914497, 36.116829, 32.932011>,  <40.950531, 36.490562, 32.794079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914497, 36.116829, 32.932011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074969, -0.338892, -0.937833,
		0.993109, -0.110334, -0.039518,
		-0.090083, -0.934333, 0.344828,
		40.887474, 35.836529, 33.035458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124722, 36.062519, 32.224537>,  <40.950531, 36.490562, 32.794079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124722, 36.062519, 32.224537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.954720, 35.785229, 32.457363>,  <40.852718, 35.618855, 32.597057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.954720, 35.785229, 32.457363>,  <41.124722, 36.062519, 32.224537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954720, 35.785229, 32.457363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376029, -0.449710, -0.810162,
		0.823389, -0.563201, -0.069543,
		-0.425010, -0.693229, 0.582066,
		40.827217, 35.577259, 32.631985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416046, 35.452637, 32.009247>,  <41.124722, 36.062519, 32.224537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416046, 35.452637, 32.009247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.082767, 35.338737, 32.198860>,  <40.882801, 35.270397, 32.312630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.082767, 35.338737, 32.198860>,  <41.416046, 35.452637, 32.009247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082767, 35.338737, 32.198860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306655, -0.475428, -0.824579,
		0.460164, -0.832399, 0.308805,
		-0.833194, -0.284745, 0.474034,
		40.832809, 35.253315, 32.341072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334187, 34.784016, 31.836586>,  <41.416046, 35.452637, 32.009247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334187, 34.784016, 31.836586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.973072, 34.907673, 31.956186>,  <40.756401, 34.981869, 32.027946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.973072, 34.907673, 31.956186>,  <41.334187, 34.784016, 31.836586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973072, 34.907673, 31.956186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422848, -0.511024, -0.748367,
		-0.078555, -0.802050, 0.592068,
		-0.902789, 0.309143, 0.299002,
		40.702236, 35.000416, 32.045887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882019, 34.245991, 31.511421>,  <41.334187, 34.784016, 31.836586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882019, 34.245991, 31.511421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.646675, 34.556858, 31.600714>,  <40.505466, 34.743378, 31.654289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.646675, 34.556858, 31.600714>,  <40.882019, 34.245991, 31.511421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646675, 34.556858, 31.600714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663350, -0.306052, -0.682861,
		-0.462380, -0.549850, 0.695607,
		-0.588363, 0.777173, 0.223231,
		40.470165, 34.790009, 31.667683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186470, 34.094868, 31.457125>,  <40.882019, 34.245991, 31.511421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186470, 34.094868, 31.457125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.192814, 34.493221, 31.421427>,  <40.196621, 34.732235, 31.400007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.192814, 34.493221, 31.421427>,  <40.186470, 34.094868, 31.457125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192814, 34.493221, 31.421427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254323, -0.082304, -0.963611,
		-0.966989, 0.037978, 0.251971,
		0.015858, 0.995883, -0.089246,
		40.197571, 34.791985, 31.394653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637184, 34.283337, 31.116161>,  <40.186470, 34.094868, 31.457125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637184, 34.283337, 31.116161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.869919, 34.602055, 31.050951>,  <40.009560, 34.793285, 31.011824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.869919, 34.602055, 31.050951>,  <39.637184, 34.283337, 31.116161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869919, 34.602055, 31.050951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166894, -0.079213, -0.982788,
		-0.795997, 0.599032, 0.086892,
		0.581838, 0.796797, -0.163028,
		40.044472, 34.841095, 31.002043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275974, 34.602200, 30.488335>,  <39.637184, 34.283337, 31.116161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275974, 34.602200, 30.488335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628822, 34.790024, 30.503157>,  <39.840530, 34.902718, 30.512049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628822, 34.790024, 30.503157>,  <39.275974, 34.602200, 30.488335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628822, 34.790024, 30.503157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008180, 0.093924, -0.995546,
		-0.470953, 0.877888, 0.086693,
		0.882120, 0.469565, 0.037053,
		39.893459, 34.930893, 30.514273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139961, 35.103157, 29.903116>,  <39.275974, 34.602200, 30.488335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139961, 35.103157, 29.903116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.534321, 35.079189, 29.965616>,  <39.770935, 35.064808, 30.003117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.534321, 35.079189, 29.965616>,  <39.139961, 35.103157, 29.903116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534321, 35.079189, 29.965616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164602, 0.178917, -0.969997,
		0.030162, 0.982038, 0.186256,
		0.985899, -0.059915, 0.156249,
		39.830090, 35.061214, 30.012491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512512, 35.572632, 29.937225>,  <39.139961, 35.103157, 29.903116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512512, 35.572632, 29.937225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.128922, 35.564835, 29.824106>,  <37.898766, 35.560154, 29.756235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.128922, 35.564835, 29.824106>,  <38.512512, 35.572632, 29.937225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128922, 35.564835, 29.824106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274203, -0.189197, 0.942877,
		-0.071886, 0.981746, 0.176090,
		-0.958981, -0.019495, -0.282798,
		37.841228, 35.558987, 29.739267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145435, 35.951736, 30.511511>,  <38.512512, 35.572632, 29.937225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145435, 35.951736, 30.511511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.846481, 35.763485, 30.323925>,  <37.667110, 35.650536, 30.211372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.846481, 35.763485, 30.323925>,  <38.145435, 35.951736, 30.511511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846481, 35.763485, 30.323925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347935, -0.324078, 0.879724,
		-0.566001, 0.820662, 0.078464,
		-0.747385, -0.470624, -0.468965,
		37.622265, 35.622299, 30.183235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503838, 36.147923, 30.810886>,  <38.145435, 35.951736, 30.511511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503838, 36.147923, 30.810886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.420364, 35.797882, 30.636234>,  <37.370281, 35.587856, 30.531443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.420364, 35.797882, 30.636234>,  <37.503838, 36.147923, 30.810886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420364, 35.797882, 30.636234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439885, -0.314760, 0.841087,
		-0.873470, 0.367592, -0.319258,
		-0.208687, -0.875101, -0.436632,
		37.357758, 35.535351, 30.505245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805553, 35.991974, 31.040943>,  <37.503838, 36.147923, 30.810886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805553, 35.991974, 31.040943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.968040, 35.642418, 30.934137>,  <37.065533, 35.432682, 30.870054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.968040, 35.642418, 30.934137>,  <36.805553, 35.991974, 31.040943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968040, 35.642418, 30.934137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417297, -0.437373, 0.796598,
		-0.812927, -0.212168, -0.542342,
		0.406218, -0.873894, -0.267015,
		37.089905, 35.380249, 30.854033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370228, 35.560539, 31.325516>,  <36.805553, 35.991974, 31.040943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370228, 35.560539, 31.325516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.684589, 35.322826, 31.257187>,  <36.873207, 35.180199, 31.216188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.684589, 35.322826, 31.257187>,  <36.370228, 35.560539, 31.325516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684589, 35.322826, 31.257187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057661, -0.345491, 0.936649,
		-0.615651, -0.726268, -0.305790,
		0.785906, -0.594281, -0.170825,
		36.920361, 35.144543, 31.205940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128868, 34.891697, 31.351301>,  <36.370228, 35.560539, 31.325516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128868, 34.891697, 31.351301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.518768, 34.848457, 31.429462>,  <36.752708, 34.822514, 31.476360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.518768, 34.848457, 31.429462>,  <36.128868, 34.891697, 31.351301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518768, 34.848457, 31.429462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222517, -0.543842, 0.809149,
		0.018806, -0.832197, -0.554162,
		0.974747, -0.108094, 0.195405,
		36.811192, 34.816029, 31.488085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151836, 34.181519, 31.586586>,  <36.128868, 34.891697, 31.351301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151836, 34.181519, 31.586586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.481144, 34.375263, 31.704985>,  <36.678730, 34.491512, 31.776024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.481144, 34.375263, 31.704985>,  <36.151836, 34.181519, 31.586586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481144, 34.375263, 31.704985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018312, -0.498511, 0.866690,
		0.567352, -0.718942, -0.401540,
		0.823272, 0.484365, 0.295996,
		36.728127, 34.520573, 31.793783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628384, 33.693493, 31.821131>,  <36.151836, 34.181519, 31.586586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628384, 33.693493, 31.821131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.756115, 34.025661, 32.003750>,  <36.832752, 34.224960, 32.113323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.756115, 34.025661, 32.003750>,  <36.628384, 33.693493, 31.821131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756115, 34.025661, 32.003750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030416, -0.472543, 0.880783,
		0.947156, -0.295144, -0.125637,
		0.319326, 0.830418, 0.456549,
		36.851913, 34.274788, 32.140713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100327, 33.354267, 32.227634>,  <36.628384, 33.693493, 31.821131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100327, 33.354267, 32.227634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.030396, 33.716671, 32.381817>,  <36.988438, 33.934113, 32.474327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.030396, 33.716671, 32.381817>,  <37.100327, 33.354267, 32.227634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030396, 33.716671, 32.381817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228554, -0.418135, 0.879162,
		0.957705, 0.065601, 0.280173,
		-0.174824, 0.906013, 0.385457,
		36.977947, 33.988476, 32.497456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546463, 33.441780, 32.733932>,  <37.100327, 33.354267, 32.227634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546463, 33.441780, 32.733932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.266697, 33.699333, 32.858017>,  <37.098835, 33.853863, 32.932468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.266697, 33.699333, 32.858017>,  <37.546463, 33.441780, 32.733932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266697, 33.699333, 32.858017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033252, -0.462886, 0.885794,
		0.713940, 0.609224, 0.345160,
		-0.699417, 0.643881, 0.310214,
		37.056873, 33.892498, 32.951080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785091, 33.569702, 33.344830>,  <37.546463, 33.441780, 32.733932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785091, 33.569702, 33.344830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.403282, 33.688881, 33.349060>,  <37.174198, 33.760387, 33.351597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.403282, 33.688881, 33.349060>,  <37.785091, 33.569702, 33.344830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403282, 33.688881, 33.349060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111041, -0.388214, 0.914855,
		0.276687, 0.872076, 0.403644,
		-0.954523, 0.297949, 0.010577,
		37.116924, 33.778267, 33.352234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629135, 33.872952, 33.936588>,  <37.785091, 33.569702, 33.344830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629135, 33.872952, 33.936588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.305187, 33.702946, 33.774860>,  <37.110817, 33.600941, 33.677822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.305187, 33.702946, 33.774860>,  <37.629135, 33.872952, 33.936588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305187, 33.702946, 33.774860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369126, -0.166461, 0.914350,
		-0.455915, 0.889750, -0.022072,
		-0.809869, -0.425013, -0.404322,
		37.062225, 33.575443, 33.653564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.032726, 36.746815, 26.253365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752678, 36.464012, 26.213413>,  <38.584648, 36.294331, 26.189442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752678, 36.464012, 26.213413>,  <39.032726, 36.746815, 26.253365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752678, 36.464012, 26.213413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436265, 0.312829, 0.843689,
		-0.565246, 0.634259, -0.527460,
		-0.700121, -0.707004, -0.099880,
		38.542641, 36.251911, 26.183449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478569, 37.092796, 26.530735>,  <39.032726, 36.746815, 26.253365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478569, 37.092796, 26.530735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367191, 36.708618, 26.531750>,  <38.300365, 36.478111, 26.532358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367191, 36.708618, 26.531750>,  <38.478569, 37.092796, 26.530735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367191, 36.708618, 26.531750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539900, 0.158708, 0.826632,
		-0.794340, 0.228804, -0.562738,
		-0.278448, -0.960448, 0.002537,
		38.283657, 36.420483, 26.532511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770950, 37.080795, 26.839861>,  <38.478569, 37.092796, 26.530735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770950, 37.080795, 26.839861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894573, 36.700748, 26.823072>,  <37.968746, 36.472721, 26.813000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894573, 36.700748, 26.823072>,  <37.770950, 37.080795, 26.839861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894573, 36.700748, 26.823072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438714, -0.181585, 0.880089,
		-0.843807, -0.253589, -0.472950,
		0.309061, -0.950115, -0.041970,
		37.987293, 36.415714, 26.810482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159634, 36.666176, 27.020594>,  <37.770950, 37.080795, 26.839861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159634, 36.666176, 27.020594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511147, 36.492546, 27.099911>,  <37.722054, 36.388367, 27.147501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511147, 36.492546, 27.099911>,  <37.159634, 36.666176, 27.020594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511147, 36.492546, 27.099911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281014, -0.134854, 0.950182,
		-0.385714, -0.890724, -0.240490,
		0.878781, -0.434079, 0.198291,
		37.774780, 36.362324, 27.159399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950176, 36.057171, 27.421289>,  <37.159634, 36.666176, 27.020594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950176, 36.057171, 27.421289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339714, 36.103603, 27.499418>,  <37.573437, 36.131462, 27.546295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339714, 36.103603, 27.499418>,  <36.950176, 36.057171, 27.421289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339714, 36.103603, 27.499418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182074, -0.115546, 0.976472,
		0.135921, -0.986496, -0.091388,
		0.973845, 0.116084, 0.195321,
		37.631866, 36.138428, 27.558014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097382, 35.412083, 27.826275>,  <36.950176, 36.057171, 27.421289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097382, 35.412083, 27.826275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382889, 35.683270, 27.896593>,  <37.554192, 35.845982, 27.938784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382889, 35.683270, 27.896593>,  <37.097382, 35.412083, 27.826275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382889, 35.683270, 27.896593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034453, -0.216707, 0.975628,
		0.699539, -0.702424, -0.131319,
		0.713763, 0.677966, 0.175795,
		37.597019, 35.886658, 27.949331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690872, 35.054565, 28.104073>,  <37.097382, 35.412083, 27.826275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690872, 35.054565, 28.104073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714794, 35.422001, 28.260342>,  <37.729149, 35.642460, 28.354103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714794, 35.422001, 28.260342>,  <37.690872, 35.054565, 28.104073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714794, 35.422001, 28.260342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133564, -0.380490, 0.915089,
		0.989234, -0.106905, 0.099936,
		0.059804, 0.918585, 0.390672,
		37.732735, 35.697575, 28.377542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141460, 34.929913, 28.720795>,  <37.690872, 35.054565, 28.104073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141460, 34.929913, 28.720795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020935, 35.304268, 28.793808>,  <37.948620, 35.528881, 28.837616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020935, 35.304268, 28.793808>,  <38.141460, 34.929913, 28.720795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020935, 35.304268, 28.793808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036992, -0.179811, 0.983005,
		0.952806, 0.302949, 0.019560,
		-0.301318, 0.935890, 0.182532,
		37.930538, 35.585033, 28.848568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606926, 35.240997, 29.316425>,  <38.141460, 34.929913, 28.720795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606926, 35.240997, 29.316425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240856, 35.401142, 29.297792>,  <38.021214, 35.497231, 29.286613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240856, 35.401142, 29.297792>,  <38.606926, 35.240997, 29.316425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240856, 35.401142, 29.297792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091885, -0.094706, 0.991256,
		0.392449, 0.911450, 0.123459,
		-0.915173, 0.400361, -0.046581,
		37.966305, 35.521252, 29.283817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403542, 35.531128, 29.420204>,  <38.606926, 35.240997, 29.316425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403542, 35.531128, 29.420204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732311, 35.317162, 29.498491>,  <39.929573, 35.188782, 29.545464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732311, 35.317162, 29.498491>,  <39.403542, 35.531128, 29.420204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732311, 35.317162, 29.498491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255497, 0.039128, -0.966018,
		0.509084, 0.843996, 0.168831,
		0.821921, -0.534920, 0.195719,
		39.978889, 35.156685, 29.557207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934498, 35.923283, 29.268269>,  <39.403542, 35.531128, 29.420204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934498, 35.923283, 29.268269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077549, 35.550869, 29.239223>,  <40.163380, 35.327419, 29.221796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077549, 35.550869, 29.239223>,  <39.934498, 35.923283, 29.268269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077549, 35.550869, 29.239223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277950, 0.180348, -0.943514,
		0.891543, 0.317241, 0.323279,
		0.357624, -0.931039, -0.072611,
		40.184837, 35.271557, 29.217440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542385, 35.974270, 28.927719>,  <39.934498, 35.923283, 29.268269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542385, 35.974270, 28.927719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471153, 35.582581, 28.888908>,  <40.428413, 35.347569, 28.865622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471153, 35.582581, 28.888908>,  <40.542385, 35.974270, 28.927719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471153, 35.582581, 28.888908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435698, 0.009943, -0.900038,
		0.882301, -0.202554, 0.424873,
		-0.178081, -0.979221, -0.097025,
		40.417728, 35.288815, 28.859800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175762, 35.729107, 28.731651>,  <40.542385, 35.974270, 28.927719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175762, 35.729107, 28.731651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928726, 35.428566, 28.638653>,  <40.780506, 35.248241, 28.582853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928726, 35.428566, 28.638653>,  <41.175762, 35.729107, 28.731651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928726, 35.428566, 28.638653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631914, -0.298024, -0.715448,
		0.468265, -0.588769, 0.658847,
		-0.617586, -0.751354, -0.232497,
		40.743450, 35.203159, 28.568903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590103, 35.067734, 28.641287>,  <41.175762, 35.729107, 28.731651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590103, 35.067734, 28.641287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248383, 35.032593, 28.436367>,  <41.043350, 35.011509, 28.313416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248383, 35.032593, 28.436367>,  <41.590103, 35.067734, 28.641287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248383, 35.032593, 28.436367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501795, -0.396413, -0.768803,
		-0.135542, -0.913859, 0.382740,
		-0.854301, -0.087852, -0.512300,
		40.992092, 35.006237, 28.282677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721054, 34.434074, 28.270573>,  <41.590103, 35.067734, 28.641287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721054, 34.434074, 28.270573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411106, 34.610851, 28.089792>,  <41.225136, 34.716915, 27.981325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411106, 34.610851, 28.089792>,  <41.721054, 34.434074, 28.270573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411106, 34.610851, 28.089792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344725, -0.303857, -0.888164,
		-0.529844, -0.844014, 0.083103,
		-0.774874, 0.441941, -0.451949,
		41.178642, 34.743435, 27.954208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452179, 33.926060, 27.849026>,  <41.721054, 34.434074, 28.270573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452179, 33.926060, 27.849026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360580, 34.290783, 27.712698>,  <41.305622, 34.509617, 27.630901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360580, 34.290783, 27.712698>,  <41.452179, 33.926060, 27.849026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360580, 34.290783, 27.712698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399381, -0.231291, -0.887130,
		-0.887724, -0.339268, -0.311196,
		-0.228998, 0.911812, -0.340820,
		41.291882, 34.564327, 27.610453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178097, 33.841686, 27.277586>,  <41.452179, 33.926060, 27.849026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178097, 33.841686, 27.277586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283634, 34.226215, 27.245970>,  <41.346958, 34.456932, 27.226999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283634, 34.226215, 27.245970>,  <41.178097, 33.841686, 27.277586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283634, 34.226215, 27.245970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390810, -0.181462, -0.902407,
		-0.881846, 0.207208, -0.423572,
		0.263848, 0.961320, -0.079042,
		41.362789, 34.514610, 27.222258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114986, 33.954292, 26.601913>,  <41.178097, 33.841686, 27.277586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114986, 33.954292, 26.601913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331387, 34.268227, 26.722809>,  <41.461227, 34.456589, 26.795345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331387, 34.268227, 26.722809>,  <41.114986, 33.954292, 26.601913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331387, 34.268227, 26.722809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377861, 0.094230, -0.921055,
		-0.751360, 0.612493, -0.245582,
		0.540998, 0.784839, 0.302238,
		41.493687, 34.503677, 26.813480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973301, 34.460480, 26.163094>,  <41.114986, 33.954292, 26.601913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973301, 34.460480, 26.163094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335636, 34.556557, 26.302675>,  <41.553036, 34.614201, 26.386425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335636, 34.556557, 26.302675>,  <40.973301, 34.460480, 26.163094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335636, 34.556557, 26.302675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277180, 0.286892, -0.916987,
		-0.320362, 0.927363, 0.193301,
		0.905836, 0.240189, 0.348956,
		41.607388, 34.628613, 26.407362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127316, 34.967022, 25.796635>,  <40.973301, 34.460480, 26.163094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127316, 34.967022, 25.796635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495506, 34.881592, 25.927546>,  <41.716419, 34.830334, 26.006092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495506, 34.881592, 25.927546>,  <41.127316, 34.967022, 25.796635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495506, 34.881592, 25.927546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363264, 0.158804, -0.918053,
		0.144097, 0.963934, 0.223758,
		0.920476, -0.213572, 0.327279,
		41.771648, 34.817520, 26.025730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646866, 35.520782, 25.619640>,  <41.127316, 34.967022, 25.796635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646866, 35.520782, 25.619640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862381, 35.187141, 25.666937>,  <41.991692, 34.986958, 25.695314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862381, 35.187141, 25.666937>,  <41.646866, 35.520782, 25.619640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862381, 35.187141, 25.666937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541503, 0.235373, -0.807078,
		0.645355, 0.498871, 0.578485,
		0.538787, -0.834103, 0.118241,
		42.024017, 34.936909, 25.702410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330685, 35.716850, 25.612707>,  <41.646866, 35.520782, 25.619640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330685, 35.716850, 25.612707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345329, 35.331158, 25.507694>,  <42.354115, 35.099743, 25.444687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345329, 35.331158, 25.507694>,  <42.330685, 35.716850, 25.612707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345329, 35.331158, 25.507694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497392, 0.245438, -0.832083,
		0.866753, -0.100121, 0.488584,
		0.036608, -0.964228, -0.262534,
		42.356312, 35.041889, 25.428934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870640, 35.729156, 25.129436>,  <42.330685, 35.716850, 25.612707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870640, 35.729156, 25.129436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723671, 35.361031, 25.075741>,  <42.635490, 35.140156, 25.043524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723671, 35.361031, 25.075741>,  <42.870640, 35.729156, 25.129436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723671, 35.361031, 25.075741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568292, -0.107898, -0.815721,
		0.736239, -0.375997, 0.562653,
		-0.367418, -0.920318, -0.134238,
		42.613445, 35.084934, 25.035469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.489059, 29.546234, 24.637024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.537693, 29.943138, 24.647097>,  <37.566875, 30.181280, 24.653141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.537693, 29.943138, 24.647097>,  <37.489059, 29.546234, 24.637024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537693, 29.943138, 24.647097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161949, -0.005199, 0.986785,
		0.979280, -0.124060, 0.160063,
		0.121588, 0.992261, 0.025183,
		37.574169, 30.240816, 24.654652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945679, 29.666327, 25.202888>,  <37.489059, 29.546234, 24.637024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945679, 29.666327, 25.202888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.758293, 30.015066, 25.145735>,  <37.645863, 30.224310, 25.111443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.758293, 30.015066, 25.145735>,  <37.945679, 29.666327, 25.202888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758293, 30.015066, 25.145735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077983, 0.120292, 0.989671,
		0.880032, 0.474771, 0.011636,
		-0.468468, 0.871850, -0.142885,
		37.617752, 30.276621, 25.102869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291618, 30.190168, 25.526066>,  <37.945679, 29.666327, 25.202888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291618, 30.190168, 25.526066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.914204, 30.319344, 25.496561>,  <37.687756, 30.396849, 25.478857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.914204, 30.319344, 25.496561>,  <38.291618, 30.190168, 25.526066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914204, 30.319344, 25.496561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003278, 0.231768, 0.972766,
		0.331241, 0.917602, -0.219741,
		-0.943540, 0.322940, -0.073763,
		37.631142, 30.416225, 25.474432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260490, 30.842997, 25.805185>,  <38.291618, 30.190168, 25.526066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260490, 30.842997, 25.805185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873173, 30.744104, 25.819483>,  <37.640781, 30.684769, 25.828060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873173, 30.744104, 25.819483>,  <38.260490, 30.842997, 25.805185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873173, 30.744104, 25.819483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015632, 0.202776, 0.979100,
		-0.249309, 0.947502, -0.200212,
		-0.968298, -0.247228, 0.035742,
		37.582684, 30.669935, 25.830206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066906, 31.193039, 26.399693>,  <38.260490, 30.842997, 25.805185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066906, 31.193039, 26.399693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.737217, 30.973576, 26.343651>,  <37.539402, 30.841898, 26.310026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.737217, 30.973576, 26.343651>,  <38.066906, 31.193039, 26.399693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737217, 30.973576, 26.343651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294837, 0.204570, 0.933393,
		-0.483452, 0.810633, -0.330377,
		-0.824224, -0.548658, -0.140105,
		37.489948, 30.808979, 26.301619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564259, 31.594749, 26.660282>,  <38.066906, 31.193039, 26.399693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564259, 31.594749, 26.660282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.453354, 31.210438, 26.658258>,  <37.386810, 30.979851, 26.657043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.453354, 31.210438, 26.658258>,  <37.564259, 31.594749, 26.660282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453354, 31.210438, 26.658258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259457, 0.069803, 0.963229,
		-0.925098, 0.268380, -0.268635,
		-0.277263, -0.960781, -0.005059,
		37.370174, 30.922203, 26.656740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983089, 31.530243, 27.082703>,  <37.564259, 31.594749, 26.660282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983089, 31.530243, 27.082703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.131905, 31.159096, 27.072475>,  <37.221191, 30.936407, 27.066339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.131905, 31.159096, 27.072475>,  <36.983089, 31.530243, 27.082703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131905, 31.159096, 27.072475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329045, -0.157590, 0.931072,
		-0.867940, -0.337977, -0.363939,
		0.372034, -0.927867, -0.025569,
		37.243515, 30.880735, 27.064804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524117, 31.169060, 27.416359>,  <36.983089, 31.530243, 27.082703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524117, 31.169060, 27.416359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.859211, 30.951843, 27.439373>,  <37.060268, 30.821512, 27.453180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.859211, 30.951843, 27.439373>,  <36.524117, 31.169060, 27.416359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859211, 30.951843, 27.439373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180573, -0.176040, 0.967680,
		-0.515364, -0.821044, -0.245533,
		0.837731, -0.543043, 0.057533,
		37.110531, 30.788931, 27.456633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333073, 30.639637, 27.799030>,  <36.524117, 31.169060, 27.416359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333073, 30.639637, 27.799030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.732559, 30.630896, 27.817289>,  <36.972252, 30.625650, 27.828245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.732559, 30.630896, 27.817289>,  <36.333073, 30.639637, 27.799030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732559, 30.630896, 27.817289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048077, -0.127955, 0.990614,
		-0.015808, -0.991539, -0.128842,
		0.998718, -0.021854, 0.045647,
		37.032173, 30.624340, 27.830984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539314, 30.087610, 28.222206>,  <36.333073, 30.639637, 27.799030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539314, 30.087610, 28.222206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.862461, 30.322718, 28.239563>,  <37.056351, 30.463781, 28.249977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.862461, 30.322718, 28.239563>,  <36.539314, 30.087610, 28.222206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862461, 30.322718, 28.239563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049041, -0.140407, 0.988878,
		0.587322, -0.796753, -0.142255,
		0.807866, 0.587767, 0.043391,
		37.104820, 30.499048, 28.252581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106770, 29.734858, 28.652422>,  <36.539314, 30.087610, 28.222206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106770, 29.734858, 28.652422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162083, 30.130945, 28.659803>,  <37.195271, 30.368599, 28.664232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162083, 30.130945, 28.659803>,  <37.106770, 29.734858, 28.652422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162083, 30.130945, 28.659803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093583, -0.005484, 0.995596,
		0.985961, -0.139403, 0.091910,
		0.138285, 0.990220, 0.018452,
		37.203568, 30.428011, 28.665339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640781, 29.716223, 29.226587>,  <37.106770, 29.734858, 28.652422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640781, 29.716223, 29.226587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.496758, 30.086035, 29.176636>,  <37.410343, 30.307922, 29.146666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.496758, 30.086035, 29.176636>,  <37.640781, 29.716223, 29.226587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496758, 30.086035, 29.176636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019140, 0.126506, 0.991781,
		0.932732, 0.359494, -0.027855,
		-0.360063, 0.924532, -0.124877,
		37.388737, 30.363394, 29.139174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882591, 30.017605, 29.895527>,  <37.640781, 29.716223, 29.226587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882591, 30.017605, 29.895527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613876, 30.280453, 29.758764>,  <37.452648, 30.438162, 29.676706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613876, 30.280453, 29.758764>,  <37.882591, 30.017605, 29.895527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613876, 30.280453, 29.758764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100288, 0.376634, 0.920917,
		0.733928, 0.652946, -0.187115,
		-0.671783, 0.657122, -0.341905,
		37.412342, 30.477589, 29.656193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048889, 30.725607, 30.212700>,  <37.882591, 30.017605, 29.895527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048889, 30.725607, 30.212700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.662758, 30.727028, 30.108288>,  <37.431080, 30.727880, 30.045641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.662758, 30.727028, 30.108288>,  <38.048889, 30.725607, 30.212700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662758, 30.727028, 30.108288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248436, 0.294612, 0.922758,
		0.080180, 0.955610, -0.283513,
		-0.965324, 0.003552, -0.261030,
		37.373161, 30.728094, 30.029978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619453, 31.215527, 30.219925>,  <38.048889, 30.725607, 30.212700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619453, 31.215527, 30.219925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906036, 31.013103, 30.412006>,  <39.077988, 30.891649, 30.527254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906036, 31.013103, 30.412006>,  <38.619453, 31.215527, 30.219925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906036, 31.013103, 30.412006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408149, -0.254175, -0.876818,
		0.565775, 0.824198, 0.024441,
		0.716459, -0.506057, 0.480201,
		39.120975, 30.861286, 30.556067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297756, 31.489017, 30.066122>,  <38.619453, 31.215527, 30.219925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297756, 31.489017, 30.066122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.357185, 31.107958, 30.172241>,  <39.392845, 30.879322, 30.235912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.357185, 31.107958, 30.172241>,  <39.297756, 31.489017, 30.066122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357185, 31.107958, 30.172241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485693, -0.163393, -0.858723,
		0.861410, 0.256441, 0.438418,
		0.148577, -0.952649, 0.265300,
		39.401760, 30.822163, 30.251831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073986, 31.304401, 30.026808>,  <39.297756, 31.489017, 30.066122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073986, 31.304401, 30.026808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.894958, 30.947119, 30.009529>,  <39.787540, 30.732750, 29.999163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.894958, 30.947119, 30.009529>,  <40.073986, 31.304401, 30.026808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894958, 30.947119, 30.009529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573796, -0.249799, -0.779974,
		0.685886, -0.373878, 0.624320,
		-0.447570, -0.893205, -0.043196,
		39.760689, 30.679157, 29.996571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544357, 30.752951, 29.745186>,  <40.073986, 31.304401, 30.026808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544357, 30.752951, 29.745186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.184940, 30.590651, 29.678267>,  <39.969292, 30.493271, 29.638115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.184940, 30.590651, 29.678267>,  <40.544357, 30.752951, 29.745186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184940, 30.590651, 29.678267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268719, -0.207231, -0.940662,
		0.347005, -0.890181, 0.295238,
		-0.898542, -0.405750, -0.167299,
		39.915379, 30.468925, 29.628077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723801, 30.154440, 29.561735>,  <40.544357, 30.752951, 29.745186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723801, 30.154440, 29.561735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.363773, 30.238508, 29.409048>,  <40.147758, 30.288950, 29.317436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.363773, 30.238508, 29.409048>,  <40.723801, 30.154440, 29.561735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363773, 30.238508, 29.409048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326723, -0.254132, -0.910313,
		-0.288333, -0.944057, 0.160066,
		-0.900064, 0.210176, -0.381720,
		40.093754, 30.301559, 29.294533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667953, 29.582586, 29.104048>,  <40.723801, 30.154440, 29.561735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667953, 29.582586, 29.104048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.405708, 29.871544, 29.016121>,  <40.248360, 30.044918, 28.963366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.405708, 29.871544, 29.016121>,  <40.667953, 29.582586, 29.104048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405708, 29.871544, 29.016121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179190, -0.133953, -0.974653,
		-0.733526, -0.678385, -0.041624,
		-0.655615, 0.722392, -0.219818,
		40.209023, 30.088261, 28.950176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352135, 29.268990, 28.473930>,  <40.667953, 29.582586, 29.104048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352135, 29.268990, 28.473930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.277954, 29.661976, 28.466280>,  <40.233448, 29.897768, 28.461691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.277954, 29.661976, 28.466280>,  <40.352135, 29.268990, 28.473930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277954, 29.661976, 28.466280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081842, -0.003952, -0.996637,
		-0.979240, -0.186389, -0.079674,
		-0.185447, 0.982468, -0.019124,
		40.222321, 29.956717, 28.460543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925484, 29.318451, 27.898151>,  <40.352135, 29.268990, 28.473930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925484, 29.318451, 27.898151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.035385, 29.699734, 27.948606>,  <40.101326, 29.928503, 27.978880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.035385, 29.699734, 27.948606>,  <39.925484, 29.318451, 27.898151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035385, 29.699734, 27.948606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214330, 0.067171, -0.974449,
		-0.937323, 0.294766, -0.185845,
		0.274752, 0.953205, 0.126138,
		40.117809, 29.985695, 27.986448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568298, 29.757006, 27.373808>,  <39.925484, 29.318451, 27.898151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568298, 29.757006, 27.373808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.895031, 29.963711, 27.476370>,  <40.091072, 30.087734, 27.537907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.895031, 29.963711, 27.476370>,  <39.568298, 29.757006, 27.373808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895031, 29.963711, 27.476370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223792, 0.125807, -0.966483,
		-0.531700, 0.846835, -0.012884,
		0.816830, 0.516763, 0.256407,
		40.140079, 30.118740, 27.553291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518959, 30.406317, 27.138550>,  <39.568298, 29.757006, 27.373808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518959, 30.406317, 27.138550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.911404, 30.341722, 27.181145>,  <40.146870, 30.302965, 27.206701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.911404, 30.341722, 27.181145>,  <39.518959, 30.406317, 27.138550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911404, 30.341722, 27.181145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134710, 0.175317, -0.975252,
		0.138822, 0.971177, 0.193760,
		0.981112, -0.161488, 0.106489,
		40.205738, 30.293276, 27.213091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798405, 31.000725, 26.857244>,  <39.518959, 30.406317, 27.138550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798405, 31.000725, 26.857244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.094173, 30.731777, 26.870981>,  <40.271633, 30.570408, 26.879223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.094173, 30.731777, 26.870981>,  <39.798405, 31.000725, 26.857244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094173, 30.731777, 26.870981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315833, 0.301378, -0.899678,
		0.594566, 0.676085, 0.435201,
		0.739419, -0.672369, 0.034340,
		40.315998, 30.530066, 26.881283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346214, 31.352455, 26.814777>,  <39.798405, 31.000725, 26.857244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346214, 31.352455, 26.814777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.462727, 30.984854, 26.708506>,  <40.532635, 30.764292, 26.644743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.462727, 30.984854, 26.708506>,  <40.346214, 31.352455, 26.814777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462727, 30.984854, 26.708506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342977, 0.359582, -0.867795,
		0.893040, 0.161653, 0.419938,
		0.291284, -0.919004, -0.265678,
		40.550114, 30.709152, 26.628803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033524, 31.473417, 26.458441>,  <40.346214, 31.352455, 26.814777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033524, 31.473417, 26.458441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.879707, 31.119123, 26.354445>,  <40.787418, 30.906548, 26.292046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.879707, 31.119123, 26.354445>,  <41.033524, 31.473417, 26.458441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879707, 31.119123, 26.354445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259147, 0.166739, -0.951337,
		0.885984, -0.433207, 0.165417,
		-0.384545, -0.885737, -0.259992,
		40.764343, 30.853403, 26.276447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482544, 31.074432, 25.987223>,  <41.033524, 31.473417, 26.458441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482544, 31.074432, 25.987223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.114788, 30.932869, 25.918560>,  <40.894135, 30.847931, 25.877361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.114788, 30.932869, 25.918560>,  <41.482544, 31.074432, 25.987223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114788, 30.932869, 25.918560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184857, -0.003556, -0.982759,
		0.347198, -0.935273, 0.068692,
		-0.919392, -0.353910, -0.171657,
		40.838970, 30.826696, 25.867064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185276, 30.769802, 26.087471>,  <41.482544, 31.074432, 25.987223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185276, 30.769802, 26.087471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.537029, 30.958870, 26.064629>,  <42.748081, 31.072311, 26.050922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.537029, 30.958870, 26.064629>,  <42.185276, 30.769802, 26.087471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537029, 30.958870, 26.064629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045546, 0.202912, 0.978137,
		0.473924, -0.857560, 0.199967,
		0.879387, 0.472670, -0.057107,
		42.800846, 31.100670, 26.047497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670250, 30.367918, 26.640877>,  <42.185276, 30.769802, 26.087471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670250, 30.367918, 26.640877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.829712, 30.725037, 26.556980>,  <42.925388, 30.939308, 26.506641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.829712, 30.725037, 26.556980>,  <42.670250, 30.367918, 26.640877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829712, 30.725037, 26.556980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143583, 0.165120, 0.975766,
		0.905792, -0.419107, -0.062365,
		0.398653, 0.892796, -0.209741,
		42.949306, 30.992876, 26.494059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346600, 30.409121, 27.042891>,  <42.670250, 30.367918, 26.640877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346600, 30.409121, 27.042891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.219212, 30.781414, 26.970995>,  <43.142776, 31.004791, 26.927858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.219212, 30.781414, 26.970995>,  <43.346600, 30.409121, 27.042891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219212, 30.781414, 26.970995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033068, 0.200405, 0.979155,
		0.947355, 0.305892, -0.094602,
		-0.318474, 0.930735, -0.179739,
		43.123669, 31.060635, 26.917074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763802, 30.875870, 27.519701>,  <43.346600, 30.409121, 27.042891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763802, 30.875870, 27.519701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.441742, 31.084454, 27.406698>,  <43.248505, 31.209604, 27.338898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.441742, 31.084454, 27.406698>,  <43.763802, 30.875870, 27.519701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441742, 31.084454, 27.406698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122158, 0.320314, 0.939402,
		0.580350, 0.790873, -0.194202,
		-0.805153, 0.521458, -0.282506,
		43.200195, 31.240891, 27.321947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878178, 31.506227, 27.845198>,  <43.763802, 30.875870, 27.519701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878178, 31.506227, 27.845198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.486858, 31.513468, 27.762629>,  <43.252068, 31.517813, 27.713087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.486858, 31.513468, 27.762629>,  <43.878178, 31.506227, 27.845198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486858, 31.513468, 27.762629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198092, 0.210599, 0.957292,
		0.060802, 0.977405, -0.202442,
		-0.978296, 0.018103, -0.206421,
		43.193371, 31.518898, 27.700703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609844, 32.137791, 28.179598>,  <43.878178, 31.506227, 27.845198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609844, 32.137791, 28.179598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.294579, 31.898054, 28.123619>,  <43.105419, 31.754211, 28.090033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.294579, 31.898054, 28.123619>,  <43.609844, 32.137791, 28.179598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294579, 31.898054, 28.123619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427329, 0.369261, 0.825249,
		-0.442930, 0.710236, -0.547154,
		-0.788164, -0.599343, -0.139947,
		43.058128, 31.718250, 28.081635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035400, 32.584446, 28.277578>,  <43.609844, 32.137791, 28.179598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035400, 32.584446, 28.277578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.916233, 32.208691, 28.345446>,  <42.844734, 31.983236, 28.386166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.916233, 32.208691, 28.345446>,  <43.035400, 32.584446, 28.277578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916233, 32.208691, 28.345446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439675, 0.292795, 0.849092,
		-0.847308, 0.178361, -0.500256,
		-0.297918, -0.939392, 0.169667,
		42.826859, 31.926872, 28.396345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513447, 32.685295, 28.718510>,  <43.035400, 32.584446, 28.277578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513447, 32.685295, 28.718510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.583176, 32.295475, 28.774885>,  <42.625011, 32.061584, 28.808710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.583176, 32.295475, 28.774885>,  <42.513447, 32.685295, 28.718510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583176, 32.295475, 28.774885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245058, 0.095692, 0.964774,
		-0.953708, -0.202717, -0.222140,
		0.174319, -0.974550, 0.140940,
		42.635471, 32.003109, 28.817167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958302, 32.406181, 29.021122>,  <42.513447, 32.685295, 28.718510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958302, 32.406181, 29.021122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.262276, 32.168777, 29.127140>,  <42.444660, 32.026337, 29.190752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.262276, 32.168777, 29.127140>,  <41.958302, 32.406181, 29.021122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262276, 32.168777, 29.127140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277852, 0.072019, 0.957920,
		-0.587620, -0.801601, -0.110178,
		0.759935, -0.593506, 0.265046,
		42.490257, 31.990726, 29.206654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699039, 31.971031, 29.519508>,  <41.958302, 32.406181, 29.021122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699039, 31.971031, 29.519508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.091995, 31.945250, 29.589649>,  <42.327770, 31.929781, 29.631733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.091995, 31.945250, 29.589649>,  <41.699039, 31.971031, 29.519508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091995, 31.945250, 29.589649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177162, -0.023505, 0.983901,
		-0.059306, -0.997643, -0.034512,
		0.982393, -0.064465, 0.175350,
		42.386715, 31.925913, 29.642254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889503, 31.361576, 30.005116>,  <41.699039, 31.971031, 29.519508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889503, 31.361576, 30.005116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.211147, 31.595207, 30.049408>,  <42.404133, 31.735386, 30.075983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.211147, 31.595207, 30.049408>,  <41.889503, 31.361576, 30.005116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211147, 31.595207, 30.049408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031621, -0.228026, 0.973141,
		0.593639, -0.779011, -0.201827,
		0.804110, 0.584077, 0.110732,
		42.452381, 31.770430, 30.082628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214996, 31.013084, 30.511707>,  <41.889503, 31.361576, 30.005116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214996, 31.013084, 30.511707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.406948, 31.363846, 30.500727>,  <42.522118, 31.574303, 30.494139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.406948, 31.363846, 30.500727>,  <42.214996, 31.013084, 30.511707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406948, 31.363846, 30.500727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006503, 0.034844, 0.999372,
		0.877312, -0.479397, 0.022423,
		0.479877, 0.876906, -0.027452,
		42.550911, 31.626917, 30.492491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632374, 30.889530, 30.924290>,  <42.214996, 31.013084, 30.511707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632374, 30.889530, 30.924290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.651379, 31.289005, 30.916616>,  <42.662781, 31.528690, 30.912012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.651379, 31.289005, 30.916616>,  <42.632374, 30.889530, 30.924290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651379, 31.289005, 30.916616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109747, 0.024309, 0.993662,
		0.992823, -0.045104, 0.110758,
		0.047510, 0.998686, -0.019184,
		42.665630, 31.588612, 30.910862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040451, 31.177670, 31.604324>,  <42.632374, 30.889530, 30.924290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040451, 31.177670, 31.604324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.818653, 31.472307, 31.449423>,  <42.685574, 31.649090, 31.356482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.818653, 31.472307, 31.449423>,  <43.040451, 31.177670, 31.604324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818653, 31.472307, 31.449423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305117, 0.252987, 0.918096,
		0.774232, 0.627240, 0.084466,
		-0.554498, 0.736592, -0.387253,
		42.652306, 31.693285, 31.333246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.434448, 35.129719, 24.709097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.086494, 34.932606, 24.700361>,  <42.877724, 34.814339, 24.695120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.086494, 34.932606, 24.700361>,  <43.434448, 35.129719, 24.709097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086494, 34.932606, 24.700361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144098, -0.211530, -0.966691,
		0.471746, -0.844052, 0.255014,
		-0.869880, -0.492780, -0.021838,
		42.825531, 34.784771, 24.693810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534374, 34.484692, 24.415062>,  <43.434448, 35.129719, 24.709097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534374, 34.484692, 24.415062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.143200, 34.525597, 24.342196>,  <42.908497, 34.550140, 24.298475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.143200, 34.525597, 24.342196>,  <43.534374, 34.484692, 24.415062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.143200, 34.525597, 24.342196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148114, -0.275538, -0.949811,
		-0.147325, -0.955835, 0.254311,
		-0.977935, 0.102264, -0.182166,
		42.849819, 34.556274, 24.287546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259552, 33.830284, 24.097086>,  <43.534374, 34.484692, 24.415062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259552, 33.830284, 24.097086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.008152, 34.123688, 23.993586>,  <42.857311, 34.299728, 23.931486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.008152, 34.123688, 23.993586>,  <43.259552, 33.830284, 24.097086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008152, 34.123688, 23.993586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000967, -0.333404, -0.942784,
		-0.777809, -0.592289, 0.210253,
		-0.628500, 0.733509, -0.258752,
		42.819603, 34.343739, 23.915960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752872, 33.474648, 23.841585>,  <43.259552, 33.830284, 24.097086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752872, 33.474648, 23.841585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.721966, 33.842888, 23.688473>,  <42.703423, 34.063831, 23.596605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.721966, 33.842888, 23.688473>,  <42.752872, 33.474648, 23.841585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721966, 33.842888, 23.688473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217472, -0.390248, -0.894658,
		-0.973003, 0.014115, 0.230359,
		-0.077269, 0.920602, -0.382782,
		42.698784, 34.119068, 23.573639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061848, 33.472061, 23.345339>,  <42.752872, 33.474648, 23.841585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061848, 33.472061, 23.345339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.319008, 33.759609, 23.239574>,  <42.473305, 33.932137, 23.176115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.319008, 33.759609, 23.239574>,  <42.061848, 33.472061, 23.345339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319008, 33.759609, 23.239574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113356, -0.252108, -0.961037,
		-0.757518, 0.647821, -0.080591,
		0.642898, 0.718867, -0.264411,
		42.511879, 33.975269, 23.160252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735554, 33.877098, 22.841208>,  <42.061848, 33.472061, 23.345339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735554, 33.877098, 22.841208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.121689, 33.962593, 22.781292>,  <42.353371, 34.013889, 22.745342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.121689, 33.962593, 22.781292>,  <41.735554, 33.877098, 22.841208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121689, 33.962593, 22.781292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116948, -0.158836, -0.980354,
		-0.233329, 0.963892, -0.128335,
		0.965340, 0.213736, -0.149787,
		42.411289, 34.026714, 22.736357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650005, 34.242802, 22.276119>,  <41.735554, 33.877098, 22.841208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650005, 34.242802, 22.276119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.035049, 34.140247, 22.311090>,  <42.266075, 34.078712, 22.332073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.035049, 34.140247, 22.311090>,  <41.650005, 34.242802, 22.276119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035049, 34.140247, 22.311090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057627, -0.121534, -0.990913,
		0.264685, 0.958903, -0.102215,
		0.962612, -0.256389, 0.087427,
		42.323833, 34.063332, 22.337318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953594, 34.565128, 21.649513>,  <41.650005, 34.242802, 22.276119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953594, 34.565128, 21.649513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.184616, 34.256836, 21.757147>,  <42.323227, 34.071861, 21.821728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.184616, 34.256836, 21.757147>,  <41.953594, 34.565128, 21.649513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184616, 34.256836, 21.757147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077699, -0.276224, -0.957947,
		0.812648, 0.574171, -0.099648,
		0.577551, -0.770732, 0.269085,
		42.357880, 34.025616, 21.837872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432369, 34.508087, 21.117542>,  <41.953594, 34.565128, 21.649513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432369, 34.508087, 21.117542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.467491, 34.155266, 21.302702>,  <42.488564, 33.943573, 21.413797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.467491, 34.155266, 21.302702>,  <42.432369, 34.508087, 21.117542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467491, 34.155266, 21.302702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088493, -0.455948, -0.885596,
		0.992199, 0.118725, 0.038021,
		0.087807, -0.882052, 0.462897,
		42.493832, 33.890652, 21.441570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095779, 34.303909, 20.908203>,  <42.432369, 34.508087, 21.117542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095779, 34.303909, 20.908203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.879093, 33.982544, 21.007063>,  <42.749081, 33.789726, 21.066378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.879093, 33.982544, 21.007063>,  <43.095779, 34.303909, 20.908203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879093, 33.982544, 21.007063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156591, -0.385335, -0.909393,
		0.825850, -0.453927, 0.334547,
		-0.541711, -0.803409, 0.247148,
		42.716579, 33.741520, 21.081207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418438, 33.711803, 20.591805>,  <43.095779, 34.303909, 20.908203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418438, 33.711803, 20.591805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.046730, 33.579880, 20.658371>,  <42.823708, 33.500725, 20.698311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.046730, 33.579880, 20.658371>,  <43.418438, 33.711803, 20.591805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046730, 33.579880, 20.658371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041524, -0.540884, -0.840072,
		0.367073, -0.773739, 0.516319,
		-0.929265, -0.329807, 0.166415,
		42.767952, 33.480938, 20.708296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397835, 32.931091, 20.552750>,  <43.418438, 33.711803, 20.591805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397835, 32.931091, 20.552750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.036873, 33.067078, 20.446854>,  <42.820293, 33.148670, 20.383316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.036873, 33.067078, 20.446854>,  <43.397835, 32.931091, 20.552750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036873, 33.067078, 20.446854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040088, -0.545508, -0.837146,
		-0.429015, -0.766060, 0.478642,
		-0.902407, 0.339961, -0.264741,
		42.766151, 33.169067, 20.367432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542503, 32.157516, 20.516783>,  <43.397835, 32.931091, 20.552750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542503, 32.157516, 20.516783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.880058, 32.285023, 20.689405>,  <44.082592, 32.361526, 20.792980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.880058, 32.285023, 20.689405>,  <43.542503, 32.157516, 20.516783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880058, 32.285023, 20.689405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030575, -0.831627, 0.554492,
		0.535650, -0.454733, -0.711545,
		0.843886, 0.318769, 0.431558,
		44.133224, 32.380653, 20.818872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105797, 31.638056, 20.363083>,  <43.542503, 32.157516, 20.516783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105797, 31.638056, 20.363083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.135738, 31.851770, 20.699877>,  <44.153702, 31.980000, 20.901953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.135738, 31.851770, 20.699877>,  <44.105797, 31.638056, 20.363083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135738, 31.851770, 20.699877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061637, -0.845217, 0.530857,
		0.995288, 0.012162, -0.096199,
		0.074853, 0.534285, 0.841984,
		44.158195, 32.012054, 20.952473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527660, 31.302889, 20.353279>,  <44.105797, 31.638056, 20.363083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527660, 31.302889, 20.353279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.569019, 30.910704, 20.420216>,  <43.593834, 30.675392, 20.460377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.569019, 30.910704, 20.420216>,  <43.527660, 31.302889, 20.353279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569019, 30.910704, 20.420216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045672, 0.172745, 0.983907,
		-0.993591, -0.094095, 0.062642,
		0.103401, -0.980462, 0.167340,
		43.600040, 30.616566, 20.470417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051956, 31.174562, 20.859102>,  <43.527660, 31.302889, 20.353279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051956, 31.174562, 20.859102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.308285, 30.869078, 20.890320>,  <43.462082, 30.685787, 20.909050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.308285, 30.869078, 20.890320>,  <43.051956, 31.174562, 20.859102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308285, 30.869078, 20.890320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052911, 0.057480, 0.996944,
		-0.765863, -0.642994, -0.003574,
		0.640824, -0.763711, 0.078044,
		43.500530, 30.639965, 20.913733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828194, 30.738638, 21.434372>,  <43.051956, 31.174562, 20.859102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828194, 30.738638, 21.434372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.204887, 30.607080, 21.406200>,  <43.430904, 30.528145, 21.389297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.204887, 30.607080, 21.406200>,  <42.828194, 30.738638, 21.434372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204887, 30.607080, 21.406200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030061, -0.290853, 0.956295,
		-0.335011, -0.898459, -0.283794,
		0.941735, -0.328900, -0.070430,
		43.487408, 30.508411, 21.385073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854622, 30.101336, 21.883369>,  <42.828194, 30.738638, 21.434372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854622, 30.101336, 21.883369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.229427, 30.233595, 21.838331>,  <43.454311, 30.312950, 21.811308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.229427, 30.233595, 21.838331>,  <42.854622, 30.101336, 21.883369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229427, 30.233595, 21.838331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160634, -0.121676, 0.979485,
		0.310164, -0.935878, -0.167125,
		0.937014, 0.330647, -0.112595,
		43.510532, 30.332788, 21.804552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256786, 29.583923, 22.153048>,  <42.854622, 30.101336, 21.883369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256786, 29.583923, 22.153048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.451820, 29.932941, 22.165247>,  <43.568840, 30.142353, 22.172567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.451820, 29.932941, 22.165247>,  <43.256786, 29.583923, 22.153048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451820, 29.932941, 22.165247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181640, -0.135545, 0.973979,
		0.853974, -0.469354, -0.224579,
		0.487581, 0.872545, 0.030498,
		43.598095, 30.194704, 22.174397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689499, 29.466763, 22.714766>,  <43.256786, 29.583923, 22.153048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689499, 29.466763, 22.714766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.786800, 29.850359, 22.656578>,  <43.845181, 30.080517, 22.621666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.786800, 29.850359, 22.656578>,  <43.689499, 29.466763, 22.714766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786800, 29.850359, 22.656578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253640, 0.081864, 0.963828,
		0.936213, -0.271349, -0.223325,
		0.243252, 0.958993, -0.145467,
		43.859776, 30.138058, 22.612938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300743, 29.595697, 23.121565>,  <43.689499, 29.466763, 22.714766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300743, 29.595697, 23.121565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.127388, 29.946642, 23.039188>,  <44.023376, 30.157209, 22.989763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.127388, 29.946642, 23.039188>,  <44.300743, 29.595697, 23.121565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127388, 29.946642, 23.039188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136595, 0.289825, 0.947282,
		0.890796, 0.382409, -0.245449,
		-0.433386, 0.877362, -0.205940,
		43.997372, 30.209850, 22.977406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645046, 30.059710, 23.492458>,  <44.300743, 29.595697, 23.121565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645046, 30.059710, 23.492458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.301445, 30.245281, 23.405849>,  <44.095284, 30.356625, 23.353884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.301445, 30.245281, 23.405849>,  <44.645046, 30.059710, 23.492458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301445, 30.245281, 23.405849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048339, 0.347537, 0.936420,
		0.509682, 0.814855, -0.276110,
		-0.859004, 0.463929, -0.216522,
		44.043743, 30.384460, 23.340893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741310, 30.662895, 23.803991>,  <44.645046, 30.059710, 23.492458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741310, 30.662895, 23.803991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.343529, 30.639818, 23.768808>,  <44.104858, 30.625973, 23.747698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.343529, 30.639818, 23.768808>,  <44.741310, 30.662895, 23.803991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343529, 30.639818, 23.768808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101352, 0.301691, 0.948003,
		-0.028157, 0.951659, -0.305865,
		-0.994452, -0.057693, -0.087957,
		44.045193, 30.622511, 23.742420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479996, 31.200834, 24.149939>,  <44.741310, 30.662895, 23.803991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479996, 31.200834, 24.149939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.158749, 30.966286, 24.107672>,  <43.966000, 30.825556, 24.082312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.158749, 30.966286, 24.107672>,  <44.479996, 31.200834, 24.149939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158749, 30.966286, 24.107672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397632, 0.395411, 0.827973,
		-0.443718, 0.706978, -0.550723,
		-0.803121, -0.586371, -0.105666,
		43.917812, 30.790375, 24.075972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782749, 31.682423, 24.304707>,  <44.479996, 31.200834, 24.149939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782749, 31.682423, 24.304707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.685310, 31.303072, 24.385942>,  <43.626846, 31.075462, 24.434685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.685310, 31.303072, 24.385942>,  <43.782749, 31.682423, 24.304707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685310, 31.303072, 24.385942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484029, 0.300331, 0.821899,
		-0.840463, 0.101906, -0.532200,
		-0.243593, -0.948375, 0.203092,
		43.612232, 31.018559, 24.446871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178600, 31.797194, 24.541666>,  <43.782749, 31.682423, 24.304707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178600, 31.797194, 24.541666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.240948, 31.426924, 24.679554>,  <43.278355, 31.204762, 24.762287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.240948, 31.426924, 24.679554>,  <43.178600, 31.797194, 24.541666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240948, 31.426924, 24.679554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374588, 0.267528, 0.887757,
		-0.913997, -0.267498, -0.305048,
		0.155865, -0.925674, 0.344721,
		43.287708, 31.149221, 24.782970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548943, 31.560778, 24.884464>,  <43.178600, 31.797194, 24.541666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548943, 31.560778, 24.884464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.858620, 31.356848, 25.034504>,  <43.044426, 31.234489, 25.124527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.858620, 31.356848, 25.034504>,  <42.548943, 31.560778, 24.884464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858620, 31.356848, 25.034504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281338, 0.253678, 0.925471,
		-0.566981, -0.822026, 0.052964,
		0.774197, -0.509824, 0.375098,
		43.090878, 31.203901, 25.147034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258583, 31.000881, 25.317266>,  <42.548943, 31.560778, 24.884464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258583, 31.000881, 25.317266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.625538, 30.974783, 25.474310>,  <42.845711, 30.959124, 25.568537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.625538, 30.974783, 25.474310>,  <42.258583, 31.000881, 25.317266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625538, 30.974783, 25.474310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356878, 0.301818, 0.884050,
		-0.176178, -0.951130, 0.253599,
		0.917387, -0.065247, 0.392611,
		42.900753, 30.955210, 25.592093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561577, 30.757469, 25.302982>,  <42.258583, 31.000881, 25.317266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561577, 30.757469, 25.302982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.165104, 30.721558, 25.341955>,  <40.927219, 30.700010, 25.365339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.165104, 30.721558, 25.341955>,  <41.561577, 30.757469, 25.302982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165104, 30.721558, 25.341955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078375, -0.195585, -0.977550,
		0.106819, -0.976569, 0.186824,
		-0.991184, -0.089778, 0.097430,
		40.867748, 30.694624, 25.371183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429173, 30.109161, 24.937836>,  <41.561577, 30.757469, 25.302982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429173, 30.109161, 24.937836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.087711, 30.315796, 24.964396>,  <40.882835, 30.439777, 24.980331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.087711, 30.315796, 24.964396>,  <41.429173, 30.109161, 24.937836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087711, 30.315796, 24.964396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122019, -0.074425, -0.989733,
		-0.506342, -0.852994, 0.126567,
		-0.853656, 0.516587, 0.066397,
		40.831615, 30.470772, 24.984314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930820, 29.668680, 24.709238>,  <41.429173, 30.109161, 24.937836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930820, 29.668680, 24.709238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.784809, 30.039011, 24.670042>,  <40.697205, 30.261209, 24.646524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.784809, 30.039011, 24.670042>,  <40.930820, 29.668680, 24.709238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784809, 30.039011, 24.670042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083036, -0.137212, -0.987055,
		-0.927287, -0.352163, 0.126963,
		-0.365025, 0.925826, -0.097992,
		40.675301, 30.316759, 24.640644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349880, 29.597799, 24.390886>,  <40.930820, 29.668680, 24.709238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349880, 29.597799, 24.390886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.438759, 29.974176, 24.288704>,  <40.492085, 30.200003, 24.227394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.438759, 29.974176, 24.288704>,  <40.349880, 29.597799, 24.390886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438759, 29.974176, 24.288704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162372, -0.222636, -0.961285,
		-0.961387, 0.255070, 0.103314,
		0.222193, 0.940942, -0.255456,
		40.505417, 30.256458, 24.212067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838879, 29.833763, 23.880465>,  <40.349880, 29.597799, 24.390886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838879, 29.833763, 23.880465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.176613, 30.039721, 23.821165>,  <40.379253, 30.163296, 23.785585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.176613, 30.039721, 23.821165>,  <39.838879, 29.833763, 23.880465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176613, 30.039721, 23.821165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152754, -0.033888, -0.987683,
		-0.513576, 0.856584, 0.050039,
		0.844337, 0.514894, -0.148251,
		40.429913, 30.194189, 23.776690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592281, 30.250872, 23.369745>,  <39.838879, 29.833763, 23.880465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592281, 30.250872, 23.369745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.985863, 30.318726, 23.391890>,  <40.222012, 30.359438, 23.405176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.985863, 30.318726, 23.391890>,  <39.592281, 30.250872, 23.369745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985863, 30.318726, 23.391890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034152, 0.125474, -0.991509,
		-0.175138, 0.977487, 0.117667,
		0.983951, 0.169633, 0.055358,
		40.281048, 30.369616, 23.408497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792423, 30.923777, 23.019705>,  <39.592281, 30.250872, 23.369745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792423, 30.923777, 23.019705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.116798, 30.690023, 23.007820>,  <40.311424, 30.549772, 23.000689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.116798, 30.690023, 23.007820>,  <39.792423, 30.923777, 23.019705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116798, 30.690023, 23.007820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011638, 0.034661, -0.999331,
		0.585022, 0.810737, 0.021307,
		0.810934, -0.584383, -0.029713,
		40.360077, 30.514709, 22.998907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539421, 31.400129, 22.572144>,  <39.792423, 30.923777, 23.019705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539421, 31.400129, 22.572144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.177387, 31.299746, 22.434834>,  <38.960167, 31.239515, 22.352448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.177387, 31.299746, 22.434834>,  <39.539421, 31.400129, 22.572144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177387, 31.299746, 22.434834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369743, 0.065757, 0.926804,
		-0.210018, 0.965761, -0.152306,
		-0.905087, -0.250959, -0.343274,
		38.905861, 31.224459, 22.331852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985714, 31.807617, 22.903585>,  <39.539421, 31.400129, 22.572144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985714, 31.807617, 22.903585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770615, 31.499908, 22.765570>,  <38.641556, 31.315283, 22.682760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770615, 31.499908, 22.765570>,  <38.985714, 31.807617, 22.903585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770615, 31.499908, 22.765570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468323, -0.067759, 0.880955,
		-0.701073, 0.635318, -0.323831,
		-0.537745, -0.769272, -0.345038,
		38.609291, 31.269127, 22.662058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313519, 31.867325, 23.289095>,  <38.985714, 31.807617, 22.903585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313519, 31.867325, 23.289095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.304852, 31.499874, 23.131281>,  <38.299652, 31.279404, 23.036592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.304852, 31.499874, 23.131281>,  <38.313519, 31.867325, 23.289095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304852, 31.499874, 23.131281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411269, -0.351499, 0.841015,
		-0.911256, 0.180486, -0.370185,
		-0.021672, -0.918626, -0.394534,
		38.298351, 31.224287, 23.012920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678524, 31.696678, 23.352188>,  <38.313519, 31.867325, 23.289095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678524, 31.696678, 23.352188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.893917, 31.359905, 23.338411>,  <38.023155, 31.157843, 23.330145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.893917, 31.359905, 23.338411>,  <37.678524, 31.696678, 23.352188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893917, 31.359905, 23.338411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538824, -0.375472, 0.754115,
		-0.647844, -0.387521, -0.655839,
		0.538485, -0.841931, -0.034442,
		38.055462, 31.107327, 23.328079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188950, 31.132082, 23.324820>,  <37.678524, 31.696678, 23.352188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188950, 31.132082, 23.324820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.531048, 30.962931, 23.444641>,  <37.736305, 30.861439, 23.516535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.531048, 30.962931, 23.444641>,  <37.188950, 31.132082, 23.324820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531048, 30.962931, 23.444641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467175, -0.378953, 0.798838,
		-0.224293, -0.823146, -0.521655,
		0.855242, -0.422878, 0.299556,
		37.787621, 30.836067, 23.534508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093491, 30.402742, 23.477472>,  <37.188950, 31.132082, 23.324820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093491, 30.402742, 23.477472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429386, 30.495373, 23.673923>,  <37.630924, 30.550951, 23.791794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429386, 30.495373, 23.673923>,  <37.093491, 30.402742, 23.477472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429386, 30.495373, 23.673923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379203, -0.397275, 0.835690,
		0.388638, -0.888001, -0.245794,
		0.839741, 0.231575, 0.491129,
		37.681309, 30.564846, 23.821262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277241, 29.831106, 23.923162>,  <37.093491, 30.402742, 23.477472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277241, 29.831106, 23.923162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.471413, 30.136786, 24.093039>,  <37.587914, 30.320194, 24.194963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.471413, 30.136786, 24.093039>,  <37.277241, 29.831106, 23.923162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471413, 30.136786, 24.093039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328374, -0.290827, 0.898660,
		0.810267, -0.575689, 0.109768,
		0.485425, 0.764200, 0.424689,
		37.617039, 30.366045, 24.220446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.075497, 34.361034, 19.731981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.407974, 34.293316, 19.943813>,  <40.607460, 34.252686, 20.070911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.407974, 34.293316, 19.943813>,  <40.075497, 34.361034, 19.731981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407974, 34.293316, 19.943813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493144, 0.215381, 0.842864,
		-0.256755, -0.961743, 0.095536,
		0.831195, -0.169296, 0.529578,
		40.657333, 34.242527, 20.102686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892811, 33.814072, 20.156025>,  <40.075497, 34.361034, 19.731981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892811, 33.814072, 20.156025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.191460, 34.011341, 20.334616>,  <40.370647, 34.129704, 20.441771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.191460, 34.011341, 20.334616>,  <39.892811, 33.814072, 20.156025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191460, 34.011341, 20.334616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571671, 0.132399, 0.809730,
		0.340226, -0.859795, 0.380786,
		0.746618, 0.493176, 0.446475,
		40.415443, 34.159294, 20.468559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822689, 33.548744, 20.835306>,  <39.892811, 33.814072, 20.156025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822689, 33.548744, 20.835306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.054729, 33.874523, 20.840460>,  <40.193954, 34.069988, 20.843552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.054729, 33.874523, 20.840460>,  <39.822689, 33.548744, 20.835306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054729, 33.874523, 20.840460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373623, 0.251998, 0.892694,
		0.723803, -0.522664, 0.450479,
		0.580099, 0.814444, 0.012883,
		40.228760, 34.118855, 20.844324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143684, 33.565403, 21.453318>,  <39.822689, 33.548744, 20.835306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143684, 33.565403, 21.453318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.154545, 33.942577, 21.320570>,  <40.161060, 34.168880, 21.240921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.154545, 33.942577, 21.320570>,  <40.143684, 33.565403, 21.453318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154545, 33.942577, 21.320570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308195, 0.323717, 0.894552,
		0.950935, 0.077989, 0.299399,
		0.027155, 0.942934, -0.331869,
		40.162693, 34.225456, 21.221008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563869, 33.927898, 21.966459>,  <40.143684, 33.565403, 21.453318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563869, 33.927898, 21.966459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.386467, 34.228218, 21.770660>,  <40.280025, 34.408409, 21.653181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.386467, 34.228218, 21.770660>,  <40.563869, 33.927898, 21.966459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386467, 34.228218, 21.770660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243080, 0.424918, 0.871984,
		0.862681, 0.505714, -0.005948,
		-0.443502, 0.750798, -0.489498,
		40.253418, 34.453457, 21.623812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711014, 34.573452, 22.385952>,  <40.563869, 33.927898, 21.966459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711014, 34.573452, 22.385952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.398811, 34.666416, 22.153812>,  <40.211491, 34.722195, 22.014528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.398811, 34.666416, 22.153812>,  <40.711014, 34.573452, 22.385952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398811, 34.666416, 22.153812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372444, 0.572727, 0.730253,
		0.502098, 0.786111, -0.360455,
		-0.780502, 0.232409, -0.580347,
		40.164661, 34.736137, 21.979708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596004, 35.218719, 22.624067>,  <40.711014, 34.573452, 22.385952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596004, 35.218719, 22.624067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.253529, 35.111179, 22.447586>,  <40.048042, 35.046654, 22.341698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.253529, 35.111179, 22.447586>,  <40.596004, 35.218719, 22.624067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253529, 35.111179, 22.447586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512915, 0.544970, 0.663269,
		0.062122, 0.794183, -0.604495,
		-0.856189, -0.268851, -0.441203,
		39.996674, 35.030525, 22.315226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290520, 35.851826, 22.413725>,  <40.596004, 35.218719, 22.624067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290520, 35.851826, 22.413725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.018749, 35.559002, 22.433640>,  <39.855686, 35.383308, 22.445589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.018749, 35.559002, 22.433640>,  <40.290520, 35.851826, 22.413725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018749, 35.559002, 22.433640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534306, 0.540114, 0.650226,
		-0.502893, 0.415177, -0.758107,
		-0.679423, -0.732056, 0.049788,
		39.814922, 35.339386, 22.448576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675022, 36.232929, 22.466652>,  <40.290520, 35.851826, 22.413725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675022, 36.232929, 22.466652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.584747, 35.864708, 22.594175>,  <39.530582, 35.643776, 22.670689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.584747, 35.864708, 22.594175>,  <39.675022, 36.232929, 22.466652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584747, 35.864708, 22.594175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591890, 0.389497, 0.705662,
		-0.773777, -0.029439, -0.632774,
		-0.225689, -0.920557, 0.318808,
		39.517040, 35.588539, 22.689817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920681, 36.247181, 22.557035>,  <39.675022, 36.232929, 22.466652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920681, 36.247181, 22.557035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.065845, 35.956783, 22.790697>,  <39.152943, 35.782547, 22.930893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.065845, 35.956783, 22.790697>,  <38.920681, 36.247181, 22.557035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065845, 35.956783, 22.790697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424834, 0.429039, 0.797146,
		-0.829345, -0.537460, -0.152723,
		0.362910, -0.725991, 0.584152,
		39.174717, 35.738987, 22.965942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382191, 35.931854, 22.968626>,  <38.920681, 36.247181, 22.557035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382191, 35.931854, 22.968626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.710072, 35.860931, 23.186485>,  <38.906799, 35.818378, 23.317202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.710072, 35.860931, 23.186485>,  <38.382191, 35.931854, 22.968626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710072, 35.860931, 23.186485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516012, 0.184144, 0.836554,
		-0.248625, -0.966774, 0.059449,
		0.819706, -0.177311, 0.544650,
		38.955982, 35.807739, 23.349880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169609, 35.541748, 23.533648>,  <38.382191, 35.931854, 22.968626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169609, 35.541748, 23.533648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.532482, 35.620136, 23.682575>,  <38.750206, 35.667168, 23.771933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.532482, 35.620136, 23.682575>,  <38.169609, 35.541748, 23.533648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532482, 35.620136, 23.682575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385571, 0.033012, 0.922087,
		0.168411, -0.980054, 0.105508,
		0.907179, 0.195971, 0.372321,
		38.804634, 35.678928, 23.794271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167919, 34.763508, 23.349377>,  <38.169609, 35.541748, 23.533648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167919, 34.763508, 23.349377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.795586, 34.625957, 23.299911>,  <37.572186, 34.543427, 23.270233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.795586, 34.625957, 23.299911>,  <38.167919, 34.763508, 23.349377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795586, 34.625957, 23.299911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208090, -0.220603, -0.952907,
		0.300400, -0.912735, 0.276903,
		-0.930837, -0.343874, -0.123662,
		37.516335, 34.522797, 23.262814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258926, 34.061283, 23.034060>,  <38.167919, 34.763508, 23.349377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258926, 34.061283, 23.034060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.882545, 34.185387, 22.979870>,  <37.656719, 34.259850, 22.947355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.882545, 34.185387, 22.979870>,  <38.258926, 34.061283, 23.034060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882545, 34.185387, 22.979870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005397, -0.413863, -0.910323,
		-0.338498, -0.855839, 0.391100,
		-0.940952, 0.310253, -0.135472,
		37.600262, 34.278465, 22.939228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079773, 33.773827, 22.544247>,  <38.258926, 34.061283, 23.034060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079773, 33.773827, 22.544247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.751194, 34.000687, 22.520361>,  <37.554047, 34.136803, 22.506029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.751194, 34.000687, 22.520361>,  <38.079773, 33.773827, 22.544247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751194, 34.000687, 22.520361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126020, -0.282648, -0.950910,
		-0.556188, -0.773596, 0.303653,
		-0.821447, 0.567150, -0.059717,
		37.504761, 34.170830, 22.502445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563980, 33.300510, 22.166389>,  <38.079773, 33.773827, 22.544247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563980, 33.300510, 22.166389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.443542, 33.679710, 22.125128>,  <37.371281, 33.907230, 22.100370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.443542, 33.679710, 22.125128>,  <37.563980, 33.300510, 22.166389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443542, 33.679710, 22.125128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176559, -0.161725, -0.970913,
		-0.937108, -0.274122, 0.216072,
		-0.301092, 0.947999, -0.103155,
		37.353214, 33.964111, 22.094181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949234, 33.273735, 21.814575>,  <37.563980, 33.300510, 22.166389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949234, 33.273735, 21.814575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.094196, 33.643501, 21.767063>,  <37.181175, 33.865360, 21.738556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.094196, 33.643501, 21.767063>,  <36.949234, 33.273735, 21.814575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094196, 33.643501, 21.767063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069081, -0.100452, -0.992541,
		-0.929456, 0.367910, 0.027455,
		0.362407, 0.924420, -0.118781,
		37.202919, 33.920826, 21.731428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356518, 33.688740, 21.379166>,  <36.949234, 33.273735, 21.814575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356518, 33.688740, 21.379166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.733463, 33.822296, 21.370552>,  <36.959633, 33.902431, 21.365385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.733463, 33.822296, 21.370552>,  <36.356518, 33.688740, 21.379166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733463, 33.822296, 21.370552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027762, 0.013896, -0.999518,
		-0.333430, 0.942509, 0.022365,
		0.942366, 0.333890, -0.021532,
		37.016174, 33.922462, 21.364092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392776, 34.076138, 20.817816>,  <36.356518, 33.688740, 21.379166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392776, 34.076138, 20.817816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.788113, 34.023746, 20.848894>,  <37.025314, 33.992313, 20.867542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.788113, 34.023746, 20.848894>,  <36.392776, 34.076138, 20.817816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788113, 34.023746, 20.848894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092611, 0.111910, -0.989394,
		0.120894, 0.985049, 0.122734,
		0.988336, -0.130978, 0.077697,
		37.084614, 33.984451, 20.872204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685204, 34.526711, 20.335260>,  <36.392776, 34.076138, 20.817816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685204, 34.526711, 20.335260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.983643, 34.269485, 20.404325>,  <37.162704, 34.115150, 20.445765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.983643, 34.269485, 20.404325>,  <36.685204, 34.526711, 20.335260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983643, 34.269485, 20.404325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130864, -0.112638, -0.984981,
		0.652852, 0.757486, 0.000115,
		0.746096, -0.643062, 0.172664,
		37.207470, 34.076569, 20.456125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219776, 34.714714, 19.799892>,  <36.685204, 34.526711, 20.335260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219776, 34.714714, 19.799892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.348583, 34.350010, 19.901876>,  <37.425869, 34.131187, 19.963068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.348583, 34.350010, 19.901876>,  <37.219776, 34.714714, 19.799892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348583, 34.350010, 19.901876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222868, -0.188733, -0.956405,
		0.920128, 0.364801, 0.142427,
		0.322016, -0.911757, 0.254961,
		37.445187, 34.076485, 19.978365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964718, 34.660973, 19.540977>,  <37.219776, 34.714714, 19.799892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964718, 34.660973, 19.540977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.790676, 34.301285, 19.559210>,  <37.686249, 34.085472, 19.570148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.790676, 34.301285, 19.559210>,  <37.964718, 34.660973, 19.540977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790676, 34.301285, 19.559210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163790, -0.128828, -0.978047,
		0.885355, -0.418090, 0.203339,
		-0.435107, -0.899224, 0.045580,
		37.660145, 34.031517, 19.572884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449665, 34.270409, 19.265709>,  <37.964718, 34.660973, 19.540977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449665, 34.270409, 19.265709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.126453, 34.038120, 19.226017>,  <37.932526, 33.898746, 19.202202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.126453, 34.038120, 19.226017>,  <38.449665, 34.270409, 19.265709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126453, 34.038120, 19.226017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304166, -0.266967, -0.914446,
		0.504548, -0.769084, 0.392353,
		-0.808031, -0.580722, -0.099231,
		37.884045, 33.863903, 19.196247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714798, 33.678867, 19.004307>,  <38.449665, 34.270409, 19.265709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714798, 33.678867, 19.004307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.322823, 33.641811, 18.933722>,  <38.087639, 33.619576, 18.891371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.322823, 33.641811, 18.933722>,  <38.714798, 33.678867, 19.004307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322823, 33.641811, 18.933722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199078, -0.412861, -0.888771,
		0.009485, -0.906070, 0.423021,
		-0.979938, -0.092644, -0.176462,
		38.028843, 33.614017, 18.880783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650181, 33.000656, 18.796984>,  <38.714798, 33.678867, 19.004307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650181, 33.000656, 18.796984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.350307, 33.213223, 18.639214>,  <38.170383, 33.340763, 18.544552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.350307, 33.213223, 18.639214>,  <38.650181, 33.000656, 18.796984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350307, 33.213223, 18.639214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215852, -0.367055, -0.904809,
		-0.625601, -0.763461, 0.160470,
		-0.749687, 0.531411, -0.394425,
		38.125401, 33.372646, 18.520885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278507, 33.113808, 19.356504>,  <38.650181, 33.000656, 18.796984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278507, 33.113808, 19.356504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.338913, 32.718441, 19.350578>,  <39.375156, 32.481220, 19.347023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.338913, 32.718441, 19.350578>,  <39.278507, 33.113808, 19.356504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338913, 32.718441, 19.350578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241915, -0.051484, 0.968931,
		-0.958473, -0.142741, -0.246888,
		0.151017, -0.988420, -0.014815,
		39.384216, 32.421913, 19.346134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683517, 32.824471, 19.685251>,  <39.278507, 33.113808, 19.356504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683517, 32.824471, 19.685251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.961548, 32.537991, 19.710302>,  <39.128368, 32.366100, 19.725334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.961548, 32.537991, 19.710302>,  <38.683517, 32.824471, 19.685251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961548, 32.537991, 19.710302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354826, -0.265981, 0.896299,
		-0.625273, -0.645220, -0.439004,
		0.695078, -0.716202, 0.062630,
		39.170071, 32.323132, 19.729092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374176, 32.100731, 19.853407>,  <38.683517, 32.824471, 19.685251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374176, 32.100731, 19.853407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.756569, 32.041786, 19.954905>,  <38.986004, 32.006420, 20.015804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.756569, 32.041786, 19.954905>,  <38.374176, 32.100731, 19.853407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756569, 32.041786, 19.954905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289650, -0.335488, 0.896410,
		-0.046970, -0.930447, -0.363404,
		0.955980, -0.147364, 0.253746,
		39.043362, 31.997576, 20.031029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372631, 31.428320, 20.106567>,  <38.374176, 32.100731, 19.853407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372631, 31.428320, 20.106567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.693790, 31.612339, 20.258205>,  <38.886486, 31.722750, 20.349188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.693790, 31.612339, 20.258205>,  <38.372631, 31.428320, 20.106567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693790, 31.612339, 20.258205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233423, -0.342528, 0.910049,
		0.548517, -0.819164, -0.167629,
		0.802897, 0.460049, 0.379094,
		38.934658, 31.750353, 20.371933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650429, 30.930050, 20.514582>,  <38.372631, 31.428320, 20.106567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650429, 30.930050, 20.514582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.858547, 31.251669, 20.629679>,  <38.983418, 31.444641, 20.698738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.858547, 31.251669, 20.629679>,  <38.650429, 30.930050, 20.514582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858547, 31.251669, 20.629679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013116, -0.329379, 0.944107,
		0.853884, -0.494991, -0.160830,
		0.520298, 0.804048, 0.287743,
		39.014637, 31.492884, 20.716002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239731, 30.637020, 20.901560>,  <38.650429, 30.930050, 20.514582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239731, 30.637020, 20.901560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.160538, 31.011091, 21.019030>,  <39.113022, 31.235535, 21.089512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.160538, 31.011091, 21.019030>,  <39.239731, 30.637020, 20.901560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160538, 31.011091, 21.019030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020576, -0.303502, 0.952609,
		0.979990, 0.182556, 0.079330,
		-0.197982, 0.935179, 0.293672,
		39.101143, 31.291645, 21.107132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703369, 30.735874, 21.393614>,  <39.239731, 30.637020, 20.901560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703369, 30.735874, 21.393614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.381596, 30.969170, 21.438725>,  <39.188530, 31.109146, 21.465792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.381596, 30.969170, 21.438725>,  <39.703369, 30.735874, 21.393614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381596, 30.969170, 21.438725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108406, -0.330793, 0.937456,
		0.584066, 0.741897, 0.329327,
		-0.804435, 0.583237, 0.112779,
		39.140266, 31.144140, 21.472559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737335, 30.864098, 22.049440>,  <39.703369, 30.735874, 21.393614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737335, 30.864098, 22.049440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.377659, 31.028408, 21.989141>,  <39.161854, 31.126995, 21.952963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.377659, 31.028408, 21.989141>,  <39.737335, 30.864098, 22.049440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377659, 31.028408, 21.989141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229862, -0.150295, 0.961548,
		0.372325, 0.899263, 0.229565,
		-0.899187, 0.410776, -0.150748,
		39.107903, 31.151642, 21.943916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219131, 31.254263, 22.443937>,  <39.737335, 30.864098, 22.049440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219131, 31.254263, 22.443937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.378273, 30.890709, 22.493967>,  <40.473759, 30.672577, 22.523985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.378273, 30.890709, 22.493967>,  <40.219131, 31.254263, 22.443937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378273, 30.890709, 22.493967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215641, -0.039869, -0.975659,
		0.891746, 0.415141, 0.180130,
		0.397854, -0.908883, 0.125074,
		40.497631, 30.618044, 22.531490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823357, 31.152798, 21.960205>,  <40.219131, 31.254263, 22.443937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823357, 31.152798, 21.960205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.778908, 30.772335, 22.075413>,  <40.752239, 30.544058, 22.144537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.778908, 30.772335, 22.075413>,  <40.823357, 31.152798, 21.960205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778908, 30.772335, 22.075413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246092, -0.307123, -0.919301,
		0.962855, -0.031279, 0.268200,
		-0.111125, -0.951156, 0.288017,
		40.745571, 30.486988, 22.161818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423508, 30.746531, 21.641352>,  <40.823357, 31.152798, 21.960205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423508, 30.746531, 21.641352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.153156, 30.472630, 21.750381>,  <40.990944, 30.308289, 21.815800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.153156, 30.472630, 21.750381>,  <41.423508, 30.746531, 21.641352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153156, 30.472630, 21.750381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208170, -0.532149, -0.820660,
		0.707000, -0.497927, 0.502215,
		-0.675882, -0.684752, 0.272576,
		40.950390, 30.267204, 21.832153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796505, 30.072756, 21.733446>,  <41.423508, 30.746531, 21.641352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796505, 30.072756, 21.733446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.409130, 30.011158, 21.655043>,  <41.176704, 29.974199, 21.608002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.409130, 30.011158, 21.655043>,  <41.796505, 30.072756, 21.733446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409130, 30.011158, 21.655043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249041, -0.631074, -0.734660,
		-0.010561, -0.760284, 0.649505,
		-0.968436, -0.153994, -0.196007,
		41.118599, 29.964960, 21.596241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782619, 29.455635, 21.623550>,  <41.796505, 30.072756, 21.733446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782619, 29.455635, 21.623550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.441517, 29.577089, 21.453554>,  <41.236855, 29.649961, 21.351557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.441517, 29.577089, 21.453554>,  <41.782619, 29.455635, 21.623550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441517, 29.577089, 21.453554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129432, -0.665445, -0.735140,
		-0.506023, -0.681900, 0.528160,
		-0.852753, 0.303637, -0.424990,
		41.185692, 29.668180, 21.326057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520908, 28.822165, 21.330910>,  <41.782619, 29.455635, 21.623550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520908, 28.822165, 21.330910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.305862, 29.103170, 21.144386>,  <41.176834, 29.271774, 21.032473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.305862, 29.103170, 21.144386>,  <41.520908, 28.822165, 21.330910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305862, 29.103170, 21.144386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141116, -0.470263, -0.871171,
		-0.831299, -0.534156, 0.153683,
		-0.537613, 0.702516, -0.466308,
		41.144577, 29.313925, 21.004494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988007, 28.413637, 20.917664>,  <41.520908, 28.822165, 21.330910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988007, 28.413637, 20.917664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.070610, 28.780243, 20.780636>,  <41.120171, 29.000206, 20.698420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.070610, 28.780243, 20.780636>,  <40.988007, 28.413637, 20.917664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070610, 28.780243, 20.780636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243136, -0.387202, -0.889359,
		-0.947754, 0.100371, -0.302799,
		0.206510, 0.916515, -0.342569,
		41.132565, 29.055197, 20.677866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613060, 28.378315, 20.257767>,  <40.988007, 28.413637, 20.917664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613060, 28.378315, 20.257767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.876469, 28.676008, 20.213114>,  <41.034515, 28.854624, 20.186321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.876469, 28.676008, 20.213114>,  <40.613060, 28.378315, 20.257767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876469, 28.676008, 20.213114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296236, -0.392713, -0.870644,
		-0.691802, 0.540271, -0.479080,
		0.658525, 0.744234, -0.111632,
		41.074024, 28.899279, 20.179625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636410, 28.612370, 19.542248>,  <40.613060, 28.378315, 20.257767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636410, 28.612370, 19.542248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.984367, 28.727638, 19.702368>,  <41.193142, 28.796799, 19.798439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.984367, 28.727638, 19.702368>,  <40.636410, 28.612370, 19.542248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984367, 28.727638, 19.702368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490026, -0.412465, -0.767950,
		-0.056192, 0.864193, -0.500013,
		0.869895, 0.288172, 0.400300,
		41.245335, 28.814089, 19.822458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.806736, 32.861671, 34.773327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.196053, 32.914043, 34.848763>,  <38.429642, 32.945469, 34.894024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.196053, 32.914043, 34.848763>,  <37.806736, 32.861671, 34.773327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196053, 32.914043, 34.848763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226543, -0.414447, -0.881426,
		-0.037248, 0.900605, -0.433039,
		0.973289, 0.130933, 0.188588,
		38.488041, 32.953323, 34.905338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049831, 33.217098, 34.141468>,  <37.806736, 32.861671, 34.773327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049831, 33.217098, 34.141468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334679, 33.009071, 34.330112>,  <38.505589, 32.884254, 34.443298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334679, 33.009071, 34.330112>,  <38.049831, 33.217098, 34.141468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334679, 33.009071, 34.330112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226142, -0.466032, -0.855380,
		0.664640, 0.715784, -0.214261,
		0.712119, -0.520066, 0.471612,
		38.548313, 32.853050, 34.471596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573490, 33.197380, 33.760796>,  <38.049831, 33.217098, 34.141468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573490, 33.197380, 33.760796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.686451, 32.892052, 33.993206>,  <38.754227, 32.708855, 34.132652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.686451, 32.892052, 33.993206>,  <38.573490, 33.197380, 33.760796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686451, 32.892052, 33.993206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226552, -0.535482, -0.813593,
		0.932162, 0.361391, 0.021713,
		0.282398, -0.763319, 0.581030,
		38.771172, 32.663055, 34.167515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071091, 32.982769, 33.380104>,  <38.573490, 33.197380, 33.760796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071091, 32.982769, 33.380104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.001049, 32.677746, 33.629211>,  <38.959023, 32.494732, 33.778675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.001049, 32.677746, 33.629211>,  <39.071091, 32.982769, 33.380104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001049, 32.677746, 33.629211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037236, -0.637217, -0.769784,
		0.983845, -0.111603, 0.139974,
		-0.175104, -0.762561, 0.622768,
		38.948517, 32.448978, 33.816040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526524, 32.567410, 33.164150>,  <39.071091, 32.982769, 33.380104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526524, 32.567410, 33.164150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.273602, 32.322952, 33.354599>,  <39.121849, 32.176277, 33.468868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.273602, 32.322952, 33.354599>,  <39.526524, 32.567410, 33.164150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273602, 32.322952, 33.354599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042571, -0.641049, -0.766319,
		0.773549, -0.464279, 0.431356,
		-0.632306, -0.611148, 0.476118,
		39.083908, 32.139606, 33.497433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861397, 31.920815, 33.276318>,  <39.526524, 32.567410, 33.164150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861397, 31.920815, 33.276318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.466873, 31.857821, 33.256725>,  <39.230160, 31.820024, 33.244968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.466873, 31.857821, 33.256725>,  <39.861397, 31.920815, 33.276318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466873, 31.857821, 33.256725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148029, -0.714357, -0.683946,
		0.072721, -0.681830, 0.727887,
		-0.986306, -0.157485, -0.048982,
		39.170982, 31.810575, 33.242031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865685, 31.203114, 33.085499>,  <39.861397, 31.920815, 33.276318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865685, 31.203114, 33.085499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.481243, 31.308516, 33.052391>,  <39.250580, 31.371758, 33.032528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.481243, 31.308516, 33.052391>,  <39.865685, 31.203114, 33.085499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481243, 31.308516, 33.052391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099563, -0.610051, -0.786082,
		-0.257629, -0.747263, 0.612556,
		-0.961101, 0.263505, -0.082767,
		39.192913, 31.387568, 33.027561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530792, 30.617384, 33.079090>,  <39.865685, 31.203114, 33.085499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530792, 30.617384, 33.079090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.305702, 30.875031, 32.871841>,  <39.170647, 31.029619, 32.747494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.305702, 30.875031, 32.871841>,  <39.530792, 30.617384, 33.079090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305702, 30.875031, 32.871841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087702, -0.576723, -0.812219,
		-0.821977, -0.502499, 0.268048,
		-0.562728, 0.644116, -0.518123,
		39.136883, 31.068266, 32.716404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968876, 30.275661, 32.812408>,  <39.530792, 30.617384, 33.079090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968876, 30.275661, 32.812408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.004967, 30.595892, 32.575451>,  <39.026619, 30.788031, 32.433277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.004967, 30.595892, 32.575451>,  <38.968876, 30.275661, 32.812408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004967, 30.595892, 32.575451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070058, -0.588248, -0.805641,
		-0.993454, 0.114191, 0.003013,
		0.090224, 0.800578, -0.592397,
		39.032036, 30.836065, 32.397732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565262, 30.214502, 32.156967>,  <38.968876, 30.275661, 32.812408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565262, 30.214502, 32.156967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.822598, 30.503201, 32.054836>,  <38.977001, 30.676420, 31.993559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.822598, 30.503201, 32.054836>,  <38.565262, 30.214502, 32.156967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822598, 30.503201, 32.054836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046035, -0.369374, -0.928140,
		-0.764192, 0.585359, -0.270860,
		0.643343, 0.721747, -0.255326,
		39.015602, 30.719725, 31.978239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351994, 30.360500, 31.435024>,  <38.565262, 30.214502, 32.156967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351994, 30.360500, 31.435024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.694828, 30.563690, 31.469336>,  <38.900528, 30.685604, 31.489922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.694828, 30.563690, 31.469336>,  <38.351994, 30.360500, 31.435024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694828, 30.563690, 31.469336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199716, -0.174146, -0.964254,
		-0.474880, 0.843584, -0.250710,
		0.857089, 0.507976, 0.085779,
		38.951954, 30.716084, 31.495070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278080, 30.934546, 30.986361>,  <38.351994, 30.360500, 31.435024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278080, 30.934546, 30.986361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.667831, 30.851854, 31.021778>,  <38.901684, 30.802238, 31.043030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.667831, 30.851854, 31.021778>,  <38.278080, 30.934546, 30.986361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667831, 30.851854, 31.021778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045329, -0.205110, -0.977689,
		0.220278, 0.956657, -0.190485,
		0.974383, -0.206729, 0.088546,
		38.960148, 30.789835, 31.048342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784603, 31.266912, 30.581503>,  <38.278080, 30.934546, 30.986361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784603, 31.266912, 30.581503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451488, 31.072727, 30.475071>,  <37.251621, 30.956217, 30.411211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451488, 31.072727, 30.475071>,  <37.784603, 31.266912, 30.581503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451488, 31.072727, 30.475071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437295, 0.282119, 0.853922,
		-0.339480, 0.827487, -0.447234,
		-0.832782, -0.485462, -0.266082,
		37.201653, 30.927088, 30.395247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307438, 31.717125, 30.789318>,  <37.784603, 31.266912, 30.581503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307438, 31.717125, 30.789318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113239, 31.369661, 30.749874>,  <36.996719, 31.161182, 30.726208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113239, 31.369661, 30.749874>,  <37.307438, 31.717125, 30.789318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113239, 31.369661, 30.749874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568666, 0.228118, 0.790304,
		-0.664011, 0.439767, -0.604728,
		-0.485499, -0.868659, -0.098608,
		36.967590, 31.109064, 30.720291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585167, 31.885393, 30.775610>,  <37.307438, 31.717125, 30.789318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585167, 31.885393, 30.775610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629822, 31.502218, 30.881361>,  <36.656616, 31.272314, 30.944813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629822, 31.502218, 30.881361>,  <36.585167, 31.885393, 30.775610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629822, 31.502218, 30.881361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612905, 0.143042, 0.777101,
		-0.782230, -0.248793, -0.571155,
		0.111638, -0.957936, 0.264378,
		36.663315, 31.214838, 30.960674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952827, 31.641356, 30.926596>,  <36.585167, 31.885393, 30.775610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952827, 31.641356, 30.926596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169903, 31.344254, 31.083466>,  <36.300148, 31.165993, 31.177588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169903, 31.344254, 31.083466>,  <35.952827, 31.641356, 30.926596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169903, 31.344254, 31.083466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597739, -0.013498, 0.801577,
		-0.590084, -0.669424, -0.451301,
		0.542687, -0.742758, 0.392176,
		36.332710, 31.121426, 31.201118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478127, 31.289469, 31.318577>,  <35.952827, 31.641356, 30.926596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478127, 31.289469, 31.318577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822472, 31.136694, 31.453062>,  <36.029079, 31.045029, 31.533754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822472, 31.136694, 31.453062>,  <35.478127, 31.289469, 31.318577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822472, 31.136694, 31.453062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452482, -0.272353, 0.849167,
		-0.232757, -0.883148, -0.407277,
		0.860863, -0.381935, 0.336217,
		36.080730, 31.022112, 31.553926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240582, 30.651106, 31.706673>,  <35.478127, 31.289469, 31.318577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240582, 30.651106, 31.706673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.603954, 30.781027, 31.811939>,  <35.821980, 30.858980, 31.875099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.603954, 30.781027, 31.811939>,  <35.240582, 30.651106, 31.706673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603954, 30.781027, 31.811939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203992, -0.205060, 0.957255,
		0.364883, -0.923284, -0.120026,
		0.908431, 0.324802, 0.263165,
		35.876484, 30.878468, 31.890888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392712, 30.180141, 32.184303>,  <35.240582, 30.651106, 31.706673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392712, 30.180141, 32.184303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606827, 30.514910, 32.229961>,  <35.735298, 30.715771, 32.257355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606827, 30.514910, 32.229961>,  <35.392712, 30.180141, 32.184303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606827, 30.514910, 32.229961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153007, -0.036823, 0.987539,
		0.830694, -0.546085, 0.108344,
		0.535291, 0.836920, 0.114143,
		35.767414, 30.765985, 32.264206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846210, 30.048100, 32.756641>,  <35.392712, 30.180141, 32.184303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846210, 30.048100, 32.756641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.836273, 30.446989, 32.728558>,  <35.830311, 30.686323, 32.711708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.836273, 30.446989, 32.728558>,  <35.846210, 30.048100, 32.756641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836273, 30.446989, 32.728558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221839, 0.062979, 0.973047,
		0.974767, 0.039753, 0.219658,
		-0.024847, 0.997223, -0.070209,
		35.828819, 30.746157, 32.707497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189728, 30.274870, 33.375164>,  <35.846210, 30.048100, 32.756641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189728, 30.274870, 33.375164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955883, 30.573488, 33.248108>,  <35.815575, 30.752659, 33.171875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955883, 30.573488, 33.248108>,  <36.189728, 30.274870, 33.375164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955883, 30.573488, 33.248108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299084, 0.165631, 0.939742,
		0.754170, 0.644390, 0.126449,
		-0.584616, 0.746545, -0.317640,
		35.780499, 30.797451, 33.152817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323563, 30.895077, 33.871807>,  <36.189728, 30.274870, 33.375164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323563, 30.895077, 33.871807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.958595, 30.956234, 33.719955>,  <35.739616, 30.992928, 33.628845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.958595, 30.956234, 33.719955>,  <36.323563, 30.895077, 33.871807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958595, 30.956234, 33.719955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356994, 0.156249, 0.920946,
		0.200123, 0.975812, -0.087982,
		-0.912418, 0.152893, -0.379628,
		35.684872, 31.002102, 33.606068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062130, 31.506100, 34.232246>,  <36.323563, 30.895077, 33.871807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062130, 31.506100, 34.232246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740025, 31.332737, 34.070400>,  <35.546761, 31.228720, 33.973293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740025, 31.332737, 34.070400>,  <36.062130, 31.506100, 34.232246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740025, 31.332737, 34.070400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530571, 0.222098, 0.818026,
		-0.264673, 0.873402, -0.408799,
		-0.805260, -0.433406, -0.404619,
		35.498447, 31.202715, 33.949013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508049, 32.011040, 34.221798>,  <36.062130, 31.506100, 34.232246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508049, 32.011040, 34.221798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327969, 31.653992, 34.212349>,  <35.219921, 31.439764, 34.206680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327969, 31.653992, 34.212349>,  <35.508049, 32.011040, 34.221798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327969, 31.653992, 34.212349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654441, 0.311841, 0.688812,
		-0.607477, 0.325564, -0.724555,
		-0.450198, -0.892616, -0.023626,
		35.192909, 31.386208, 34.205261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742115, 32.106163, 34.186821>,  <35.508049, 32.011040, 34.221798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742115, 32.106163, 34.186821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826370, 31.746115, 34.339355>,  <34.876923, 31.530087, 34.430874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826370, 31.746115, 34.339355>,  <34.742115, 32.106163, 34.186821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826370, 31.746115, 34.339355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612569, 0.182462, 0.769069,
		-0.761833, -0.395589, -0.512952,
		0.210641, -0.900120, 0.381332,
		34.889561, 31.476078, 34.453754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118004, 31.898529, 34.548367>,  <34.742115, 32.106163, 34.186821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118004, 31.898529, 34.548367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352345, 31.612284, 34.700508>,  <34.492950, 31.440536, 34.791794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352345, 31.612284, 34.700508>,  <34.118004, 31.898529, 34.548367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352345, 31.612284, 34.700508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458903, 0.093904, 0.883510,
		-0.667968, -0.692157, -0.273382,
		0.585856, -0.715612, 0.380358,
		34.528103, 31.397600, 34.814617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036251, 32.189297, 33.766029>,  <34.118004, 31.898529, 34.548367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036251, 32.189297, 33.766029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.736088, 32.428165, 33.652702>,  <33.555988, 32.571487, 33.584705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.736088, 32.428165, 33.652702>,  <34.036251, 32.189297, 33.766029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736088, 32.428165, 33.652702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589340, 0.410427, -0.695865,
		-0.299274, -0.689152, -0.659928,
		-0.750408, 0.597177, -0.283315,
		33.510963, 32.607319, 33.567707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736778, 32.145603, 33.041904>,  <34.036251, 32.189297, 33.766029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736778, 32.145603, 33.041904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647488, 32.523804, 33.136719>,  <33.593914, 32.750725, 33.193607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647488, 32.523804, 33.136719>,  <33.736778, 32.145603, 33.041904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647488, 32.523804, 33.136719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272077, 0.293948, -0.916280,
		-0.936025, -0.140048, -0.322869,
		-0.223229, 0.945506, 0.237039,
		33.580521, 32.807457, 33.207829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230156, 32.525169, 32.617584>,  <33.736778, 32.145603, 33.041904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230156, 32.525169, 32.617584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.459126, 32.821033, 32.759136>,  <33.596508, 32.998550, 32.844067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.459126, 32.821033, 32.759136>,  <33.230156, 32.525169, 32.617584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459126, 32.821033, 32.759136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029510, 0.449892, -0.892595,
		-0.819425, 0.500502, 0.279357,
		0.572426, 0.739659, 0.353883,
		33.630852, 33.042931, 32.865299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990650, 33.285748, 32.456551>,  <33.230156, 32.525169, 32.617584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990650, 33.285748, 32.456551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386616, 33.297558, 32.511978>,  <33.624195, 33.304646, 32.545235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386616, 33.297558, 32.511978>,  <32.990650, 33.285748, 32.456551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386616, 33.297558, 32.511978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118596, 0.362387, -0.924452,
		-0.077513, 0.931560, 0.355229,
		0.989912, 0.029528, 0.138569,
		33.683590, 33.306416, 32.553551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123505, 33.957294, 32.251698>,  <32.990650, 33.285748, 32.456551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123505, 33.957294, 32.251698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439301, 33.712910, 32.228264>,  <33.628777, 33.566280, 32.214203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439301, 33.712910, 32.228264>,  <33.123505, 33.957294, 32.251698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439301, 33.712910, 32.228264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247407, 0.404140, -0.880602,
		0.561691, 0.680732, 0.470221,
		0.789489, -0.610962, -0.058584,
		33.676147, 33.529621, 32.210690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568092, 34.391644, 32.097530>,  <33.123505, 33.957294, 32.251698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568092, 34.391644, 32.097530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737507, 34.045864, 31.989199>,  <33.839157, 33.838398, 31.924200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737507, 34.045864, 31.989199>,  <33.568092, 34.391644, 32.097530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737507, 34.045864, 31.989199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309618, 0.419104, -0.853516,
		0.851325, 0.277641, 0.445154,
		0.423537, -0.864446, -0.270831,
		33.864567, 33.786530, 31.907949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238758, 34.627201, 31.801264>,  <33.568092, 34.391644, 32.097530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238758, 34.627201, 31.801264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191292, 34.255951, 31.660126>,  <34.162811, 34.033199, 31.575443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191292, 34.255951, 31.660126>,  <34.238758, 34.627201, 31.801264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191292, 34.255951, 31.660126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403099, 0.279725, -0.871358,
		0.907431, -0.245627, 0.340935,
		-0.118661, -0.928128, -0.352843,
		34.155693, 33.977512, 31.554274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873020, 34.536041, 31.413633>,  <34.238758, 34.627201, 31.801264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873020, 34.536041, 31.413633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.606026, 34.262444, 31.295908>,  <34.445831, 34.098286, 31.225273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.606026, 34.262444, 31.295908>,  <34.873020, 34.536041, 31.413633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606026, 34.262444, 31.295908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285071, 0.130411, -0.949594,
		0.687895, -0.717739, 0.107939,
		-0.667484, -0.683991, -0.294316,
		34.405781, 34.057247, 31.207613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264648, 34.008869, 31.088633>,  <34.873020, 34.536041, 31.413633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264648, 34.008869, 31.088633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892277, 33.987469, 30.944134>,  <34.668854, 33.974628, 30.857435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892277, 33.987469, 30.944134>,  <35.264648, 34.008869, 31.088633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892277, 33.987469, 30.944134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365183, -0.130975, -0.921676,
		0.002001, -0.989941, 0.141468,
		-0.930934, -0.053506, -0.361248,
		34.612995, 33.971416, 30.835760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347210, 33.477726, 30.554817>,  <35.264648, 34.008869, 31.088633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347210, 33.477726, 30.554817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.028362, 33.709435, 30.486649>,  <34.837051, 33.848461, 30.445747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.028362, 33.709435, 30.486649>,  <35.347210, 33.477726, 30.554817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028362, 33.709435, 30.486649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234986, 0.037611, -0.971271,
		-0.556220, -0.814266, -0.166101,
		-0.797120, 0.579271, -0.170421,
		34.789227, 33.883217, 30.435522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083626, 33.228863, 29.958466>,  <35.347210, 33.477726, 30.554817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083626, 33.228863, 29.958466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914135, 33.590191, 29.985205>,  <34.812443, 33.806988, 30.001247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914135, 33.590191, 29.985205>,  <35.083626, 33.228863, 29.958466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914135, 33.590191, 29.985205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136855, 0.136797, -0.981100,
		-0.895394, -0.406566, -0.181587,
		-0.423722, 0.903322, 0.066846,
		34.787018, 33.861187, 30.005259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494267, 33.226662, 29.433292>,  <35.083626, 33.228863, 29.958466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494267, 33.226662, 29.433292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604904, 33.602341, 29.514681>,  <34.671288, 33.827747, 29.563515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604904, 33.602341, 29.514681>,  <34.494267, 33.226662, 29.433292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604904, 33.602341, 29.514681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253817, 0.132814, -0.958091,
		-0.926861, 0.316648, -0.201649,
		0.276596, 0.939199, 0.203471,
		34.687881, 33.884102, 29.575722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334484, 33.406284, 28.850641>,  <34.494267, 33.226662, 29.433292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334484, 33.406284, 28.850641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.545376, 33.714836, 28.993195>,  <34.671909, 33.899967, 29.078728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.545376, 33.714836, 28.993195>,  <34.334484, 33.406284, 28.850641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545376, 33.714836, 28.993195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109264, 0.354386, -0.928694,
		-0.842669, 0.528573, 0.102559,
		0.527228, 0.771376, 0.356385,
		34.703545, 33.946247, 29.100109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046120, 33.940189, 28.472820>,  <34.334484, 33.406284, 28.850641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046120, 33.940189, 28.472820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418491, 34.031578, 28.586786>,  <34.641914, 34.086411, 28.655167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418491, 34.031578, 28.586786>,  <34.046120, 33.940189, 28.472820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418491, 34.031578, 28.586786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229429, 0.241116, -0.942988,
		-0.284146, 0.943219, 0.172042,
		0.930926, 0.228475, 0.284914,
		34.697769, 34.100121, 28.672260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189110, 34.557632, 28.147411>,  <34.046120, 33.940189, 28.472820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189110, 34.557632, 28.147411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556282, 34.423439, 28.232132>,  <34.776585, 34.342922, 28.282965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556282, 34.423439, 28.232132>,  <34.189110, 34.557632, 28.147411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556282, 34.423439, 28.232132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338431, 0.383488, -0.859303,
		0.207056, 0.860459, 0.465551,
		0.917928, -0.335481, 0.211803,
		34.831661, 34.322796, 28.295673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675030, 35.148659, 27.967058>,  <34.189110, 34.557632, 28.147411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675030, 35.148659, 27.967058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.874138, 34.801796, 27.973528>,  <34.993603, 34.593678, 27.977409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.874138, 34.801796, 27.973528>,  <34.675030, 35.148659, 27.967058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874138, 34.801796, 27.973528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452926, 0.243999, -0.857509,
		0.739650, 0.434169, 0.514214,
		0.497771, -0.867157, 0.016173,
		35.023468, 34.541649, 27.978380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275185, 35.489067, 27.795475>,  <34.675030, 35.148659, 27.967058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275185, 35.489067, 27.795475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318039, 35.101383, 27.706795>,  <35.343754, 34.868771, 27.653587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318039, 35.101383, 27.706795>,  <35.275185, 35.489067, 27.795475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318039, 35.101383, 27.706795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520916, 0.244648, -0.817798,
		0.846858, -0.027869, 0.531089,
		0.107139, -0.969211, -0.221699,
		35.350182, 34.810619, 27.640285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005386, 35.343391, 27.704885>,  <35.275185, 35.489067, 27.795475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005386, 35.343391, 27.704885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.799057, 35.051399, 27.525528>,  <35.675259, 34.876205, 27.417913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.799057, 35.051399, 27.525528>,  <36.005386, 35.343391, 27.704885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799057, 35.051399, 27.525528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545561, 0.123644, -0.828900,
		0.660520, -0.672193, 0.334469,
		-0.515826, -0.729979, -0.448392,
		35.644310, 34.832405, 27.391010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514111, 34.955189, 27.409357>,  <36.005386, 35.343391, 27.704885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514111, 34.955189, 27.409357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199169, 34.820751, 27.202625>,  <36.010204, 34.740089, 27.078587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199169, 34.820751, 27.202625>,  <36.514111, 34.955189, 27.409357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199169, 34.820751, 27.202625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552361, -0.012263, -0.833515,
		0.273799, -0.941750, 0.195299,
		-0.787357, -0.336091, -0.516829,
		35.962963, 34.719925, 27.047577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743740, 34.380787, 26.908976>,  <36.514111, 34.955189, 27.409357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743740, 34.380787, 26.908976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.392620, 34.502613, 26.761084>,  <36.181946, 34.575710, 26.672348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.392620, 34.502613, 26.761084>,  <36.743740, 34.380787, 26.908976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392620, 34.502613, 26.761084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324666, -0.189241, -0.926704,
		-0.352210, -0.933503, 0.067235,
		-0.877804, 0.304565, -0.369730,
		36.129280, 34.593983, 26.650166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637032, 33.958904, 26.451633>,  <36.743740, 34.380787, 26.908976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637032, 33.958904, 26.451633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.387398, 34.244431, 26.324522>,  <36.237617, 34.415749, 26.248255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.387398, 34.244431, 26.324522>,  <36.637032, 33.958904, 26.451633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387398, 34.244431, 26.324522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394658, -0.063036, -0.916663,
		-0.674363, -0.697487, -0.242374,
		-0.624083, 0.713819, -0.317778,
		36.200172, 34.458576, 26.229189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459301, 33.680214, 25.949055>,  <36.637032, 33.958904, 26.451633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459301, 33.680214, 25.949055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.345238, 34.054893, 25.867777>,  <36.276802, 34.279701, 25.819010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.345238, 34.054893, 25.867777>,  <36.459301, 33.680214, 25.949055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345238, 34.054893, 25.867777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356388, -0.093178, -0.929680,
		-0.889761, -0.337518, -0.307258,
		-0.285154, 0.936696, -0.203194,
		36.259693, 34.335903, 25.806818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991070, 33.660412, 25.299423>,  <36.459301, 33.680214, 25.949055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991070, 33.660412, 25.299423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.127987, 34.034790, 25.332491>,  <36.210136, 34.259418, 25.352331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.127987, 34.034790, 25.332491>,  <35.991070, 33.660412, 25.299423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127987, 34.034790, 25.332491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261557, -0.010407, -0.965132,
		-0.902454, 0.351982, -0.248366,
		0.342294, 0.935949, 0.082672,
		36.230675, 34.315575, 25.357292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745476, 34.013184, 24.669861>,  <35.991070, 33.660412, 25.299423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745476, 34.013184, 24.669861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068447, 34.196918, 24.817951>,  <36.262230, 34.307159, 24.906805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068447, 34.196918, 24.817951>,  <35.745476, 34.013184, 24.669861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068447, 34.196918, 24.817951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364753, 0.104553, -0.925215,
		-0.463692, 0.882088, -0.083125,
		0.807431, 0.459335, 0.370225,
		36.310677, 34.334721, 24.929018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784729, 34.600780, 24.357929>,  <35.745476, 34.013184, 24.669861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784729, 34.600780, 24.357929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166496, 34.553524, 24.467562>,  <36.395557, 34.525169, 24.533340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166496, 34.553524, 24.467562>,  <35.784729, 34.600780, 24.357929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166496, 34.553524, 24.467562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294910, 0.232134, -0.926899,
		0.045885, 0.965482, 0.256396,
		0.954423, -0.118145, 0.274079,
		36.452824, 34.518082, 24.549786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118519, 35.094753, 23.963169>,  <35.784729, 34.600780, 24.357929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118519, 35.094753, 23.963169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.403442, 34.847042, 24.095293>,  <36.574398, 34.698414, 24.174568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.403442, 34.847042, 24.095293>,  <36.118519, 35.094753, 23.963169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403442, 34.847042, 24.095293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410707, -0.013853, -0.911662,
		0.569147, 0.785050, 0.244474,
		0.712314, -0.619277, 0.330310,
		36.617138, 34.661259, 24.194386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874565, 35.398315, 23.858355>,  <36.118519, 35.094753, 23.963169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874565, 35.398315, 23.858355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912407, 35.001438, 23.890858>,  <36.935112, 34.763313, 23.910360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912407, 35.001438, 23.890858>,  <36.874565, 35.398315, 23.858355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912407, 35.001438, 23.890858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386702, -0.038587, -0.921397,
		0.917339, 0.118593, 0.380033,
		0.094607, -0.992193, 0.081258,
		36.940788, 34.703781, 23.915236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510197, 35.264313, 23.617060>,  <36.874565, 35.398315, 23.858355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510197, 35.264313, 23.617060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.334133, 34.906048, 23.591604>,  <37.228497, 34.691090, 23.576330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.334133, 34.906048, 23.591604>,  <37.510197, 35.264313, 23.617060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334133, 34.906048, 23.591604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182153, -0.019667, -0.983073,
		0.879252, -0.444297, 0.171804,
		-0.440155, -0.895664, -0.063638,
		37.202087, 34.637348, 23.572514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106209, 35.208916, 24.237005>,  <37.510197, 35.264313, 23.617060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106209, 35.208916, 24.237005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451347, 35.410736, 24.249229>,  <38.658428, 35.531830, 24.256563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451347, 35.410736, 24.249229>,  <38.106209, 35.208916, 24.237005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451347, 35.410736, 24.249229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104068, 0.118156, 0.987527,
		0.494645, -0.855260, 0.154457,
		0.862842, 0.504549, 0.030559,
		38.710201, 35.562099, 24.258398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530155, 34.941929, 24.792908>,  <38.106209, 35.208916, 24.237005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530155, 34.941929, 24.792908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.634724, 35.323555, 24.734371>,  <38.697464, 35.552532, 24.699249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.634724, 35.323555, 24.734371>,  <38.530155, 34.941929, 24.792908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634724, 35.323555, 24.734371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249546, 0.213263, 0.944588,
		0.932409, -0.210416, 0.293835,
		0.261420, 0.954068, -0.146339,
		38.713150, 35.609776, 24.690470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099709, 35.007610, 25.331932>,  <38.530155, 34.941929, 24.792908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099709, 35.007610, 25.331932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.935356, 35.349770, 25.205776>,  <38.836746, 35.555065, 25.130083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.935356, 35.349770, 25.205776>,  <39.099709, 35.007610, 25.331932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935356, 35.349770, 25.205776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201901, 0.251977, 0.946437,
		0.889053, 0.452548, 0.069174,
		-0.410878, 0.855399, -0.315391,
		38.812092, 35.606388, 25.111158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298023, 35.365902, 25.806807>,  <39.099709, 35.007610, 25.331932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298023, 35.365902, 25.806807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.016132, 35.593430, 25.637196>,  <38.846996, 35.729946, 25.535429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.016132, 35.593430, 25.637196>,  <39.298023, 35.365902, 25.806807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016132, 35.593430, 25.637196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200299, 0.413838, 0.888042,
		0.680617, 0.710760, -0.177708,
		-0.704727, 0.568822, -0.424030,
		38.804714, 35.764076, 25.509987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441700, 35.956543, 26.173166>,  <39.298023, 35.365902, 25.806807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441700, 35.956543, 26.173166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.073025, 35.962566, 26.018112>,  <38.851818, 35.966179, 25.925079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.073025, 35.962566, 26.018112>,  <39.441700, 35.956543, 26.173166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073025, 35.962566, 26.018112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373170, 0.238595, 0.896558,
		0.105988, 0.971002, -0.214292,
		-0.921689, 0.015057, -0.387638,
		38.796516, 35.967083, 25.901821>
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
