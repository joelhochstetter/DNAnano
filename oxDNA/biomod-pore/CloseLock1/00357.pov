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
	<24.740479, 34.987087, 34.714149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352001, 34.955696, 34.804150>,  <24.118916, 34.936859, 34.858150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352001, 34.955696, 34.804150>,  <24.740479, 34.987087, 34.714149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.352001, 34.955696, 34.804150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233559, 0.126108, -0.964130,
		0.047286, -0.988908, -0.140804,
		-0.971192, -0.078476, 0.225005,
		24.060644, 34.932152, 34.871651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311111, 35.442165, 34.422241>,  <24.740479, 34.987087, 34.714149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311111, 35.442165, 34.422241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918909, 35.520714, 34.419403>,  <24.683588, 35.567844, 34.417702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918909, 35.520714, 34.419403>,  <25.311111, 35.442165, 34.422241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.918909, 35.520714, 34.419403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196316, 0.977373, -0.078757,
		-0.008531, -0.078614, -0.996869,
		-0.980504, 0.196373, -0.007096,
		24.624758, 35.579624, 34.417274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739792, 36.022301, 34.149620>,  <25.311111, 35.442165, 34.422241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.739792, 36.022301, 34.149620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061605, 36.229851, 34.265202>,  <26.254694, 36.354382, 34.334549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061605, 36.229851, 34.265202>,  <25.739792, 36.022301, 34.149620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061605, 36.229851, 34.265202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388609, -0.092004, -0.916798,
		-0.449117, 0.849886, -0.275659,
		0.804535, 0.518873, 0.288953,
		26.302965, 36.385513, 34.351887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.566523, 36.749584, 34.171932>,  <25.739792, 36.022301, 34.149620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.566523, 36.749584, 34.171932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953369, 36.741379, 34.070530>,  <26.185476, 36.736454, 34.009689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953369, 36.741379, 34.070530>,  <25.566523, 36.749584, 34.171932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953369, 36.741379, 34.070530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147767, 0.856581, 0.494402,
		0.207010, -0.515604, 0.831444,
		0.967115, -0.020514, -0.253510,
		26.243504, 36.735226, 33.994476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908337, 36.750782, 34.732052>,  <25.566523, 36.749584, 34.171932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908337, 36.750782, 34.732052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177095, 36.890991, 34.471073>,  <26.338350, 36.975117, 34.314487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177095, 36.890991, 34.471073>,  <25.908337, 36.750782, 34.732052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177095, 36.890991, 34.471073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147393, 0.800017, 0.581591,
		0.725829, -0.486936, 0.485866,
		0.671898, 0.350522, -0.652447,
		26.378664, 36.996147, 34.275337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233332, 37.216213, 35.068604>,  <25.908337, 36.750782, 34.732052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233332, 37.216213, 35.068604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406393, 37.310246, 34.720455>,  <26.510229, 37.366665, 34.511566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406393, 37.310246, 34.720455>,  <26.233332, 37.216213, 35.068604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.406393, 37.310246, 34.720455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078740, 0.951866, 0.296229,
		0.898115, -0.196698, 0.393319,
		0.432654, 0.235078, -0.870373,
		26.536190, 37.380768, 34.459343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930288, 37.476624, 35.115967>,  <26.233332, 37.216213, 35.068604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930288, 37.476624, 35.115967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750629, 37.635361, 34.795773>,  <26.642834, 37.730602, 34.603657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750629, 37.635361, 34.795773>,  <26.930288, 37.476624, 35.115967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750629, 37.635361, 34.795773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136644, 0.854896, 0.500481,
		0.882946, 0.334172, -0.329749,
		-0.449148, 0.396839, -0.800490,
		26.615885, 37.754414, 34.555626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273352, 38.052601, 34.970474>,  <26.930288, 37.476624, 35.115967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273352, 38.052601, 34.970474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922415, 38.115582, 34.789154>,  <26.711853, 38.153370, 34.680363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922415, 38.115582, 34.789154>,  <27.273352, 38.052601, 34.970474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922415, 38.115582, 34.789154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067847, 0.894451, 0.441989,
		0.475045, 0.418531, -0.774057,
		-0.877342, 0.157447, -0.453301,
		26.659212, 38.162815, 34.653164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213818, 38.753780, 34.793854>,  <27.273352, 38.052601, 34.970474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213818, 38.753780, 34.793854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821356, 38.682774, 34.763332>,  <26.585878, 38.640171, 34.745022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821356, 38.682774, 34.763332>,  <27.213818, 38.753780, 34.793854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821356, 38.682774, 34.763332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193212, 0.898461, 0.394254,
		-0.001433, 0.401567, -0.915829,
		-0.981156, -0.177514, -0.076300,
		26.527010, 38.629520, 34.740444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917419, 39.345509, 34.489769>,  <27.213818, 38.753780, 34.793854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917419, 39.345509, 34.489769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604494, 39.147980, 34.641624>,  <26.416739, 39.029461, 34.732738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604494, 39.147980, 34.641624>,  <26.917419, 39.345509, 34.489769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604494, 39.147980, 34.641624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322485, 0.842540, 0.431428,
		-0.532908, 0.215085, -0.818381,
		-0.782312, -0.493827, 0.379634,
		26.369801, 38.999832, 34.755516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390787, 39.658211, 34.287415>,  <26.917419, 39.345509, 34.489769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390787, 39.658211, 34.287415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251175, 39.464931, 34.608585>,  <26.167408, 39.348965, 34.801289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251175, 39.464931, 34.608585>,  <26.390787, 39.658211, 34.287415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251175, 39.464931, 34.608585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507894, 0.817599, 0.271248,
		-0.787540, -0.313128, -0.530784,
		-0.349033, -0.483201, 0.802928,
		26.146465, 39.319973, 34.849464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.626190, 39.822845, 34.402954>,  <26.390787, 39.658211, 34.287415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.626190, 39.822845, 34.402954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.747139, 39.713058, 34.768082>,  <25.819708, 39.647186, 34.987160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.747139, 39.713058, 34.768082>,  <25.626190, 39.822845, 34.402954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.747139, 39.713058, 34.768082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521163, 0.754222, 0.399421,
		-0.798097, -0.596501, 0.085012,
		0.302374, -0.274472, 0.912817,
		25.837851, 39.630718, 35.041927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.064360, 39.924080, 34.875065>,  <25.626190, 39.822845, 34.402954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.064360, 39.924080, 34.875065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323860, 39.833935, 35.165810>,  <25.479561, 39.779846, 35.340256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323860, 39.833935, 35.165810>,  <25.064360, 39.924080, 34.875065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323860, 39.833935, 35.165810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395805, 0.715860, 0.575224,
		-0.649969, -0.660874, 0.375214,
		0.648751, -0.225367, 0.726864,
		25.518486, 39.766323, 35.383869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.699135, 39.862206, 35.497040>,  <25.064360, 39.924080, 34.875065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.699135, 39.862206, 35.497040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.068581, 39.988560, 35.583900>,  <25.290247, 40.064373, 35.636017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.068581, 39.988560, 35.583900>,  <24.699135, 39.862206, 35.497040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.068581, 39.988560, 35.583900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383235, 0.773261, 0.505171,
		-0.008338, -0.549802, 0.835253,
		0.923613, 0.315886, 0.217151,
		25.345665, 40.083324, 35.649044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.723572, 40.051987, 36.260937>,  <24.699135, 39.862206, 35.497040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.723572, 40.051987, 36.260937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011305, 40.264977, 36.082485>,  <25.183945, 40.392769, 35.975414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011305, 40.264977, 36.082485>,  <24.723572, 40.051987, 36.260937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.011305, 40.264977, 36.082485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396330, 0.842025, 0.365946,
		0.570508, -0.086423, 0.816732,
		0.719335, 0.532471, -0.446130,
		25.227106, 40.424717, 35.948647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.928232, 40.679447, 36.744190>,  <24.723572, 40.051987, 36.260937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.928232, 40.679447, 36.744190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067286, 40.775494, 36.381645>,  <25.150717, 40.833122, 36.164120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067286, 40.775494, 36.381645>,  <24.928232, 40.679447, 36.744190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.067286, 40.775494, 36.381645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190601, 0.964567, 0.182432,
		0.918053, 0.109334, 0.381083,
		0.347634, 0.240117, -0.906364,
		25.171576, 40.847530, 36.109737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449032, 41.107693, 36.891861>,  <24.928232, 40.679447, 36.744190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449032, 41.107693, 36.891861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.343960, 41.178043, 36.512375>,  <25.280916, 41.220253, 36.284683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.343960, 41.178043, 36.512375>,  <25.449032, 41.107693, 36.891861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.343960, 41.178043, 36.512375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161637, 0.961332, 0.222969,
		0.951247, 0.211917, -0.224096,
		-0.262682, 0.175876, -0.948718,
		25.265156, 41.230804, 36.227760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706631, 41.739895, 36.818611>,  <25.449032, 41.107693, 36.891861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706631, 41.739895, 36.818611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478510, 41.714779, 36.490997>,  <25.341637, 41.699711, 36.294430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478510, 41.714779, 36.490997>,  <25.706631, 41.739895, 36.818611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478510, 41.714779, 36.490997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321813, 0.934450, 0.152443,
		0.755773, 0.350513, -0.553126,
		-0.570302, -0.062791, -0.819032,
		25.307419, 41.695942, 36.245289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904518, 42.321396, 36.430050>,  <25.706631, 41.739895, 36.818611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904518, 42.321396, 36.430050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536644, 42.209381, 36.319958>,  <25.315920, 42.142170, 36.253902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536644, 42.209381, 36.319958>,  <25.904518, 42.321396, 36.430050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536644, 42.209381, 36.319958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331601, 0.929323, 0.162480,
		0.210279, 0.240698, -0.947548,
		-0.919687, -0.280041, -0.275233,
		25.260738, 42.125370, 36.237389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786381, 42.658241, 35.769012>,  <25.904518, 42.321396, 36.430050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786381, 42.658241, 35.769012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450382, 42.579006, 35.971069>,  <25.248783, 42.531467, 36.092304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450382, 42.579006, 35.971069>,  <25.786381, 42.658241, 35.769012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450382, 42.579006, 35.971069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224739, 0.974383, 0.008377,
		-0.493862, -0.106488, -0.862995,
		-0.839996, -0.198086, 0.505143,
		25.198383, 42.519581, 36.122612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316366, 43.195473, 35.587749>,  <25.786381, 42.658241, 35.769012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316366, 43.195473, 35.587749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128832, 43.030685, 35.900284>,  <25.016312, 42.931812, 36.087803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128832, 43.030685, 35.900284>,  <25.316366, 43.195473, 35.587749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.128832, 43.030685, 35.900284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374925, 0.893748, 0.246264,
		-0.799765, -0.177483, -0.573477,
		-0.468836, -0.411964, 0.781331,
		24.988182, 42.907097, 36.134682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.614931, 43.354259, 35.512020>,  <25.316366, 43.195473, 35.587749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.614931, 43.354259, 35.512020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663300, 43.268471, 35.899708>,  <24.692320, 43.216995, 36.132320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663300, 43.268471, 35.899708>,  <24.614931, 43.354259, 35.512020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.663300, 43.268471, 35.899708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421660, 0.872817, 0.245749,
		-0.898655, -0.438396, 0.015107,
		0.120921, -0.214474, 0.969216,
		24.699575, 43.204128, 36.190472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.031225, 43.668076, 35.817055>,  <24.614931, 43.354259, 35.512020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.031225, 43.668076, 35.817055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.300190, 43.622414, 36.109585>,  <24.461569, 43.595016, 36.285103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.300190, 43.622414, 36.109585>,  <24.031225, 43.668076, 35.817055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.300190, 43.622414, 36.109585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204852, 0.920739, 0.332077,
		-0.711266, -0.373105, 0.595729,
		0.672411, -0.114159, 0.731322,
		24.501913, 43.588165, 36.328979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.686869, 43.817928, 36.472244>,  <24.031225, 43.668076, 35.817055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.686869, 43.817928, 36.472244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.082438, 43.867290, 36.505253>,  <24.319778, 43.896908, 36.525059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.082438, 43.867290, 36.505253>,  <23.686869, 43.817928, 36.472244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.082438, 43.867290, 36.505253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142054, 0.948045, 0.284660,
		-0.043105, -0.293229, 0.955070,
		0.988920, 0.123401, 0.082520,
		24.379114, 43.904312, 36.530010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.684757, 44.195675, 37.090427>,  <23.686869, 43.817928, 36.472244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.684757, 44.195675, 37.090427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.005219, 44.286713, 36.869030>,  <24.197495, 44.341335, 36.736191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.005219, 44.286713, 36.869030>,  <23.684757, 44.195675, 37.090427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.005219, 44.286713, 36.869030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122656, 0.967674, 0.220369,
		0.585756, -0.108660, 0.803170,
		0.801152, 0.227596, -0.553493,
		24.245564, 44.354992, 36.702984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.427029, 44.436241, 37.459827>,  <23.684757, 44.195675, 37.090427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.427029, 44.436241, 37.459827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353441, 44.601028, 37.102856>,  <24.309288, 44.699902, 36.888672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353441, 44.601028, 37.102856>,  <24.427029, 44.436241, 37.459827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.353441, 44.601028, 37.102856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090225, 0.897018, 0.432687,
		0.978782, 0.160121, -0.127854,
		-0.183969, 0.411970, -0.892432,
		24.298250, 44.724621, 36.835125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888943, 44.978733, 37.330166>,  <24.427029, 44.436241, 37.459827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888943, 44.978733, 37.330166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525606, 45.032619, 37.171787>,  <24.307604, 45.064949, 37.076759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525606, 45.032619, 37.171787>,  <24.888943, 44.978733, 37.330166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.525606, 45.032619, 37.171787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023704, 0.928602, 0.370320,
		0.417561, 0.345762, -0.840293,
		-0.908340, 0.134713, -0.395944,
		24.253105, 45.073032, 37.053005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.889883, 45.729973, 37.247131>,  <24.888943, 44.978733, 37.330166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.889883, 45.729973, 37.247131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.514807, 45.605652, 37.184990>,  <24.289761, 45.531059, 37.147705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.514807, 45.605652, 37.184990>,  <24.889883, 45.729973, 37.247131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.514807, 45.605652, 37.184990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344377, 0.890819, 0.296390,
		0.046276, 0.331423, -0.942347,
		-0.937690, -0.310807, -0.155358,
		24.233500, 45.512409, 37.138382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.988558, 45.628040, 36.505146>,  <24.889883, 45.729973, 37.247131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.988558, 45.628040, 36.505146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344435, 45.751175, 36.370277>,  <25.557961, 45.825054, 36.289356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344435, 45.751175, 36.370277>,  <24.988558, 45.628040, 36.505146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344435, 45.751175, 36.370277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252668, -0.947083, -0.197971,
		-0.380273, 0.090940, -0.920393,
		0.889692, 0.307837, -0.337172,
		25.611341, 45.843525, 36.269127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188890, 45.274837, 35.868164>,  <24.988558, 45.628040, 36.505146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188890, 45.274837, 35.868164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536470, 45.386002, 36.031963>,  <25.745018, 45.452702, 36.130245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536470, 45.386002, 36.031963>,  <25.188890, 45.274837, 35.868164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536470, 45.386002, 36.031963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358996, -0.923520, -0.135028,
		0.340656, 0.264342, -0.902262,
		0.868951, 0.277911, 0.409500,
		25.797155, 45.469376, 36.154812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712557, 44.925594, 35.528339>,  <25.188890, 45.274837, 35.868164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712557, 44.925594, 35.528339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927916, 45.048912, 35.842049>,  <26.057131, 45.122902, 36.030273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927916, 45.048912, 35.842049>,  <25.712557, 44.925594, 35.528339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927916, 45.048912, 35.842049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473687, -0.880445, 0.020919,
		0.696959, 0.360237, -0.620063,
		0.538395, 0.308295, 0.784273,
		26.089434, 45.141399, 36.077332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531532, 44.892620, 35.455841>,  <25.712557, 44.925594, 35.528339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531532, 44.892620, 35.455841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403282, 44.860554, 35.833363>,  <26.326332, 44.841312, 36.059875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403282, 44.860554, 35.833363>,  <26.531532, 44.892620, 35.455841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403282, 44.860554, 35.833363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533735, -0.838454, 0.110099,
		0.782513, 0.539044, 0.311619,
		-0.320626, -0.080168, 0.943807,
		26.307095, 44.836502, 36.116505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164305, 45.003342, 35.905190>,  <26.531532, 44.892620, 35.455841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164305, 45.003342, 35.905190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849426, 44.776596, 36.002335>,  <26.660500, 44.640549, 36.060623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849426, 44.776596, 36.002335>,  <27.164305, 45.003342, 35.905190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849426, 44.776596, 36.002335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580434, -0.814090, -0.018798,
		0.208367, 0.126167, 0.969879,
		-0.787197, -0.566868, 0.242862,
		26.613268, 44.606537, 36.075191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597595, 44.432243, 36.087429>,  <27.164305, 45.003342, 35.905190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597595, 44.432243, 36.087429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230938, 44.273178, 36.103554>,  <27.010944, 44.177738, 36.113228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230938, 44.273178, 36.103554>,  <27.597595, 44.432243, 36.087429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230938, 44.273178, 36.103554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399552, -0.908826, 0.119974,
		-0.011071, 0.126081, 0.991958,
		-0.916644, -0.397667, 0.040315,
		26.955944, 44.153877, 36.115646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571192, 44.116165, 36.684353>,  <27.597595, 44.432243, 36.087429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571192, 44.116165, 36.684353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334738, 43.926521, 36.423347>,  <27.192865, 43.812733, 36.266743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334738, 43.926521, 36.423347>,  <27.571192, 44.116165, 36.684353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.334738, 43.926521, 36.423347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557921, -0.824587, 0.093700,
		-0.582480, -0.308663, 0.751960,
		-0.591135, -0.474113, -0.652515,
		27.157396, 43.784286, 36.227592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832163, 43.498707, 36.940777>,  <27.571192, 44.116165, 36.684353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832163, 43.498707, 36.940777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603603, 43.497124, 36.612511>,  <27.466469, 43.496174, 36.415550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603603, 43.497124, 36.612511>,  <27.832163, 43.498707, 36.940777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603603, 43.497124, 36.612511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321616, -0.921080, -0.219488,
		-0.755029, -0.389353, 0.527575,
		-0.571397, -0.003956, -0.820664,
		27.432184, 43.495937, 36.366310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470287, 42.787952, 36.947289>,  <27.832163, 43.498707, 36.940777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470287, 42.787952, 36.947289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500303, 42.932644, 36.575584>,  <27.518312, 43.019459, 36.352562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500303, 42.932644, 36.575584>,  <27.470287, 42.787952, 36.947289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500303, 42.932644, 36.575584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325989, -0.889583, -0.319958,
		-0.942391, -0.278919, -0.184673,
		0.075040, 0.361726, -0.929259,
		27.522816, 43.041161, 36.296806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251011, 42.319954, 36.524990>,  <27.470287, 42.787952, 36.947289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251011, 42.319954, 36.524990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448236, 42.527981, 36.246017>,  <27.566572, 42.652798, 36.078632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448236, 42.527981, 36.246017>,  <27.251011, 42.319954, 36.524990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448236, 42.527981, 36.246017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354283, -0.852203, -0.385011,
		-0.794588, -0.057253, -0.604444,
		0.493066, 0.520069, -0.697434,
		27.596157, 42.684002, 36.036789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037762, 42.038681, 35.899204>,  <27.251011, 42.319954, 36.524990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037762, 42.038681, 35.899204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362144, 42.246086, 35.790768>,  <27.556774, 42.370529, 35.725704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362144, 42.246086, 35.790768>,  <27.037762, 42.038681, 35.899204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362144, 42.246086, 35.790768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331385, -0.788873, -0.517555,
		-0.482218, 0.329879, -0.811570,
		0.810956, 0.518516, -0.271091,
		27.605431, 42.401642, 35.709438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059071, 41.935459, 35.216099>,  <27.037762, 42.038681, 35.899204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059071, 41.935459, 35.216099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431753, 42.037552, 35.319469>,  <27.655363, 42.098808, 35.381493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431753, 42.037552, 35.319469>,  <27.059071, 41.935459, 35.216099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431753, 42.037552, 35.319469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357983, -0.765622, -0.534482,
		0.061443, 0.590492, -0.804701,
		0.931704, 0.255229, 0.258428,
		27.711264, 42.114120, 35.396999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447458, 41.690212, 34.627441>,  <27.059071, 41.935459, 35.216099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447458, 41.690212, 34.627441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738565, 41.730770, 34.898758>,  <27.913229, 41.755104, 35.061546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738565, 41.730770, 34.898758>,  <27.447458, 41.690212, 34.627441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738565, 41.730770, 34.898758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521021, -0.724872, -0.450664,
		0.445976, 0.681380, -0.580368,
		0.727766, 0.101399, 0.678288,
		27.956896, 41.761189, 35.102245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093603, 41.716347, 34.246670>,  <27.447458, 41.690212, 34.627441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093603, 41.716347, 34.246670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182396, 41.589790, 34.615585>,  <28.235672, 41.513855, 34.836937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182396, 41.589790, 34.615585>,  <28.093603, 41.716347, 34.246670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182396, 41.589790, 34.615585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438859, -0.812245, -0.384268,
		0.870705, 0.490056, -0.041453,
		0.221983, -0.316391, 0.922291,
		28.248991, 41.494873, 34.892273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838396, 41.551815, 34.227814>,  <28.093603, 41.716347, 34.246670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838396, 41.551815, 34.227814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697849, 41.373283, 34.557014>,  <28.613522, 41.266167, 34.754536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697849, 41.373283, 34.557014>,  <28.838396, 41.551815, 34.227814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697849, 41.373283, 34.557014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377460, -0.871977, -0.311737,
		0.856777, 0.201118, 0.474853,
		-0.351365, -0.446327, 0.823003,
		28.592440, 41.239384, 34.803917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337076, 41.264584, 34.471752>,  <28.838396, 41.551815, 34.227814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337076, 41.264584, 34.471752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027395, 41.063824, 34.626003>,  <28.841587, 40.943367, 34.718552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027395, 41.063824, 34.626003>,  <29.337076, 41.264584, 34.471752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027395, 41.063824, 34.626003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412774, -0.862245, -0.293516,
		0.479819, -0.068065, 0.874723,
		-0.774204, -0.501898, 0.385626,
		28.795134, 40.913254, 34.741692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669231, 40.779118, 34.749409>,  <29.337076, 41.264584, 34.471752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669231, 40.779118, 34.749409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288727, 40.657013, 34.731880>,  <29.060425, 40.583752, 34.721363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288727, 40.657013, 34.731880>,  <29.669231, 40.779118, 34.749409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288727, 40.657013, 34.731880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308084, -0.947000, -0.090967,
		-0.013728, -0.100033, 0.994889,
		-0.951260, -0.305261, -0.043819,
		29.003349, 40.565434, 34.718735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521317, 40.206810, 35.228676>,  <29.669231, 40.779118, 34.749409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521317, 40.206810, 35.228676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251066, 40.162006, 34.937202>,  <29.088917, 40.135124, 34.762318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251066, 40.162006, 34.937202>,  <29.521317, 40.206810, 35.228676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251066, 40.162006, 34.937202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350185, -0.918531, -0.183500,
		-0.648768, -0.379152, 0.659806,
		-0.675626, -0.112005, -0.728687,
		29.048378, 40.128407, 34.718597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219065, 39.516865, 35.336235>,  <29.521317, 40.206810, 35.228676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219065, 39.516865, 35.336235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127176, 39.600460, 34.956013>,  <29.072042, 39.650616, 34.727879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127176, 39.600460, 34.956013>,  <29.219065, 39.516865, 35.336235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127176, 39.600460, 34.956013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090279, -0.967886, -0.234618,
		-0.969061, -0.139710, 0.203473,
		-0.229717, 0.208990, -0.950554,
		29.058260, 39.663158, 34.670845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723104, 38.958447, 35.160912>,  <29.219065, 39.516865, 35.336235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723104, 38.958447, 35.160912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809731, 39.114288, 34.802849>,  <28.861706, 39.207794, 34.588013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809731, 39.114288, 34.802849>,  <28.723104, 38.958447, 35.160912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809731, 39.114288, 34.802849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004281, -0.917289, -0.398199,
		-0.976259, 0.082404, -0.200322,
		0.216566, 0.389603, -0.895158,
		28.874701, 39.231171, 34.534302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220335, 38.795868, 34.631660>,  <28.723104, 38.958447, 35.160912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220335, 38.795868, 34.631660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570927, 38.870598, 34.454174>,  <28.781281, 38.915436, 34.347683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570927, 38.870598, 34.454174>,  <28.220335, 38.795868, 34.631660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570927, 38.870598, 34.454174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031952, -0.897036, -0.440801,
		-0.480380, 0.400530, -0.780263,
		0.876478, 0.186821, -0.443717,
		28.833870, 38.926643, 34.321060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097340, 38.791859, 33.863388>,  <28.220335, 38.795868, 34.631660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097340, 38.791859, 33.863388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477350, 38.704971, 33.953072>,  <28.705357, 38.652840, 34.006882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477350, 38.704971, 33.953072>,  <28.097340, 38.791859, 33.863388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477350, 38.704971, 33.953072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057996, -0.828530, -0.556934,
		0.306740, 0.516097, -0.799721,
		0.950025, -0.217214, 0.224212,
		28.762358, 38.639809, 34.020336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292732, 38.502071, 33.220192>,  <28.097340, 38.791859, 33.863388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292732, 38.502071, 33.220192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587040, 38.421600, 33.478855>,  <28.763624, 38.373318, 33.634052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587040, 38.421600, 33.478855>,  <28.292732, 38.502071, 33.220192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587040, 38.421600, 33.478855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015054, -0.959481, -0.281370,
		0.677065, 0.197289, -0.708986,
		0.735769, -0.201179, 0.646661,
		28.807772, 38.361248, 33.672852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659565, 37.960251, 32.840893>,  <28.292732, 38.502071, 33.220192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659565, 37.960251, 32.840893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837114, 37.960793, 33.199329>,  <28.943644, 37.961117, 33.414391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837114, 37.960793, 33.199329>,  <28.659565, 37.960251, 32.840893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837114, 37.960793, 33.199329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396553, -0.897045, -0.195079,
		0.803568, 0.441937, -0.398711,
		0.443875, 0.001351, 0.896088,
		28.970276, 37.961197, 33.468155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379078, 37.928024, 32.731503>,  <28.659565, 37.960251, 32.840893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379078, 37.928024, 32.731503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278082, 37.774006, 33.086578>,  <29.217484, 37.681595, 33.299625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278082, 37.774006, 33.086578>,  <29.379078, 37.928024, 32.731503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278082, 37.774006, 33.086578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241135, -0.913507, -0.327656,
		0.937072, 0.131323, 0.323498,
		-0.252489, -0.385043, 0.887688,
		29.202335, 37.658493, 33.352886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839832, 37.371719, 32.829063>,  <29.379078, 37.928024, 32.731503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839832, 37.371719, 32.829063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552998, 37.266354, 33.087177>,  <29.380896, 37.203133, 33.242046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552998, 37.266354, 33.087177>,  <29.839832, 37.371719, 32.829063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552998, 37.266354, 33.087177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122398, -0.959037, -0.255475,
		0.686151, -0.104217, 0.719956,
		-0.717089, -0.263416, 0.645288,
		29.337872, 37.187328, 33.280762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112724, 36.737419, 33.190624>,  <29.839832, 37.371719, 32.829063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112724, 36.737419, 33.190624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728567, 36.722572, 33.301094>,  <29.498074, 36.713665, 33.367374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728567, 36.722572, 33.301094>,  <30.112724, 36.737419, 33.190624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728567, 36.722572, 33.301094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003089, -0.989612, -0.143733,
		0.278639, -0.138893, 0.950299,
		-0.960391, -0.037114, 0.276174,
		29.440451, 36.711437, 33.383945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014650, 36.269066, 33.674015>,  <30.112724, 36.737419, 33.190624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014650, 36.269066, 33.674015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677658, 36.296989, 33.460342>,  <29.475462, 36.313744, 33.332138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677658, 36.296989, 33.460342>,  <30.014650, 36.269066, 33.674015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677658, 36.296989, 33.460342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051397, -0.976631, -0.208688,
		-0.536269, -0.203270, 0.819205,
		-0.842481, 0.069808, -0.534185,
		29.424913, 36.317932, 33.300087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552120, 35.934582, 34.102352>,  <30.014650, 36.269066, 33.674015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552120, 35.934582, 34.102352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523657, 35.553001, 34.218914>,  <30.506578, 35.324055, 34.288853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523657, 35.553001, 34.218914>,  <30.552120, 35.934582, 34.102352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523657, 35.553001, 34.218914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577242, 0.198873, 0.791985,
		-0.813466, 0.224570, 0.536508,
		-0.071159, -0.953948, 0.291408,
		30.502310, 35.266815, 34.306335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311235, 35.800495, 34.789619>,  <30.552120, 35.934582, 34.102352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311235, 35.800495, 34.789619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579363, 35.509216, 34.732483>,  <30.740238, 35.334450, 34.698200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579363, 35.509216, 34.732483>,  <30.311235, 35.800495, 34.789619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579363, 35.509216, 34.732483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511643, 0.314098, 0.799727,
		-0.537491, -0.609157, 0.583122,
		0.670317, -0.728197, -0.142845,
		30.780458, 35.290756, 34.689629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518332, 35.373920, 35.491169>,  <30.311235, 35.800495, 34.789619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518332, 35.373920, 35.491169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808071, 35.399796, 35.216610>,  <30.981915, 35.415321, 35.051876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808071, 35.399796, 35.216610>,  <30.518332, 35.373920, 35.491169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808071, 35.399796, 35.216610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630500, 0.340614, 0.697460,
		0.278911, -0.937975, 0.205939,
		0.724347, 0.064685, -0.686395,
		31.025375, 35.419201, 35.010693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156647, 34.867867, 35.690941>,  <30.518332, 35.373920, 35.491169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156647, 34.867867, 35.690941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203186, 35.222374, 35.511608>,  <31.231110, 35.435078, 35.404011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203186, 35.222374, 35.511608>,  <31.156647, 34.867867, 35.690941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203186, 35.222374, 35.511608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554083, 0.316706, 0.769863,
		0.824291, -0.337983, -0.454216,
		0.116348, 0.886265, -0.448328,
		31.238091, 35.488255, 35.377110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787678, 35.090115, 35.926815>,  <31.156647, 34.867867, 35.690941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787678, 35.090115, 35.926815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537415, 35.379494, 35.810081>,  <31.387257, 35.553123, 35.740040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537415, 35.379494, 35.810081>,  <31.787678, 35.090115, 35.926815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537415, 35.379494, 35.810081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243183, 0.536336, 0.808211,
		0.741224, 0.434696, -0.511495,
		-0.625660, 0.723452, -0.291834,
		31.349716, 35.596531, 35.722530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216179, 35.631889, 35.858887>,  <31.787678, 35.090115, 35.926815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216179, 35.631889, 35.858887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838810, 35.751381, 35.916454>,  <31.612389, 35.823074, 35.950996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838810, 35.751381, 35.916454>,  <32.216179, 35.631889, 35.858887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838810, 35.751381, 35.916454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303765, 0.604566, 0.736360,
		0.132963, 0.738417, -0.661105,
		-0.943423, 0.298729, 0.143920,
		31.555782, 35.841000, 35.959629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418835, 35.659592, 36.626968>,  <32.216179, 35.631889, 35.858887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418835, 35.659592, 36.626968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218063, 35.314178, 36.607483>,  <32.097599, 35.106930, 36.595791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218063, 35.314178, 36.607483>,  <32.418835, 35.659592, 36.626968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218063, 35.314178, 36.607483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187921, -0.163860, 0.968419,
		-0.844245, 0.476927, 0.244523,
		-0.501933, -0.863534, -0.048713,
		32.067482, 35.055119, 36.592869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911865, 35.725014, 37.048771>,  <32.418835, 35.659592, 36.626968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911865, 35.725014, 37.048771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996469, 35.335457, 37.015793>,  <32.047234, 35.101723, 36.996006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996469, 35.335457, 37.015793>,  <31.911865, 35.725014, 37.048771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996469, 35.335457, 37.015793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055132, -0.072326, 0.995856,
		-0.975820, -0.215178, 0.038395,
		0.211510, -0.973893, -0.082440,
		32.059921, 35.043289, 36.991062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369368, 35.308590, 37.343723>,  <31.911865, 35.725014, 37.048771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369368, 35.308590, 37.343723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718618, 35.113705, 37.337120>,  <31.928169, 34.996773, 37.333157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718618, 35.113705, 37.337120>,  <31.369368, 35.308590, 37.343723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718618, 35.113705, 37.337120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055768, 0.066184, 0.996248,
		-0.484294, -0.870771, 0.084958,
		0.873126, -0.487215, -0.016508,
		31.980556, 34.967541, 37.332169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337051, 34.841415, 37.979027>,  <31.369368, 35.308590, 37.343723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337051, 34.841415, 37.979027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719894, 34.909397, 37.885170>,  <31.949600, 34.950188, 37.828854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719894, 34.909397, 37.885170>,  <31.337051, 34.841415, 37.979027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719894, 34.909397, 37.885170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268276, -0.214024, 0.939266,
		0.109412, -0.961930, -0.250439,
		0.957109, 0.169954, -0.234647,
		32.007027, 34.960384, 37.814777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740250, 34.338028, 38.233139>,  <31.337051, 34.841415, 37.979027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740250, 34.338028, 38.233139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026646, 34.614132, 38.191364>,  <32.198483, 34.779793, 38.166302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026646, 34.614132, 38.191364>,  <31.740250, 34.338028, 38.233139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026646, 34.614132, 38.191364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305143, -0.174886, 0.936110,
		0.627893, -0.702111, -0.335843,
		0.715988, 0.690257, -0.104434,
		32.241444, 34.821209, 38.160034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461308, 34.038185, 38.394215>,  <31.740250, 34.338028, 38.233139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461308, 34.038185, 38.394215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493206, 34.435009, 38.433125>,  <32.512344, 34.673103, 38.456470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493206, 34.435009, 38.433125>,  <32.461308, 34.038185, 38.394215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493206, 34.435009, 38.433125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426367, -0.122157, 0.896264,
		0.901028, -0.030000, -0.432722,
		0.079748, 0.992057, 0.097276,
		32.517132, 34.732628, 38.462307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192986, 34.130009, 38.488377>,  <32.461308, 34.038185, 38.394215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192986, 34.130009, 38.488377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987263, 34.441078, 38.632988>,  <32.863831, 34.627720, 38.719757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987263, 34.441078, 38.632988>,  <33.192986, 34.130009, 38.488377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987263, 34.441078, 38.632988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534806, -0.038718, 0.844087,
		0.670426, 0.627469, -0.395994,
		-0.514307, 0.777678, 0.361532,
		32.832970, 34.674381, 38.741447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724182, 34.523949, 38.798283>,  <33.192986, 34.130009, 38.488377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724182, 34.523949, 38.798283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381470, 34.669666, 38.944275>,  <33.175842, 34.757095, 39.031872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381470, 34.669666, 38.944275>,  <33.724182, 34.523949, 38.798283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381470, 34.669666, 38.944275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396058, 0.011609, 0.918152,
		0.330238, 0.931213, -0.154227,
		-0.856785, 0.364292, 0.364980,
		33.124435, 34.778954, 39.053768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975483, 35.040539, 39.252464>,  <33.724182, 34.523949, 38.798283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975483, 35.040539, 39.252464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603947, 34.923527, 39.343403>,  <33.381023, 34.853321, 39.397964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603947, 34.923527, 39.343403>,  <33.975483, 35.040539, 39.252464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603947, 34.923527, 39.343403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284605, -0.170543, 0.943353,
		-0.237184, 0.940927, 0.241662,
		-0.928840, -0.292526, 0.227343,
		33.325294, 34.835770, 39.411606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939663, 35.384533, 39.890083>,  <33.975483, 35.040539, 39.252464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939663, 35.384533, 39.890083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631592, 35.129753, 39.876720>,  <33.446747, 34.976887, 39.868702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631592, 35.129753, 39.876720>,  <33.939663, 35.384533, 39.890083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631592, 35.129753, 39.876720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108076, -0.181950, 0.977350,
		-0.628600, 0.749127, 0.208973,
		-0.770182, -0.636948, -0.033411,
		33.400536, 34.938667, 39.866695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425312, 35.532200, 40.463718>,  <33.939663, 35.384533, 39.890083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425312, 35.532200, 40.463718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352417, 35.153225, 40.358524>,  <33.308681, 34.925842, 40.295410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352417, 35.153225, 40.358524>,  <33.425312, 35.532200, 40.463718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352417, 35.153225, 40.358524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166134, -0.293286, 0.941479,
		-0.969117, 0.127884, 0.210849,
		-0.182239, -0.947433, -0.262982,
		33.297745, 34.868996, 40.279629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996281, 35.313950, 40.956284>,  <33.425312, 35.532200, 40.463718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996281, 35.313950, 40.956284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131882, 34.965122, 40.815102>,  <33.213242, 34.755825, 40.730392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131882, 34.965122, 40.815102>,  <32.996281, 35.313950, 40.956284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131882, 34.965122, 40.815102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018121, -0.381153, 0.924334,
		-0.940612, -0.306951, -0.145013,
		0.338998, -0.872068, -0.352955,
		33.233582, 34.703503, 40.709217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770374, 34.829254, 41.433048>,  <32.996281, 35.313950, 40.956284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770374, 34.829254, 41.433048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061195, 34.630226, 41.243809>,  <33.235687, 34.510807, 41.130264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061195, 34.630226, 41.243809>,  <32.770374, 34.829254, 41.433048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061195, 34.630226, 41.243809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234253, -0.467940, 0.852149,
		-0.645388, -0.730378, -0.223656,
		0.727049, -0.497575, -0.473096,
		33.279308, 34.480953, 41.101879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775330, 34.143749, 41.630894>,  <32.770374, 34.829254, 41.433048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775330, 34.143749, 41.630894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137917, 34.154560, 41.462326>,  <33.355469, 34.161045, 41.361187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137917, 34.154560, 41.462326>,  <32.775330, 34.143749, 41.630894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137917, 34.154560, 41.462326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346940, -0.616593, 0.706715,
		-0.240744, -0.786818, -0.568295,
		0.906463, 0.027027, -0.421420,
		33.409855, 34.162666, 41.335899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981342, 33.445541, 41.477470>,  <32.775330, 34.143749, 41.630894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981342, 33.445541, 41.477470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325527, 33.646431, 41.511810>,  <33.532040, 33.766964, 41.532413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325527, 33.646431, 41.511810>,  <32.981342, 33.445541, 41.477470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325527, 33.646431, 41.511810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367778, -0.728840, 0.577522,
		0.352621, -0.465361, -0.811848,
		0.860464, 0.502226, 0.085855,
		33.583668, 33.797100, 41.537567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553844, 33.028511, 41.243370>,  <32.981342, 33.445541, 41.477470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553844, 33.028511, 41.243370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674698, 33.300789, 41.510315>,  <33.747211, 33.464157, 41.670483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674698, 33.300789, 41.510315>,  <33.553844, 33.028511, 41.243370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674698, 33.300789, 41.510315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353102, -0.730192, 0.584927,
		0.885457, 0.058919, -0.460971,
		0.302134, 0.680697, 0.667358,
		33.765339, 33.504997, 41.710522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300213, 32.836983, 41.516628>,  <33.553844, 33.028511, 41.243370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300213, 32.836983, 41.516628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130016, 33.086445, 41.778931>,  <34.027901, 33.236122, 41.936310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130016, 33.086445, 41.778931>,  <34.300213, 32.836983, 41.516628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130016, 33.086445, 41.778931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276809, -0.600194, 0.750429,
		0.861590, 0.500817, 0.082741,
		-0.425488, 0.623659, 0.655751,
		34.002369, 33.273544, 41.975655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513748, 32.516560, 42.106377>,  <34.300213, 32.836983, 41.516628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513748, 32.516560, 42.106377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259613, 32.778027, 42.270847>,  <34.107132, 32.934906, 42.369530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259613, 32.778027, 42.270847>,  <34.513748, 32.516560, 42.106377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259613, 32.778027, 42.270847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014106, -0.522531, 0.852503,
		0.772107, 0.547426, 0.322762,
		-0.635336, 0.653671, 0.411172,
		34.069012, 32.974129, 42.394199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726776, 32.434605, 42.760452>,  <34.513748, 32.516560, 42.106377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726776, 32.434605, 42.760452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373547, 32.621445, 42.778320>,  <34.161610, 32.733551, 42.789040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373547, 32.621445, 42.778320>,  <34.726776, 32.434605, 42.760452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373547, 32.621445, 42.778320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178235, -0.421963, 0.888920,
		0.434066, 0.777021, 0.455878,
		-0.883074, 0.467103, 0.044667,
		34.108624, 32.761578, 42.791721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597397, 32.779102, 43.420738>,  <34.726776, 32.434605, 42.760452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597397, 32.779102, 43.420738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242790, 32.685036, 43.261345>,  <34.030025, 32.628597, 43.165707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242790, 32.685036, 43.261345>,  <34.597397, 32.779102, 43.420738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242790, 32.685036, 43.261345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249892, -0.481481, 0.840078,
		-0.389421, 0.844319, 0.368073,
		-0.886513, -0.235165, -0.398487,
		33.976837, 32.614487, 43.141800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040672, 33.122086, 43.704041>,  <34.597397, 32.779102, 43.420738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040672, 33.122086, 43.704041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899712, 32.777584, 43.557587>,  <33.815136, 32.570885, 43.469715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899712, 32.777584, 43.557587>,  <34.040672, 33.122086, 43.704041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899712, 32.777584, 43.557587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168349, -0.326511, 0.930080,
		-0.920583, 0.389398, -0.029930,
		-0.352399, -0.861255, -0.366135,
		33.793991, 32.519207, 43.447746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606384, 32.928303, 44.248642>,  <34.040672, 33.122086, 43.704041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606384, 32.928303, 44.248642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632050, 32.604916, 44.014629>,  <33.647449, 32.410881, 43.874222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632050, 32.604916, 44.014629>,  <33.606384, 32.928303, 44.248642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632050, 32.604916, 44.014629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300521, -0.574676, 0.761206,
		-0.951615, 0.126975, -0.279833,
		0.064159, -0.808470, -0.585029,
		33.651299, 32.362373, 43.839119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221390, 32.424751, 44.595299>,  <33.606384, 32.928303, 44.248642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221390, 32.424751, 44.595299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417290, 32.188850, 44.338444>,  <33.534832, 32.047310, 44.184330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417290, 32.188850, 44.338444>,  <33.221390, 32.424751, 44.595299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417290, 32.188850, 44.338444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036037, -0.749576, 0.660936,
		-0.871116, -0.300555, -0.388360,
		0.489753, -0.589747, -0.642137,
		33.564217, 32.011925, 44.145802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787125, 31.716787, 44.489204>,  <33.221390, 32.424751, 44.595299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787125, 31.716787, 44.489204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180626, 31.671398, 44.433556>,  <33.416725, 31.644165, 44.400166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180626, 31.671398, 44.433556>,  <32.787125, 31.716787, 44.489204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180626, 31.671398, 44.433556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003043, -0.764260, 0.644901,
		-0.179503, -0.634846, -0.751498,
		0.983753, -0.113474, -0.139119,
		33.475750, 31.637356, 44.391819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817825, 31.059473, 44.462883>,  <32.787125, 31.716787, 44.489204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817825, 31.059473, 44.462883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209095, 31.137312, 44.492027>,  <33.443855, 31.184015, 44.509514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209095, 31.137312, 44.492027>,  <32.817825, 31.059473, 44.462883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209095, 31.137312, 44.492027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110245, -0.783248, 0.611857,
		0.176130, -0.590470, -0.787606,
		0.978174, 0.194596, 0.072857,
		33.502548, 31.195690, 44.513885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087006, 30.345436, 44.649124>,  <32.817825, 31.059473, 44.462883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087006, 30.345436, 44.649124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362778, 30.617029, 44.750057>,  <33.528240, 30.779985, 44.810616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362778, 30.617029, 44.750057>,  <33.087006, 30.345436, 44.649124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362778, 30.617029, 44.750057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317973, -0.596679, 0.736795,
		0.650832, -0.427733, -0.627266,
		0.689428, 0.678984, 0.252330,
		33.569607, 30.820724, 44.825756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798290, 29.949142, 44.852058>,  <33.087006, 30.345436, 44.649124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798290, 29.949142, 44.852058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745213, 30.305943, 45.024910>,  <33.713367, 30.520021, 45.128620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745213, 30.305943, 45.024910>,  <33.798290, 29.949142, 44.852058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745213, 30.305943, 45.024910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247229, -0.392412, 0.885940,
		0.959828, 0.224390, -0.168458,
		-0.132691, 0.891999, 0.432124,
		33.705406, 30.573542, 45.154549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206936, 29.825064, 45.474815>,  <33.798290, 29.949142, 44.852058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206936, 29.825064, 45.474815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040710, 30.177494, 45.565163>,  <33.940975, 30.388952, 45.619370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040710, 30.177494, 45.565163>,  <34.206936, 29.825064, 45.474815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040710, 30.177494, 45.565163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074618, -0.214464, 0.973878,
		0.906498, 0.421562, 0.023380,
		-0.415564, 0.881074, 0.225867,
		33.916042, 30.441816, 45.632923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574238, 30.170370, 46.071819>,  <34.206936, 29.825064, 45.474815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574238, 30.170370, 46.071819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212704, 30.340834, 46.087181>,  <33.995785, 30.443111, 46.096397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212704, 30.340834, 46.087181>,  <34.574238, 30.170370, 46.071819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212704, 30.340834, 46.087181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090581, -0.278293, 0.956216,
		0.418188, 0.860780, 0.290132,
		-0.903833, 0.426159, 0.038409,
		33.941555, 30.468681, 46.098705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620174, 30.668655, 46.624596>,  <34.574238, 30.170370, 46.071819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620174, 30.668655, 46.624596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238926, 30.569487, 46.555210>,  <34.010178, 30.509985, 46.513577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238926, 30.569487, 46.555210>,  <34.620174, 30.668655, 46.624596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238926, 30.569487, 46.555210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083260, -0.336267, 0.938079,
		-0.290902, 0.908548, 0.299862,
		-0.953123, -0.247923, -0.173466,
		33.952988, 30.495110, 46.503170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094116, 31.094431, 47.095730>,  <34.620174, 30.668655, 46.624596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094116, 31.094431, 47.095730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876575, 30.780811, 46.976070>,  <33.746052, 30.592640, 46.904274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876575, 30.780811, 46.976070>,  <34.094116, 31.094431, 47.095730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876575, 30.780811, 46.976070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277950, -0.168051, 0.945781,
		-0.791811, 0.597516, -0.126531,
		-0.543856, -0.784049, -0.299145,
		33.713417, 30.545597, 46.886326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408775, 31.003256, 47.413464>,  <34.094116, 31.094431, 47.095730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408775, 31.003256, 47.413464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461308, 30.638687, 47.257484>,  <33.492828, 30.419947, 47.163895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461308, 30.638687, 47.257484>,  <33.408775, 31.003256, 47.413464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461308, 30.638687, 47.257484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266889, -0.411341, 0.871532,
		-0.954737, -0.010384, -0.297269,
		0.131329, -0.911422, -0.389952,
		33.500706, 30.365261, 47.140499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943192, 30.622515, 47.771603>,  <33.408775, 31.003256, 47.413464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943192, 30.622515, 47.771603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153290, 30.312059, 47.632050>,  <33.279350, 30.125786, 47.548317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153290, 30.312059, 47.632050>,  <32.943192, 30.622515, 47.771603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153290, 30.312059, 47.632050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011620, -0.403417, 0.914942,
		-0.850869, -0.484626, -0.202876,
		0.525249, -0.776139, -0.348887,
		33.310863, 30.079218, 47.527382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595490, 30.003717, 47.970238>,  <32.943192, 30.622515, 47.771603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595490, 30.003717, 47.970238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972763, 29.888165, 47.904572>,  <33.199127, 29.818832, 47.865170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972763, 29.888165, 47.904572>,  <32.595490, 30.003717, 47.970238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972763, 29.888165, 47.904572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022301, -0.548000, 0.836181,
		-0.331523, -0.785011, -0.523307,
		0.943184, -0.288883, -0.164169,
		33.255718, 29.801498, 47.855320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636162, 29.330111, 48.092422>,  <32.595490, 30.003717, 47.970238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636162, 29.330111, 48.092422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017376, 29.438166, 48.147186>,  <33.246105, 29.502998, 48.180042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017376, 29.438166, 48.147186>,  <32.636162, 29.330111, 48.092422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017376, 29.438166, 48.147186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045846, -0.575536, 0.816491,
		0.299360, -0.771870, -0.560892,
		0.953038, 0.270139, 0.136905,
		33.303288, 29.519207, 48.188259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933270, 28.719683, 48.299541>,  <32.636162, 29.330111, 48.092422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933270, 28.719683, 48.299541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209377, 28.984287, 48.416798>,  <33.375042, 29.143049, 48.487152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209377, 28.984287, 48.416798>,  <32.933270, 28.719683, 48.299541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209377, 28.984287, 48.416798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202765, -0.565760, 0.799251,
		0.694558, -0.492262, -0.524659,
		0.690272, 0.661509, 0.293139,
		33.416458, 29.182739, 48.504738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568699, 28.303078, 48.494942>,  <32.933270, 28.719683, 48.299541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568699, 28.303078, 48.494942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569485, 28.660845, 48.673832>,  <33.569954, 28.875505, 48.781166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569485, 28.660845, 48.673832>,  <33.568699, 28.303078, 48.494942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569485, 28.660845, 48.673832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041444, -0.446918, 0.893615,
		0.999139, 0.016783, -0.037944,
		0.001961, 0.894418, 0.447229,
		33.570072, 28.929171, 48.807999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110367, 28.256029, 48.922737>,  <33.568699, 28.303078, 48.494942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110367, 28.256029, 48.922737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888626, 28.547230, 49.084087>,  <33.755581, 28.721951, 49.180897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888626, 28.547230, 49.084087>,  <34.110367, 28.256029, 48.922737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888626, 28.547230, 49.084087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084430, -0.432971, 0.897445,
		0.827991, 0.531555, 0.178553,
		-0.554349, 0.728001, 0.403375,
		33.722321, 28.765631, 49.205101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442825, 28.354923, 49.590683>,  <34.110367, 28.256029, 48.922737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442825, 28.354923, 49.590683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070568, 28.496498, 49.627831>,  <33.847214, 28.581444, 49.650120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070568, 28.496498, 49.627831>,  <34.442825, 28.354923, 49.590683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070568, 28.496498, 49.627831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088990, -0.465089, 0.880780,
		0.354931, 0.811431, 0.464331,
		-0.930647, 0.353937, 0.092865,
		33.791374, 28.602678, 49.655689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457626, 28.789885, 50.208717>,  <34.442825, 28.354923, 49.590683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457626, 28.789885, 50.208717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078724, 28.692465, 50.125397>,  <33.851383, 28.634014, 50.075405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078724, 28.692465, 50.125397>,  <34.457626, 28.789885, 50.208717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078724, 28.692465, 50.125397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107586, -0.370577, 0.922550,
		-0.301876, 0.896302, 0.324829,
		-0.947257, -0.243548, -0.208298,
		33.794548, 28.619400, 50.062908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001904, 29.041027, 50.785534>,  <34.457626, 28.789885, 50.208717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001904, 29.041027, 50.785534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761940, 28.761913, 50.628971>,  <33.617962, 28.594444, 50.535034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761940, 28.761913, 50.628971>,  <34.001904, 29.041027, 50.785534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761940, 28.761913, 50.628971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224626, -0.322644, 0.919480,
		-0.767885, 0.639529, 0.036818,
		-0.599913, -0.697785, -0.391408,
		33.581966, 28.552578, 50.511547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415039, 29.081394, 51.127869>,  <34.001904, 29.041027, 50.785534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415039, 29.081394, 51.127869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426735, 28.713350, 50.971642>,  <33.433750, 28.492525, 50.877903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426735, 28.713350, 50.971642>,  <33.415039, 29.081394, 51.127869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426735, 28.713350, 50.971642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277655, -0.382838, 0.881103,
		-0.960236, 0.082683, -0.266666,
		0.029237, -0.920108, -0.390572,
		33.435505, 28.437319, 50.854469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799126, 28.675879, 51.465401>,  <33.415039, 29.081394, 51.127869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799126, 28.675879, 51.465401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100647, 28.464510, 51.309174>,  <33.281563, 28.337688, 51.215435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100647, 28.464510, 51.309174>,  <32.799126, 28.675879, 51.465401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100647, 28.464510, 51.309174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061801, -0.534744, 0.842751,
		-0.654183, -0.659410, -0.370436,
		0.753807, -0.528421, -0.390572,
		33.326790, 28.305984, 51.192001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552319, 28.059246, 51.834538>,  <32.799126, 28.675879, 51.465401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552319, 28.059246, 51.834538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919544, 28.003948, 51.685917>,  <33.139877, 27.970770, 51.596745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919544, 28.003948, 51.685917>,  <32.552319, 28.059246, 51.834538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919544, 28.003948, 51.685917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251032, -0.522678, 0.814734,
		-0.306836, -0.841247, -0.445147,
		0.918060, -0.138244, -0.371556,
		33.194962, 27.962475, 51.574451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801376, 27.261572, 51.912045>,  <32.552319, 28.059246, 51.834538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801376, 27.261572, 51.912045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102055, 27.524424, 51.889660>,  <33.282463, 27.682135, 51.876228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102055, 27.524424, 51.889660>,  <32.801376, 27.261572, 51.912045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102055, 27.524424, 51.889660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420409, -0.412077, 0.808362,
		0.508138, -0.631170, -0.586020,
		0.751699, 0.657128, -0.055958,
		33.327564, 27.721561, 51.872871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530109, 27.003242, 51.757092>,  <32.801376, 27.261572, 51.912045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530109, 27.003242, 51.757092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508579, 27.321421, 51.998543>,  <33.495663, 27.512327, 52.143414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508579, 27.321421, 51.998543>,  <33.530109, 27.003242, 51.757092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508579, 27.321421, 51.998543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224044, -0.579476, 0.783589,
		0.973092, 0.177416, -0.147024,
		-0.053824, 0.795444, 0.603633,
		33.492432, 27.560053, 52.179634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174511, 27.157152, 52.184292>,  <33.530109, 27.003242, 51.757092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174511, 27.157152, 52.184292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822197, 27.250313, 52.349205>,  <33.610809, 27.306210, 52.448154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822197, 27.250313, 52.349205>,  <34.174511, 27.157152, 52.184292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822197, 27.250313, 52.349205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106380, -0.751101, 0.651561,
		0.461418, 0.617742, 0.636780,
		-0.880782, 0.232901, 0.412287,
		33.557961, 27.320183, 52.472893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246441, 26.686771, 52.738945>,  <34.174511, 27.157152, 52.184292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246441, 26.686771, 52.738945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903233, 26.884298, 52.795444>,  <33.697308, 27.002815, 52.829346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903233, 26.884298, 52.795444>,  <34.246441, 26.686771, 52.738945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903233, 26.884298, 52.795444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185700, -0.554662, 0.811089,
		0.478878, 0.669697, 0.567610,
		-0.858016, 0.493818, 0.141253,
		33.645828, 27.032444, 52.837822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074490, 26.014334, 52.983883>,  <34.246441, 26.686771, 52.738945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074490, 26.014334, 52.983883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406963, 25.864346, 52.819672>,  <34.606449, 25.774353, 52.721146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406963, 25.864346, 52.819672>,  <34.074490, 26.014334, 52.983883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406963, 25.864346, 52.819672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225225, -0.902137, 0.367999,
		-0.508337, -0.213415, -0.834294,
		0.831184, -0.374972, -0.410523,
		34.656319, 25.751854, 52.696514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881699, 25.415302, 52.569202>,  <34.074490, 26.014334, 52.983883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881699, 25.415302, 52.569202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249699, 25.367750, 52.718582>,  <34.470497, 25.339218, 52.808208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249699, 25.367750, 52.718582>,  <33.881699, 25.415302, 52.569202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249699, 25.367750, 52.718582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229069, -0.936285, 0.266265,
		0.318002, -0.330510, -0.888616,
		0.920001, -0.118882, 0.373450,
		34.525700, 25.332085, 52.830616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467205, 25.549349, 52.091232>,  <33.881699, 25.415302, 52.569202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467205, 25.549349, 52.091232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279015, 25.316973, 51.825554>,  <34.166100, 25.177547, 51.666145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279015, 25.316973, 51.825554>,  <34.467205, 25.549349, 52.091232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279015, 25.316973, 51.825554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088186, 0.717985, -0.690450,
		0.877995, -0.383413, -0.286565,
		-0.470477, -0.580940, -0.664199,
		34.137871, 25.142691, 51.626293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892082, 25.314079, 51.445538>,  <34.467205, 25.549349, 52.091232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892082, 25.314079, 51.445538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500095, 25.323874, 51.366478>,  <34.264904, 25.329750, 51.319042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500095, 25.323874, 51.366478>,  <34.892082, 25.314079, 51.445538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500095, 25.323874, 51.366478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167796, 0.636094, -0.753146,
		0.107281, -0.771223, -0.627460,
		-0.979967, 0.024488, -0.197649,
		34.206104, 25.331221, 51.307182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594505, 25.118296, 50.757507>,  <34.892082, 25.314079, 51.445538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594505, 25.118296, 50.757507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321133, 25.388750, 50.867603>,  <34.157108, 25.551023, 50.933662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321133, 25.388750, 50.867603>,  <34.594505, 25.118296, 50.757507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321133, 25.388750, 50.867603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113717, 0.471035, -0.874754,
		-0.721102, -0.566536, -0.398809,
		-0.683433, 0.676138, 0.275239,
		34.116104, 25.591591, 50.950176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057446, 25.112974, 50.244862>,  <34.594505, 25.118296, 50.757507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057446, 25.112974, 50.244862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100159, 25.461382, 50.436665>,  <34.125786, 25.670425, 50.551746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100159, 25.461382, 50.436665>,  <34.057446, 25.112974, 50.244862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100159, 25.461382, 50.436665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222432, 0.449113, -0.865345,
		-0.969083, 0.199059, -0.145785,
		0.106781, 0.871018, 0.479505,
		34.132195, 25.722687, 50.580517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663177, 25.543215, 49.852150>,  <34.057446, 25.112974, 50.244862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663177, 25.543215, 49.852150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903381, 25.782467, 50.064426>,  <34.047504, 25.926018, 50.191792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903381, 25.782467, 50.064426>,  <33.663177, 25.543215, 49.852150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903381, 25.782467, 50.064426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094685, 0.605819, -0.789948,
		-0.793993, 0.524619, 0.307165,
		0.600508, 0.598129, 0.530690,
		34.083534, 25.961906, 50.223633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356403, 26.147907, 49.699181>,  <33.663177, 25.543215, 49.852150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356403, 26.147907, 49.699181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728977, 26.225937, 49.822067>,  <33.952522, 26.272755, 49.895798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728977, 26.225937, 49.822067>,  <33.356403, 26.147907, 49.699181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728977, 26.225937, 49.822067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177044, 0.494652, -0.850867,
		-0.317947, 0.846915, 0.426198,
		0.931432, 0.195075, 0.307214,
		34.008408, 26.284460, 49.914230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451321, 26.820665, 49.622025>,  <33.356403, 26.147907, 49.699181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451321, 26.820665, 49.622025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822880, 26.672806, 49.630981>,  <34.045815, 26.584091, 49.636356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822880, 26.672806, 49.630981>,  <33.451321, 26.820665, 49.622025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822880, 26.672806, 49.630981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197054, 0.442181, -0.875012,
		0.313544, 0.817213, 0.483584,
		0.928903, -0.369647, 0.022392,
		34.101551, 26.561913, 49.637699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748714, 27.357244, 49.263733>,  <33.451321, 26.820665, 49.622025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748714, 27.357244, 49.263733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014687, 27.058535, 49.269428>,  <34.174271, 26.879309, 49.272846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014687, 27.058535, 49.269428>,  <33.748714, 27.357244, 49.263733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014687, 27.058535, 49.269428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400822, 0.340672, -0.850461,
		0.630249, 0.571203, 0.525845,
		0.664927, -0.746773, 0.014242,
		34.214165, 26.834503, 49.273701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502792, 27.659180, 49.134079>,  <33.748714, 27.357244, 49.263733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502792, 27.659180, 49.134079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484238, 27.272432, 49.033669>,  <34.473103, 27.040384, 48.973423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484238, 27.272432, 49.033669>,  <34.502792, 27.659180, 49.134079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484238, 27.272432, 49.033669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379098, 0.215459, -0.899923,
		0.924193, -0.136911, 0.356542,
		-0.046389, -0.966867, -0.251028,
		34.470322, 26.982372, 48.958359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164703, 27.539452, 48.863323>,  <34.502792, 27.659180, 49.134079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164703, 27.539452, 48.863323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911148, 27.261497, 48.727489>,  <34.759014, 27.094725, 48.645988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911148, 27.261497, 48.727489>,  <35.164703, 27.539452, 48.863323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911148, 27.261497, 48.727489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398543, 0.082817, -0.913403,
		0.662833, -0.714337, 0.224445,
		-0.633890, -0.694884, -0.339588,
		34.720982, 27.053032, 48.625614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470524, 27.205002, 48.382088>,  <35.164703, 27.539452, 48.863323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470524, 27.205002, 48.382088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097092, 27.103607, 48.280758>,  <34.873032, 27.042770, 48.219959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097092, 27.103607, 48.280758>,  <35.470524, 27.205002, 48.382088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097092, 27.103607, 48.280758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244790, 0.065204, -0.967381,
		0.261737, -0.965139, 0.001178,
		-0.933580, -0.253488, -0.253323,
		34.817017, 27.027561, 48.204762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527821, 26.727106, 47.821285>,  <35.470524, 27.205002, 48.382088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527821, 26.727106, 47.821285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162033, 26.885094, 47.786064>,  <34.942562, 26.979887, 47.764931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162033, 26.885094, 47.786064>,  <35.527821, 26.727106, 47.821285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162033, 26.885094, 47.786064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160236, 0.153619, -0.975051,
		-0.371588, -0.905760, -0.203768,
		-0.914465, 0.394969, -0.088052,
		34.887695, 27.003584, 47.759647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259914, 26.442049, 47.211300>,  <35.527821, 26.727106, 47.821285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259914, 26.442049, 47.211300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040997, 26.771503, 47.270748>,  <34.909645, 26.969177, 47.306419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040997, 26.771503, 47.270748>,  <35.259914, 26.442049, 47.211300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040997, 26.771503, 47.270748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061468, 0.216657, -0.974311,
		-0.834680, -0.524099, -0.169203,
		-0.547294, 0.823638, 0.148624,
		34.876808, 27.018595, 47.315334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908485, 26.458405, 46.597233>,  <35.259914, 26.442049, 47.211300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908485, 26.458405, 46.597233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875538, 26.825287, 46.753159>,  <34.855770, 27.045416, 46.846714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875538, 26.825287, 46.753159>,  <34.908485, 26.458405, 46.597233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875538, 26.825287, 46.753159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142119, 0.397953, -0.906331,
		-0.986416, -0.019257, -0.163132,
		-0.082372, 0.917204, 0.389811,
		34.850826, 27.100449, 46.870102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645649, 26.920340, 45.973576>,  <34.908485, 26.458405, 46.597233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645649, 26.920340, 45.973576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762119, 27.186646, 46.248379>,  <34.832001, 27.346428, 46.413261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762119, 27.186646, 46.248379>,  <34.645649, 26.920340, 45.973576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762119, 27.186646, 46.248379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267871, 0.632656, -0.726631,
		-0.918401, 0.395608, 0.005877,
		0.291179, 0.665764, 0.687003,
		34.849472, 27.386375, 46.454479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305710, 27.609037, 45.859890>,  <34.645649, 26.920340, 45.973576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305710, 27.609037, 45.859890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650631, 27.674152, 46.051693>,  <34.857582, 27.713221, 46.166775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650631, 27.674152, 46.051693>,  <34.305710, 27.609037, 45.859890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650631, 27.674152, 46.051693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278133, 0.639051, -0.717116,
		-0.423170, 0.751740, 0.505780,
		0.862304, 0.162788, 0.479512,
		34.909321, 27.722988, 46.195545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362629, 28.331707, 45.933025>,  <34.305710, 27.609037, 45.859890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362629, 28.331707, 45.933025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736240, 28.207006, 46.002758>,  <34.960407, 28.132185, 46.044598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736240, 28.207006, 46.002758>,  <34.362629, 28.331707, 45.933025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736240, 28.207006, 46.002758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353279, 0.734309, -0.579642,
		0.052691, 0.602993, 0.796004,
		0.934033, -0.311753, 0.174333,
		35.016449, 28.113480, 46.055058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753956, 28.957457, 45.955864>,  <34.362629, 28.331707, 45.933025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753956, 28.957457, 45.955864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030422, 28.682243, 45.867413>,  <35.196304, 28.517117, 45.814342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030422, 28.682243, 45.867413>,  <34.753956, 28.957457, 45.955864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030422, 28.682243, 45.867413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252103, 0.516298, -0.818462,
		0.677295, 0.509950, 0.530305,
		0.691170, -0.688032, -0.221126,
		35.237774, 28.475834, 45.801075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300941, 29.354395, 45.819252>,  <34.753956, 28.957457, 45.955864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300941, 29.354395, 45.819252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362617, 28.999977, 45.644367>,  <35.399624, 28.787327, 45.539436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362617, 28.999977, 45.644367>,  <35.300941, 29.354395, 45.819252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362617, 28.999977, 45.644367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000274, 0.442540, -0.896749,
		0.988041, 0.138152, 0.068479,
		0.154193, -0.886043, -0.437209,
		35.408875, 28.734163, 45.513203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853149, 29.507996, 45.373604>,  <35.300941, 29.354395, 45.819252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853149, 29.507996, 45.373604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724239, 29.158098, 45.228851>,  <35.646893, 28.948160, 45.141998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724239, 29.158098, 45.228851>,  <35.853149, 29.507996, 45.373604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724239, 29.158098, 45.228851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037598, 0.370152, -0.928210,
		0.945900, -0.312743, -0.086402,
		-0.322273, -0.874745, -0.361885,
		35.627556, 28.895674, 45.120285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278889, 29.409321, 44.839680>,  <35.853149, 29.507996, 45.373604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278889, 29.409321, 44.839680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972794, 29.171539, 44.740860>,  <35.789135, 29.028870, 44.681568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972794, 29.171539, 44.740860>,  <36.278889, 29.409321, 44.839680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972794, 29.171539, 44.740860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043451, 0.335201, -0.941144,
		0.642281, -0.730933, -0.230678,
		-0.765237, -0.594456, -0.247053,
		35.743221, 28.993202, 44.666744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458488, 29.078691, 44.188923>,  <36.278889, 29.409321, 44.839680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458488, 29.078691, 44.188923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060822, 29.043934, 44.214489>,  <35.822224, 29.023079, 44.229828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060822, 29.043934, 44.214489>,  <36.458488, 29.078691, 44.188923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060822, 29.043934, 44.214489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084613, 0.260713, -0.961701,
		0.066902, -0.961498, -0.266544,
		-0.994165, -0.086893, 0.063913,
		35.762573, 29.017866, 44.233662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267799, 28.646626, 43.643566>,  <36.458488, 29.078691, 44.188923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267799, 28.646626, 43.643566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942299, 28.862745, 43.729256>,  <35.746998, 28.992416, 43.780670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942299, 28.862745, 43.729256>,  <36.267799, 28.646626, 43.643566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942299, 28.862745, 43.729256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123981, 0.198737, -0.972179,
		-0.567843, -0.817667, -0.094735,
		-0.813747, 0.540300, 0.214226,
		35.698174, 29.024836, 43.793522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729580, 28.475706, 43.114773>,  <36.267799, 28.646626, 43.643566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729580, 28.475706, 43.114773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589294, 28.803114, 43.296772>,  <35.505123, 28.999559, 43.405972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589294, 28.803114, 43.296772>,  <35.729580, 28.475706, 43.114773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589294, 28.803114, 43.296772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342128, 0.340284, -0.875874,
		-0.871749, -0.462850, 0.160696,
		-0.350716, 0.818521, 0.454996,
		35.484081, 29.048670, 43.433270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089203, 28.557598, 42.821575>,  <35.729580, 28.475706, 43.114773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089203, 28.557598, 42.821575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173069, 28.929731, 42.941921>,  <35.223389, 29.153011, 43.014130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173069, 28.929731, 42.941921>,  <35.089203, 28.557598, 42.821575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173069, 28.929731, 42.941921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440078, 0.364567, -0.820623,
		-0.873138, 0.039654, 0.485857,
		0.209668, 0.930333, 0.300866,
		35.235970, 29.208832, 43.032181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506119, 28.968067, 42.622791>,  <35.089203, 28.557598, 42.821575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506119, 28.968067, 42.622791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778790, 29.246059, 42.714287>,  <34.942390, 29.412855, 42.769184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778790, 29.246059, 42.714287>,  <34.506119, 28.968067, 42.622791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778790, 29.246059, 42.714287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297782, 0.549098, -0.780908,
		-0.668314, 0.464213, 0.581260,
		0.681676, 0.694980, 0.228736,
		34.983292, 29.454554, 42.782909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186245, 29.643972, 42.700489>,  <34.506119, 28.968067, 42.622791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186245, 29.643972, 42.700489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564968, 29.726368, 42.601597>,  <34.792202, 29.775805, 42.542263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564968, 29.726368, 42.601597>,  <34.186245, 29.643972, 42.700489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564968, 29.726368, 42.601597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321364, 0.645192, -0.693147,
		0.016732, 0.735729, 0.677070,
		0.946808, 0.205988, -0.247232,
		34.849010, 29.788164, 42.527428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143219, 30.224480, 42.462910>,  <34.186245, 29.643972, 42.700489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143219, 30.224480, 42.462910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514347, 30.148088, 42.334740>,  <34.737026, 30.102253, 42.257839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514347, 30.148088, 42.334740>,  <34.143219, 30.224480, 42.462910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514347, 30.148088, 42.334740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158093, 0.576709, -0.801507,
		0.337863, 0.794313, 0.504892,
		0.927823, -0.190980, -0.320424,
		34.792694, 30.090794, 42.238613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323067, 30.839302, 42.373039>,  <34.143219, 30.224480, 42.462910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323067, 30.839302, 42.373039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556843, 30.598856, 42.155018>,  <34.697109, 30.454588, 42.024204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556843, 30.598856, 42.155018>,  <34.323067, 30.839302, 42.373039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556843, 30.598856, 42.155018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212211, 0.535108, -0.817696,
		0.783193, 0.593564, 0.185177,
		0.584444, -0.601117, -0.545054,
		34.732178, 30.418522, 41.991501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803635, 31.197046, 41.932209>,  <34.323067, 30.839302, 42.373039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803635, 31.197046, 41.932209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776684, 30.840080, 41.753746>,  <34.760513, 30.625900, 41.646667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776684, 30.840080, 41.753746>,  <34.803635, 31.197046, 41.932209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776684, 30.840080, 41.753746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078594, 0.441032, -0.894043,
		0.994627, -0.095301, 0.040424,
		-0.067375, -0.892417, -0.446153,
		34.756470, 30.572355, 41.619900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393204, 31.177639, 41.571507>,  <34.803635, 31.197046, 41.932209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393204, 31.177639, 41.571507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139362, 30.914618, 41.409073>,  <34.987057, 30.756804, 41.311615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139362, 30.914618, 41.409073>,  <35.393204, 31.177639, 41.571507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139362, 30.914618, 41.409073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167998, 0.395506, -0.902968,
		0.754360, -0.641245, -0.140520,
		-0.634600, -0.657556, -0.406082,
		34.948982, 30.717350, 41.287247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575382, 31.177914, 40.890110>,  <35.393204, 31.177639, 41.571507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575382, 31.177914, 40.890110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247566, 30.954865, 40.837326>,  <35.050877, 30.821035, 40.805656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247566, 30.954865, 40.837326>,  <35.575382, 31.177914, 40.890110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247566, 30.954865, 40.837326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120215, 0.392473, -0.911873,
		0.560276, -0.731449, -0.388681,
		-0.819536, -0.557626, -0.131962,
		35.001705, 30.787577, 40.797737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661869, 30.710836, 40.271851>,  <35.575382, 31.177914, 40.890110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661869, 30.710836, 40.271851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272873, 30.773876, 40.340469>,  <35.039474, 30.811701, 40.381641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272873, 30.773876, 40.340469>,  <35.661869, 30.710836, 40.271851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272873, 30.773876, 40.340469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106688, 0.353318, -0.929400,
		-0.207085, -0.922132, -0.326784,
		-0.972488, 0.157601, 0.171547,
		34.981125, 30.821156, 40.391933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376148, 30.367107, 39.678219>,  <35.661869, 30.710836, 40.271851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376148, 30.367107, 39.678219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116600, 30.636795, 39.819298>,  <34.960873, 30.798609, 39.903946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116600, 30.636795, 39.819298>,  <35.376148, 30.367107, 39.678219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116600, 30.636795, 39.819298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116294, 0.370201, -0.921643,
		-0.751959, -0.639044, -0.161804,
		-0.648870, 0.674222, 0.352693,
		34.921940, 30.839062, 39.925106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759708, 30.310717, 39.271854>,  <35.376148, 30.367107, 39.678219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759708, 30.310717, 39.271854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732674, 30.680595, 39.421715>,  <34.716454, 30.902523, 39.511631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732674, 30.680595, 39.421715>,  <34.759708, 30.310717, 39.271854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732674, 30.680595, 39.421715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203162, 0.354887, -0.912568,
		-0.976810, -0.137792, 0.163878,
		-0.067586, 0.924699, 0.374651,
		34.712399, 30.958006, 39.534111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354073, 30.606718, 38.754074>,  <34.759708, 30.310717, 39.271854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354073, 30.606718, 38.754074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469612, 30.911438, 38.986015>,  <34.538937, 31.094271, 39.125179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469612, 30.911438, 38.986015>,  <34.354073, 30.606718, 38.754074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469612, 30.911438, 38.986015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080507, 0.622848, -0.778189,
		-0.953983, 0.178099, 0.241240,
		0.288851, 0.761801, 0.579849,
		34.556267, 31.139978, 39.159969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900829, 31.214193, 38.663219>,  <34.354073, 30.606718, 38.754074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900829, 31.214193, 38.663219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243988, 31.356297, 38.811714>,  <34.449883, 31.441559, 38.900810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243988, 31.356297, 38.811714>,  <33.900829, 31.214193, 38.663219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243988, 31.356297, 38.811714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001480, 0.724189, -0.689601,
		-0.513828, 0.591053, 0.621802,
		0.857892, 0.355256, 0.371233,
		34.501354, 31.462873, 38.923084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710262, 31.874954, 38.618832>,  <33.900829, 31.214193, 38.663219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710262, 31.874954, 38.618832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105137, 31.862257, 38.681377>,  <34.342064, 31.854639, 38.718903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105137, 31.862257, 38.681377>,  <33.710262, 31.874954, 38.618832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105137, 31.862257, 38.681377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122343, 0.779664, -0.614130,
		-0.102416, 0.625393, 0.773560,
		0.987189, -0.031743, 0.156363,
		34.401295, 31.852734, 38.728287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980595, 32.643108, 38.756618>,  <33.710262, 31.874954, 38.618832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980595, 32.643108, 38.756618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260323, 32.397354, 38.610474>,  <34.428158, 32.249901, 38.522789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260323, 32.397354, 38.610474>,  <33.980595, 32.643108, 38.756618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260323, 32.397354, 38.610474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268606, 0.699534, -0.662196,
		0.662422, 0.364949, 0.654224,
		0.699319, -0.614382, -0.365360,
		34.470119, 32.213039, 38.500866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534508, 33.122440, 38.714043>,  <33.980595, 32.643108, 38.756618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534508, 33.122440, 38.714043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634846, 32.803925, 38.493858>,  <34.695049, 32.612816, 38.361748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634846, 32.803925, 38.493858>,  <34.534508, 33.122440, 38.714043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634846, 32.803925, 38.493858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291363, 0.604378, -0.741508,
		0.923139, 0.025618, 0.383612,
		0.250842, -0.796286, -0.550461,
		34.710098, 32.565041, 38.328720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218269, 33.193241, 38.531570>,  <34.534508, 33.122440, 38.714043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218269, 33.193241, 38.531570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100430, 32.922321, 38.261909>,  <35.029724, 32.759769, 38.100113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100430, 32.922321, 38.261909>,  <35.218269, 33.193241, 38.531570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100430, 32.922321, 38.261909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428199, 0.537112, -0.726744,
		0.854316, -0.502769, 0.131786,
		-0.294600, -0.677300, -0.674148,
		35.012051, 32.719131, 38.059666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745892, 33.221443, 38.035667>,  <35.218269, 33.193241, 38.531570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745892, 33.221443, 38.035667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419582, 33.076328, 37.855488>,  <35.223797, 32.989262, 37.747379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419582, 33.076328, 37.855488>,  <35.745892, 33.221443, 38.035667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419582, 33.076328, 37.855488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330834, 0.346141, -0.877915,
		0.474415, -0.865201, -0.162349,
		-0.815769, -0.362785, -0.450452,
		35.174850, 32.967491, 37.720352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925209, 32.675770, 37.490337>,  <35.745892, 33.221443, 38.035667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925209, 32.675770, 37.490337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608932, 32.910297, 37.419868>,  <35.419167, 33.051014, 37.377586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608932, 32.910297, 37.419868>,  <35.925209, 32.675770, 37.490337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608932, 32.910297, 37.419868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383247, 0.249633, -0.889272,
		-0.477418, -0.770658, -0.422088,
		-0.790692, 0.586318, -0.176173,
		35.371723, 33.086193, 37.367016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411098, 32.164509, 37.711796>,  <35.925209, 32.675770, 37.490337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411098, 32.164509, 37.711796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751583, 32.098888, 37.512386>,  <36.955875, 32.059517, 37.392742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751583, 32.098888, 37.512386>,  <36.411098, 32.164509, 37.711796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751583, 32.098888, 37.512386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135036, -0.849448, 0.510101,
		-0.507153, -0.501522, -0.700907,
		0.851212, -0.164051, -0.498524,
		37.006947, 32.049671, 37.362827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396278, 31.449980, 37.474327>,  <36.411098, 32.164509, 37.711796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396278, 31.449980, 37.474327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785294, 31.542223, 37.486885>,  <37.018703, 31.597569, 37.494419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785294, 31.542223, 37.486885>,  <36.396278, 31.449980, 37.474327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785294, 31.542223, 37.486885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179816, -0.830175, 0.527709,
		0.147759, -0.507573, -0.848845,
		0.972540, 0.230609, 0.031396,
		37.077057, 31.611406, 37.496304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806709, 30.816366, 37.408062>,  <36.396278, 31.449980, 37.474327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806709, 30.816366, 37.408062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097950, 31.043848, 37.561131>,  <37.272694, 31.180336, 37.652973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097950, 31.043848, 37.561131>,  <36.806709, 30.816366, 37.408062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097950, 31.043848, 37.561131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253736, -0.742223, 0.620261,
		0.636774, -0.354517, -0.684717,
		0.728105, 0.568703, 0.382674,
		37.316383, 31.214458, 37.675934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410236, 30.423269, 37.436638>,  <36.806709, 30.816366, 37.408062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410236, 30.423269, 37.436638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444584, 30.719923, 37.702755>,  <37.465191, 30.897915, 37.862423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444584, 30.719923, 37.702755>,  <37.410236, 30.423269, 37.436638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444584, 30.719923, 37.702755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075504, -0.670678, 0.737896,
		0.993442, -0.013127, -0.113583,
		0.085864, 0.741632, 0.665289,
		37.470345, 30.942413, 37.902340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974915, 30.226574, 37.836712>,  <37.410236, 30.423269, 37.436638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974915, 30.226574, 37.836712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798069, 30.511621, 38.054596>,  <37.691963, 30.682650, 38.185326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798069, 30.511621, 38.054596>,  <37.974915, 30.226574, 37.836712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798069, 30.511621, 38.054596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157348, -0.536251, 0.829263,
		0.883051, 0.452336, 0.124954,
		-0.442112, 0.712620, 0.544711,
		37.665436, 30.725407, 38.218010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502365, 30.410696, 38.287186>,  <37.974915, 30.226574, 37.836712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502365, 30.410696, 38.287186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150585, 30.524683, 38.439690>,  <37.939518, 30.593075, 38.531193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150585, 30.524683, 38.439690>,  <38.502365, 30.410696, 38.287186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150585, 30.524683, 38.439690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243983, -0.417873, 0.875131,
		0.408703, 0.862656, 0.297971,
		-0.879451, 0.284969, 0.381259,
		37.886749, 30.610174, 38.554066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680058, 30.647722, 38.910645>,  <38.502365, 30.410696, 38.287186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680058, 30.647722, 38.910645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293400, 30.559546, 38.962807>,  <38.061405, 30.506639, 38.994102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293400, 30.559546, 38.962807>,  <38.680058, 30.647722, 38.910645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293400, 30.559546, 38.962807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215134, -0.422527, 0.880448,
		-0.138990, 0.879134, 0.455857,
		-0.966643, -0.220443, 0.130404,
		38.003407, 30.493412, 39.001926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636181, 30.698603, 39.612343>,  <38.680058, 30.647722, 38.910645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636181, 30.698603, 39.612343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303272, 30.506248, 39.502018>,  <38.103527, 30.390837, 39.435825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303272, 30.506248, 39.502018>,  <38.636181, 30.698603, 39.612343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303272, 30.506248, 39.502018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022544, -0.526469, 0.849895,
		-0.553907, 0.701127, 0.449007,
		-0.832273, -0.480885, -0.275808,
		38.053589, 30.361982, 39.419277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131287, 30.751637, 40.258102>,  <38.636181, 30.698603, 39.612343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131287, 30.751637, 40.258102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017342, 30.446070, 40.026489>,  <37.948975, 30.262730, 39.887520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017342, 30.446070, 40.026489>,  <38.131287, 30.751637, 40.258102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017342, 30.446070, 40.026489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015267, -0.607603, 0.794094,
		-0.958448, 0.217364, 0.184743,
		-0.284858, -0.763919, -0.579037,
		37.931885, 30.216894, 39.852779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539711, 30.463671, 40.580257>,  <38.131287, 30.751637, 40.258102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539711, 30.463671, 40.580257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692535, 30.177658, 40.346073>,  <37.784229, 30.006050, 40.205563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692535, 30.177658, 40.346073>,  <37.539711, 30.463671, 40.580257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692535, 30.177658, 40.346073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188587, -0.680511, 0.708053,
		-0.904692, -0.160106, -0.394839,
		0.382056, -0.715032, -0.585460,
		37.807152, 29.963148, 40.170437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277214, 29.807579, 40.840942>,  <37.539711, 30.463671, 40.580257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277214, 29.807579, 40.840942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578865, 29.651381, 40.629738>,  <37.759857, 29.557661, 40.503014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578865, 29.651381, 40.629738>,  <37.277214, 29.807579, 40.840942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578865, 29.651381, 40.629738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022784, -0.819085, 0.573219,
		-0.656331, -0.420251, -0.626593,
		0.754129, -0.390497, -0.528016,
		37.805103, 29.534231, 40.471333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022827, 29.209196, 40.665222>,  <37.277214, 29.807579, 40.840942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022827, 29.209196, 40.665222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419952, 29.167994, 40.640865>,  <37.658230, 29.143272, 40.626251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419952, 29.167994, 40.640865>,  <37.022827, 29.209196, 40.665222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419952, 29.167994, 40.640865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046302, -0.799956, 0.598270,
		-0.110334, -0.591152, -0.798978,
		0.992815, -0.103004, -0.060891,
		37.717796, 29.137093, 40.622597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251953, 28.448606, 40.476398>,  <37.022827, 29.209196, 40.665222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251953, 28.448606, 40.476398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549786, 28.638954, 40.663651>,  <37.728485, 28.753162, 40.776001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549786, 28.638954, 40.663651>,  <37.251953, 28.448606, 40.476398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549786, 28.638954, 40.663651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092993, -0.620499, 0.778674,
		0.661019, -0.623321, -0.417761,
		0.744585, 0.475869, 0.468126,
		37.773163, 28.781715, 40.804089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459610, 27.926208, 40.877438>,  <37.251953, 28.448606, 40.476398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459610, 27.926208, 40.877438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686134, 28.225775, 41.015083>,  <37.822048, 28.405516, 41.097672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686134, 28.225775, 41.015083>,  <37.459610, 27.926208, 40.877438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686134, 28.225775, 41.015083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085096, -0.468417, 0.879400,
		0.819786, -0.468732, -0.329000,
		0.566312, 0.748917, 0.344115,
		37.856030, 28.450449, 41.118317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131416, 27.671730, 41.071285>,  <37.459610, 27.926208, 40.877438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131416, 27.671730, 41.071285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125111, 28.014645, 41.277126>,  <38.121326, 28.220394, 41.400631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125111, 28.014645, 41.277126>,  <38.131416, 27.671730, 41.071285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125111, 28.014645, 41.277126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177629, -0.504075, 0.845196,
		0.983971, 0.104734, -0.144331,
		-0.015767, 0.857286, 0.514599,
		38.120380, 28.271830, 41.431507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711872, 27.646570, 41.478371>,  <38.131416, 27.671730, 41.071285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711872, 27.646570, 41.478371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451172, 27.893419, 41.654724>,  <38.294750, 28.041529, 41.760536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451172, 27.893419, 41.654724>,  <38.711872, 27.646570, 41.478371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451172, 27.893419, 41.654724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127240, -0.484094, 0.865715,
		0.747681, 0.620330, 0.236987,
		-0.651753, 0.617125, 0.440879,
		38.255646, 28.078556, 41.786987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971073, 27.829756, 42.174675>,  <38.711872, 27.646570, 41.478371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971073, 27.829756, 42.174675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576416, 27.890543, 42.198135>,  <38.339622, 27.927015, 42.212212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576416, 27.890543, 42.198135>,  <38.971073, 27.829756, 42.174675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576416, 27.890543, 42.198135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000344, -0.362001, 0.932178,
		0.162894, 0.919707, 0.357218,
		-0.986644, 0.151968, 0.058652,
		38.280422, 27.936134, 42.215733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756413, 28.161562, 42.931328>,  <38.971073, 27.829756, 42.174675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756413, 28.161562, 42.931328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394447, 28.026167, 42.828125>,  <38.177269, 27.944931, 42.766205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394447, 28.026167, 42.828125>,  <38.756413, 28.161562, 42.931328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394447, 28.026167, 42.828125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238307, -0.099302, 0.966100,
		-0.352631, 0.935717, 0.009196,
		-0.904909, -0.338485, -0.258005,
		38.122974, 27.924622, 42.750725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308468, 28.474581, 43.449818>,  <38.756413, 28.161562, 42.931328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308468, 28.474581, 43.449818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101433, 28.172844, 43.288292>,  <37.977211, 27.991802, 43.191376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101433, 28.172844, 43.288292>,  <38.308468, 28.474581, 43.449818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101433, 28.172844, 43.288292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295627, -0.285228, 0.911729,
		-0.802937, 0.591279, -0.075374,
		-0.517587, -0.754344, -0.403819,
		37.946156, 27.946541, 43.167145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623745, 28.406841, 43.710129>,  <38.308468, 28.474581, 43.449818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623745, 28.406841, 43.710129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742859, 28.044107, 43.590813>,  <37.814327, 27.826468, 43.519222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742859, 28.044107, 43.590813>,  <37.623745, 28.406841, 43.710129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742859, 28.044107, 43.590813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315420, -0.388383, 0.865834,
		-0.901020, -0.163742, -0.401687,
		0.297782, -0.906834, -0.298293,
		37.832195, 27.772057, 43.501324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020283, 27.939602, 43.822823>,  <37.623745, 28.406841, 43.710129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020283, 27.939602, 43.822823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340969, 27.702520, 43.791939>,  <37.533379, 27.560272, 43.773407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340969, 27.702520, 43.791939>,  <37.020283, 27.939602, 43.822823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340969, 27.702520, 43.791939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205881, -0.395110, 0.895266,
		-0.561135, -0.701848, -0.438791,
		0.801711, -0.592704, -0.077213,
		37.581482, 27.524710, 43.768776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786156, 27.277634, 43.928116>,  <37.020283, 27.939602, 43.822823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786156, 27.277634, 43.928116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177563, 27.265287, 44.009655>,  <37.412407, 27.257879, 44.058578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177563, 27.265287, 44.009655>,  <36.786156, 27.277634, 43.928116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177563, 27.265287, 44.009655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198007, -0.416220, 0.887442,
		0.057456, -0.908740, -0.413389,
		0.978515, -0.030865, 0.203851,
		37.471119, 27.256027, 44.070812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926151, 26.650076, 44.264473>,  <36.786156, 27.277634, 43.928116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926151, 26.650076, 44.264473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264618, 26.838243, 44.364643>,  <37.467697, 26.951143, 44.424747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264618, 26.838243, 44.364643>,  <36.926151, 26.650076, 44.264473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264618, 26.838243, 44.364643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076333, -0.358086, 0.930563,
		0.527429, -0.806524, -0.267091,
		0.846163, 0.470418, 0.250430,
		37.518467, 26.979368, 44.439774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332726, 26.163902, 44.517879>,  <36.926151, 26.650076, 44.264473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332726, 26.163902, 44.517879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450420, 26.519407, 44.658463>,  <37.521038, 26.732710, 44.742813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450420, 26.519407, 44.658463>,  <37.332726, 26.163902, 44.517879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450420, 26.519407, 44.658463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077694, -0.344275, 0.935648,
		0.952568, -0.302612, -0.032248,
		0.294241, 0.888763, 0.351457,
		37.538692, 26.786036, 44.763901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879597, 25.957396, 45.000664>,  <37.332726, 26.163902, 44.517879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879597, 25.957396, 45.000664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771507, 26.320913, 45.127834>,  <37.706654, 26.539024, 45.204136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771507, 26.320913, 45.127834>,  <37.879597, 25.957396, 45.000664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771507, 26.320913, 45.127834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097708, -0.302618, 0.948090,
		0.957827, 0.287260, -0.007022,
		-0.270223, 0.908793, 0.317923,
		37.690441, 26.593552, 45.223209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298073, 25.987669, 45.504704>,  <37.879597, 25.957396, 45.000664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298073, 25.987669, 45.504704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059677, 26.302370, 45.568977>,  <37.916641, 26.491190, 45.607540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059677, 26.302370, 45.568977>,  <38.298073, 25.987669, 45.504704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059677, 26.302370, 45.568977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032406, -0.176379, 0.983789,
		0.802338, 0.591535, 0.079625,
		-0.595989, 0.786751, 0.160685,
		37.880878, 26.538395, 45.617184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579025, 26.455236, 45.981728>,  <38.298073, 25.987669, 45.504704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579025, 26.455236, 45.981728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192726, 26.557585, 45.998955>,  <37.960945, 26.618994, 46.009293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192726, 26.557585, 45.998955>,  <38.579025, 26.455236, 45.981728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192726, 26.557585, 45.998955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032724, -0.044553, 0.998471,
		0.257397, 0.965684, 0.034654,
		-0.965751, 0.255869, 0.043069,
		37.903000, 26.634346, 46.011875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587585, 26.979822, 46.475536>,  <38.579025, 26.455236, 45.981728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587585, 26.979822, 46.475536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215740, 26.841185, 46.425419>,  <37.992634, 26.758003, 46.395348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215740, 26.841185, 46.425419>,  <38.587585, 26.979822, 46.475536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215740, 26.841185, 46.425419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127201, -0.017337, 0.991726,
		-0.345896, 0.937856, -0.027970,
		-0.929611, -0.346592, -0.125293,
		37.936855, 26.737207, 46.387833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119904, 27.381664, 46.973259>,  <38.587585, 26.979822, 46.475536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119904, 27.381664, 46.973259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932007, 27.042610, 46.874584>,  <37.819267, 26.839178, 46.815380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932007, 27.042610, 46.874584>,  <38.119904, 27.381664, 46.973259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932007, 27.042610, 46.874584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270323, -0.127905, 0.954236,
		-0.840397, 0.514930, -0.169053,
		-0.469742, -0.847636, -0.246689,
		37.791084, 26.788319, 46.800579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536167, 27.425282, 47.371708>,  <38.119904, 27.381664, 46.973259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536167, 27.425282, 47.371708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557518, 27.034079, 47.291054>,  <37.570328, 26.799356, 47.242661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557518, 27.034079, 47.291054>,  <37.536167, 27.425282, 47.371708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557518, 27.034079, 47.291054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394790, -0.206139, 0.895348,
		-0.917220, 0.031816, -0.397109,
		0.053373, -0.978005, -0.201635,
		37.573528, 26.740677, 47.230564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965855, 27.138708, 47.651558>,  <37.536167, 27.425282, 47.371708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965855, 27.138708, 47.651558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172565, 26.800665, 47.596817>,  <37.296593, 26.597839, 47.563972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172565, 26.800665, 47.596817>,  <36.965855, 27.138708, 47.651558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172565, 26.800665, 47.596817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272363, -0.313843, 0.909572,
		-0.811639, -0.432774, -0.392364,
		0.516780, -0.845109, -0.136855,
		37.327599, 26.547132, 47.555759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530067, 26.542618, 47.872765>,  <36.965855, 27.138708, 47.651558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530067, 26.542618, 47.872765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913067, 26.430670, 47.900669>,  <37.142868, 26.363501, 47.917412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913067, 26.430670, 47.900669>,  <36.530067, 26.542618, 47.872765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913067, 26.430670, 47.900669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129263, -0.200159, 0.971199,
		-0.257847, -0.938940, -0.227830,
		0.957500, -0.279871, 0.069760,
		37.200317, 26.346708, 47.921597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398067, 25.932819, 48.123394>,  <36.530067, 26.542618, 47.872765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398067, 25.932819, 48.123394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776047, 26.032082, 48.208706>,  <37.002834, 26.091639, 48.259892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776047, 26.032082, 48.208706>,  <36.398067, 25.932819, 48.123394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776047, 26.032082, 48.208706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127301, -0.321636, 0.938267,
		0.301434, -0.913766, -0.272340,
		0.944951, 0.248156, 0.213275,
		37.059532, 26.106529, 48.272690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675098, 25.408356, 48.471264>,  <36.398067, 25.932819, 48.123394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675098, 25.408356, 48.471264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911156, 25.713137, 48.577969>,  <37.052792, 25.896006, 48.641991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911156, 25.713137, 48.577969>,  <36.675098, 25.408356, 48.471264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911156, 25.713137, 48.577969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162225, -0.211765, 0.963763,
		0.790831, -0.612034, -0.001364,
		0.590144, 0.761952, 0.266758,
		37.088200, 25.941723, 48.657997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142635, 25.108099, 48.995068>,  <36.675098, 25.408356, 48.471264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142635, 25.108099, 48.995068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124660, 25.505301, 49.038750>,  <37.113876, 25.743622, 49.064960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124660, 25.505301, 49.038750>,  <37.142635, 25.108099, 48.995068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124660, 25.505301, 49.038750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071850, -0.112249, 0.991079,
		0.996403, 0.036692, 0.076392,
		-0.044939, 0.993002, 0.109209,
		37.111179, 25.803202, 49.071514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428963, 25.202915, 49.614986>,  <37.142635, 25.108099, 48.995068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428963, 25.202915, 49.614986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273083, 25.567766, 49.564148>,  <37.179554, 25.786676, 49.533646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273083, 25.567766, 49.564148>,  <37.428963, 25.202915, 49.614986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273083, 25.567766, 49.564148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145151, 0.075449, 0.986529,
		0.909431, 0.402900, 0.102994,
		-0.389702, 0.912129, -0.127097,
		37.156174, 25.841404, 49.526020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752167, 25.708918, 50.171265>,  <37.428963, 25.202915, 49.614986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752167, 25.708918, 50.171265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398415, 25.856876, 50.057384>,  <37.186165, 25.945652, 49.989056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398415, 25.856876, 50.057384>,  <37.752167, 25.708918, 50.171265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398415, 25.856876, 50.057384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166114, 0.320584, 0.932540,
		0.436213, 0.872010, -0.222073,
		-0.884378, 0.369897, -0.284697,
		37.133102, 25.967846, 49.971977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715485, 26.379642, 50.442524>,  <37.752167, 25.708918, 50.171265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715485, 26.379642, 50.442524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347507, 26.228985, 50.398979>,  <37.126720, 26.138590, 50.372852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347507, 26.228985, 50.398979>,  <37.715485, 26.379642, 50.442524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347507, 26.228985, 50.398979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242511, 0.328490, 0.912843,
		-0.308056, 0.866161, -0.393531,
		-0.919940, -0.376643, -0.108860,
		37.071526, 26.115992, 50.366322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980282, 27.057825, 50.637127>,  <37.715485, 26.379642, 50.442524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980282, 27.057825, 50.637127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274815, 27.314396, 50.723278>,  <38.451534, 27.468338, 50.774971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274815, 27.314396, 50.723278>,  <37.980282, 27.057825, 50.637127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274815, 27.314396, 50.723278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005399, 0.312739, -0.949824,
		-0.676603, 0.700545, 0.226816,
		0.736328, 0.641429, 0.215382,
		38.495712, 27.506824, 50.787891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827133, 27.752834, 50.349583>,  <37.980282, 27.057825, 50.637127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827133, 27.752834, 50.349583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219276, 27.791992, 50.418060>,  <38.454563, 27.815487, 50.459148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219276, 27.791992, 50.418060>,  <37.827133, 27.752834, 50.349583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219276, 27.791992, 50.418060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106539, 0.467605, -0.877494,
		-0.165956, 0.878500, 0.447992,
		0.980361, 0.097896, 0.171196,
		38.513386, 27.821362, 50.469418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934864, 28.418394, 50.215553>,  <37.827133, 27.752834, 50.349583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934864, 28.418394, 50.215553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275635, 28.220079, 50.148117>,  <38.480095, 28.101091, 50.107655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275635, 28.220079, 50.148117>,  <37.934864, 28.418394, 50.215553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275635, 28.220079, 50.148117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159876, 0.552817, -0.817822,
		0.498664, 0.669769, 0.550222,
		0.851924, -0.495786, -0.168590,
		38.531212, 28.071344, 50.097542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413055, 28.894646, 50.112156>,  <37.934864, 28.418394, 50.215553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413055, 28.894646, 50.112156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574520, 28.559053, 49.966187>,  <38.671398, 28.357698, 49.878605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574520, 28.559053, 49.966187>,  <38.413055, 28.894646, 50.112156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574520, 28.559053, 49.966187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301679, 0.498613, -0.812634,
		0.863741, 0.217938, 0.454373,
		0.403660, -0.838980, -0.364926,
		38.695618, 28.307360, 49.856709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090889, 29.095629, 49.854225>,  <38.413055, 28.894646, 50.112156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090889, 29.095629, 49.854225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008644, 28.750853, 49.668850>,  <38.959297, 28.543987, 49.557625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008644, 28.750853, 49.668850>,  <39.090889, 29.095629, 49.854225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008644, 28.750853, 49.668850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066799, 0.460094, -0.885353,
		0.976350, -0.213001, -0.037026,
		-0.205616, -0.861942, -0.463442,
		38.946960, 28.492270, 49.529816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473938, 29.079273, 49.293068>,  <39.090889, 29.095629, 49.854225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473938, 29.079273, 49.293068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254948, 28.761631, 49.187489>,  <39.123554, 28.571047, 49.124142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254948, 28.761631, 49.187489>,  <39.473938, 29.079273, 49.293068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254948, 28.761631, 49.187489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058320, 0.278441, -0.958681,
		0.834785, -0.540250, -0.106128,
		-0.547478, -0.794103, -0.263946,
		39.090706, 28.523399, 49.108303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856327, 28.745266, 48.713108>,  <39.473938, 29.079273, 49.293068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856327, 28.745266, 48.713108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463669, 28.669409, 48.705109>,  <39.228073, 28.623894, 48.700310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463669, 28.669409, 48.705109>,  <39.856327, 28.745266, 48.713108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463669, 28.669409, 48.705109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026312, 0.238584, -0.970765,
		0.188868, -0.952425, -0.239196,
		-0.981650, -0.189640, -0.020001,
		39.169174, 28.612516, 48.699108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718067, 28.248436, 48.161411>,  <39.856327, 28.745266, 48.713108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718067, 28.248436, 48.161411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367199, 28.426968, 48.232254>,  <39.156677, 28.534086, 48.274761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367199, 28.426968, 48.232254>,  <39.718067, 28.248436, 48.161411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367199, 28.426968, 48.232254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005917, 0.358764, -0.933410,
		-0.480148, -0.819805, -0.312055,
		-0.877168, 0.446328, 0.177111,
		39.104050, 28.560865, 48.285389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395905, 28.053680, 47.564152>,  <39.718067, 28.248436, 48.161411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395905, 28.053680, 47.564152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169540, 28.349417, 47.710098>,  <39.033722, 28.526857, 47.797665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169540, 28.349417, 47.710098>,  <39.395905, 28.053680, 47.564152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169540, 28.349417, 47.710098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218269, 0.292408, -0.931051,
		-0.795052, -0.606528, -0.004101,
		-0.565907, 0.739339, 0.364866,
		38.999767, 28.571218, 47.819557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741505, 27.983913, 47.202164>,  <39.395905, 28.053680, 47.564152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741505, 27.983913, 47.202164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797623, 28.351120, 47.350521>,  <38.831295, 28.571444, 47.439533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797623, 28.351120, 47.350521>,  <38.741505, 27.983913, 47.202164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797623, 28.351120, 47.350521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093205, 0.385177, -0.918124,
		-0.985713, 0.094238, 0.139602,
		0.140294, 0.918018, 0.370891,
		38.839710, 28.626526, 47.461788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314705, 28.299097, 46.738422>,  <38.741505, 27.983913, 47.202164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314705, 28.299097, 46.738422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528969, 28.585396, 46.917656>,  <38.657528, 28.757175, 47.025196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528969, 28.585396, 46.917656>,  <38.314705, 28.299097, 46.738422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528969, 28.585396, 46.917656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005201, 0.533416, -0.845837,
		-0.844417, 0.450751, 0.289452,
		0.535660, 0.715745, 0.448081,
		38.689667, 28.800119, 47.052082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118210, 29.037619, 46.583500>,  <38.314705, 28.299097, 46.738422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118210, 29.037619, 46.583500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501247, 29.071655, 46.693604>,  <38.731071, 29.092077, 46.759666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501247, 29.071655, 46.693604>,  <38.118210, 29.037619, 46.583500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501247, 29.071655, 46.693604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195411, 0.510236, -0.837540,
		-0.211718, 0.855814, 0.471972,
		0.957596, 0.085094, 0.275262,
		38.788525, 29.097183, 46.776180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374275, 29.741652, 46.468555>,  <38.118210, 29.037619, 46.583500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374275, 29.741652, 46.468555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701893, 29.512836, 46.486172>,  <38.898464, 29.375547, 46.496742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701893, 29.512836, 46.486172>,  <38.374275, 29.741652, 46.468555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701893, 29.512836, 46.486172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334246, 0.413366, -0.846999,
		0.466313, 0.708449, 0.529766,
		0.819043, -0.572039, 0.044038,
		38.947605, 29.341225, 46.499382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928440, 30.274910, 46.356621>,  <38.374275, 29.741652, 46.468555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928440, 30.274910, 46.356621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095215, 29.920929, 46.273655>,  <39.195282, 29.708540, 46.223877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095215, 29.920929, 46.273655>,  <38.928440, 30.274910, 46.356621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095215, 29.920929, 46.273655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366023, 0.372344, -0.852870,
		0.831978, 0.279678, 0.479159,
		0.416941, -0.884952, -0.207413,
		39.220299, 29.655443, 46.211430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575222, 30.423790, 46.110218>,  <38.928440, 30.274910, 46.356621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575222, 30.423790, 46.110218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505505, 30.054392, 45.973526>,  <39.463673, 29.832754, 45.891510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505505, 30.054392, 45.973526>,  <39.575222, 30.423790, 46.110218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505505, 30.054392, 45.973526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406067, 0.248755, -0.879336,
		0.897069, -0.292029, 0.331643,
		-0.174293, -0.923493, -0.341734,
		39.453217, 29.777344, 45.871006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180843, 30.335218, 45.653244>,  <39.575222, 30.423790, 46.110218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180843, 30.335218, 45.653244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938950, 30.038389, 45.537571>,  <39.793812, 29.860292, 45.468166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938950, 30.038389, 45.537571>,  <40.180843, 30.335218, 45.653244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938950, 30.038389, 45.537571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106124, 0.284780, -0.952701,
		0.789325, -0.606820, -0.093464,
		-0.604735, -0.742071, -0.289182,
		39.757530, 29.815767, 45.450817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485352, 30.213022, 45.009289>,  <40.180843, 30.335218, 45.653244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485352, 30.213022, 45.009289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114304, 30.065077, 45.030159>,  <39.891674, 29.976311, 45.042683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114304, 30.065077, 45.030159>,  <40.485352, 30.213022, 45.009289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114304, 30.065077, 45.030159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057659, 0.003769, -0.998329,
		0.369048, -0.929079, -0.024822,
		-0.927620, -0.369862, 0.052179,
		39.836018, 29.954119, 45.045815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416443, 29.643730, 44.561127>,  <40.485352, 30.213022, 45.009289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416443, 29.643730, 44.561127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029209, 29.738791, 44.592953>,  <39.796867, 29.795826, 44.612049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029209, 29.738791, 44.592953>,  <40.416443, 29.643730, 44.561127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029209, 29.738791, 44.592953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129253, -0.201446, -0.970934,
		-0.214737, -0.950227, 0.225736,
		-0.968082, 0.237673, 0.079562,
		39.738785, 29.810085, 44.616821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049965, 29.258461, 44.097977>,  <40.416443, 29.643730, 44.561127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049965, 29.258461, 44.097977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799141, 29.557997, 44.183800>,  <39.648647, 29.737719, 44.235294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799141, 29.557997, 44.183800>,  <40.049965, 29.258461, 44.097977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799141, 29.557997, 44.183800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231957, 0.083442, -0.969141,
		-0.743632, -0.657480, 0.121375,
		-0.627063, 0.748838, 0.214557,
		39.611023, 29.782648, 44.248165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378899, 29.103800, 43.837307>,  <40.049965, 29.258461, 44.097977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378899, 29.103800, 43.837307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408264, 29.501892, 43.862999>,  <39.425884, 29.740747, 43.878414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408264, 29.501892, 43.862999>,  <39.378899, 29.103800, 43.837307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408264, 29.501892, 43.862999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006691, 0.063910, -0.997933,
		-0.997279, 0.073688, -0.001967,
		0.073410, 0.995231, 0.064229,
		39.430286, 29.800461, 43.882267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209236, 29.272820, 43.206821>,  <39.378899, 29.103800, 43.837307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209236, 29.272820, 43.206821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269184, 29.656324, 43.303413>,  <39.305153, 29.886427, 43.361370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269184, 29.656324, 43.303413>,  <39.209236, 29.272820, 43.206821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269184, 29.656324, 43.303413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054635, 0.251898, -0.966210,
		-0.987195, 0.131615, 0.090135,
		0.149872, 0.958762, 0.241481,
		39.314144, 29.943953, 43.375858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659523, 29.669014, 43.038208>,  <39.209236, 29.272820, 43.206821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659523, 29.669014, 43.038208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973797, 29.915485, 43.016201>,  <39.162361, 30.063368, 43.002998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973797, 29.915485, 43.016201>,  <38.659523, 29.669014, 43.038208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973797, 29.915485, 43.016201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290859, 0.289451, -0.911932,
		-0.545987, 0.732492, 0.406637,
		0.785684, 0.616176, -0.055016,
		39.209503, 30.100338, 42.999695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471272, 30.260288, 42.564980>,  <38.659523, 29.669014, 43.038208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471272, 30.260288, 42.564980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870522, 30.284731, 42.566452>,  <39.110073, 30.299397, 42.567333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870522, 30.284731, 42.566452>,  <38.471272, 30.260288, 42.564980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870522, 30.284731, 42.566452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012588, 0.263685, -0.964527,
		-0.059910, 0.962672, 0.263959,
		0.998124, 0.061107, 0.003680,
		39.169960, 30.303062, 42.567554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673832, 30.863831, 42.269428>,  <38.471272, 30.260288, 42.564980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673832, 30.863831, 42.269428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035110, 30.696064, 42.232933>,  <39.251877, 30.595404, 42.211037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035110, 30.696064, 42.232933>,  <38.673832, 30.863831, 42.269428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035110, 30.696064, 42.232933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009697, 0.232441, -0.972562,
		0.429116, 0.877531, 0.214007,
		0.903198, -0.419417, -0.091234,
		39.306068, 30.570238, 42.205563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158306, 31.338305, 41.959251>,  <38.673832, 30.863831, 42.269428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158306, 31.338305, 41.959251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319195, 30.981085, 41.878571>,  <39.415730, 30.766754, 41.830162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319195, 30.981085, 41.878571>,  <39.158306, 31.338305, 41.959251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319195, 30.981085, 41.878571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132841, 0.274903, -0.952251,
		0.905854, 0.356222, 0.229206,
		0.402222, -0.893048, -0.201701,
		39.439861, 30.713171, 41.818062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829281, 31.405247, 41.820377>,  <39.158306, 31.338305, 41.959251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829281, 31.405247, 41.820377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643559, 31.112507, 41.620850>,  <39.532127, 30.936863, 41.501133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643559, 31.112507, 41.620850>,  <39.829281, 31.405247, 41.820377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643559, 31.112507, 41.620850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132943, 0.499237, -0.856206,
		0.875642, -0.463853, -0.134503,
		-0.464302, -0.731849, -0.498819,
		39.504269, 30.892952, 41.471203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214668, 31.270023, 41.311928>,  <39.829281, 31.405247, 41.820377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214668, 31.270023, 41.311928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857422, 31.126440, 41.203491>,  <39.643074, 31.040289, 41.138432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857422, 31.126440, 41.203491>,  <40.214668, 31.270023, 41.311928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857422, 31.126440, 41.203491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042318, 0.532931, -0.845100,
		0.447824, -0.766247, -0.460780,
		-0.893120, -0.358957, -0.271086,
		39.589485, 31.018753, 41.122166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641117, 30.922272, 40.830547>,  <40.214668, 31.270023, 41.311928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641117, 30.922272, 40.830547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409504, 30.657251, 40.640495>,  <40.270538, 30.498240, 40.526463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409504, 30.657251, 40.640495>,  <40.641117, 30.922272, 40.830547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409504, 30.657251, 40.640495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453162, 0.222919, -0.863105,
		0.677768, -0.715075, 0.171167,
		-0.579029, -0.662552, -0.475132,
		40.235794, 30.458487, 40.497955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031425, 30.296736, 40.509003>,  <40.641117, 30.922272, 40.830547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031425, 30.296736, 40.509003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692795, 30.362223, 40.306419>,  <40.489616, 30.401514, 40.184868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692795, 30.362223, 40.306419>,  <41.031425, 30.296736, 40.509003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692795, 30.362223, 40.306419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532175, 0.242921, -0.811036,
		-0.009751, -0.956131, -0.292777,
		-0.846579, 0.163717, -0.506460,
		40.438820, 30.411337, 40.154480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144432, 30.002209, 39.841518>,  <41.031425, 30.296736, 40.509003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144432, 30.002209, 39.841518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818161, 30.225668, 39.781403>,  <40.622398, 30.359743, 39.745331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818161, 30.225668, 39.781403>,  <41.144432, 30.002209, 39.841518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818161, 30.225668, 39.781403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326860, 0.230682, -0.916487,
		-0.477326, -0.796678, -0.370761,
		-0.815673, 0.558650, -0.150292,
		40.573460, 30.393263, 39.736317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936817, 29.830788, 39.177620>,  <41.144432, 30.002209, 39.841518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936817, 29.830788, 39.177620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790974, 30.191292, 39.271248>,  <40.703468, 30.407595, 39.327423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790974, 30.191292, 39.271248>,  <40.936817, 29.830788, 39.177620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790974, 30.191292, 39.271248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453832, 0.391497, -0.800478,
		-0.813077, -0.185634, -0.551765,
		-0.364611, 0.901260, 0.234071,
		40.681591, 30.461670, 39.341469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638657, 30.037386, 38.564178>,  <40.936817, 29.830788, 39.177620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638657, 30.037386, 38.564178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667751, 30.377272, 38.773060>,  <40.685207, 30.581203, 38.898388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667751, 30.377272, 38.773060>,  <40.638657, 30.037386, 38.564178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667751, 30.377272, 38.773060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429414, 0.445892, -0.785356,
		-0.900174, 0.281368, -0.332444,
		0.072740, 0.849713, 0.522203,
		40.689575, 30.632185, 38.929722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389530, 30.525141, 38.058212>,  <40.638657, 30.037386, 38.564178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389530, 30.525141, 38.058212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561523, 30.747446, 38.342812>,  <40.664719, 30.880829, 38.513573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561523, 30.747446, 38.342812>,  <40.389530, 30.525141, 38.058212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561523, 30.747446, 38.342812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290031, 0.661274, -0.691808,
		-0.854982, 0.503826, 0.123150,
		0.429987, 0.555766, 0.711503,
		40.690521, 30.914175, 38.556263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095947, 31.140804, 38.014496>,  <40.389530, 30.525141, 38.058212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095947, 31.140804, 38.014496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452507, 31.208164, 38.182804>,  <40.666443, 31.248579, 38.283787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452507, 31.208164, 38.182804>,  <40.095947, 31.140804, 38.014496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452507, 31.208164, 38.182804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218301, 0.654073, -0.724247,
		-0.397174, 0.737449, 0.546281,
		0.891402, 0.168398, 0.420767,
		40.719929, 31.258684, 38.309032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187157, 31.804247, 37.976082>,  <40.095947, 31.140804, 38.014496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187157, 31.804247, 37.976082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572407, 31.722525, 38.046104>,  <40.803558, 31.673491, 38.088120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572407, 31.722525, 38.046104>,  <40.187157, 31.804247, 37.976082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572407, 31.722525, 38.046104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269031, 0.738376, -0.618405,
		-0.002912, 0.642698, 0.766115,
		0.963127, -0.204308, 0.175056,
		40.861343, 31.661232, 38.098621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406048, 32.362621, 38.348480>,  <40.187157, 31.804247, 37.976082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406048, 32.362621, 38.348480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748177, 32.212574, 38.205528>,  <40.953453, 32.122547, 38.119759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748177, 32.212574, 38.205528>,  <40.406048, 32.362621, 38.348480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748177, 32.212574, 38.205528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181919, 0.863299, -0.470767,
		0.485115, 0.337641, 0.806636,
		0.855318, -0.375118, -0.357376,
		41.004772, 32.100040, 38.098316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000576, 32.778427, 38.619770>,  <40.406048, 32.362621, 38.348480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000576, 32.778427, 38.619770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121231, 32.595146, 38.285328>,  <41.193623, 32.485180, 38.084663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121231, 32.595146, 38.285328>,  <41.000576, 32.778427, 38.619770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121231, 32.595146, 38.285328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293560, 0.878980, -0.375789,
		0.907105, -0.132097, 0.399639,
		0.301634, -0.458198, -0.836105,
		41.211720, 32.457687, 38.034496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450706, 33.263969, 38.214439>,  <41.000576, 32.778427, 38.619770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450706, 33.263969, 38.214439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331665, 33.021412, 37.919491>,  <41.260239, 32.875877, 37.742523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331665, 33.021412, 37.919491>,  <41.450706, 33.263969, 38.214439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331665, 33.021412, 37.919491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123422, 0.741450, -0.659560,
		0.946677, -0.287297, -0.145819,
		-0.297607, -0.606392, -0.737372,
		41.242382, 32.839493, 37.698280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939159, 33.374214, 37.690880>,  <41.450706, 33.263969, 38.214439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939159, 33.374214, 37.690880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575623, 33.275314, 37.556492>,  <41.357502, 33.215973, 37.475857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575623, 33.275314, 37.556492>,  <41.939159, 33.374214, 37.690880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575623, 33.275314, 37.556492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039946, 0.750118, -0.660096,
		0.415229, -0.613342, -0.671860,
		-0.908839, -0.247253, -0.335972,
		41.302971, 33.201138, 37.455700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552513, 33.896328, 37.787018>,  <41.939159, 33.374214, 37.690880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552513, 33.896328, 37.787018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770969, 33.822651, 37.460140>,  <42.902042, 33.778442, 37.264015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770969, 33.822651, 37.460140>,  <42.552513, 33.896328, 37.787018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770969, 33.822651, 37.460140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834762, 0.201212, 0.512528,
		0.070024, -0.962074, 0.263648,
		0.546139, -0.184194, -0.817193,
		42.934811, 33.767391, 37.214981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185581, 33.603512, 37.985355>,  <42.552513, 33.896328, 37.787018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185581, 33.603512, 37.985355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265228, 33.738644, 37.617393>,  <43.313015, 33.819725, 37.396618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265228, 33.738644, 37.617393>,  <43.185581, 33.603512, 37.985355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265228, 33.738644, 37.617393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788413, 0.502290, 0.355118,
		0.582029, -0.795974, -0.166338,
		0.199115, 0.337832, -0.919904,
		43.324963, 33.839993, 37.341423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857731, 33.382298, 37.824154>,  <43.185581, 33.603512, 37.985355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857731, 33.382298, 37.824154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726452, 33.734070, 37.686234>,  <43.647686, 33.945133, 37.603481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726452, 33.734070, 37.686234>,  <43.857731, 33.382298, 37.824154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726452, 33.734070, 37.686234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760201, 0.462566, 0.456210,
		0.560698, -0.112389, -0.820358,
		-0.328197, 0.879432, -0.344798,
		43.627995, 33.997898, 37.582794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446903, 33.830933, 37.580444>,  <43.857731, 33.382298, 37.824154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446903, 33.830933, 37.580444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155239, 34.090649, 37.666931>,  <43.980240, 34.246479, 37.718822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155239, 34.090649, 37.666931>,  <44.446903, 33.830933, 37.580444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.155239, 34.090649, 37.666931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669317, 0.610779, 0.423041,
		0.142618, 0.453179, -0.879937,
		-0.729160, 0.649290, 0.216213,
		43.936493, 34.285435, 37.731796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705112, 33.971455, 36.918774>,  <44.446903, 33.830933, 37.580444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705112, 33.971455, 36.918774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000675, 33.758095, 36.754093>,  <45.178013, 33.630077, 36.655285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000675, 33.758095, 36.754093>,  <44.705112, 33.971455, 36.918774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.000675, 33.758095, 36.754093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671673, -0.534532, -0.512963,
		0.053546, 0.655562, -0.753240,
		0.738910, -0.533398, -0.411702,
		45.222347, 33.598076, 36.630581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552643, 33.949413, 36.293060>,  <44.705112, 33.971455, 36.918774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552643, 33.949413, 36.293060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822128, 33.653893, 36.299801>,  <44.983818, 33.476578, 36.303844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822128, 33.653893, 36.299801>,  <44.552643, 33.949413, 36.293060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822128, 33.653893, 36.299801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596330, -0.556971, -0.578078,
		0.436471, 0.379410, -0.815807,
		0.673709, -0.738805, 0.016848,
		45.024242, 33.432251, 36.304855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628990, 33.742867, 35.566254>,  <44.552643, 33.949413, 36.293060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628990, 33.742867, 35.566254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.733334, 33.448013, 35.815601>,  <44.795940, 33.271103, 35.965210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.733334, 33.448013, 35.815601>,  <44.628990, 33.742867, 35.566254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.733334, 33.448013, 35.815601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634008, -0.617762, -0.465192,
		0.728002, -0.273870, -0.628497,
		0.260860, -0.737133, 0.623368,
		44.811592, 33.226875, 36.002613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090618, 34.436741, 35.475132>,  <44.628990, 33.742867, 35.566254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090618, 34.436741, 35.475132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349934, 34.710548, 35.608498>,  <45.505524, 34.874832, 35.688515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349934, 34.710548, 35.608498>,  <45.090618, 34.436741, 35.475132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349934, 34.710548, 35.608498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688282, 0.339620, 0.641035,
		0.325560, -0.645061, 0.691308,
		0.648288, 0.684510, 0.333418,
		45.544418, 34.915901, 35.708523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192146, 34.331810, 36.195137>,  <45.090618, 34.436741, 35.475132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192146, 34.331810, 36.195137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273521, 34.711342, 36.098526>,  <45.322346, 34.939060, 36.040558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273521, 34.711342, 36.098526>,  <45.192146, 34.331810, 36.195137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273521, 34.711342, 36.098526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538045, 0.314444, 0.782069,
		0.817997, -0.029152, 0.574484,
		0.203442, 0.948828, -0.241529,
		45.334553, 34.995991, 36.026066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.445858, 34.585487, 36.740002>,  <45.192146, 34.331810, 36.195137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.445858, 34.585487, 36.740002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.310543, 34.892418, 36.522091>,  <45.229355, 35.076576, 36.391346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.310543, 34.892418, 36.522091>,  <45.445858, 34.585487, 36.740002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310543, 34.892418, 36.522091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616860, 0.256370, 0.744149,
		0.710667, 0.587784, 0.386604,
		-0.338285, 0.767323, -0.544774,
		45.209057, 35.122616, 36.358658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389034, 35.173588, 37.159355>,  <45.445858, 34.585487, 36.740002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389034, 35.173588, 37.159355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136215, 35.244663, 36.857643>,  <44.984524, 35.287308, 36.676617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136215, 35.244663, 36.857643>,  <45.389034, 35.173588, 37.159355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136215, 35.244663, 36.857643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634322, 0.440494, 0.635295,
		0.445145, 0.879995, -0.165697,
		-0.632045, 0.177693, -0.754284,
		44.946602, 35.297970, 36.631359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998257, 35.820778, 37.393360>,  <45.389034, 35.173588, 37.159355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998257, 35.820778, 37.393360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781441, 35.710068, 37.075974>,  <44.651352, 35.643642, 36.885544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781441, 35.710068, 37.075974>,  <44.998257, 35.820778, 37.393360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781441, 35.710068, 37.075974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826386, 0.346978, 0.443500,
		0.152563, 0.896103, -0.416803,
		-0.542043, -0.276779, -0.793463,
		44.618828, 35.627033, 36.837936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550125, 36.412991, 37.232323>,  <44.998257, 35.820778, 37.393360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550125, 36.412991, 37.232323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383923, 36.098915, 37.048656>,  <44.284203, 35.910469, 36.938457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383923, 36.098915, 37.048656>,  <44.550125, 36.412991, 37.232323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383923, 36.098915, 37.048656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896923, 0.269729, 0.350393,
		-0.151276, 0.557423, -0.816331,
		-0.415505, -0.785192, -0.459162,
		44.259270, 35.863358, 36.910908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811985, 36.680637, 36.957123>,  <44.550125, 36.412991, 37.232323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811985, 36.680637, 36.957123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790783, 36.281242, 36.962902>,  <43.778061, 36.041603, 36.966370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790783, 36.281242, 36.962902>,  <43.811985, 36.680637, 36.957123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790783, 36.281242, 36.962902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943262, 0.054813, 0.327495,
		-0.327792, 0.003730, -0.944743,
		-0.053006, -0.998490, 0.014449,
		43.774879, 35.981697, 36.967236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173496, 36.575874, 36.603760>,  <43.811985, 36.680637, 36.957123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173496, 36.575874, 36.603760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267166, 36.269833, 36.843685>,  <43.323368, 36.086208, 36.987640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267166, 36.269833, 36.843685>,  <43.173496, 36.575874, 36.603760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267166, 36.269833, 36.843685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918779, 0.027528, 0.393813,
		-0.317820, -0.643316, -0.696516,
		0.234172, -0.765105, 0.599814,
		43.337418, 36.040302, 37.023628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557949, 36.219791, 36.630280>,  <43.173496, 36.575874, 36.603760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557949, 36.219791, 36.630280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764614, 36.099689, 36.951004>,  <42.888611, 36.027626, 37.143440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764614, 36.099689, 36.951004>,  <42.557949, 36.219791, 36.630280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764614, 36.099689, 36.951004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806006, 0.145342, 0.573786,
		-0.288822, -0.942719, -0.166919,
		0.516659, -0.300260, 0.801815,
		42.919613, 36.009613, 37.191547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054916, 35.936104, 37.081062>,  <42.557949, 36.219791, 36.630280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054916, 35.936104, 37.081062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377193, 35.995766, 37.310360>,  <42.570560, 36.031563, 37.447937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377193, 35.995766, 37.310360>,  <42.054916, 35.936104, 37.081062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377193, 35.995766, 37.310360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576847, 0.417403, 0.702155,
		-0.134545, -0.896397, 0.422338,
		0.805695, 0.149153, 0.573244,
		42.618900, 36.040512, 37.482334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827675, 35.716331, 37.754627>,  <42.054916, 35.936104, 37.081062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827675, 35.716331, 37.754627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121231, 35.983082, 37.806278>,  <42.297363, 36.143131, 37.837269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121231, 35.983082, 37.806278>,  <41.827675, 35.716331, 37.754627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121231, 35.983082, 37.806278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594320, 0.538357, 0.597457,
		0.328916, -0.515211, 0.791436,
		0.733892, 0.666880, 0.129126,
		42.341400, 36.183147, 37.845016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620998, 35.951263, 38.447388>,  <41.827675, 35.716331, 37.754627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620998, 35.951263, 38.447388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891644, 36.213497, 38.313282>,  <42.054031, 36.370838, 38.232819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891644, 36.213497, 38.313282>,  <41.620998, 35.951263, 38.447388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891644, 36.213497, 38.313282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376684, 0.699398, 0.607414,
		0.632690, -0.284701, 0.720173,
		0.676619, 0.655582, -0.335259,
		42.094627, 36.410172, 38.212704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939728, 36.276230, 39.043846>,  <41.620998, 35.951263, 38.447388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939728, 36.276230, 39.043846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022182, 36.550365, 38.764469>,  <42.071655, 36.714848, 38.596844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022182, 36.550365, 38.764469>,  <41.939728, 36.276230, 39.043846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022182, 36.550365, 38.764469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296572, 0.723957, 0.622841,
		0.932499, 0.078752, 0.352482,
		0.206132, 0.685335, -0.698445,
		42.084023, 36.755966, 38.554935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351501, 36.790974, 39.419750>,  <41.939728, 36.276230, 39.043846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351501, 36.790974, 39.419750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181335, 36.966572, 39.103191>,  <42.079235, 37.071930, 38.913258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181335, 36.966572, 39.103191>,  <42.351501, 36.790974, 39.419750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181335, 36.966572, 39.103191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147655, 0.829084, 0.539276,
		0.892872, 0.346269, -0.287884,
		-0.425414, 0.438997, -0.791394,
		42.053711, 37.098270, 38.865772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616238, 37.405598, 39.474003>,  <42.351501, 36.790974, 39.419750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616238, 37.405598, 39.474003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276829, 37.428711, 39.263607>,  <42.073181, 37.442577, 39.137371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276829, 37.428711, 39.263607>,  <42.616238, 37.405598, 39.474003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276829, 37.428711, 39.263607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266685, 0.811850, 0.519402,
		0.457038, 0.580999, -0.673465,
		-0.848525, 0.057783, -0.525990,
		42.022270, 37.446045, 39.105808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531834, 38.123219, 39.275940>,  <42.616238, 37.405598, 39.474003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531834, 38.123219, 39.275940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164391, 37.967197, 39.250591>,  <41.943924, 37.873585, 39.235382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164391, 37.967197, 39.250591>,  <42.531834, 38.123219, 39.275940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164391, 37.967197, 39.250591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385267, 0.848312, 0.363230,
		-0.087920, 0.358082, -0.929541,
		-0.918607, -0.390057, -0.063374,
		41.888809, 37.850182, 39.231579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186459, 38.617168, 38.989071>,  <42.531834, 38.123219, 39.275940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186459, 38.617168, 38.989071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905209, 38.384602, 39.152813>,  <41.736458, 38.245060, 39.251060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905209, 38.384602, 39.152813>,  <42.186459, 38.617168, 38.989071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905209, 38.384602, 39.152813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510571, 0.813498, 0.278458,
		-0.494912, -0.013216, -0.868843,
		-0.703122, -0.581418, 0.409357,
		41.694271, 38.210175, 39.275620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642685, 39.077927, 39.090023>,  <42.186459, 38.617168, 38.989071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642685, 39.077927, 39.090023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526386, 38.769344, 39.316410>,  <41.456608, 38.584194, 39.452244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526386, 38.769344, 39.316410>,  <41.642685, 39.077927, 39.090023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526386, 38.769344, 39.316410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552628, 0.618283, 0.558865,
		-0.781068, -0.150281, -0.606093,
		-0.290750, -0.771455, 0.565970,
		41.439159, 38.537907, 39.486202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940155, 39.189335, 39.224861>,  <41.642685, 39.077927, 39.090023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940155, 39.189335, 39.224861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078663, 38.959263, 39.521309>,  <41.161766, 38.821220, 39.699177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078663, 38.959263, 39.521309>,  <40.940155, 39.189335, 39.224861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078663, 38.959263, 39.521309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373153, 0.640366, 0.671333,
		-0.860730, -0.509012, 0.007106,
		0.346267, -0.575185, 0.741122,
		41.182545, 38.786709, 39.743645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368107, 39.100121, 39.611217>,  <40.940155, 39.189335, 39.224861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368107, 39.100121, 39.611217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647053, 38.998940, 39.879456>,  <40.814419, 38.938229, 40.040398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647053, 38.998940, 39.879456>,  <40.368107, 39.100121, 39.611217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647053, 38.998940, 39.879456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415441, 0.619766, 0.665806,
		-0.584032, -0.742902, 0.327114,
		0.697363, -0.252956, 0.670596,
		40.856262, 38.923054, 40.080635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053753, 38.916653, 40.276646>,  <40.368107, 39.100121, 39.611217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053753, 38.916653, 40.276646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421745, 39.013618, 40.399849>,  <40.642540, 39.071796, 40.473770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421745, 39.013618, 40.399849>,  <40.053753, 38.916653, 40.276646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421745, 39.013618, 40.399849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391695, 0.539710, 0.745176,
		0.014408, -0.806193, 0.591477,
		0.919982, 0.242415, 0.308006,
		40.697739, 39.086342, 40.492252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959652, 39.035770, 40.924458>,  <40.053753, 38.916653, 40.276646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959652, 39.035770, 40.924458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315052, 39.205414, 40.854366>,  <40.528290, 39.307201, 40.812313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315052, 39.205414, 40.854366>,  <39.959652, 39.035770, 40.924458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315052, 39.205414, 40.854366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164081, 0.650229, 0.741809,
		0.428544, -0.630344, 0.647314,
		0.888497, 0.424110, -0.175224,
		40.581600, 39.332645, 40.801800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310257, 38.854172, 41.553535>,  <39.959652, 39.035770, 40.924458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310257, 38.854172, 41.553535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414658, 39.193752, 41.369732>,  <40.477299, 39.397503, 41.259449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414658, 39.193752, 41.369732>,  <40.310257, 38.854172, 41.553535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414658, 39.193752, 41.369732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144703, 0.505041, 0.850878,
		0.954430, -0.155591, 0.254665,
		0.261005, 0.848955, -0.459512,
		40.492958, 39.448441, 41.231876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625710, 38.149925, 41.806843>,  <40.310257, 38.854172, 41.553535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625710, 38.149925, 41.806843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750225, 38.526520, 41.858540>,  <40.824936, 38.752476, 41.889557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750225, 38.526520, 41.858540>,  <40.625710, 38.149925, 41.806843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750225, 38.526520, 41.858540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034610, -0.124677, 0.991594,
		0.949684, -0.313149, -0.006226,
		0.311293, 0.941485, 0.129241,
		40.843613, 38.808964, 41.897312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773319, 38.223022, 42.560814>,  <40.625710, 38.149925, 41.806843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773319, 38.223022, 42.560814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910915, 38.581482, 42.448677>,  <40.993473, 38.796558, 42.381397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910915, 38.581482, 42.448677>,  <40.773319, 38.223022, 42.560814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910915, 38.581482, 42.448677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283046, 0.185706, 0.940956,
		0.895296, -0.403030, -0.189770,
		0.343993, 0.896147, -0.280338,
		41.014114, 38.850327, 42.364574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609928, 38.303890, 42.607624>,  <40.773319, 38.223022, 42.560814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609928, 38.303890, 42.607624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380444, 38.623959, 42.677570>,  <41.242752, 38.816002, 42.719536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380444, 38.623959, 42.677570>,  <41.609928, 38.303890, 42.607624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380444, 38.623959, 42.677570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386255, 0.076056, 0.919251,
		0.722261, 0.594927, -0.352705,
		-0.573713, 0.800173, 0.174862,
		41.208328, 38.864010, 42.730030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025967, 38.793629, 42.907417>,  <41.609928, 38.303890, 42.607624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025967, 38.793629, 42.907417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660400, 38.864380, 43.053551>,  <41.441059, 38.906830, 43.141232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660400, 38.864380, 43.053551>,  <42.025967, 38.793629, 42.907417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660400, 38.864380, 43.053551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332603, -0.189573, 0.923817,
		0.232658, 0.965804, 0.114425,
		-0.913918, 0.176876, 0.365335,
		41.386227, 38.917442, 43.163151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539001, 39.328636, 42.663303>,  <42.025967, 38.793629, 42.907417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539001, 39.328636, 42.663303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706841, 39.690586, 42.634647>,  <41.807545, 39.907757, 42.617455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706841, 39.690586, 42.634647>,  <41.539001, 39.328636, 42.663303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706841, 39.690586, 42.634647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870535, -0.423511, -0.250614,
		-0.257114, 0.042796, -0.965433,
		0.419597, 0.904880, -0.071636,
		41.832718, 39.962051, 42.613155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833344, 39.381802, 42.019672>,  <41.539001, 39.328636, 42.663303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833344, 39.381802, 42.019672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031334, 39.653206, 42.236790>,  <42.150127, 39.816048, 42.367058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031334, 39.653206, 42.236790>,  <41.833344, 39.381802, 42.019672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031334, 39.653206, 42.236790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858494, -0.285480, -0.426016,
		-0.134099, 0.676853, -0.723801,
		0.494981, 0.678507, 0.542792,
		42.179829, 39.856758, 42.399628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324238, 39.674995, 41.589466>,  <41.833344, 39.381802, 42.019672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324238, 39.674995, 41.589466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446270, 39.689995, 41.970100>,  <42.519489, 39.698994, 42.198483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446270, 39.689995, 41.970100>,  <42.324238, 39.674995, 41.589466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446270, 39.689995, 41.970100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769256, -0.598751, -0.223029,
		0.561402, 0.800057, -0.211511,
		0.305078, 0.037497, 0.951589,
		42.537792, 39.701244, 42.255577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024769, 39.860027, 41.650333>,  <42.324238, 39.674995, 41.589466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024769, 39.860027, 41.650333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922153, 39.612392, 41.947227>,  <42.860584, 39.463810, 42.125366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922153, 39.612392, 41.947227>,  <43.024769, 39.860027, 41.650333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922153, 39.612392, 41.947227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696310, -0.650973, -0.302302,
		0.670329, 0.439278, 0.598075,
		-0.256536, -0.619088, 0.742240,
		42.845192, 39.426666, 42.169899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545963, 39.844910, 42.187889>,  <43.024769, 39.860027, 41.650333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545963, 39.844910, 42.187889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350597, 39.496647, 42.164524>,  <43.233376, 39.287689, 42.150505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350597, 39.496647, 42.164524>,  <43.545963, 39.844910, 42.187889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350597, 39.496647, 42.164524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844027, -0.454366, -0.284902,
		0.221510, -0.188453, 0.956775,
		-0.488417, -0.870653, -0.058413,
		43.204071, 39.235451, 42.146999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971889, 39.367229, 42.519745>,  <43.545963, 39.844910, 42.187889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971889, 39.367229, 42.519745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723408, 39.172981, 42.273727>,  <43.574318, 39.056435, 42.126118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723408, 39.172981, 42.273727>,  <43.971889, 39.367229, 42.519745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723408, 39.172981, 42.273727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779570, -0.462890, -0.421905,
		-0.079813, -0.741559, 0.666123,
		-0.621209, -0.485616, -0.615042,
		43.537045, 39.027298, 42.089214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288704, 38.644123, 42.368740>,  <43.971889, 39.367229, 42.519745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288704, 38.644123, 42.368740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.032562, 38.720951, 42.071270>,  <43.878876, 38.767048, 41.892788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.032562, 38.720951, 42.071270>,  <44.288704, 38.644123, 42.368740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032562, 38.720951, 42.071270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624380, -0.433709, -0.649651,
		-0.447323, -0.880342, 0.157798,
		-0.640354, 0.192078, -0.743676,
		43.840454, 38.778572, 41.848167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380825, 38.120594, 41.897469>,  <44.288704, 38.644123, 42.368740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380825, 38.120594, 41.897469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207924, 38.402802, 41.672825>,  <44.104183, 38.572124, 41.538040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207924, 38.402802, 41.672825>,  <44.380825, 38.120594, 41.897469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207924, 38.402802, 41.672825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514958, -0.318131, -0.795997,
		-0.740256, -0.633274, -0.225801,
		-0.432249, 0.705519, -0.561608,
		44.078251, 38.614456, 41.504341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134510, 37.793350, 41.283737>,  <44.380825, 38.120594, 41.897469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134510, 37.793350, 41.283737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196243, 38.176365, 41.186329>,  <44.233284, 38.406174, 41.127884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196243, 38.176365, 41.186329>,  <44.134510, 37.793350, 41.283737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196243, 38.176365, 41.186329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578087, -0.287399, -0.763686,
		-0.801247, -0.022916, -0.597896,
		0.154334, 0.957537, -0.243525,
		44.242542, 38.463627, 41.113270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061871, 37.852070, 40.514999>,  <44.134510, 37.793350, 41.283737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061871, 37.852070, 40.514999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.260509, 38.190216, 40.593735>,  <44.379692, 38.393105, 40.640976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.260509, 38.190216, 40.593735>,  <44.061871, 37.852070, 40.514999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260509, 38.190216, 40.593735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487594, -0.084080, -0.869012,
		-0.718084, 0.527528, -0.453950,
		0.496596, 0.845367, 0.196843,
		44.409489, 38.443825, 40.652786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037895, 38.265743, 39.919937>,  <44.061871, 37.852070, 40.514999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037895, 38.265743, 39.919937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350903, 38.403042, 40.127724>,  <44.538708, 38.485420, 40.252396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350903, 38.403042, 40.127724>,  <44.037895, 38.265743, 39.919937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350903, 38.403042, 40.127724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571358, -0.064323, -0.818177,
		-0.247419, 0.937042, -0.246449,
		0.782518, 0.343243, 0.519471,
		44.585659, 38.506016, 40.283566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348370, 38.771095, 39.447601>,  <44.037895, 38.265743, 39.919937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348370, 38.771095, 39.447601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608879, 38.615101, 39.707985>,  <44.765186, 38.521503, 39.864216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608879, 38.615101, 39.707985>,  <44.348370, 38.771095, 39.447601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608879, 38.615101, 39.707985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481380, -0.450808, -0.751695,
		0.586610, 0.802920, -0.105869,
		0.651277, -0.389989, 0.650958,
		44.804264, 38.498104, 39.903271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077648, 38.935635, 39.086311>,  <44.348370, 38.771095, 39.447601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077648, 38.935635, 39.086311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.094162, 38.657181, 39.373001>,  <45.104069, 38.490108, 39.545013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.094162, 38.657181, 39.373001>,  <45.077648, 38.935635, 39.086311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.094162, 38.657181, 39.373001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618094, -0.545807, -0.565734,
		0.785020, 0.466356, 0.407746,
		0.041283, -0.696138, 0.716720,
		45.106548, 38.448341, 39.588017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705818, 38.790775, 39.035797>,  <45.077648, 38.935635, 39.086311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705818, 38.790775, 39.035797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587307, 38.477768, 39.254845>,  <45.516201, 38.289963, 39.386272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587307, 38.477768, 39.254845>,  <45.705818, 38.790775, 39.035797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587307, 38.477768, 39.254845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579289, -0.603084, -0.548374,
		0.759372, 0.154758, 0.631985,
		-0.296275, -0.782521, 0.547615,
		45.498425, 38.243011, 39.419128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.351955, 38.405422, 39.167957>,  <45.705818, 38.790775, 39.035797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.351955, 38.405422, 39.167957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042057, 38.154972, 39.203148>,  <45.856117, 38.004704, 39.224262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042057, 38.154972, 39.203148>,  <46.351955, 38.405422, 39.167957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042057, 38.154972, 39.203148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494875, -0.687092, -0.531982,
		0.393534, -0.368613, 0.842173,
		-0.774746, -0.626123, 0.087976,
		45.809635, 37.967136, 39.229542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.648502, 37.702305, 39.329159>,  <46.351955, 38.405422, 39.167957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.648502, 37.702305, 39.329159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.291714, 37.642475, 39.158512>,  <46.077641, 37.606575, 39.056122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.291714, 37.642475, 39.158512>,  <46.648502, 37.702305, 39.329159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.291714, 37.642475, 39.158512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402589, -0.692131, -0.599063,
		-0.205672, -0.706103, 0.677582,
		-0.891976, -0.149577, -0.426621,
		46.024120, 37.597603, 39.030525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.631828, 37.060398, 39.219685>,  <46.648502, 37.702305, 39.329159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.631828, 37.060398, 39.219685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329124, 37.173771, 38.984066>,  <46.147503, 37.241795, 38.842693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329124, 37.173771, 38.984066>,  <46.631828, 37.060398, 39.219685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.329124, 37.173771, 38.984066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239286, -0.718455, -0.653119,
		-0.608317, -0.635207, 0.475880,
		-0.756764, 0.283432, -0.589045,
		46.102097, 37.258801, 38.807354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312988, 36.497154, 38.930206>,  <46.631828, 37.060398, 39.219685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312988, 36.497154, 38.930206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174938, 36.771297, 38.673717>,  <46.092110, 36.935783, 38.519825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174938, 36.771297, 38.673717>,  <46.312988, 36.497154, 38.930206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.174938, 36.771297, 38.673717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425004, -0.495022, -0.757843,
		-0.836817, -0.534070, -0.120439,
		-0.345121, 0.685363, -0.641225,
		46.071404, 36.976906, 38.481350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106926, 36.079712, 38.299343>,  <46.312988, 36.497154, 38.930206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106926, 36.079712, 38.299343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173744, 36.457657, 38.186680>,  <46.213833, 36.684425, 38.119080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173744, 36.457657, 38.186680>,  <46.106926, 36.079712, 38.299343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173744, 36.457657, 38.186680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321812, -0.322279, -0.890266,
		-0.931952, 0.058069, -0.357902,
		0.167041, 0.944862, -0.281662,
		46.223858, 36.741116, 38.102180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033638, 35.979401, 37.607540>,  <46.106926, 36.079712, 38.299343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033638, 35.979401, 37.607540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225559, 36.329926, 37.624847>,  <46.340710, 36.540241, 37.635231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225559, 36.329926, 37.624847>,  <46.033638, 35.979401, 37.607540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.225559, 36.329926, 37.624847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385788, -0.166426, -0.907452,
		-0.788010, 0.452085, -0.417922,
		0.479799, 0.876311, 0.043264,
		46.369499, 36.592819, 37.637825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720646, 36.514145, 37.082611>,  <46.033638, 35.979401, 37.607540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720646, 36.514145, 37.082611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087170, 36.661537, 37.145348>,  <46.307083, 36.749973, 37.182987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087170, 36.661537, 37.145348>,  <45.720646, 36.514145, 37.082611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.087170, 36.661537, 37.145348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147185, 0.054353, -0.987614,
		-0.372439, 0.928046, -0.004430,
		0.916311, 0.368478, 0.156838,
		46.362064, 36.772079, 37.192398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814045, 37.038712, 36.640320>,  <45.720646, 36.514145, 37.082611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814045, 37.038712, 36.640320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.192440, 36.941391, 36.726028>,  <46.419476, 36.882999, 36.777454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.192440, 36.941391, 36.726028>,  <45.814045, 37.038712, 36.640320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.192440, 36.941391, 36.726028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238244, 0.073439, -0.968425,
		0.219879, 0.967168, 0.127436,
		0.945988, -0.243297, 0.214274,
		46.476238, 36.868401, 36.790310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.134052, 37.528709, 36.304348>,  <45.814045, 37.038712, 36.640320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.134052, 37.528709, 36.304348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.370388, 37.209900, 36.354424>,  <46.512188, 37.018616, 36.384468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.370388, 37.209900, 36.354424>,  <46.134052, 37.528709, 36.304348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.370388, 37.209900, 36.354424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206928, -0.000278, -0.978356,
		0.779804, 0.603954, 0.164761,
		0.590836, -0.797019, 0.125191,
		46.547638, 36.970795, 36.391979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.674229, 37.743206, 35.868450>,  <46.134052, 37.528709, 36.304348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.674229, 37.743206, 35.868450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.765411, 37.360249, 35.939373>,  <46.820122, 37.130474, 35.981926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.765411, 37.360249, 35.939373>,  <46.674229, 37.743206, 35.868450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.765411, 37.360249, 35.939373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340897, -0.092103, -0.935578,
		0.912045, 0.273714, 0.305376,
		0.227955, -0.957391, 0.177311,
		46.833797, 37.073032, 35.992565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.345463, 37.655727, 35.640091>,  <46.674229, 37.743206, 35.868450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.345463, 37.655727, 35.640091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.165005, 37.298897, 35.629715>,  <47.056728, 37.084801, 35.623489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.165005, 37.298897, 35.629715>,  <47.345463, 37.655727, 35.640091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.165005, 37.298897, 35.629715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273634, -0.110601, -0.955454,
		0.849464, -0.438149, 0.293999,
		-0.451148, -0.892072, -0.025941,
		47.029659, 37.031277, 35.621933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.723976, 37.198921, 35.317303>,  <47.345463, 37.655727, 35.640091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.723976, 37.198921, 35.317303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.359962, 37.043163, 35.260441>,  <47.141552, 36.949711, 35.226322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.359962, 37.043163, 35.260441>,  <47.723976, 37.198921, 35.317303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.359962, 37.043163, 35.260441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149676, 0.011140, -0.988672,
		0.386564, -0.921005, 0.048145,
		-0.910036, -0.389391, -0.142159,
		47.086952, 36.926346, 35.217793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.687866, 36.392185, 35.033386>,  <47.723976, 37.198921, 35.317303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.687866, 36.392185, 35.033386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402321, 36.647057, 34.917175>,  <47.230995, 36.799980, 34.847450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402321, 36.647057, 34.917175>,  <47.687866, 36.392185, 35.033386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.402321, 36.647057, 34.917175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256262, -0.148403, -0.955147,
		-0.651714, -0.756294, -0.057345,
		-0.713861, 0.637179, -0.290526,
		47.188164, 36.838211, 34.830017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.475136, 36.093105, 34.436642>,  <47.687866, 36.392185, 35.033386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.475136, 36.093105, 34.436642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.354038, 36.473396, 34.409908>,  <47.281380, 36.701569, 34.393867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.354038, 36.473396, 34.409908>,  <47.475136, 36.093105, 34.436642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.354038, 36.473396, 34.409908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366938, 0.051557, -0.928816,
		-0.879603, -0.305719, -0.364466,
		-0.302747, 0.950725, -0.066830,
		47.263214, 36.758614, 34.389858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.001240, 35.465569, 34.280075>,  <47.475136, 36.093105, 34.436642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.001240, 35.465569, 34.280075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.651310, 35.373333, 34.450493>,  <47.441353, 35.317993, 34.552746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.651310, 35.373333, 34.450493>,  <48.001240, 35.465569, 34.280075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.651310, 35.373333, 34.450493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480882, -0.519801, 0.706088,
		0.058646, 0.822580, 0.565618,
		-0.874822, -0.230586, 0.426048,
		47.388863, 35.304157, 34.578308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.077156, 35.411469, 35.044327>,  <48.001240, 35.465569, 34.280075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.077156, 35.411469, 35.044327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766102, 35.184025, 34.937019>,  <47.579468, 35.047558, 34.872635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766102, 35.184025, 34.937019>,  <48.077156, 35.411469, 35.044327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.766102, 35.184025, 34.937019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193546, -0.622473, 0.758332,
		-0.598183, 0.537785, 0.594109,
		-0.777636, -0.568609, -0.268266,
		47.532810, 35.013443, 34.856541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.427319, 32.815250, 45.925606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.037018, 32.902805, 45.926151>,  <35.802837, 32.955338, 45.926479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.037018, 32.902805, 45.926151>,  <36.427319, 32.815250, 45.925606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037018, 32.902805, 45.926151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062975, 0.286696, -0.955950,
		-0.209635, -0.932682, -0.293527,
		-0.975749, 0.218886, 0.001366,
		35.744293, 32.968472, 45.926559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235451, 32.627125, 45.265129>,  <36.427319, 32.815250, 45.925606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235451, 32.627125, 45.265129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.926903, 32.852924, 45.382652>,  <35.741772, 32.988403, 45.453167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.926903, 32.852924, 45.382652>,  <36.235451, 32.627125, 45.265129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926903, 32.852924, 45.382652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115768, 0.329501, -0.937031,
		-0.625766, -0.756813, -0.188817,
		-0.771372, 0.564503, 0.293805,
		35.695492, 33.022274, 45.470795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747738, 32.620865, 44.759785>,  <36.235451, 32.627125, 45.265129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747738, 32.620865, 44.759785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655354, 32.958736, 44.952934>,  <35.599922, 33.161461, 45.068825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655354, 32.958736, 44.952934>,  <35.747738, 32.620865, 44.759785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655354, 32.958736, 44.952934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124845, 0.466464, -0.875686,
		-0.964921, -0.262532, -0.002279,
		-0.230959, 0.844683, 0.482876,
		35.586067, 33.212143, 45.097797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061756, 32.886765, 44.431122>,  <35.747738, 32.620865, 44.759785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061756, 32.886765, 44.431122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244335, 33.199894, 44.600285>,  <35.353882, 33.387772, 44.701782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244335, 33.199894, 44.600285>,  <35.061756, 32.886765, 44.431122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244335, 33.199894, 44.600285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124655, 0.526882, -0.840748,
		-0.880976, 0.331038, 0.338075,
		0.456445, 0.782822, 0.422905,
		35.381268, 33.434742, 44.727158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701000, 33.453995, 44.233463>,  <35.061756, 32.886765, 44.431122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701000, 33.453995, 44.233463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.047073, 33.615723, 44.352104>,  <35.254719, 33.712761, 44.423290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.047073, 33.615723, 44.352104>,  <34.701000, 33.453995, 44.233463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047073, 33.615723, 44.352104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027280, 0.628572, -0.777273,
		-0.500708, 0.664394, 0.554861,
		0.865186, 0.404324, 0.296607,
		35.306629, 33.737019, 44.441086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609699, 34.228935, 44.141964>,  <34.701000, 33.453995, 44.233463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609699, 34.228935, 44.141964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005337, 34.177959, 44.171520>,  <35.242718, 34.147373, 44.189255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005337, 34.177959, 44.171520>,  <34.609699, 34.228935, 44.141964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005337, 34.177959, 44.171520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133115, 0.558318, -0.818878,
		0.063106, 0.819780, 0.569191,
		0.989090, -0.127444, 0.073891,
		35.302063, 34.139725, 44.193687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860744, 34.827396, 43.885460>,  <34.609699, 34.228935, 44.141964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860744, 34.827396, 43.885460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.185635, 34.595577, 43.858879>,  <35.380569, 34.456486, 43.842930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.185635, 34.595577, 43.858879>,  <34.860744, 34.827396, 43.885460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185635, 34.595577, 43.858879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207289, 0.393220, -0.895773,
		0.545275, 0.713793, 0.439517,
		0.812223, -0.579550, -0.066452,
		35.429302, 34.421711, 43.838943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419647, 35.265182, 43.743641>,  <34.860744, 34.827396, 43.885460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419647, 35.265182, 43.743641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.530407, 34.901825, 43.618324>,  <35.596863, 34.683811, 43.543133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.530407, 34.901825, 43.618324>,  <35.419647, 35.265182, 43.743641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530407, 34.901825, 43.618324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349775, 0.398959, -0.847637,
		0.894976, 0.125132, 0.428205,
		0.276903, -0.908391, -0.313291,
		35.613480, 34.629307, 43.524338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206593, 35.337616, 43.584667>,  <35.419647, 35.265182, 43.743641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206593, 35.337616, 43.584667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.007973, 35.056015, 43.381565>,  <35.888802, 34.887054, 43.259705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.007973, 35.056015, 43.381565>,  <36.206593, 35.337616, 43.584667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007973, 35.056015, 43.381565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482858, 0.262075, -0.835562,
		0.721308, -0.660075, 0.209799,
		-0.496551, -0.704001, -0.507760,
		35.859009, 34.844814, 43.229237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662247, 35.178600, 43.128708>,  <36.206593, 35.337616, 43.584667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662247, 35.178600, 43.128708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337364, 35.016804, 42.960564>,  <36.142433, 34.919724, 42.859676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337364, 35.016804, 42.960564>,  <36.662247, 35.178600, 43.128708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337364, 35.016804, 42.960564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387292, 0.164992, -0.907074,
		0.436263, -0.899534, 0.022649,
		-0.812207, -0.404495, -0.420362,
		36.093700, 34.895454, 42.834454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934452, 34.648685, 42.797390>,  <36.662247, 35.178600, 43.128708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934452, 34.648685, 42.797390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.568203, 34.690899, 42.642212>,  <36.348454, 34.716228, 42.549103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.568203, 34.690899, 42.642212>,  <36.934452, 34.648685, 42.797390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568203, 34.690899, 42.642212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389343, -0.007898, -0.921059,
		-0.100271, -0.994384, -0.033859,
		-0.915619, 0.105539, -0.387949,
		36.293518, 34.722561, 42.525826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903271, 34.181931, 42.191696>,  <36.934452, 34.648685, 42.797390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903271, 34.181931, 42.191696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.628811, 34.471169, 42.159847>,  <36.464134, 34.644711, 42.140739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.628811, 34.471169, 42.159847>,  <36.903271, 34.181931, 42.191696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628811, 34.471169, 42.159847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189400, 0.071894, -0.979265,
		-0.702375, -0.687000, -0.186283,
		-0.686147, 0.723092, -0.079621,
		36.422966, 34.688095, 42.135960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434711, 33.933193, 41.590168>,  <36.903271, 34.181931, 42.191696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434711, 33.933193, 41.590168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.398636, 34.328396, 41.640289>,  <36.376991, 34.565517, 41.670361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.398636, 34.328396, 41.640289>,  <36.434711, 33.933193, 41.590168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398636, 34.328396, 41.640289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161751, 0.138674, -0.977039,
		-0.982701, -0.067852, -0.172319,
		-0.090191, 0.988011, 0.125300,
		36.371578, 34.624798, 41.677879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004086, 34.169369, 41.059017>,  <36.434711, 33.933193, 41.590168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004086, 34.169369, 41.059017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.192684, 34.503601, 41.171791>,  <36.305843, 34.704140, 41.239456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.192684, 34.503601, 41.171791>,  <36.004086, 34.169369, 41.059017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192684, 34.503601, 41.171791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245927, 0.182435, -0.951965,
		-0.846881, 0.518187, -0.119474,
		0.471500, 0.835583, 0.281937,
		36.334133, 34.754276, 41.256371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037189, 34.547218, 40.393887>,  <36.004086, 34.169369, 41.059017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037189, 34.547218, 40.393887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.297626, 34.730453, 40.635956>,  <36.453888, 34.840393, 40.781197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.297626, 34.730453, 40.635956>,  <36.037189, 34.547218, 40.393887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297626, 34.730453, 40.635956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498005, 0.343860, -0.796085,
		-0.572768, 0.819706, -0.004242,
		0.651097, 0.458085, 0.605170,
		36.492954, 34.867878, 40.817505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053802, 35.106651, 40.167904>,  <36.037189, 34.547218, 40.393887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053802, 35.106651, 40.167904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.414482, 35.111847, 40.340771>,  <36.630890, 35.114964, 40.444492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.414482, 35.111847, 40.340771>,  <36.053802, 35.106651, 40.167904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414482, 35.111847, 40.340771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414949, 0.254803, -0.873437,
		-0.121466, 0.966906, 0.224365,
		0.901700, 0.012993, 0.432167,
		36.684994, 35.115746, 40.470421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330856, 35.705883, 39.820656>,  <36.053802, 35.106651, 40.167904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330856, 35.705883, 39.820656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638485, 35.500660, 39.973129>,  <36.823063, 35.377525, 40.064613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638485, 35.500660, 39.973129>,  <36.330856, 35.705883, 39.820656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638485, 35.500660, 39.973129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554113, 0.237937, -0.797712,
		0.318577, 0.824715, 0.467284,
		0.769069, -0.513061, 0.381184,
		36.869205, 35.346741, 40.087486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884502, 36.088276, 39.812622>,  <36.330856, 35.705883, 39.820656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884502, 36.088276, 39.812622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.046509, 35.722607, 39.806343>,  <37.143711, 35.503204, 39.802574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.046509, 35.722607, 39.806343>,  <36.884502, 36.088276, 39.812622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046509, 35.722607, 39.806343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679337, 0.312374, -0.664021,
		0.611937, 0.258271, 0.747549,
		0.405012, -0.914176, -0.015700,
		37.168011, 35.448353, 39.801632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484653, 36.293549, 39.632076>,  <36.884502, 36.088276, 39.812622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484653, 36.293549, 39.632076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.517658, 35.894913, 39.632648>,  <37.537460, 35.655731, 39.632992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.517658, 35.894913, 39.632648>,  <37.484653, 36.293549, 39.632076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517658, 35.894913, 39.632648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867105, 0.071084, -0.493027,
		0.491243, 0.041925, 0.870013,
		0.082514, -0.996589, 0.001434,
		37.542412, 35.595936, 39.633080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139774, 36.024494, 39.958138>,  <37.484653, 36.293549, 39.632076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139774, 36.024494, 39.958138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.031914, 35.784702, 39.656700>,  <37.967197, 35.640827, 39.475838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.031914, 35.784702, 39.656700>,  <38.139774, 36.024494, 39.958138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031914, 35.784702, 39.656700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901430, 0.118114, -0.416502,
		0.338697, -0.791623, 0.508544,
		-0.269647, -0.599484, -0.753597,
		37.951019, 35.604858, 39.430622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790215, 35.734097, 39.729473>,  <38.139774, 36.024494, 39.958138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790215, 35.734097, 39.729473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.551407, 35.666134, 39.415863>,  <38.408123, 35.625359, 39.227695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.551407, 35.666134, 39.415863>,  <38.790215, 35.734097, 39.729473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551407, 35.666134, 39.415863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778686, 0.112271, -0.617287,
		0.192901, -0.979044, 0.065272,
		-0.597023, -0.169902, -0.784026,
		38.372299, 35.615162, 39.180656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909733, 35.208149, 39.143349>,  <38.790215, 35.734097, 39.729473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909733, 35.208149, 39.143349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.150150, 35.048550, 38.866352>,  <39.294403, 34.952789, 38.700153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.150150, 35.048550, 38.866352>,  <38.909733, 35.208149, 39.143349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150150, 35.048550, 38.866352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473255, -0.520534, 0.710686,
		-0.644029, -0.754879, -0.124035,
		0.601047, -0.399002, -0.692489,
		39.330463, 34.928848, 38.658604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030731, 34.505791, 39.116829>,  <38.909733, 35.208149, 39.143349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030731, 34.505791, 39.116829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385307, 34.632778, 38.982105>,  <39.598053, 34.708969, 38.901272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385307, 34.632778, 38.982105>,  <39.030731, 34.505791, 39.116829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385307, 34.632778, 38.982105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462847, -0.605761, 0.647168,
		0.001428, -0.729566, -0.683909,
		0.886437, 0.317469, -0.336812,
		39.651237, 34.728020, 38.881062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377445, 33.959621, 39.037365>,  <39.030731, 34.505791, 39.116829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377445, 33.959621, 39.037365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.652088, 34.247421, 39.079121>,  <39.816872, 34.420101, 39.104172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.652088, 34.247421, 39.079121>,  <39.377445, 33.959621, 39.037365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652088, 34.247421, 39.079121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390103, -0.485753, 0.782217,
		0.613511, -0.496351, -0.614199,
		0.686603, 0.719500, 0.104386,
		39.858070, 34.463272, 39.110435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000931, 33.645191, 39.048908>,  <39.377445, 33.959621, 39.037365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000931, 33.645191, 39.048908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.046478, 33.996773, 39.234150>,  <40.073807, 34.207722, 39.345295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.046478, 33.996773, 39.234150>,  <40.000931, 33.645191, 39.048908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046478, 33.996773, 39.234150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394754, -0.467788, 0.790787,
		0.911704, 0.092769, -0.400237,
		0.113866, 0.878958, 0.463106,
		40.080639, 34.260460, 39.373081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629745, 33.474289, 39.439610>,  <40.000931, 33.645191, 39.048908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629745, 33.474289, 39.439610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.482822, 33.820244, 39.576462>,  <40.394669, 34.027817, 39.658573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.482822, 33.820244, 39.576462>,  <40.629745, 33.474289, 39.439610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482822, 33.820244, 39.576462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250722, -0.262157, 0.931887,
		0.895670, 0.428068, -0.120554,
		-0.367307, 0.864888, 0.342132,
		40.372631, 34.079712, 39.679100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149956, 33.666515, 39.950279>,  <40.629745, 33.474289, 39.439610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149956, 33.666515, 39.950279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.799507, 33.838818, 40.036861>,  <40.589237, 33.942200, 40.088810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.799507, 33.838818, 40.036861>,  <41.149956, 33.666515, 39.950279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799507, 33.838818, 40.036861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092730, -0.290042, 0.952511,
		0.473083, 0.854590, 0.214169,
		-0.876124, 0.430757, 0.216460,
		40.536671, 33.968044, 40.101799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303925, 33.753334, 40.757679>,  <41.149956, 33.666515, 39.950279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303925, 33.753334, 40.757679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.927750, 33.829807, 40.645233>,  <40.702045, 33.875690, 40.577766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.927750, 33.829807, 40.645233>,  <41.303925, 33.753334, 40.757679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927750, 33.829807, 40.645233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311898, -0.156213, 0.937186,
		0.135265, 0.969043, 0.206540,
		-0.940438, 0.191188, -0.281112,
		40.645618, 33.887165, 40.560898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127331, 34.138741, 41.246529>,  <41.303925, 33.753334, 40.757679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127331, 34.138741, 41.246529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.791164, 33.975307, 41.104115>,  <40.589462, 33.877247, 41.018665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.791164, 33.975307, 41.104115>,  <41.127331, 34.138741, 41.246529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791164, 33.975307, 41.104115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262403, -0.268029, 0.926987,
		-0.474174, 0.872482, 0.118044,
		-0.840419, -0.408578, -0.356034,
		40.539040, 33.852734, 40.997303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640339, 34.204308, 41.878044>,  <41.127331, 34.138741, 41.246529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640339, 34.204308, 41.878044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.471893, 33.940357, 41.629131>,  <40.370827, 33.781986, 41.479782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.471893, 33.940357, 41.629131>,  <40.640339, 34.204308, 41.878044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471893, 33.940357, 41.629131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494294, -0.408285, 0.767448,
		-0.760486, 0.630771, -0.154237,
		-0.421111, -0.659872, -0.622281,
		40.345558, 33.742397, 41.442448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985466, 34.248158, 41.984749>,  <40.640339, 34.204308, 41.878044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985466, 34.248158, 41.984749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.045246, 33.871643, 41.863659>,  <40.081116, 33.645733, 41.791004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.045246, 33.871643, 41.863659>,  <39.985466, 34.248158, 41.984749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045246, 33.871643, 41.863659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555928, -0.333184, 0.761533,
		-0.817685, 0.054484, -0.573082,
		0.149451, -0.941286, -0.302728,
		40.090080, 33.589256, 41.772839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369053, 33.897427, 42.092377>,  <39.985466, 34.248158, 41.984749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369053, 33.897427, 42.092377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.620579, 33.596279, 42.014629>,  <39.771496, 33.415592, 41.967983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.620579, 33.596279, 42.014629>,  <39.369053, 33.897427, 42.092377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620579, 33.596279, 42.014629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486145, -0.575758, 0.657393,
		-0.606841, -0.318887, -0.728049,
		0.628814, -0.752870, -0.194368,
		39.809223, 33.370419, 41.956318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923508, 33.228447, 42.026829>,  <39.369053, 33.897427, 42.092377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923508, 33.228447, 42.026829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.296577, 33.124413, 42.126812>,  <39.520420, 33.061993, 42.186802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.296577, 33.124413, 42.126812>,  <38.923508, 33.228447, 42.026829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296577, 33.124413, 42.126812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352419, -0.509165, 0.785208,
		-0.076949, -0.820432, -0.566543,
		0.932674, -0.260081, 0.249957,
		39.576378, 33.046387, 42.201797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738251, 32.654285, 42.323093>,  <38.923508, 33.228447, 42.026829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738251, 32.654285, 42.323093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.110207, 32.727921, 42.450485>,  <39.333378, 32.772102, 42.526920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.110207, 32.727921, 42.450485>,  <38.738251, 32.654285, 42.323093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110207, 32.727921, 42.450485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186418, -0.510543, 0.839401,
		0.317116, -0.839916, -0.440430,
		0.929885, 0.184084, 0.318477,
		39.389172, 32.783146, 42.546028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950478, 32.006367, 42.556335>,  <38.738251, 32.654285, 42.323093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950478, 32.006367, 42.556335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.144146, 32.312542, 42.725891>,  <39.260345, 32.496246, 42.827625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.144146, 32.312542, 42.725891>,  <38.950478, 32.006367, 42.556335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144146, 32.312542, 42.725891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044351, -0.462362, 0.885581,
		0.873850, -0.447571, -0.189913,
		0.484169, 0.765442, 0.423885,
		39.289398, 32.542175, 42.853058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333759, 31.701040, 43.062740>,  <38.950478, 32.006367, 42.556335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333759, 31.701040, 43.062740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.368515, 32.082455, 43.178127>,  <39.389370, 32.311302, 43.247360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.368515, 32.082455, 43.178127>,  <39.333759, 31.701040, 43.062740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368515, 32.082455, 43.178127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057238, -0.293865, 0.954132,
		0.994572, -0.066395, -0.080113,
		0.086893, 0.953538, 0.288469,
		39.394585, 32.368515, 43.264668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742416, 31.723652, 43.730190>,  <39.333759, 31.701040, 43.062740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742416, 31.723652, 43.730190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.532753, 32.063858, 43.747543>,  <39.406956, 32.267982, 43.757954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.532753, 32.063858, 43.747543>,  <39.742416, 31.723652, 43.730190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532753, 32.063858, 43.747543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062389, -0.089152, 0.994062,
		0.849335, 0.518335, 0.099792,
		-0.524154, 0.850518, 0.043381,
		39.375507, 32.319012, 43.760559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998756, 32.167225, 44.356472>,  <39.742416, 31.723652, 43.730190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998756, 32.167225, 44.356472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.636497, 32.314190, 44.271805>,  <39.419140, 32.402367, 44.221004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.636497, 32.314190, 44.271805>,  <39.998756, 32.167225, 44.356472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636497, 32.314190, 44.271805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202220, 0.064525, 0.977212,
		0.372695, 0.927818, 0.015860,
		-0.905652, 0.367409, -0.211671,
		39.364803, 32.424412, 44.208302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885273, 32.899399, 44.670921>,  <39.998756, 32.167225, 44.356472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885273, 32.899399, 44.670921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.520180, 32.750229, 44.604164>,  <39.301125, 32.660728, 44.564110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.520180, 32.750229, 44.604164>,  <39.885273, 32.899399, 44.670921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520180, 32.750229, 44.604164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208888, 0.074889, 0.975068,
		-0.351128, 0.924835, -0.146253,
		-0.912730, -0.372924, -0.166891,
		39.246361, 32.638351, 44.554096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342224, 33.405449, 44.919559>,  <39.885273, 32.899399, 44.670921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342224, 33.405449, 44.919559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193226, 33.034344, 44.910610>,  <39.103828, 32.811680, 44.905243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193226, 33.034344, 44.910610>,  <39.342224, 33.405449, 44.919559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193226, 33.034344, 44.910610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453916, 0.161115, 0.876357,
		-0.809448, 0.336595, -0.481142,
		-0.372496, -0.927764, -0.022372,
		39.081478, 32.756016, 44.903900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.067513, 33.402962, 45.284546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.276215, 33.064682, 45.239704>,  <38.401436, 32.861713, 45.212799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.276215, 33.064682, 45.239704>,  <38.067513, 33.402962, 45.284546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276215, 33.064682, 45.239704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466602, -0.392908, 0.792405,
		-0.714182, -0.361133, -0.599606,
		0.521753, -0.845699, -0.112102,
		38.432739, 32.810974, 45.206074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653751, 32.893002, 45.171101>,  <38.067513, 33.402962, 45.284546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653751, 32.893002, 45.171101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967403, 32.707844, 45.336441>,  <38.155594, 32.596748, 45.435646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967403, 32.707844, 45.336441>,  <37.653751, 32.893002, 45.171101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967403, 32.707844, 45.336441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602836, -0.409953, 0.684490,
		-0.147392, -0.785917, -0.600509,
		0.784133, -0.462897, 0.413356,
		38.202644, 32.568974, 45.460449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404949, 32.235046, 45.493759>,  <37.653751, 32.893002, 45.171101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404949, 32.235046, 45.493759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.767231, 32.246346, 45.662949>,  <37.984600, 32.253124, 45.764462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.767231, 32.246346, 45.662949>,  <37.404949, 32.235046, 45.493759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767231, 32.246346, 45.662949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383393, -0.371140, 0.845733,
		0.180875, -0.928147, -0.325311,
		0.905701, 0.028250, 0.422975,
		38.038940, 32.254822, 45.789841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287056, 31.716173, 45.908070>,  <37.404949, 32.235046, 45.493759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287056, 31.716173, 45.908070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622639, 31.879768, 46.051670>,  <37.823986, 31.977926, 46.137829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622639, 31.879768, 46.051670>,  <37.287056, 31.716173, 45.908070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622639, 31.879768, 46.051670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301727, -0.199427, 0.932304,
		0.452897, -0.890481, -0.043907,
		0.838955, 0.408989, 0.359002,
		37.874325, 32.002464, 46.159370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641918, 31.210094, 46.402027>,  <37.287056, 31.716173, 45.908070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641918, 31.210094, 46.402027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.764633, 31.578640, 46.497501>,  <37.838261, 31.799767, 46.554787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.764633, 31.578640, 46.497501>,  <37.641918, 31.210094, 46.402027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764633, 31.578640, 46.497501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159194, -0.197572, 0.967276,
		0.938371, -0.334743, 0.086064,
		0.306785, 0.921364, 0.238685,
		37.856670, 31.855049, 46.569107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163101, 31.100904, 46.945595>,  <37.641918, 31.210094, 46.402027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163101, 31.100904, 46.945595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.046871, 31.482897, 46.969521>,  <37.977135, 31.712091, 46.983875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.046871, 31.482897, 46.969521>,  <38.163101, 31.100904, 46.945595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046871, 31.482897, 46.969521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177251, -0.115156, 0.977405,
		0.940292, 0.273405, 0.202733,
		-0.290573, 0.954981, 0.059819,
		37.959698, 31.769392, 46.987465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564713, 31.335907, 47.418659>,  <38.163101, 31.100904, 46.945595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564713, 31.335907, 47.418659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.267830, 31.602709, 47.392639>,  <38.089699, 31.762791, 47.377029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.267830, 31.602709, 47.392639>,  <38.564713, 31.335907, 47.418659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267830, 31.602709, 47.392639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162610, -0.085077, 0.983016,
		0.650142, 0.740180, 0.171606,
		-0.742209, 0.667005, -0.065048,
		38.045166, 31.802811, 47.373123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736668, 31.633699, 47.990536>,  <38.564713, 31.335907, 47.418659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736668, 31.633699, 47.990536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367393, 31.755413, 47.896603>,  <38.145828, 31.828442, 47.840244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367393, 31.755413, 47.896603>,  <38.736668, 31.633699, 47.990536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367393, 31.755413, 47.896603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265243, -0.062174, 0.962175,
		0.278174, 0.950550, 0.138107,
		-0.923182, 0.304284, -0.234831,
		38.090439, 31.846699, 47.826153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468174, 32.106216, 48.559338>,  <38.736668, 31.633699, 47.990536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468174, 32.106216, 48.559338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132187, 31.979969, 48.382778>,  <37.930595, 31.904222, 48.276840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132187, 31.979969, 48.382778>,  <38.468174, 32.106216, 48.559338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132187, 31.979969, 48.382778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435841, -0.092167, 0.895292,
		-0.323249, 0.944401, -0.060140,
		-0.839972, -0.315614, -0.441402,
		37.880196, 31.885284, 48.250359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820148, 32.575363, 48.755638>,  <38.468174, 32.106216, 48.559338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820148, 32.575363, 48.755638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717804, 32.200726, 48.659859>,  <37.656399, 31.975945, 48.602390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717804, 32.200726, 48.659859>,  <37.820148, 32.575363, 48.755638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717804, 32.200726, 48.659859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476918, -0.093158, 0.873997,
		-0.840883, 0.337819, -0.422841,
		-0.255862, -0.936589, -0.239446,
		37.641045, 31.919748, 48.588024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327965, 32.336876, 49.178688>,  <37.820148, 32.575363, 48.755638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327965, 32.336876, 49.178688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385014, 31.960953, 49.054482>,  <37.419243, 31.735399, 48.979958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385014, 31.960953, 49.054482>,  <37.327965, 32.336876, 49.178688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385014, 31.960953, 49.054482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408764, -0.341650, 0.846278,
		-0.901426, 0.006227, -0.432888,
		0.142627, -0.939807, -0.310518,
		37.427803, 31.679010, 48.961327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802334, 31.886930, 49.515316>,  <37.327965, 32.336876, 49.178688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802334, 31.886930, 49.515316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.105629, 31.645657, 49.416328>,  <37.287605, 31.500893, 49.356934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.105629, 31.645657, 49.416328>,  <36.802334, 31.886930, 49.515316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105629, 31.645657, 49.416328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140660, -0.521975, 0.841283,
		-0.636624, -0.603083, -0.480625,
		0.758237, -0.603186, -0.247472,
		37.333099, 31.464701, 49.342087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531151, 31.191442, 49.557964>,  <36.802334, 31.886930, 49.515316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531151, 31.191442, 49.557964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.925228, 31.123022, 49.562592>,  <37.161674, 31.081970, 49.565369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.925228, 31.123022, 49.562592>,  <36.531151, 31.191442, 49.557964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925228, 31.123022, 49.562592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126414, -0.679220, 0.722966,
		-0.115810, -0.713724, -0.690787,
		0.985194, -0.171052, 0.011564,
		37.220787, 31.071707, 49.566059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535801, 30.553709, 49.685326>,  <36.531151, 31.191442, 49.557964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535801, 30.553709, 49.685326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.916435, 30.656185, 49.753273>,  <37.144814, 30.717670, 49.794041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.916435, 30.656185, 49.753273>,  <36.535801, 30.553709, 49.685326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916435, 30.656185, 49.753273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062121, -0.701482, 0.709974,
		0.301048, -0.665048, -0.683434,
		0.951583, 0.256192, 0.169866,
		37.201912, 30.733042, 49.804234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953781, 29.894245, 49.666416>,  <36.535801, 30.553709, 49.685326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953781, 29.894245, 49.666416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118458, 30.181112, 49.891335>,  <37.217262, 30.353233, 50.026287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118458, 30.181112, 49.891335>,  <36.953781, 29.894245, 49.666416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118458, 30.181112, 49.891335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297993, -0.689033, 0.660632,
		0.861228, -0.104413, -0.497378,
		0.411688, 0.717169, 0.562300,
		37.241962, 30.396263, 50.060024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380314, 29.566597, 50.013439>,  <36.953781, 29.894245, 49.666416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380314, 29.566597, 50.013439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418743, 29.909576, 50.215645>,  <37.441799, 30.115364, 50.336967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418743, 29.909576, 50.215645>,  <37.380314, 29.566597, 50.013439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418743, 29.909576, 50.215645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287552, -0.510123, 0.810610,
		0.952934, 0.067485, -0.295571,
		0.096074, 0.857450, 0.505519,
		37.447567, 30.166811, 50.367302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039803, 29.520012, 50.412872>,  <37.380314, 29.566597, 50.013439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039803, 29.520012, 50.412872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.804821, 29.774532, 50.612881>,  <37.663834, 29.927244, 50.732887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.804821, 29.774532, 50.612881>,  <38.039803, 29.520012, 50.412872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804821, 29.774532, 50.612881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218654, -0.470092, 0.855104,
		0.779160, 0.611665, 0.137027,
		-0.587453, 0.636301, 0.500020,
		37.628586, 29.965424, 50.762886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291241, 29.378407, 51.108768>,  <38.039803, 29.520012, 50.412872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291241, 29.378407, 51.108768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968719, 29.608240, 51.164963>,  <37.775208, 29.746140, 51.198681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968719, 29.608240, 51.164963>,  <38.291241, 29.378407, 51.108768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968719, 29.608240, 51.164963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161564, -0.442410, 0.882139,
		0.569016, 0.688570, 0.449547,
		-0.806299, 0.574582, 0.140490,
		37.726830, 29.780615, 51.207111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304325, 29.403204, 51.790176>,  <38.291241, 29.378407, 51.108768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304325, 29.403204, 51.790176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.925667, 29.505358, 51.711540>,  <37.698471, 29.566650, 51.664360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.925667, 29.505358, 51.711540>,  <38.304325, 29.403204, 51.790176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925667, 29.505358, 51.711540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302095, -0.490609, 0.817338,
		0.112285, 0.833116, 0.541581,
		-0.946642, 0.255383, -0.196592,
		37.641674, 29.581972, 51.652561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048595, 29.745739, 52.363461>,  <38.304325, 29.403204, 51.790176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048595, 29.745739, 52.363461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746670, 29.580833, 52.159386>,  <37.565514, 29.481890, 52.036942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746670, 29.580833, 52.159386>,  <38.048595, 29.745739, 52.363461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746670, 29.580833, 52.159386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258977, -0.527309, 0.809244,
		-0.602650, 0.742957, 0.291253,
		-0.754814, -0.412263, -0.510192,
		37.520226, 29.457155, 52.006329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485844, 29.838411, 52.687431>,  <38.048595, 29.745739, 52.363461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485844, 29.838411, 52.687431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445942, 29.518320, 52.450893>,  <37.422001, 29.326265, 52.308971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445942, 29.518320, 52.450893>,  <37.485844, 29.838411, 52.687431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445942, 29.518320, 52.450893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232985, -0.558999, 0.795763,
		-0.967351, 0.217154, -0.130678,
		-0.099754, -0.800228, -0.591341,
		37.416016, 29.278252, 52.273491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761002, 29.476664, 52.764324>,  <37.485844, 29.838411, 52.687431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761002, 29.476664, 52.764324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069016, 29.230227, 52.698021>,  <37.253826, 29.082365, 52.658241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069016, 29.230227, 52.698021>,  <36.761002, 29.476664, 52.764324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069016, 29.230227, 52.698021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266509, -0.546669, 0.793805,
		-0.579670, -0.567083, -0.585149,
		0.770036, -0.616092, -0.165756,
		37.300026, 29.045399, 52.648296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370247, 29.927376, 53.168922>,  <36.761002, 29.476664, 52.764324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370247, 29.927376, 53.168922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.586658, 29.757183, 53.459095>,  <36.716507, 29.655067, 53.633198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.586658, 29.757183, 53.459095>,  <36.370247, 29.927376, 53.168922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586658, 29.757183, 53.459095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633232, 0.361551, 0.684323,
		-0.553448, -0.829606, -0.073818,
		0.541029, -0.425481, 0.725433,
		36.748966, 29.629539, 53.676723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929485, 29.549187, 53.430408>,  <36.370247, 29.927376, 53.168922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929485, 29.549187, 53.430408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.194817, 29.613037, 53.722851>,  <36.354015, 29.651348, 53.898315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.194817, 29.613037, 53.722851>,  <35.929485, 29.549187, 53.430408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194817, 29.613037, 53.722851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708308, 0.449136, 0.544588,
		-0.241435, -0.879088, 0.410990,
		0.663331, 0.159625, 0.731103,
		36.393818, 29.660925, 53.942181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634098, 29.555929, 52.755466>,  <35.929485, 29.549187, 53.430408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634098, 29.555929, 52.755466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264660, 29.630264, 52.889595>,  <35.042999, 29.674866, 52.970074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264660, 29.630264, 52.889595>,  <35.634098, 29.555929, 52.755466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264660, 29.630264, 52.889595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224448, 0.446982, -0.865927,
		-0.310807, -0.875026, -0.371118,
		-0.923592, 0.185840, 0.335323,
		34.987583, 29.686016, 52.990192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238308, 29.209944, 52.305794>,  <35.634098, 29.555929, 52.755466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238308, 29.209944, 52.305794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.016800, 29.498875, 52.471481>,  <34.883896, 29.672234, 52.570896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.016800, 29.498875, 52.471481>,  <35.238308, 29.209944, 52.305794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016800, 29.498875, 52.471481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113034, 0.427648, -0.896850,
		-0.824961, -0.543471, -0.155172,
		-0.553771, 0.722327, 0.414224,
		34.850670, 29.715572, 52.595749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636780, 29.360413, 51.817463>,  <35.238308, 29.209944, 52.305794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636780, 29.360413, 51.817463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.595913, 29.677870, 52.057358>,  <34.571392, 29.868345, 52.201294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.595913, 29.677870, 52.057358>,  <34.636780, 29.360413, 51.817463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595913, 29.677870, 52.057358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290852, 0.552718, -0.780966,
		-0.951297, -0.254227, 0.174362,
		-0.102170, 0.793644, 0.599741,
		34.565262, 29.915962, 52.237282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990925, 29.580915, 51.628307>,  <34.636780, 29.360413, 51.817463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990925, 29.580915, 51.628307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.204372, 29.875599, 51.794445>,  <34.332439, 30.052410, 51.894127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.204372, 29.875599, 51.794445>,  <33.990925, 29.580915, 51.628307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204372, 29.875599, 51.794445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110414, 0.547592, -0.829428,
		-0.838487, 0.396738, 0.373548,
		0.533618, 0.736710, 0.415344,
		34.364456, 30.096611, 51.919048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725334, 30.214516, 51.436111>,  <33.990925, 29.580915, 51.628307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725334, 30.214516, 51.436111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.080215, 30.339762, 51.571655>,  <34.293144, 30.414909, 51.652981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.080215, 30.339762, 51.571655>,  <33.725334, 30.214516, 51.436111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080215, 30.339762, 51.571655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105636, 0.577092, -0.809819,
		-0.449119, 0.754271, 0.478923,
		0.887205, 0.313113, 0.338861,
		34.346378, 30.433695, 51.673313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724380, 30.923790, 51.396130>,  <33.725334, 30.214516, 51.436111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724380, 30.923790, 51.396130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.110146, 30.818747, 51.383869>,  <34.341606, 30.755720, 51.376511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.110146, 30.818747, 51.383869>,  <33.724380, 30.923790, 51.396130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110146, 30.818747, 51.383869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111644, 0.509593, -0.853142,
		0.239662, 0.819361, 0.520778,
		0.964416, -0.262607, -0.030654,
		34.399471, 30.739964, 51.374672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123817, 31.511635, 51.180244>,  <33.724380, 30.923790, 51.396130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123817, 31.511635, 51.180244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353207, 31.199142, 51.081608>,  <34.490841, 31.011646, 51.022427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353207, 31.199142, 51.081608>,  <34.123817, 31.511635, 51.180244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353207, 31.199142, 51.081608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160436, 0.402277, -0.901351,
		0.803363, 0.477336, 0.356032,
		0.573470, -0.781232, -0.246593,
		34.525249, 30.964773, 51.007629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505486, 31.831121, 50.657528>,  <34.123817, 31.511635, 51.180244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505486, 31.831121, 50.657528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.592640, 31.446648, 50.589825>,  <34.644932, 31.215963, 50.549202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.592640, 31.446648, 50.589825>,  <34.505486, 31.831121, 50.657528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592640, 31.446648, 50.589825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180268, 0.210078, -0.960922,
		0.959182, 0.178856, 0.219044,
		0.217883, -0.961186, -0.169261,
		34.658005, 31.158293, 50.539047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123257, 31.906996, 50.223949>,  <34.505486, 31.831121, 50.657528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123257, 31.906996, 50.223949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993515, 31.530628, 50.185036>,  <34.915672, 31.304808, 50.161686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993515, 31.530628, 50.185036>,  <35.123257, 31.906996, 50.223949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993515, 31.530628, 50.185036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276105, 0.004195, -0.961119,
		0.904744, -0.338602, 0.258432,
		-0.324352, -0.940921, -0.097285,
		34.896210, 31.248352, 50.155849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706928, 31.463505, 50.003658>,  <35.123257, 31.906996, 50.223949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706928, 31.463505, 50.003658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.359383, 31.302744, 49.888042>,  <35.150856, 31.206287, 49.818672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.359383, 31.302744, 49.888042>,  <35.706928, 31.463505, 50.003658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359383, 31.302744, 49.888042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325953, -0.025012, -0.945055,
		0.372593, -0.915340, 0.152734,
		-0.868867, -0.401905, -0.289038,
		35.098724, 31.182173, 49.801331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854195, 30.914728, 49.500275>,  <35.706928, 31.463505, 50.003658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854195, 30.914728, 49.500275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471539, 31.017126, 49.444706>,  <35.241943, 31.078564, 49.411366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471539, 31.017126, 49.444706>,  <35.854195, 30.914728, 49.500275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471539, 31.017126, 49.444706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201870, 0.238945, -0.949818,
		-0.209953, -0.936682, -0.280263,
		-0.956644, 0.255993, -0.138921,
		35.184544, 31.093924, 49.403030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499256, 30.536657, 48.903652>,  <35.854195, 30.914728, 49.500275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499256, 30.536657, 48.903652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.309723, 30.884146, 48.961357>,  <35.196003, 31.092638, 48.995979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.309723, 30.884146, 48.961357>,  <35.499256, 30.536657, 48.903652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309723, 30.884146, 48.961357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032364, 0.180892, -0.982970,
		-0.880022, -0.461090, -0.113827,
		-0.473828, 0.868720, 0.144266,
		35.167576, 31.144762, 49.004639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234341, 30.677078, 48.238174>,  <35.499256, 30.536657, 48.903652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234341, 30.677078, 48.238174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.160915, 31.019022, 48.432297>,  <35.116859, 31.224188, 48.548771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.160915, 31.019022, 48.432297>,  <35.234341, 30.677078, 48.238174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160915, 31.019022, 48.432297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182009, 0.514715, -0.837819,
		-0.966010, -0.065467, -0.250077,
		-0.183568, 0.854858, 0.485304,
		35.105846, 31.275480, 48.577888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774883, 31.047581, 47.806595>,  <35.234341, 30.677078, 48.238174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774883, 31.047581, 47.806595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.931580, 31.316469, 48.057880>,  <35.025597, 31.477802, 48.208652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.931580, 31.316469, 48.057880>,  <34.774883, 31.047581, 47.806595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931580, 31.316469, 48.057880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000952, 0.682491, -0.730894,
		-0.920073, 0.286922, 0.266723,
		0.391746, 0.672222, 0.628215,
		35.049103, 31.518135, 48.246346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467907, 31.623034, 47.714764>,  <34.774883, 31.047581, 47.806595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467907, 31.623034, 47.714764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809826, 31.752535, 47.877003>,  <35.014977, 31.830235, 47.974346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809826, 31.752535, 47.877003>,  <34.467907, 31.623034, 47.714764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809826, 31.752535, 47.877003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130244, 0.622708, -0.771538,
		-0.502357, 0.712333, 0.490121,
		0.854795, 0.323752, 0.405599,
		35.066265, 31.849661, 47.998684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458054, 32.359646, 47.574066>,  <34.467907, 31.623034, 47.714764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458054, 32.359646, 47.574066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.833450, 32.279606, 47.686626>,  <35.058689, 32.231583, 47.754162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.833450, 32.279606, 47.686626>,  <34.458054, 32.359646, 47.574066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833450, 32.279606, 47.686626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334594, 0.728286, -0.598035,
		-0.085272, 0.655408, 0.750446,
		0.938496, -0.200099, 0.281398,
		35.114998, 32.219578, 47.771046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807213, 33.025505, 47.806110>,  <34.458054, 32.359646, 47.574066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807213, 33.025505, 47.806110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.079952, 32.760948, 47.681114>,  <35.243595, 32.602215, 47.606117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.079952, 32.760948, 47.681114>,  <34.807213, 33.025505, 47.806110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079952, 32.760948, 47.681114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270734, 0.625026, -0.732152,
		0.679551, 0.414613, 0.605232,
		0.681845, -0.661391, -0.312487,
		35.284508, 32.562531, 47.587368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342724, 33.454201, 47.565113>,  <34.807213, 33.025505, 47.806110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342724, 33.454201, 47.565113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.413239, 33.110806, 47.372482>,  <35.455547, 32.904766, 47.256905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.413239, 33.110806, 47.372482>,  <35.342724, 33.454201, 47.565113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413239, 33.110806, 47.372482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073477, 0.499349, -0.863280,
		0.981592, 0.116801, 0.151108,
		0.176288, -0.858492, -0.481575,
		35.466125, 32.853256, 47.228008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852955, 33.547527, 47.071274>,  <35.342724, 33.454201, 47.565113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852955, 33.547527, 47.071274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.685192, 33.223454, 46.907475>,  <35.584534, 33.029007, 46.809193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.685192, 33.223454, 46.907475>,  <35.852955, 33.547527, 47.071274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685192, 33.223454, 46.907475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127585, 0.394009, -0.910209,
		0.898788, -0.433995, -0.061883,
		-0.419408, -0.810189, -0.409501,
		35.559368, 32.980396, 46.784626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386749, 33.348969, 46.538593>,  <35.852955, 33.547527, 47.071274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386749, 33.348969, 46.538593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.030357, 33.184448, 46.461674>,  <35.816521, 33.085735, 46.415524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.030357, 33.184448, 46.461674>,  <36.386749, 33.348969, 46.538593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030357, 33.184448, 46.461674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136722, 0.160823, -0.977468,
		0.432961, -0.897199, -0.087056,
		-0.890984, -0.411303, -0.192297,
		35.763062, 33.061058, 46.403984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.728069, 39.865292, 40.645569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.374104, 39.687176, 40.700188>,  <41.161724, 39.580307, 40.732960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.374104, 39.687176, 40.700188>,  <41.728069, 39.865292, 40.645569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374104, 39.687176, 40.700188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384115, -0.863535, -0.326746,
		0.263410, -0.236691, 0.935196,
		-0.884913, -0.445291, 0.136547,
		41.108631, 39.553589, 40.741154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917320, 39.281502, 40.839256>,  <41.728069, 39.865292, 40.645569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917320, 39.281502, 40.839256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.532970, 39.218674, 40.748005>,  <41.302361, 39.180977, 40.693253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.532970, 39.218674, 40.748005>,  <41.917320, 39.281502, 40.839256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532970, 39.218674, 40.748005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256383, -0.816023, -0.518049,
		-0.104793, -0.556271, 0.824367,
		-0.960878, -0.157066, -0.228132,
		41.244705, 39.171555, 40.679565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781170, 38.513325, 40.941086>,  <41.917320, 39.281502, 40.839256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781170, 38.513325, 40.941086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.499756, 38.624718, 40.679554>,  <41.330910, 38.691551, 40.522636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.499756, 38.624718, 40.679554>,  <41.781170, 38.513325, 40.941086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499756, 38.624718, 40.679554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268360, -0.747805, -0.607265,
		-0.658045, -0.602693, 0.451374,
		-0.703534, 0.278477, -0.653828,
		41.288696, 38.708260, 40.483406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484795, 37.890198, 40.677380>,  <41.781170, 38.513325, 40.941086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484795, 37.890198, 40.677380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.390675, 38.165695, 40.403072>,  <41.334202, 38.330994, 40.238487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.390675, 38.165695, 40.403072>,  <41.484795, 37.890198, 40.677380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390675, 38.165695, 40.403072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232239, -0.645294, -0.727778,
		-0.943769, -0.330506, -0.008116,
		-0.235298, 0.688739, -0.685765,
		41.320084, 38.372318, 40.197342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051941, 37.544689, 40.286007>,  <41.484795, 37.890198, 40.677380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051941, 37.544689, 40.286007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.168495, 37.851448, 40.057285>,  <41.238426, 38.035503, 39.920052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.168495, 37.851448, 40.057285>,  <41.051941, 37.544689, 40.286007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168495, 37.851448, 40.057285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218306, -0.635279, -0.740786,
		-0.931363, 0.091025, -0.352529,
		0.291384, 0.766900, -0.571804,
		41.255909, 38.081516, 39.885746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685928, 37.524719, 39.683918>,  <41.051941, 37.544689, 40.286007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685928, 37.524719, 39.683918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.025112, 37.722862, 39.608467>,  <41.228622, 37.841747, 39.563194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.025112, 37.722862, 39.608467>,  <40.685928, 37.524719, 39.683918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025112, 37.722862, 39.608467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189243, -0.615343, -0.765206,
		-0.495121, 0.613170, -0.615531,
		0.847964, 0.495354, -0.188631,
		41.279503, 37.871468, 39.551876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669071, 37.464260, 39.004471>,  <40.685928, 37.524719, 39.683918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669071, 37.464260, 39.004471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.043896, 37.579773, 39.082970>,  <41.268791, 37.649082, 39.130070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.043896, 37.579773, 39.082970>,  <40.669071, 37.464260, 39.004471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043896, 37.579773, 39.082970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332675, -0.567810, -0.752941,
		-0.106004, 0.770842, -0.628145,
		0.937065, 0.288783, 0.196250,
		41.325016, 37.666409, 39.141846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959980, 37.684505, 38.402229>,  <40.669071, 37.464260, 39.004471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959980, 37.684505, 38.402229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.276932, 37.604378, 38.632713>,  <41.467102, 37.556301, 38.771004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.276932, 37.604378, 38.632713>,  <40.959980, 37.684505, 38.402229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276932, 37.604378, 38.632713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440885, -0.464768, -0.767862,
		0.421616, 0.862476, -0.279955,
		0.792377, -0.200315, 0.576206,
		41.514645, 37.544285, 38.805576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453346, 37.735279, 37.920597>,  <40.959980, 37.684505, 38.402229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453346, 37.735279, 37.920597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.637985, 37.539097, 38.216267>,  <41.748768, 37.421387, 38.393669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.637985, 37.539097, 38.216267>,  <41.453346, 37.735279, 37.920597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637985, 37.539097, 38.216267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436101, -0.600150, -0.670549,
		0.772491, 0.631879, -0.063140,
		0.461599, -0.490458, 0.739173,
		41.776466, 37.391960, 38.438019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133514, 37.567135, 37.528507>,  <41.453346, 37.735279, 37.920597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133514, 37.567135, 37.528507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.133583, 37.330368, 37.850906>,  <42.133625, 37.188309, 38.044346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.133583, 37.330368, 37.850906>,  <42.133514, 37.567135, 37.528507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133583, 37.330368, 37.850906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549550, -0.673324, -0.494600,
		0.835460, 0.443022, 0.325173,
		0.000172, -0.591917, 0.805999,
		42.133633, 37.152794, 38.092705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842579, 37.361256, 37.773151>,  <42.133514, 37.567135, 37.528507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842579, 37.361256, 37.773151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609776, 37.067101, 37.911987>,  <42.470093, 36.890606, 37.995289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609776, 37.067101, 37.911987>,  <42.842579, 37.361256, 37.773151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609776, 37.067101, 37.911987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699706, -0.670364, -0.247029,
		0.414339, 0.099088, 0.904712,
		-0.582010, -0.735386, 0.347091,
		42.435173, 36.846485, 38.016113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371822, 36.870228, 37.897038>,  <42.842579, 37.361256, 37.773151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371822, 36.870228, 37.897038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043549, 36.643974, 37.929371>,  <42.846584, 36.508221, 37.948772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043549, 36.643974, 37.929371>,  <43.371822, 36.870228, 37.897038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043549, 36.643974, 37.929371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493909, -0.773408, -0.397358,
		0.287278, -0.286180, 0.914096,
		-0.820686, -0.565633, 0.080836,
		42.797344, 36.474285, 37.953621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662121, 36.291378, 38.184635>,  <43.371822, 36.870228, 37.897038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662121, 36.291378, 38.184635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.330547, 36.207138, 37.977360>,  <43.131603, 36.156593, 37.852993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.330547, 36.207138, 37.977360>,  <43.662121, 36.291378, 38.184635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330547, 36.207138, 37.977360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524293, -0.615350, -0.588609,
		-0.194911, -0.759601, 0.620496,
		-0.828931, -0.210595, -0.518192,
		43.081867, 36.143959, 37.821903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678509, 35.643986, 38.141251>,  <43.662121, 36.291378, 38.184635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678509, 35.643986, 38.141251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.438656, 35.761925, 37.843658>,  <43.294743, 35.832687, 37.665104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.438656, 35.761925, 37.843658>,  <43.678509, 35.643986, 38.141251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438656, 35.761925, 37.843658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515466, -0.568819, -0.640890,
		-0.612156, -0.767794, 0.189096,
		-0.599633, 0.294852, -0.743978,
		43.258766, 35.850380, 37.620464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.596172, 35.044540, 37.814129>,  <43.678509, 35.643986, 38.141251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.596172, 35.044540, 37.814129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519382, 35.334927, 37.549969>,  <43.473309, 35.509159, 37.391472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519382, 35.334927, 37.549969>,  <43.596172, 35.044540, 37.814129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519382, 35.334927, 37.549969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653546, -0.407433, -0.637868,
		-0.732135, -0.554056, -0.396232,
		-0.191977, 0.725961, -0.660397,
		43.461788, 35.552715, 37.351849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630249, 34.734135, 37.155247>,  <43.596172, 35.044540, 37.814129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630249, 34.734135, 37.155247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663841, 35.124821, 37.076271>,  <43.683998, 35.359230, 37.028885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663841, 35.124821, 37.076271>,  <43.630249, 34.734135, 37.155247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663841, 35.124821, 37.076271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757500, -0.191305, -0.624176,
		-0.647411, -0.097140, -0.755925,
		0.083980, 0.976712, -0.197436,
		43.689034, 35.417835, 37.017040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674381, 34.787273, 36.458519>,  <43.630249, 34.734135, 37.155247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674381, 34.787273, 36.458519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.852188, 35.120407, 36.590458>,  <43.958870, 35.320286, 36.669621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.852188, 35.120407, 36.590458>,  <43.674381, 34.787273, 36.458519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852188, 35.120407, 36.590458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784535, -0.184241, -0.592081,
		-0.432335, 0.521961, -0.735285,
		0.444513, 0.832834, 0.329843,
		43.985542, 35.370258, 36.689411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907799, 35.217659, 35.828693>,  <43.674381, 34.787273, 36.458519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907799, 35.217659, 35.828693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.114983, 35.336582, 36.149525>,  <44.239292, 35.407936, 36.342022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.114983, 35.336582, 36.149525>,  <43.907799, 35.217659, 35.828693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114983, 35.336582, 36.149525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835458, 0.025474, -0.548964,
		-0.183644, 0.954442, -0.235193,
		0.517963, 0.297308, 0.802074,
		44.270370, 35.425774, 36.390148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311886, 35.718513, 35.547565>,  <43.907799, 35.217659, 35.828693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311886, 35.718513, 35.547565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.490395, 35.588352, 35.881023>,  <44.597500, 35.510258, 36.081097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.490395, 35.588352, 35.881023>,  <44.311886, 35.718513, 35.547565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490395, 35.588352, 35.881023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856153, -0.115893, -0.503558,
		0.260471, 0.938447, 0.226873,
		0.446269, -0.325401, 0.833641,
		44.624275, 35.490730, 36.131115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887196, 36.184208, 35.607246>,  <44.311886, 35.718513, 35.547565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887196, 36.184208, 35.607246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.991924, 35.862648, 35.820862>,  <45.054760, 35.669712, 35.949032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.991924, 35.862648, 35.820862>,  <44.887196, 36.184208, 35.607246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.991924, 35.862648, 35.820862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885882, -0.019386, -0.463504,
		0.382963, 0.594450, 0.707084,
		0.261823, -0.803899, 0.534037,
		45.070473, 35.621479, 35.981071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.621185, 36.187260, 35.692795>,  <44.887196, 36.184208, 35.607246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.621185, 36.187260, 35.692795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.528545, 35.807621, 35.778191>,  <45.472961, 35.579838, 35.829430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.528545, 35.807621, 35.778191>,  <45.621185, 36.187260, 35.692795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.528545, 35.807621, 35.778191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829989, -0.307250, -0.465528,
		0.507427, 0.069383, 0.858897,
		-0.231597, -0.949096, 0.213494,
		45.459064, 35.522892, 35.842239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.161854, 35.726379, 35.991043>,  <45.621185, 36.187260, 35.692795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.161854, 35.726379, 35.991043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.921223, 35.555092, 35.721310>,  <45.776844, 35.452320, 35.559467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.921223, 35.555092, 35.721310>,  <46.161854, 35.726379, 35.991043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921223, 35.555092, 35.721310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796199, -0.253180, -0.549516,
		0.064586, -0.867483, 0.493257,
		-0.601578, -0.428222, -0.674337,
		45.740749, 35.426624, 35.519009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.565720, 35.828995, 35.468620>,  <46.161854, 35.726379, 35.991043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.565720, 35.828995, 35.468620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.729748, 36.187664, 35.535332>,  <46.828167, 36.402866, 35.575359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.729748, 36.187664, 35.535332>,  <46.565720, 35.828995, 35.468620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.729748, 36.187664, 35.535332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127723, -0.124599, 0.983952,
		0.903064, -0.424795, 0.063431,
		0.410075, 0.896674, 0.166778,
		46.852772, 36.456665, 35.585365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.170864, 35.816162, 35.917328>,  <46.565720, 35.828995, 35.468620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.170864, 35.816162, 35.917328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.047974, 36.195282, 35.951473>,  <46.974239, 36.422752, 35.971962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.047974, 36.195282, 35.951473>,  <47.170864, 35.816162, 35.917328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.047974, 36.195282, 35.951473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061526, -0.069731, 0.995667,
		0.949646, 0.311145, -0.036892,
		-0.307224, 0.947801, 0.085363,
		46.955807, 36.479622, 35.977081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.409317, 35.950890, 36.476048>,  <47.170864, 35.816162, 35.917328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.409317, 35.950890, 36.476048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.185360, 36.281750, 36.456696>,  <47.050987, 36.480267, 36.445084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.185360, 36.281750, 36.456696>,  <47.409317, 35.950890, 36.476048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.185360, 36.281750, 36.456696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146656, 0.156398, 0.976745,
		0.815484, 0.539775, -0.208873,
		-0.559890, 0.827153, -0.048378,
		47.017391, 36.529896, 36.442181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.677406, 36.515583, 37.020462>,  <47.409317, 35.950890, 36.476048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.677406, 36.515583, 37.020462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.295612, 36.616192, 36.956348>,  <47.066536, 36.676556, 36.917881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.295612, 36.616192, 36.956348>,  <47.677406, 36.515583, 37.020462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.295612, 36.616192, 36.956348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062230, 0.357641, 0.931783,
		0.291688, 0.899350, -0.325712,
		-0.954487, 0.251521, -0.160286,
		47.009266, 36.691647, 36.908264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.555962, 37.211163, 37.491985>,  <47.677406, 36.515583, 37.020462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.555962, 37.211163, 37.491985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.196503, 37.059063, 37.404491>,  <46.980827, 36.967804, 37.351997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.196503, 37.059063, 37.404491>,  <47.555962, 37.211163, 37.491985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.196503, 37.059063, 37.404491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343290, 0.299173, 0.890307,
		-0.273099, 0.875161, -0.399387,
		-0.898648, -0.380248, -0.218730,
		46.926907, 36.944988, 37.338871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.115898, 37.651402, 37.736450>,  <47.555962, 37.211163, 37.491985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.115898, 37.651402, 37.736450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.882259, 37.328808, 37.699760>,  <46.742077, 37.135254, 37.677746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.882259, 37.328808, 37.699760>,  <47.115898, 37.651402, 37.736450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.882259, 37.328808, 37.699760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443811, 0.222710, 0.868005,
		-0.679602, 0.547710, -0.488010,
		-0.584100, -0.806482, -0.091726,
		46.707031, 37.086864, 37.672241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.452290, 37.889053, 37.616611>,  <47.115898, 37.651402, 37.736450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.452290, 37.889053, 37.616611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.369644, 37.534397, 37.782108>,  <46.320057, 37.321602, 37.881405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.369644, 37.534397, 37.782108>,  <46.452290, 37.889053, 37.616611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.369644, 37.534397, 37.782108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690882, 0.431635, 0.579976,
		-0.692815, -0.166017, -0.701745,
		-0.206612, -0.886639, 0.413741,
		46.307659, 37.268406, 37.906231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744106, 37.891491, 37.666218>,  <46.452290, 37.889053, 37.616611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744106, 37.891491, 37.666218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.830429, 37.595108, 37.920593>,  <45.882221, 37.417278, 38.073219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.830429, 37.595108, 37.920593>,  <45.744106, 37.891491, 37.666218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.830429, 37.595108, 37.920593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574317, 0.430394, 0.696362,
		-0.789676, -0.515508, -0.332661,
		0.215805, -0.740953, 0.635937,
		45.895172, 37.372822, 38.111374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118446, 37.642685, 38.003628>,  <45.744106, 37.891491, 37.666218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118446, 37.642685, 38.003628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.423752, 37.557949, 38.247776>,  <45.606937, 37.507107, 38.394264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.423752, 37.557949, 38.247776>,  <45.118446, 37.642685, 38.003628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423752, 37.557949, 38.247776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544611, 0.297311, 0.784223,
		-0.347597, -0.930984, 0.111559,
		0.763266, -0.211838, 0.610368,
		45.652733, 37.494396, 38.430885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933437, 37.277405, 38.524303>,  <45.118446, 37.642685, 38.003628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933437, 37.277405, 38.524303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.258453, 37.437138, 38.694157>,  <45.453465, 37.532978, 38.796070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.258453, 37.437138, 38.694157>,  <44.933437, 37.277405, 38.524303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.258453, 37.437138, 38.694157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562596, 0.346624, 0.750558,
		0.152533, -0.848755, 0.506308,
		0.812539, 0.399332, 0.424635,
		45.502216, 37.556938, 38.821548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830879, 37.083618, 39.321068>,  <44.933437, 37.277405, 38.524303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830879, 37.083618, 39.321068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.127697, 37.351460, 39.308369>,  <45.305786, 37.512165, 39.300751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.127697, 37.351460, 39.308369>,  <44.830879, 37.083618, 39.321068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.127697, 37.351460, 39.308369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343673, 0.420659, 0.839604,
		0.575553, -0.612112, 0.542271,
		0.742043, 0.669601, -0.031745,
		45.350311, 37.552338, 39.298847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071308, 37.119511, 39.943153>,  <44.830879, 37.083618, 39.321068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071308, 37.119511, 39.943153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.173218, 37.472454, 39.784897>,  <45.234364, 37.684219, 39.689941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.173218, 37.472454, 39.784897>,  <45.071308, 37.119511, 39.943153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173218, 37.472454, 39.784897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250724, 0.455429, 0.854237,
		0.933932, -0.118437, 0.337259,
		0.254771, 0.882359, -0.395645,
		45.249649, 37.737164, 39.666203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.426949, 37.542839, 40.470749>,  <45.071308, 37.119511, 39.943153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.426949, 37.542839, 40.470749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.308403, 37.812820, 40.200459>,  <45.237274, 37.974812, 40.038284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.308403, 37.812820, 40.200459>,  <45.426949, 37.542839, 40.470749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.308403, 37.812820, 40.200459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125841, 0.673743, 0.728172,
		0.946748, 0.300838, -0.114737,
		-0.296365, 0.674957, -0.675722,
		45.219494, 38.015308, 39.997742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701176, 38.088654, 40.739605>,  <45.426949, 37.542839, 40.470749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.701176, 38.088654, 40.739605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.421978, 38.205383, 40.478027>,  <45.254459, 38.275421, 40.321079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.421978, 38.205383, 40.478027>,  <45.701176, 38.088654, 40.739605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.421978, 38.205383, 40.478027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452338, 0.528280, 0.718548,
		0.555156, 0.797346, -0.236732,
		-0.697991, 0.291823, -0.653948,
		45.212582, 38.292931, 40.281841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589989, 38.849716, 40.962666>,  <45.701176, 38.088654, 40.739605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589989, 38.849716, 40.962666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.286205, 38.704411, 40.746788>,  <45.103935, 38.617229, 40.617260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.286205, 38.704411, 40.746788>,  <45.589989, 38.849716, 40.962666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.286205, 38.704411, 40.746788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646138, 0.324613, 0.690748,
		-0.075729, 0.873309, -0.481245,
		-0.759455, -0.363260, -0.539695,
		45.058369, 38.595432, 40.584881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091480, 39.462879, 41.048523>,  <45.589989, 38.849716, 40.962666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091480, 39.462879, 41.048523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885059, 39.147865, 40.913773>,  <44.761208, 38.958858, 40.832924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885059, 39.147865, 40.913773>,  <45.091480, 39.462879, 41.048523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885059, 39.147865, 40.913773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732476, 0.201859, 0.650178,
		-0.444036, 0.582277, -0.681018,
		-0.516053, -0.787532, -0.336872,
		44.730244, 38.911606, 40.812710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354446, 39.715458, 40.796257>,  <45.091480, 39.462879, 41.048523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354446, 39.715458, 40.796257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339081, 39.332603, 40.911091>,  <44.329861, 39.102890, 40.979992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339081, 39.332603, 40.911091>,  <44.354446, 39.715458, 40.796257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339081, 39.332603, 40.911091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850909, 0.181957, 0.492794,
		-0.523908, -0.225351, -0.821424,
		-0.038412, -0.957136, 0.287082,
		44.327557, 39.045464, 40.997215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658516, 39.580853, 40.737656>,  <44.354446, 39.715458, 40.796257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658516, 39.580853, 40.737656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.775158, 39.289017, 40.985096>,  <43.845142, 39.113914, 41.133560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.775158, 39.289017, 40.985096>,  <43.658516, 39.580853, 40.737656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775158, 39.289017, 40.985096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688703, 0.288657, 0.665105,
		-0.663817, -0.619980, -0.418297,
		0.291607, -0.729590, 0.618598,
		43.862640, 39.070141, 41.170677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061779, 39.175560, 40.853035>,  <43.658516, 39.580853, 40.737656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061779, 39.175560, 40.853035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321083, 39.097481, 41.147423>,  <43.476665, 39.050632, 41.324055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321083, 39.097481, 41.147423>,  <43.061779, 39.175560, 40.853035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321083, 39.097481, 41.147423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734636, 0.093765, 0.671951,
		-0.200171, -0.976272, -0.082614,
		0.648260, -0.195196, 0.735973,
		43.515560, 39.038921, 41.368214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806961, 38.515190, 41.170586>,  <43.061779, 39.175560, 40.853035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806961, 38.515190, 41.170586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047237, 38.686954, 41.440334>,  <43.191402, 38.790012, 41.602184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047237, 38.686954, 41.440334>,  <42.806961, 38.515190, 41.170586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047237, 38.686954, 41.440334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677194, -0.175058, 0.714677,
		0.424947, -0.885978, 0.185641,
		0.600690, 0.429415, 0.674369,
		43.227444, 38.815777, 41.642647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.590710, 32.998337, 43.076923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250610, 32.904636, 42.888367>,  <40.046551, 32.848415, 42.775234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250610, 32.904636, 42.888367>,  <40.590710, 32.998337, 43.076923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250610, 32.904636, 42.888367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467945, 0.073730, -0.880677,
		0.241051, -0.969378, 0.046925,
		-0.850248, -0.234246, -0.471388,
		39.995537, 32.834362, 42.746952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741993, 32.605911, 42.465950>,  <40.590710, 32.998337, 43.076923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741993, 32.605911, 42.465950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377964, 32.754601, 42.392632>,  <40.159546, 32.843815, 42.348640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377964, 32.754601, 42.392632>,  <40.741993, 32.605911, 42.465950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377964, 32.754601, 42.392632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269613, 0.195086, -0.943001,
		-0.314776, -0.907614, -0.277763,
		-0.910068, 0.371722, -0.183296,
		40.104942, 32.866116, 42.337643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648327, 32.393742, 41.844368>,  <40.741993, 32.605911, 42.465950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648327, 32.393742, 41.844368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375286, 32.683796, 41.880669>,  <40.211460, 32.857826, 41.902447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375286, 32.683796, 41.880669>,  <40.648327, 32.393742, 41.844368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375286, 32.683796, 41.880669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345433, 0.429588, -0.834344,
		-0.643995, -0.538178, -0.543723,
		-0.682602, 0.725133, 0.090749,
		40.170506, 32.901337, 41.907894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252800, 32.398071, 41.212517>,  <40.648327, 32.393742, 41.844368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252800, 32.398071, 41.212517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211662, 32.765987, 41.363998>,  <40.186981, 32.986736, 41.454887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211662, 32.765987, 41.363998>,  <40.252800, 32.398071, 41.212517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211662, 32.765987, 41.363998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158403, 0.391003, -0.906656,
		-0.982004, -0.033254, -0.185908,
		-0.102841, 0.919788, 0.378700,
		40.180809, 33.041924, 41.477608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799366, 32.784962, 40.760994>,  <40.252800, 32.398071, 41.212517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799366, 32.784962, 40.760994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995403, 33.066402, 40.966812>,  <40.113026, 33.235268, 41.090302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995403, 33.066402, 40.966812>,  <39.799366, 32.784962, 40.760994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995403, 33.066402, 40.966812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155060, 0.510509, -0.845776,
		-0.857767, 0.494294, 0.141096,
		0.490093, 0.703601, 0.514543,
		40.142429, 33.277481, 41.121174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534527, 33.275280, 40.384457>,  <39.799366, 32.784962, 40.760994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534527, 33.275280, 40.384457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837498, 33.444435, 40.583439>,  <40.019279, 33.545929, 40.702827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837498, 33.444435, 40.583439>,  <39.534527, 33.275280, 40.384457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837498, 33.444435, 40.583439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127431, 0.651502, -0.747868,
		-0.640360, 0.629849, 0.439578,
		0.757430, 0.422889, 0.497459,
		40.064728, 33.571301, 40.732677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394417, 34.003311, 40.412415>,  <39.534527, 33.275280, 40.384457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394417, 34.003311, 40.412415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786747, 33.930725, 40.440868>,  <40.022144, 33.887173, 40.457939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786747, 33.930725, 40.440868>,  <39.394417, 34.003311, 40.412415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786747, 33.930725, 40.440868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164357, 0.573857, -0.802294,
		0.104765, 0.798599, 0.592676,
		0.980822, -0.181462, 0.071135,
		40.080994, 33.876286, 40.462208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443237, 34.593483, 40.270252>,  <39.394417, 34.003311, 40.412415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443237, 34.593483, 40.270252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777401, 34.381165, 40.213181>,  <39.977898, 34.253773, 40.178940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777401, 34.381165, 40.213181>,  <39.443237, 34.593483, 40.270252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777401, 34.381165, 40.213181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181742, 0.511750, -0.839691,
		0.518717, 0.675552, 0.523986,
		0.835405, -0.530793, -0.142677,
		40.028023, 34.221928, 40.170376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872124, 35.101360, 40.317535>,  <39.443237, 34.593483, 40.270252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872124, 35.101360, 40.317535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026794, 34.801682, 40.102428>,  <40.119595, 34.621876, 39.973366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026794, 34.801682, 40.102428>,  <39.872124, 35.101360, 40.317535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026794, 34.801682, 40.102428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114475, 0.617605, -0.778113,
		0.915084, 0.239315, 0.324576,
		0.386674, -0.749195, -0.537764,
		40.142796, 34.576923, 39.941097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441010, 35.359013, 39.920784>,  <39.872124, 35.101360, 40.317535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441010, 35.359013, 39.920784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306114, 35.025700, 39.745552>,  <40.225178, 34.825710, 39.640411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306114, 35.025700, 39.745552>,  <40.441010, 35.359013, 39.920784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306114, 35.025700, 39.745552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056007, 0.482272, -0.874229,
		0.939752, -0.270287, -0.209310,
		-0.337237, -0.833282, -0.438079,
		40.204945, 34.775715, 39.614128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760864, 35.393154, 39.306015>,  <40.441010, 35.359013, 39.920784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760864, 35.393154, 39.306015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478359, 35.116871, 39.243896>,  <40.308857, 34.951103, 39.206627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478359, 35.116871, 39.243896>,  <40.760864, 35.393154, 39.306015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478359, 35.116871, 39.243896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003544, 0.222805, -0.974857,
		0.707939, -0.687957, -0.159807,
		-0.706265, -0.690705, -0.155294,
		40.266479, 34.909660, 39.197308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911766, 34.942242, 38.662109>,  <40.760864, 35.393154, 39.306015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911766, 34.942242, 38.662109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514603, 34.919521, 38.703884>,  <40.276306, 34.905891, 38.728951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514603, 34.919521, 38.703884>,  <40.911766, 34.942242, 38.662109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514603, 34.919521, 38.703884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107613, 0.056074, -0.992610,
		0.050491, -0.996812, -0.061785,
		-0.992910, -0.056766, 0.104439,
		40.216732, 34.902481, 38.735214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697876, 34.474216, 38.095154>,  <40.911766, 34.942242, 38.662109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697876, 34.474216, 38.095154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456894, 34.781342, 38.182343>,  <40.312305, 34.965614, 38.234653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456894, 34.781342, 38.182343>,  <40.697876, 34.474216, 38.095154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456894, 34.781342, 38.182343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154950, 0.155385, -0.975626,
		-0.782965, -0.621548, 0.025360,
		-0.602458, 0.767811, 0.217970,
		40.276157, 35.011684, 38.247734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425507, 34.122902, 37.606464>,  <40.697876, 34.474216, 38.095154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425507, 34.122902, 37.606464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546379, 34.038742, 37.234570>,  <40.618904, 33.988247, 37.011433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546379, 34.038742, 37.234570>,  <40.425507, 34.122902, 37.606464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546379, 34.038742, 37.234570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939838, 0.228796, 0.253688,
		0.159346, -0.950466, 0.266877,
		0.302182, -0.210397, -0.929741,
		40.637035, 33.975624, 36.955647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610706, 33.467781, 37.141411>,  <40.425507, 34.122902, 37.606464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610706, 33.467781, 37.141411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990578, 33.381447, 37.050617>,  <41.218502, 33.329647, 36.996140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990578, 33.381447, 37.050617>,  <40.610706, 33.467781, 37.141411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990578, 33.381447, 37.050617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016651, -0.758443, 0.651526,
		-0.312775, -0.614963, -0.723873,
		0.949681, -0.215835, -0.226982,
		41.275482, 33.316696, 36.982521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742344, 32.793018, 36.833412>,  <40.610706, 33.467781, 37.141411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742344, 32.793018, 36.833412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114594, 32.863956, 36.961472>,  <41.337944, 32.906521, 37.038307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114594, 32.863956, 36.961472>,  <40.742344, 32.793018, 36.833412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114594, 32.863956, 36.961472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005995, -0.867245, 0.497846,
		0.365939, -0.465224, -0.806012,
		0.930619, 0.177350, 0.320148,
		41.393780, 32.917160, 37.057514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047401, 32.083874, 36.758274>,  <40.742344, 32.793018, 36.833412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047401, 32.083874, 36.758274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216526, 32.307899, 37.043247>,  <41.318001, 32.442314, 37.214230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216526, 32.307899, 37.043247>,  <41.047401, 32.083874, 36.758274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216526, 32.307899, 37.043247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169287, -0.821136, 0.545048,
		0.890263, -0.109850, -0.442000,
		0.422816, 0.560061, 0.712431,
		41.343372, 32.475918, 37.256977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771137, 31.903503, 36.945038>,  <41.047401, 32.083874, 36.758274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771137, 31.903503, 36.945038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594654, 32.063095, 37.266571>,  <41.488766, 32.158852, 37.459492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594654, 32.063095, 37.266571>,  <41.771137, 31.903503, 36.945038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594654, 32.063095, 37.266571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114637, -0.863338, 0.491432,
		0.890054, 0.308972, 0.335173,
		-0.441207, 0.398978, 0.803837,
		41.462292, 32.182789, 37.507721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097118, 31.569771, 37.572758>,  <41.771137, 31.903503, 36.945038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097118, 31.569771, 37.572758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755527, 31.724566, 37.711880>,  <41.550575, 31.817442, 37.795353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755527, 31.724566, 37.711880>,  <42.097118, 31.569771, 37.572758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755527, 31.724566, 37.711880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103951, -0.781864, 0.614722,
		0.509824, 0.488804, 0.707920,
		-0.853975, 0.386989, 0.347801,
		41.499336, 31.840662, 37.816219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168644, 31.456062, 38.309620>,  <42.097118, 31.569771, 37.572758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168644, 31.456062, 38.309620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777893, 31.525078, 38.259117>,  <41.543442, 31.566488, 38.228813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777893, 31.525078, 38.259117>,  <42.168644, 31.456062, 38.309620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777893, 31.525078, 38.259117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212883, -0.730196, 0.649227,
		0.019824, 0.661093, 0.750042,
		-0.976877, 0.172541, -0.126260,
		41.484829, 31.576839, 38.221237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860229, 31.495201, 38.944736>,  <42.168644, 31.456062, 38.309620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860229, 31.495201, 38.944736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532005, 31.412981, 38.731411>,  <41.335072, 31.363649, 38.603416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532005, 31.412981, 38.731411>,  <41.860229, 31.495201, 38.944736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532005, 31.412981, 38.731411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415132, -0.427037, 0.803309,
		-0.392868, 0.880562, 0.265079,
		-0.820561, -0.205552, -0.533318,
		41.285835, 31.351316, 38.571415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374550, 31.497993, 39.499580>,  <41.860229, 31.495201, 38.944736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374550, 31.497993, 39.499580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156651, 31.332090, 39.208038>,  <41.025909, 31.232550, 39.033115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156651, 31.332090, 39.208038>,  <41.374550, 31.497993, 39.499580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156651, 31.332090, 39.208038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583741, -0.436451, 0.684658,
		-0.602074, 0.798429, -0.004353,
		-0.544751, -0.414756, -0.728851,
		40.993225, 31.207664, 38.989384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716560, 31.750923, 39.635555>,  <41.374550, 31.497993, 39.499580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716560, 31.750923, 39.635555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697598, 31.416912, 39.416290>,  <40.686218, 31.216505, 39.284733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697598, 31.416912, 39.416290>,  <40.716560, 31.750923, 39.635555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697598, 31.416912, 39.416290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611201, -0.409801, 0.677124,
		-0.790054, 0.367137, -0.490942,
		-0.047409, -0.835029, -0.548160,
		40.683376, 31.166403, 39.251842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003048, 31.509935, 39.693989>,  <40.716560, 31.750923, 39.635555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003048, 31.509935, 39.693989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221352, 31.198370, 39.570415>,  <40.352333, 31.011431, 39.496273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221352, 31.198370, 39.570415>,  <40.003048, 31.509935, 39.693989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221352, 31.198370, 39.570415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549755, -0.611076, 0.569522,
		-0.632391, -0.140983, -0.761712,
		0.545757, -0.778916, -0.308932,
		40.385078, 30.964695, 39.477737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492188, 31.049253, 39.530041>,  <40.003048, 31.509935, 39.693989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492188, 31.049253, 39.530041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831669, 30.841230, 39.568497>,  <40.035358, 30.716417, 39.591572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831669, 30.841230, 39.568497>,  <39.492188, 31.049253, 39.530041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831669, 30.841230, 39.568497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457016, -0.629693, 0.628190,
		-0.266156, -0.577085, -0.772097,
		0.848703, -0.520057, 0.096141,
		40.086281, 30.685213, 39.597340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283558, 30.359047, 39.561398>,  <39.492188, 31.049253, 39.530041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283558, 30.359047, 39.561398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642788, 30.383478, 39.735626>,  <39.858326, 30.398136, 39.840164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642788, 30.383478, 39.735626>,  <39.283558, 30.359047, 39.561398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642788, 30.383478, 39.735626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346015, -0.513251, 0.785396,
		0.271529, -0.856062, -0.439806,
		0.898079, 0.061078, 0.435573,
		39.912212, 30.401802, 39.866299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430340, 29.710897, 39.876614>,  <39.283558, 30.359047, 39.561398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430340, 29.710897, 39.876614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663074, 29.968382, 40.075451>,  <39.802715, 30.122873, 40.194752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663074, 29.968382, 40.075451>,  <39.430340, 29.710897, 39.876614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663074, 29.968382, 40.075451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242778, -0.445868, 0.861545,
		0.776225, -0.621961, -0.103143,
		0.581836, 0.643712, 0.497092,
		39.837624, 30.161495, 40.224579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791027, 29.342543, 40.502457>,  <39.430340, 29.710897, 39.876614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791027, 29.342543, 40.502457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761074, 29.737301, 40.559624>,  <39.743103, 29.974155, 40.593925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761074, 29.737301, 40.559624>,  <39.791027, 29.342543, 40.502457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761074, 29.737301, 40.559624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269410, -0.158017, 0.949973,
		0.960110, 0.032631, 0.277712,
		-0.074882, 0.986897, 0.142922,
		39.738609, 30.033371, 40.602501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038273, 29.086861, 40.569393>,  <39.791027, 29.342543, 40.502457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038273, 29.086861, 40.569393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638554, 29.098152, 40.559544>,  <38.398724, 29.104927, 40.553635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638554, 29.098152, 40.559544>,  <39.038273, 29.086861, 40.569393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638554, 29.098152, 40.559544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035425, 0.498351, -0.866251,
		-0.012182, -0.866516, -0.499001,
		-0.999298, 0.028230, -0.024626,
		38.338764, 29.106621, 40.552155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807999, 29.002058, 39.865051>,  <39.038273, 29.086861, 40.569393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807999, 29.002058, 39.865051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483955, 29.165413, 40.033310>,  <38.289528, 29.263426, 40.134266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483955, 29.165413, 40.033310>,  <38.807999, 29.002058, 39.865051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483955, 29.165413, 40.033310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147546, 0.552378, -0.820432,
		-0.567411, -0.726704, -0.387230,
		-0.810109, 0.408388, 0.420647,
		38.240921, 29.287930, 40.159504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238148, 29.026545, 39.362537>,  <38.807999, 29.002058, 39.865051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238148, 29.026545, 39.362537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096317, 29.287548, 39.630421>,  <38.011219, 29.444151, 39.791149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096317, 29.287548, 39.630421>,  <38.238148, 29.026545, 39.362537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096317, 29.287548, 39.630421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266939, 0.615790, -0.741314,
		-0.896111, -0.441626, -0.044167,
		-0.354580, 0.652510, 0.669704,
		37.989944, 29.483301, 39.831333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592628, 29.147530, 39.181545>,  <38.238148, 29.026545, 39.362537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592628, 29.147530, 39.181545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717079, 29.472372, 39.379005>,  <37.791748, 29.667278, 39.497482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717079, 29.472372, 39.379005>,  <37.592628, 29.147530, 39.181545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717079, 29.472372, 39.379005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374334, 0.582154, -0.721783,
		-0.873543, 0.039774, 0.485120,
		0.311122, 0.812106, 0.493647,
		37.810417, 29.716003, 39.527100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100254, 29.636110, 39.062920>,  <37.592628, 29.147530, 39.181545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100254, 29.636110, 39.062920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377613, 29.889399, 39.200462>,  <37.544029, 30.041370, 39.282990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377613, 29.889399, 39.200462>,  <37.100254, 29.636110, 39.062920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377613, 29.889399, 39.200462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347532, 0.711930, -0.610227,
		-0.631210, 0.303627, 0.713712,
		0.693394, 0.633219, 0.343857,
		37.585632, 30.079365, 39.303619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751579, 30.274061, 39.214989>,  <37.100254, 29.636110, 39.062920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751579, 30.274061, 39.214989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135113, 30.365595, 39.147739>,  <37.365234, 30.420515, 39.107391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135113, 30.365595, 39.147739>,  <36.751579, 30.274061, 39.214989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135113, 30.365595, 39.147739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277842, 0.633899, -0.721786,
		-0.058595, 0.738788, 0.671386,
		0.958838, 0.228833, -0.168123,
		37.422764, 30.434244, 39.097301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765621, 30.986679, 39.102489>,  <36.751579, 30.274061, 39.214989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765621, 30.986679, 39.102489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116089, 30.881121, 38.941154>,  <37.326370, 30.817785, 38.844353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116089, 30.881121, 38.941154>,  <36.765621, 30.986679, 39.102489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116089, 30.881121, 38.941154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142666, 0.657319, -0.739985,
		0.460401, 0.705897, 0.538275,
		0.876172, -0.263896, -0.403338,
		37.378941, 30.801952, 38.820152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009109, 31.560064, 38.957504>,  <36.765621, 30.986679, 39.102489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009109, 31.560064, 38.957504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216457, 31.316776, 38.717052>,  <37.340866, 31.170803, 38.572781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216457, 31.316776, 38.717052>,  <37.009109, 31.560064, 38.957504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216457, 31.316776, 38.717052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023392, 0.712773, -0.701005,
		0.854836, 0.349319, 0.383709,
		0.518371, -0.608220, -0.601132,
		37.371967, 31.134310, 38.536713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532154, 31.991701, 38.745510>,  <37.009109, 31.560064, 38.957504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532154, 31.991701, 38.745510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512627, 31.676867, 38.499546>,  <37.500912, 31.487965, 38.351967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512627, 31.676867, 38.499546>,  <37.532154, 31.991701, 38.745510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512627, 31.676867, 38.499546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096153, 0.609078, -0.787260,
		0.994169, -0.097558, 0.045946,
		-0.048818, -0.787087, -0.614907,
		37.497982, 31.440741, 38.315075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125744, 31.990255, 38.227806>,  <37.532154, 31.991701, 38.745510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125744, 31.990255, 38.227806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853165, 31.762070, 38.044415>,  <37.689617, 31.625158, 37.934380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853165, 31.762070, 38.044415>,  <38.125744, 31.990255, 38.227806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853165, 31.762070, 38.044415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051628, 0.662361, -0.747404,
		0.730049, -0.485641, -0.480812,
		-0.681442, -0.570465, -0.458483,
		37.648731, 31.590931, 37.906872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362198, 31.881306, 37.567638>,  <38.125744, 31.990255, 38.227806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362198, 31.881306, 37.567638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968048, 31.813250, 37.564003>,  <37.731556, 31.772415, 37.561821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968048, 31.813250, 37.564003>,  <38.362198, 31.881306, 37.567638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968048, 31.813250, 37.564003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093676, 0.585533, -0.805218,
		0.142320, -0.792593, -0.592909,
		-0.985378, -0.170140, -0.009086,
		37.672436, 31.762207, 37.561275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170952, 31.690315, 36.866215>,  <38.362198, 31.881306, 37.567638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170952, 31.690315, 36.866215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824730, 31.814173, 37.023659>,  <37.616997, 31.888487, 37.118126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824730, 31.814173, 37.023659>,  <38.170952, 31.690315, 36.866215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824730, 31.814173, 37.023659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185149, 0.532414, -0.825987,
		-0.465325, -0.787817, -0.403506,
		-0.865559, 0.309644, 0.393609,
		37.565063, 31.907066, 37.141743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.635185, 26.769331, 43.708088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310852, 27.002037, 43.733707>,  <38.116253, 27.141661, 43.749077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310852, 27.002037, 43.733707>,  <38.635185, 26.769331, 43.708088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310852, 27.002037, 43.733707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178418, 0.349910, -0.919636,
		-0.557422, -0.734242, -0.387515,
		-0.810831, 0.581766, 0.064045,
		38.067604, 27.176567, 43.752922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192192, 26.622656, 43.028744>,  <38.635185, 26.769331, 43.708088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192192, 26.622656, 43.028744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.084930, 26.980738, 43.171124>,  <38.020573, 27.195587, 43.256550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.084930, 26.980738, 43.171124>,  <38.192192, 26.622656, 43.028744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084930, 26.980738, 43.171124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139572, 0.401680, -0.905082,
		-0.953211, -0.193025, -0.232659,
		-0.268158, 0.895206, 0.355945,
		38.004482, 27.249300, 43.277908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647900, 26.862040, 42.547211>,  <38.192192, 26.622656, 43.028744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647900, 26.862040, 42.547211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.735260, 27.190475, 42.758156>,  <37.787678, 27.387537, 42.884724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.735260, 27.190475, 42.758156>,  <37.647900, 26.862040, 42.547211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735260, 27.190475, 42.758156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058451, 0.550445, -0.832822,
		-0.974106, 0.151067, 0.168213,
		0.218404, 0.821090, 0.527362,
		37.800781, 27.436802, 42.916363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053387, 27.387852, 42.419559>,  <37.647900, 26.862040, 42.547211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053387, 27.387852, 42.419559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.400024, 27.567360, 42.506847>,  <37.608006, 27.675066, 42.559219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.400024, 27.567360, 42.506847>,  <37.053387, 27.387852, 42.419559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400024, 27.567360, 42.506847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135465, 0.632446, -0.762667,
		-0.480279, 0.631359, 0.608866,
		0.866592, 0.448773, 0.218223,
		37.660004, 27.701992, 42.572315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006615, 28.110228, 42.268108>,  <37.053387, 27.387852, 42.419559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006615, 28.110228, 42.268108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.404251, 28.066824, 42.269756>,  <37.642834, 28.040781, 42.270744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.404251, 28.066824, 42.269756>,  <37.006615, 28.110228, 42.268108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404251, 28.066824, 42.269756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069828, 0.609722, -0.789534,
		0.083157, 0.785153, 0.613693,
		0.994087, -0.108509, 0.004123,
		37.702477, 28.034271, 42.270992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379116, 28.793938, 42.382435>,  <37.006615, 28.110228, 42.268108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379116, 28.793938, 42.382435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633965, 28.553505, 42.189445>,  <37.786873, 28.409245, 42.073650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633965, 28.553505, 42.189445>,  <37.379116, 28.793938, 42.382435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633965, 28.553505, 42.189445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100694, 0.685512, -0.721064,
		0.764161, 0.410820, 0.497277,
		0.637117, -0.601082, -0.482475,
		37.825100, 28.373180, 42.044704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760666, 29.316935, 42.050354>,  <37.379116, 28.793938, 42.382435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760666, 29.316935, 42.050354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.918118, 28.979853, 41.903435>,  <38.012589, 28.777603, 41.815285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.918118, 28.979853, 41.903435>,  <37.760666, 29.316935, 42.050354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918118, 28.979853, 41.903435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347175, 0.506237, -0.789426,
		0.851192, 0.183223, 0.491834,
		0.393626, -0.842706, -0.367295,
		38.036205, 28.727041, 41.793247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413727, 29.424541, 41.801723>,  <37.760666, 29.316935, 42.050354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413727, 29.424541, 41.801723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235157, 29.147257, 41.575390>,  <38.128017, 28.980886, 41.439590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235157, 29.147257, 41.575390>,  <38.413727, 29.424541, 41.801723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235157, 29.147257, 41.575390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154015, 0.563375, -0.811719,
		0.881469, -0.449515, -0.144737,
		-0.446421, -0.693214, -0.565830,
		38.101231, 28.939293, 41.405640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809990, 29.370028, 41.222008>,  <38.413727, 29.424541, 41.801723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809990, 29.370028, 41.222008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493729, 29.169485, 41.081429>,  <38.303974, 29.049160, 40.997082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493729, 29.169485, 41.081429>,  <38.809990, 29.370028, 41.222008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493729, 29.169485, 41.081429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181581, 0.356172, -0.916608,
		0.584724, -0.788531, -0.190570,
		-0.790649, -0.501359, -0.351444,
		38.256535, 29.019077, 40.975994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452225, 29.674772, 41.082096>,  <38.809990, 29.370028, 41.222008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452225, 29.674772, 41.082096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.528419, 30.049715, 41.198765>,  <39.574139, 30.274681, 41.268764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.528419, 30.049715, 41.198765>,  <39.452225, 29.674772, 41.082096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528419, 30.049715, 41.198765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022507, -0.292865, 0.955889,
		0.981431, -0.188651, -0.034690,
		0.190489, 0.937359, 0.291673,
		39.585567, 30.330923, 41.286266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014751, 29.635502, 41.476894>,  <39.452225, 29.674772, 41.082096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014751, 29.635502, 41.476894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.850037, 29.982601, 41.588211>,  <39.751209, 30.190861, 41.655003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.850037, 29.982601, 41.588211>,  <40.014751, 29.635502, 41.476894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850037, 29.982601, 41.588211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142781, -0.240179, 0.960171,
		0.900027, 0.435117, -0.024996,
		-0.411783, 0.867749, 0.278294,
		39.726501, 30.242926, 41.671700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451122, 29.949940, 42.094521>,  <40.014751, 29.635502, 41.476894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451122, 29.949940, 42.094521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.099747, 30.140505, 42.109352>,  <39.888920, 30.254843, 42.118252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.099747, 30.140505, 42.109352>,  <40.451122, 29.949940, 42.094521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099747, 30.140505, 42.109352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001518, -0.074822, 0.997196,
		0.477850, 0.876033, 0.065003,
		-0.878440, 0.476412, 0.037083,
		39.836216, 30.283428, 42.120476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504829, 30.374554, 42.591129>,  <40.451122, 29.949940, 42.094521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504829, 30.374554, 42.591129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.107346, 30.330250, 42.584461>,  <39.868855, 30.303667, 42.580460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.107346, 30.330250, 42.584461>,  <40.504829, 30.374554, 42.591129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107346, 30.330250, 42.584461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017232, 0.004120, 0.999843,
		-0.110674, 0.993839, -0.006002,
		-0.993707, -0.110760, -0.016670,
		39.809235, 30.297022, 42.579460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283173, 30.821680, 43.042477>,  <40.504829, 30.374554, 42.591129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283173, 30.821680, 43.042477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.958977, 30.588333, 43.021320>,  <39.764462, 30.448326, 43.008629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.958977, 30.588333, 43.021320>,  <40.283173, 30.821680, 43.042477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958977, 30.588333, 43.021320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085703, 0.028779, 0.995905,
		-0.579455, 0.811699, -0.073321,
		-0.810485, -0.583366, -0.052889,
		39.715832, 30.413322, 43.005455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016098, 30.891636, 43.664886>,  <40.283173, 30.821680, 43.042477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016098, 30.891636, 43.664886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.730751, 30.632263, 43.558575>,  <39.559544, 30.476639, 43.494789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.730751, 30.632263, 43.558575>,  <40.016098, 30.891636, 43.664886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730751, 30.632263, 43.558575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230755, -0.140762, 0.962776,
		-0.661709, 0.748144, -0.049214,
		-0.713368, -0.648434, -0.265781,
		39.516739, 30.437733, 43.478840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253296, 31.083757, 43.973503>,  <40.016098, 30.891636, 43.664886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253296, 31.083757, 43.973503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323242, 30.691198, 43.941799>,  <39.365211, 30.455664, 43.922775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323242, 30.691198, 43.941799>,  <39.253296, 31.083757, 43.973503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323242, 30.691198, 43.941799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200850, -0.114366, 0.972923,
		-0.963889, -0.154211, -0.217112,
		0.174866, -0.981397, -0.079263,
		39.375702, 30.396780, 43.918018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868923, 30.814692, 44.487072>,  <39.253296, 31.083757, 43.973503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868923, 30.814692, 44.487072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097584, 30.494730, 44.414001>,  <39.234779, 30.302753, 44.370159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097584, 30.494730, 44.414001>,  <38.868923, 30.814692, 44.487072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097584, 30.494730, 44.414001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065905, -0.177157, 0.981973,
		-0.817846, -0.573385, -0.048554,
		0.571650, -0.799903, -0.182676,
		39.269077, 30.254759, 44.359200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655247, 30.405582, 44.964344>,  <38.868923, 30.814692, 44.487072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655247, 30.405582, 44.964344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.974392, 30.197878, 44.841846>,  <39.165878, 30.073256, 44.768349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.974392, 30.197878, 44.841846>,  <38.655247, 30.405582, 44.964344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974392, 30.197878, 44.841846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165455, -0.299870, 0.939523,
		-0.579691, -0.800278, -0.153340,
		0.797861, -0.519262, -0.306242,
		39.213749, 30.042099, 44.749973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542988, 29.684494, 45.177830>,  <38.655247, 30.405582, 44.964344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542988, 29.684494, 45.177830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.935257, 29.737926, 45.120651>,  <39.170620, 29.769987, 45.086346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.935257, 29.737926, 45.120651>,  <38.542988, 29.684494, 45.177830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935257, 29.737926, 45.120651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193127, -0.544036, 0.816533,
		0.031307, -0.828360, -0.559321,
		0.980674, 0.133584, -0.142947,
		39.229458, 29.778002, 45.077766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714855, 28.979372, 45.251022>,  <38.542988, 29.684494, 45.177830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714855, 28.979372, 45.251022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023003, 29.228842, 45.304031>,  <39.207890, 29.378523, 45.335838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023003, 29.228842, 45.304031>,  <38.714855, 28.979372, 45.251022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023003, 29.228842, 45.304031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189627, -0.422555, 0.886278,
		0.608747, -0.657631, -0.443789,
		0.770369, 0.623674, 0.132524,
		39.254112, 29.415943, 45.343788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242569, 28.607269, 45.357151>,  <38.714855, 28.979372, 45.251022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242569, 28.607269, 45.357151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.286469, 28.967321, 45.525780>,  <39.312809, 29.183352, 45.626957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.286469, 28.967321, 45.525780>,  <39.242569, 28.607269, 45.357151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286469, 28.967321, 45.525780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064205, -0.416828, 0.906715,
		0.991884, -0.126575, 0.012048,
		0.109746, 0.900129, 0.421572,
		39.319393, 29.237360, 45.652252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690964, 28.456625, 45.991386>,  <39.242569, 28.607269, 45.357151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690964, 28.456625, 45.991386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.536064, 28.820187, 46.053268>,  <39.443123, 29.038324, 46.090397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.536064, 28.820187, 46.053268>,  <39.690964, 28.456625, 45.991386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536064, 28.820187, 46.053268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192632, -0.243853, 0.950489,
		0.901627, 0.338275, 0.269516,
		-0.387249, 0.908904, 0.154701,
		39.419891, 29.092857, 46.099678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098526, 28.800579, 46.543224>,  <39.690964, 28.456625, 45.991386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098526, 28.800579, 46.543224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725437, 28.943720, 46.525436>,  <39.501583, 29.029604, 46.514763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725437, 28.943720, 46.525436>,  <40.098526, 28.800579, 46.543224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725437, 28.943720, 46.525436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113169, -0.173394, 0.978329,
		0.342388, 0.917537, 0.202226,
		-0.932718, 0.357854, -0.044469,
		39.445621, 29.051077, 46.512096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.749146, 30.961594, 46.040218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116196, 30.805273, 46.069172>,  <33.336426, 30.711481, 46.086544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116196, 30.805273, 46.069172>,  <32.749146, 30.961594, 46.040218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116196, 30.805273, 46.069172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234050, 0.384144, -0.893115,
		0.321225, 0.836486, 0.443966,
		0.917625, -0.390801, 0.072383,
		33.391483, 30.688032, 46.090885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155357, 31.488518, 45.899303>,  <32.749146, 30.961594, 46.040218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155357, 31.488518, 45.899303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.409790, 31.188696, 45.826023>,  <33.562450, 31.008802, 45.782055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.409790, 31.188696, 45.826023>,  <33.155357, 31.488518, 45.899303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409790, 31.188696, 45.826023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198721, 0.388549, -0.899744,
		0.745592, 0.535906, 0.396103,
		0.636084, -0.749556, -0.183203,
		33.600616, 30.963829, 45.771061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762611, 31.769739, 45.619312>,  <33.155357, 31.488518, 45.899303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762611, 31.769739, 45.619312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.734226, 31.395046, 45.482201>,  <33.717197, 31.170231, 45.399933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.734226, 31.395046, 45.482201>,  <33.762611, 31.769739, 45.619312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734226, 31.395046, 45.482201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217387, 0.320862, -0.921841,
		0.973503, -0.139929, 0.180865,
		-0.070960, -0.936732, -0.342779,
		33.712936, 31.114027, 45.379368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349178, 31.783386, 45.274605>,  <33.762611, 31.769739, 45.619312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349178, 31.783386, 45.274605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.152004, 31.481701, 45.101086>,  <34.033699, 31.300690, 44.996975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.152004, 31.481701, 45.101086>,  <34.349178, 31.783386, 45.274605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152004, 31.481701, 45.101086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000375, 0.498763, -0.866738,
		0.870067, -0.427081, -0.246140,
		-0.492933, -0.754213, -0.433797,
		34.004124, 31.255438, 44.970947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746502, 31.501892, 44.637444>,  <34.349178, 31.783386, 45.274605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746502, 31.501892, 44.637444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353798, 31.428596, 44.617153>,  <34.118176, 31.384619, 44.604980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353798, 31.428596, 44.617153>,  <34.746502, 31.501892, 44.637444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353798, 31.428596, 44.617153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081450, 0.646389, -0.758648,
		0.171800, -0.740678, -0.649524,
		-0.981759, -0.183239, -0.050721,
		34.059269, 31.373625, 44.601936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686939, 31.362595, 44.020302>,  <34.746502, 31.501892, 44.637444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686939, 31.362595, 44.020302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.319023, 31.454861, 44.147285>,  <34.098274, 31.510220, 44.223476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.319023, 31.454861, 44.147285>,  <34.686939, 31.362595, 44.020302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319023, 31.454861, 44.147285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187724, 0.451771, -0.872160,
		-0.344594, -0.861799, -0.372234,
		-0.919791, 0.230664, 0.317459,
		34.043087, 31.524059, 44.242523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298805, 31.214655, 43.476181>,  <34.686939, 31.362595, 44.020302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298805, 31.214655, 43.476181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067734, 31.473106, 43.675701>,  <33.929092, 31.628178, 43.795414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067734, 31.473106, 43.675701>,  <34.298805, 31.214655, 43.476181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067734, 31.473106, 43.675701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165952, 0.505350, -0.846806,
		-0.799216, -0.571959, -0.184703,
		-0.577679, 0.646130, 0.498802,
		33.894428, 31.666945, 43.825340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590858, 31.308878, 43.058369>,  <34.298805, 31.214655, 43.476181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590858, 31.308878, 43.058369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631237, 31.622328, 43.303562>,  <33.655464, 31.810398, 43.450676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631237, 31.622328, 43.303562>,  <33.590858, 31.308878, 43.058369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631237, 31.622328, 43.303562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163383, 0.620819, -0.766740,
		-0.981385, -0.022752, 0.190699,
		0.100945, 0.783624, 0.612979,
		33.661522, 31.857414, 43.487457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155029, 31.774843, 42.610909>,  <33.590858, 31.308878, 43.058369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155029, 31.774843, 42.610909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.319382, 31.982132, 42.910942>,  <33.417992, 32.106506, 43.090961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.319382, 31.982132, 42.910942>,  <33.155029, 31.774843, 42.610909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319382, 31.982132, 42.910942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088405, 0.841511, -0.532958,
		-0.907394, 0.152669, 0.391571,
		0.410877, 0.518220, 0.750085,
		33.442646, 32.137596, 43.135967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784492, 32.394226, 42.662216>,  <33.155029, 31.774843, 42.610909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784492, 32.394226, 42.662216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.146214, 32.461433, 42.819195>,  <33.363247, 32.501759, 42.913383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.146214, 32.461433, 42.819195>,  <32.784492, 32.394226, 42.662216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146214, 32.461433, 42.819195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116990, 0.786563, -0.606326,
		-0.410558, 0.594212, 0.691631,
		0.904298, 0.168018, 0.392447,
		33.417503, 32.511837, 42.936928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905899, 33.146812, 42.763153>,  <32.784492, 32.394226, 42.662216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905899, 33.146812, 42.763153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.291344, 33.041321, 42.780590>,  <33.522610, 32.978027, 42.791050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.291344, 33.041321, 42.780590>,  <32.905899, 33.146812, 42.763153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291344, 33.041321, 42.780590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233458, 0.750908, -0.617766,
		0.130188, 0.605463, 0.785153,
		0.963612, -0.263726, 0.043591,
		33.580429, 32.962204, 42.793667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173649, 33.793118, 42.792862>,  <32.905899, 33.146812, 42.763153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173649, 33.793118, 42.792862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.455616, 33.531120, 42.683987>,  <33.624794, 33.373924, 42.618664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.455616, 33.531120, 42.683987>,  <33.173649, 33.793118, 42.792862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455616, 33.531120, 42.683987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268062, 0.601293, -0.752721,
		0.656686, 0.457643, 0.599438,
		0.704915, -0.654988, -0.272184,
		33.667091, 33.334625, 42.602333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849144, 34.133888, 42.866512>,  <33.173649, 33.793118, 42.792862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849144, 34.133888, 42.866512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.861084, 33.855770, 42.579273>,  <33.868248, 33.688900, 42.406929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.861084, 33.855770, 42.579273>,  <33.849144, 34.133888, 42.866512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861084, 33.855770, 42.579273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019979, 0.718694, -0.695040,
		0.999355, 0.006399, 0.035343,
		0.029848, -0.695297, -0.718102,
		33.870037, 33.647182, 42.363842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293621, 34.447742, 42.428032>,  <33.849144, 34.133888, 42.866512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293621, 34.447742, 42.428032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.138618, 34.162918, 42.193836>,  <34.045616, 33.992023, 42.053318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.138618, 34.162918, 42.193836>,  <34.293621, 34.447742, 42.428032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138618, 34.162918, 42.193836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013197, 0.639335, -0.768815,
		0.921771, -0.290196, -0.257146,
		-0.387509, -0.712065, -0.585491,
		34.022366, 33.949299, 42.018188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043823, 34.305470, 42.520626>,  <34.293621, 34.447742, 42.428032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043823, 34.305470, 42.520626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.411335, 34.445015, 42.594532>,  <35.631844, 34.528744, 42.638874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.411335, 34.445015, 42.594532>,  <35.043823, 34.305470, 42.520626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411335, 34.445015, 42.594532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100912, -0.244927, 0.964276,
		0.381657, -0.904601, -0.189829,
		0.918779, 0.348867, 0.184763,
		35.686970, 34.549675, 42.649960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518547, 33.721283, 42.689369>,  <35.043823, 34.305470, 42.520626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518547, 33.721283, 42.689369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.642273, 34.069901, 42.841541>,  <35.716511, 34.279072, 42.932846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.642273, 34.069901, 42.841541>,  <35.518547, 33.721283, 42.689369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642273, 34.069901, 42.841541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019782, -0.394067, 0.918869,
		0.950753, -0.291748, -0.104651,
		0.309318, 0.871547, 0.380432,
		35.735069, 34.331364, 42.955669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067207, 33.487782, 43.167583>,  <35.518547, 33.721283, 42.689369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067207, 33.487782, 43.167583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.951191, 33.855244, 43.274872>,  <35.881580, 34.075722, 43.339245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.951191, 33.855244, 43.274872>,  <36.067207, 33.487782, 43.167583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951191, 33.855244, 43.274872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053495, -0.295392, 0.953877,
		0.955518, 0.262313, 0.134819,
		-0.290039, 0.918659, 0.268221,
		35.864178, 34.130840, 43.355339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293667, 33.455105, 43.820473>,  <36.067207, 33.487782, 43.167583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293667, 33.455105, 43.820473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.042332, 33.765881, 43.804653>,  <35.891533, 33.952347, 43.795162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.042332, 33.765881, 43.804653>,  <36.293667, 33.455105, 43.820473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042332, 33.765881, 43.804653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385518, -0.266823, 0.883279,
		0.675701, 0.570240, 0.467178,
		-0.628335, 0.776937, -0.039545,
		35.853832, 33.998962, 43.792789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558689, 33.849575, 44.363796>,  <36.293667, 33.455105, 43.820473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558689, 33.849575, 44.363796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.177162, 33.945507, 44.291443>,  <35.948246, 34.003067, 44.248032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.177162, 33.945507, 44.291443>,  <36.558689, 33.849575, 44.363796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177162, 33.945507, 44.291443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242791, -0.260918, 0.934331,
		0.176889, 0.935095, 0.307097,
		-0.953815, 0.239833, -0.180879,
		35.891018, 34.017456, 44.237179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405682, 34.238827, 44.902576>,  <36.558689, 33.849575, 44.363796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405682, 34.238827, 44.902576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062096, 34.104134, 44.748280>,  <35.855946, 34.023319, 44.655701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062096, 34.104134, 44.748280>,  <36.405682, 34.238827, 44.902576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062096, 34.104134, 44.748280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282946, -0.315741, 0.905676,
		-0.426764, 0.887085, 0.175932,
		-0.858961, -0.336730, -0.385744,
		35.804409, 34.003113, 44.632557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852959, 34.493084, 45.344357>,  <36.405682, 34.238827, 44.902576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852959, 34.493084, 45.344357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.713833, 34.164062, 45.164387>,  <35.630356, 33.966648, 45.056404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.713833, 34.164062, 45.164387>,  <35.852959, 34.493084, 45.344357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713833, 34.164062, 45.164387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061728, -0.458753, 0.886417,
		-0.935529, 0.336081, 0.108786,
		-0.347813, -0.822554, -0.449922,
		35.609489, 33.917297, 45.029411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274200, 34.285385, 45.760406>,  <35.852959, 34.493084, 45.344357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274200, 34.285385, 45.760406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.379799, 33.956856, 45.558125>,  <35.443157, 33.759739, 45.436756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.379799, 33.956856, 45.558125>,  <35.274200, 34.285385, 45.760406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379799, 33.956856, 45.558125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045530, -0.534334, 0.844047,
		-0.963448, -0.199801, -0.178457,
		0.263997, -0.821320, -0.505706,
		35.459000, 33.710461, 45.406414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673737, 33.807507, 45.803833>,  <35.274200, 34.285385, 45.760406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673737, 33.807507, 45.803833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.982189, 33.565098, 45.725761>,  <35.167263, 33.419655, 45.678917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.982189, 33.565098, 45.725761>,  <34.673737, 33.807507, 45.803833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982189, 33.565098, 45.725761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186933, -0.508561, 0.840489,
		-0.608614, -0.611643, -0.505453,
		0.771132, -0.606019, -0.195181,
		35.213528, 33.383293, 45.667206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489429, 33.263062, 45.986092>,  <34.673737, 33.807507, 45.803833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489429, 33.263062, 45.986092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.882427, 33.190033, 45.971272>,  <35.118225, 33.146214, 45.962379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.882427, 33.190033, 45.971272>,  <34.489429, 33.263062, 45.986092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882427, 33.190033, 45.971272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078615, -0.586609, 0.806045,
		-0.168895, -0.789022, -0.590693,
		0.982494, -0.182574, -0.037047,
		35.177174, 33.135262, 45.960159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612526, 32.526058, 46.043167>,  <34.489429, 33.263062, 45.986092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612526, 32.526058, 46.043167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.956429, 32.685139, 46.171326>,  <35.162769, 32.780586, 46.248219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.956429, 32.685139, 46.171326>,  <34.612526, 32.526058, 46.043167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956429, 32.685139, 46.171326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006065, -0.619362, 0.785082,
		0.510669, -0.676922, -0.530088,
		0.859756, 0.397702, 0.320394,
		35.214355, 32.804451, 46.267445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050072, 32.015102, 46.163052>,  <34.612526, 32.526058, 46.043167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050072, 32.015102, 46.163052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.221439, 32.313816, 46.366528>,  <35.324261, 32.493046, 46.488613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.221439, 32.313816, 46.366528>,  <35.050072, 32.015102, 46.163052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221439, 32.313816, 46.366528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090207, -0.595511, 0.798266,
		0.899064, -0.296108, -0.322495,
		0.428422, 0.746784, 0.508692,
		35.349968, 32.537849, 46.519135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663315, 31.688526, 46.635033>,  <35.050072, 32.015102, 46.163052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663315, 31.688526, 46.635033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603809, 32.043247, 46.810051>,  <35.568108, 32.256081, 46.915062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603809, 32.043247, 46.810051>,  <35.663315, 31.688526, 46.635033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603809, 32.043247, 46.810051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240507, -0.396738, 0.885864,
		0.959180, 0.237018, -0.154262,
		-0.148764, 0.886804, 0.437548,
		35.559181, 32.309288, 46.941315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233204, 31.784479, 47.100033>,  <35.663315, 31.688526, 46.635033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233204, 31.784479, 47.100033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.923355, 31.997908, 47.235836>,  <35.737446, 32.125965, 47.317318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.923355, 31.997908, 47.235836>,  <36.233204, 31.784479, 47.100033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923355, 31.997908, 47.235836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053645, -0.479460, 0.875923,
		0.630146, 0.696721, 0.342777,
		-0.774622, 0.533571, 0.339505,
		35.690968, 32.157978, 47.337688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784851, 32.071667, 47.441368>,  <36.233204, 31.784479, 47.100033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784851, 32.071667, 47.441368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.156124, 32.017223, 47.579899>,  <37.378887, 31.984558, 47.663017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.156124, 32.017223, 47.579899>,  <36.784851, 32.071667, 47.441368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156124, 32.017223, 47.579899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371834, 0.375410, -0.849003,
		-0.014462, 0.916811, 0.399059,
		0.928186, -0.136105, 0.346331,
		37.434582, 31.976391, 47.683800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161331, 32.730965, 47.267963>,  <36.784851, 32.071667, 47.441368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161331, 32.730965, 47.267963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.420567, 32.430325, 47.317081>,  <37.576107, 32.249939, 47.346554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.420567, 32.430325, 47.317081>,  <37.161331, 32.730965, 47.267963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420567, 32.430325, 47.317081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424630, 0.222776, -0.877531,
		0.632195, 0.620861, 0.463531,
		0.648088, -0.751600, 0.122798,
		37.614994, 32.204845, 47.353920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705868, 33.034828, 47.080418>,  <37.161331, 32.730965, 47.267963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705868, 33.034828, 47.080418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.782291, 32.642300, 47.071487>,  <37.828148, 32.406780, 47.066128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.782291, 32.642300, 47.071487>,  <37.705868, 33.034828, 47.080418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782291, 32.642300, 47.071487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442603, 0.106432, -0.890379,
		0.876127, 0.160237, 0.454672,
		0.191063, -0.981324, -0.022327,
		37.839611, 32.347904, 47.064789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291019, 33.035229, 46.826569>,  <37.705868, 33.034828, 47.080418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291019, 33.035229, 46.826569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.168793, 32.658451, 46.770885>,  <38.095459, 32.432384, 46.737476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.168793, 32.658451, 46.770885>,  <38.291019, 33.035229, 46.826569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168793, 32.658451, 46.770885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531109, -0.047264, -0.845984,
		0.790287, -0.332437, 0.514716,
		-0.305563, -0.941941, -0.139208,
		38.077126, 32.375870, 46.729122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783413, 32.567219, 46.787739>,  <38.291019, 33.035229, 46.826569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783413, 32.567219, 46.787739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.504093, 32.377998, 46.572857>,  <38.336502, 32.264465, 46.443928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.504093, 32.377998, 46.572857>,  <38.783413, 32.567219, 46.787739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504093, 32.377998, 46.572857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575741, 0.074743, -0.814209,
		0.425317, -0.877858, 0.220163,
		-0.698304, -0.473054, -0.537208,
		38.294601, 32.236084, 46.411694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195591, 32.362076, 46.358578>,  <38.783413, 32.567219, 46.787739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195591, 32.362076, 46.358578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.853558, 32.271935, 46.171799>,  <38.648338, 32.217850, 46.059731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.853558, 32.271935, 46.171799>,  <39.195591, 32.362076, 46.358578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853558, 32.271935, 46.171799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465969, 0.060924, -0.882701,
		0.227370, -0.972370, 0.052914,
		-0.855088, -0.225356, -0.466946,
		38.597031, 32.204327, 46.031715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371140, 31.981215, 45.764507>,  <39.195591, 32.362076, 46.358578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371140, 31.981215, 45.764507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.005928, 32.129993, 45.697536>,  <38.786800, 32.219261, 45.657356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.005928, 32.129993, 45.697536>,  <39.371140, 31.981215, 45.764507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005928, 32.129993, 45.697536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203171, 0.058787, -0.977377,
		-0.353689, -0.926391, -0.129243,
		-0.913031, 0.371946, -0.167423,
		38.732018, 32.241577, 45.647308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949631, 31.562466, 45.259262>,  <39.371140, 31.981215, 45.764507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949631, 31.562466, 45.259262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.834770, 31.945442, 45.247616>,  <38.765854, 32.175228, 45.240627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.834770, 31.945442, 45.247616>,  <38.949631, 31.562466, 45.259262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834770, 31.945442, 45.247616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287065, 0.057018, -0.956213,
		-0.913858, -0.282939, -0.291221,
		-0.287155, 0.957442, -0.029115,
		38.748623, 32.232674, 45.238880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549049, 31.612173, 44.670166>,  <38.949631, 31.562466, 45.259262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549049, 31.612173, 44.670166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.690983, 31.977333, 44.750877>,  <38.776142, 32.196430, 44.799305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.690983, 31.977333, 44.750877>,  <38.549049, 31.612173, 44.670166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690983, 31.977333, 44.750877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383467, 0.054725, -0.921932,
		-0.852672, 0.404503, -0.330648,
		0.354830, 0.912898, 0.201776,
		38.797432, 32.251202, 44.811409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147324, 32.032700, 44.250423>,  <38.549049, 31.612173, 44.670166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147324, 32.032700, 44.250423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.478481, 32.233021, 44.351448>,  <38.677177, 32.353214, 44.412064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.478481, 32.233021, 44.351448>,  <38.147324, 32.032700, 44.250423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478481, 32.233021, 44.351448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083599, 0.335089, -0.938470,
		-0.554620, 0.798068, 0.235551,
		0.827893, 0.500803, 0.252565,
		38.726849, 32.383263, 44.427219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195560, 32.822628, 43.940460>,  <38.147324, 32.032700, 44.250423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195560, 32.822628, 43.940460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.561157, 32.671455, 43.999496>,  <38.780518, 32.580753, 44.034916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.561157, 32.671455, 43.999496>,  <38.195560, 32.822628, 43.940460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561157, 32.671455, 43.999496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301674, 0.389801, -0.870085,
		0.271300, 0.839777, 0.470288,
		0.913996, -0.377928, 0.147586,
		38.835358, 32.558079, 44.043774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611305, 33.334820, 43.675217>,  <38.195560, 32.822628, 43.940460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611305, 33.334820, 43.675217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.838791, 33.008377, 43.716282>,  <38.975281, 32.812511, 43.740921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.838791, 33.008377, 43.716282>,  <38.611305, 33.334820, 43.675217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838791, 33.008377, 43.716282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384623, 0.153521, -0.910218,
		0.727072, 0.557138, 0.401202,
		0.568710, -0.816106, 0.102667,
		39.009403, 32.763546, 43.747082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269405, 33.673222, 43.538177>,  <38.611305, 33.334820, 43.675217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269405, 33.673222, 43.538177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.276676, 33.278980, 43.470947>,  <39.281040, 33.042435, 43.430607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.276676, 33.278980, 43.470947>,  <39.269405, 33.673222, 43.538177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276676, 33.278980, 43.470947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438562, 0.158933, -0.884536,
		0.898517, -0.057634, 0.435139,
		0.018179, -0.985606, -0.168080,
		39.282131, 32.983299, 43.420525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064045, 33.472248, 43.454639>,  <39.269405, 33.673222, 43.538177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064045, 33.472248, 43.454639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.848297, 33.189068, 43.272266>,  <39.718849, 33.019157, 43.162842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.848297, 33.189068, 43.272266>,  <40.064045, 33.472248, 43.454639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848297, 33.189068, 43.272266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550583, 0.113174, -0.827073,
		0.637130, -0.697132, 0.328744,
		-0.539374, -0.707954, -0.455935,
		39.686485, 32.976681, 43.135487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.381516, 44.331337, 36.353878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.085508, 44.322163, 36.622757>,  <24.907904, 44.316658, 36.784084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.085508, 44.322163, 36.622757>,  <25.381516, 44.331337, 36.353878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085508, 44.322163, 36.622757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025054, -0.997785, -0.061627,
		0.672122, -0.062446, 0.737803,
		-0.740016, -0.022936, 0.672198,
		24.863503, 44.315281, 36.824417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632269, 43.932587, 36.926014>,  <25.381516, 44.331337, 36.353878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632269, 43.932587, 36.926014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.243242, 43.911339, 36.835423>,  <25.009827, 43.898590, 36.781067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.243242, 43.911339, 36.835423>,  <25.632269, 43.932587, 36.926014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243242, 43.911339, 36.835423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100859, -0.973597, -0.204786,
		-0.209617, -0.222011, 0.952246,
		-0.972568, -0.053116, -0.226475,
		24.951471, 43.895405, 36.767479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.273359, 43.386406, 37.361710>,  <25.632269, 43.932587, 36.926014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.273359, 43.386406, 37.361710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.039322, 43.448067, 37.043236>,  <24.898899, 43.485065, 36.852154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.039322, 43.448067, 37.043236>,  <25.273359, 43.386406, 37.361710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.039322, 43.448067, 37.043236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014484, -0.979624, -0.200315,
		-0.810838, -0.128734, 0.570937,
		-0.585092, 0.154154, -0.796181,
		24.863794, 43.494312, 36.804382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804056, 42.905453, 37.467869>,  <25.273359, 43.386406, 37.361710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804056, 42.905453, 37.467869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.801805, 42.998497, 37.078846>,  <24.800455, 43.054325, 36.845432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.801805, 42.998497, 37.078846>,  <24.804056, 42.905453, 37.467869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.801805, 42.998497, 37.078846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107572, -0.966784, -0.231857,
		-0.994181, -0.105924, -0.019584,
		-0.005626, 0.232615, -0.972553,
		24.800117, 43.068283, 36.787079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.328283, 42.393028, 37.128483>,  <24.804056, 42.905453, 37.467869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.328283, 42.393028, 37.128483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.538170, 42.551609, 36.827152>,  <24.664103, 42.646755, 36.646355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.538170, 42.551609, 36.827152>,  <24.328283, 42.393028, 37.128483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.538170, 42.551609, 36.827152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015253, -0.880416, -0.473957,
		-0.851140, 0.260184, -0.455922,
		0.524717, 0.396449, -0.753326,
		24.695585, 42.670544, 36.601154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.032129, 42.084103, 36.554276>,  <24.328283, 42.393028, 37.128483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.032129, 42.084103, 36.554276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.381407, 42.228882, 36.423725>,  <24.590973, 42.315750, 36.345394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.381407, 42.228882, 36.423725>,  <24.032129, 42.084103, 36.554276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.381407, 42.228882, 36.423725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162594, -0.847648, -0.505031,
		-0.459453, 0.387922, -0.799011,
		0.873193, 0.361952, -0.326381,
		24.643364, 42.337467, 36.325809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.107588, 41.787029, 35.841072>,  <24.032129, 42.084103, 36.554276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.107588, 41.787029, 35.841072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.471392, 41.916229, 35.945736>,  <24.689674, 41.993748, 36.008533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.471392, 41.916229, 35.945736>,  <24.107588, 41.787029, 35.841072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.471392, 41.916229, 35.945736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401611, -0.845182, -0.352669,
		0.107236, 0.425840, -0.898421,
		0.909510, 0.322997, 0.261656,
		24.744246, 42.013130, 36.024231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.491032, 41.630096, 35.246655>,  <24.107588, 41.787029, 35.841072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.491032, 41.630096, 35.246655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.735823, 41.668499, 35.560665>,  <24.882698, 41.691540, 35.749073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.735823, 41.668499, 35.560665>,  <24.491032, 41.630096, 35.246655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.735823, 41.668499, 35.560665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538037, -0.778046, -0.324284,
		0.579655, 0.620828, -0.527800,
		0.611977, 0.096003, 0.785027,
		24.919416, 41.697300, 35.796173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021641, 41.416203, 34.958057>,  <24.491032, 41.630096, 35.246655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.021641, 41.416203, 34.958057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.096563, 41.383621, 35.349625>,  <25.141516, 41.364071, 35.584564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.096563, 41.383621, 35.349625>,  <25.021641, 41.416203, 34.958057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.096563, 41.383621, 35.349625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460459, -0.873005, -0.160746,
		0.867695, 0.480861, -0.126011,
		0.187305, -0.081456, 0.978919,
		25.152754, 41.359184, 35.643299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673796, 41.238293, 34.954739>,  <25.021641, 41.416203, 34.958057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673796, 41.238293, 34.954739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.501736, 41.106895, 35.291088>,  <25.398499, 41.028057, 35.492897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.501736, 41.106895, 35.291088>,  <25.673796, 41.238293, 34.954739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.501736, 41.106895, 35.291088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411866, -0.900269, -0.141003,
		0.803328, 0.285674, 0.522547,
		-0.430152, -0.328491, 0.840871,
		25.372690, 41.008347, 35.543350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253050, 41.020779, 35.501968>,  <25.673796, 41.238293, 34.954739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253050, 41.020779, 35.501968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.922739, 40.833244, 35.627369>,  <25.724552, 40.720722, 35.702610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.922739, 40.833244, 35.627369>,  <26.253050, 41.020779, 35.501968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922739, 40.833244, 35.627369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435283, -0.883252, -0.174340,
		0.358640, -0.007503, 0.933446,
		-0.825776, -0.468838, 0.313503,
		25.675007, 40.692593, 35.721420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546558, 40.342461, 35.686104>,  <26.253050, 41.020779, 35.501968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546558, 40.342461, 35.686104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.159359, 40.258961, 35.741814>,  <25.927038, 40.208862, 35.775242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.159359, 40.258961, 35.741814>,  <26.546558, 40.342461, 35.686104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159359, 40.258961, 35.741814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142684, -0.914400, -0.378833,
		0.206439, -0.346837, 0.914925,
		-0.968000, -0.208751, 0.139279,
		25.868959, 40.196335, 35.783596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597860, 39.642601, 36.051128>,  <26.546558, 40.342461, 35.686104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597860, 39.642601, 36.051128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.242014, 39.671177, 35.870693>,  <26.028507, 39.688320, 35.762432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.242014, 39.671177, 35.870693>,  <26.597860, 39.642601, 36.051128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242014, 39.671177, 35.870693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132359, -0.904978, -0.404347,
		-0.437111, -0.419419, 0.795626,
		-0.889615, 0.071436, -0.451090,
		25.975130, 39.692608, 35.735367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119116, 39.096676, 36.173542>,  <26.597860, 39.642601, 36.051128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119116, 39.096676, 36.173542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.042324, 39.259460, 35.816326>,  <25.996248, 39.357132, 35.601997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.042324, 39.259460, 35.816326>,  <26.119116, 39.096676, 36.173542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.042324, 39.259460, 35.816326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072149, -0.901655, -0.426395,
		-0.978743, -0.146292, 0.143737,
		-0.191980, 0.406961, -0.893044,
		25.984730, 39.381550, 35.548412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655794, 38.620895, 35.860485>,  <26.119116, 39.096676, 36.173542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655794, 38.620895, 35.860485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.797253, 38.842594, 35.559090>,  <25.882128, 38.975613, 35.378254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.797253, 38.842594, 35.559090>,  <25.655794, 38.620895, 35.860485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797253, 38.842594, 35.559090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138920, -0.827731, -0.543657,
		-0.925005, 0.087588, -0.369722,
		0.353648, 0.554247, -0.753487,
		25.903347, 39.008869, 35.333042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.440504, 38.297939, 35.328121>,  <25.655794, 38.620895, 35.860485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.440504, 38.297939, 35.328121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.695881, 38.544640, 35.143944>,  <25.849108, 38.692661, 35.033440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.695881, 38.544640, 35.143944>,  <25.440504, 38.297939, 35.328121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695881, 38.544640, 35.143944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179177, -0.700895, -0.690393,
		-0.748524, 0.358275, -0.557989,
		0.638442, 0.616754, -0.460442,
		25.887413, 38.729668, 35.005810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259268, 38.473598, 34.538029>,  <25.440504, 38.297939, 35.328121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.259268, 38.473598, 34.538029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.652636, 38.503372, 34.604179>,  <25.888657, 38.521236, 34.643867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.652636, 38.503372, 34.604179>,  <25.259268, 38.473598, 34.538029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652636, 38.503372, 34.604179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164613, -0.749044, -0.641744,
		0.076101, 0.658326, -0.748877,
		0.983418, 0.074437, 0.165372,
		25.947660, 38.525703, 34.653790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557911, 38.269447, 33.942371>,  <25.259268, 38.473598, 34.538029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557911, 38.269447, 33.942371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.882820, 38.217960, 34.169930>,  <26.077766, 38.187069, 34.306465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.882820, 38.217960, 34.169930>,  <25.557911, 38.269447, 33.942371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882820, 38.217960, 34.169930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329321, -0.703804, -0.629450,
		0.481412, 0.698635, -0.529293,
		0.812275, -0.128718, 0.568895,
		26.126503, 38.179344, 34.340599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130400, 38.237976, 33.476692>,  <25.557911, 38.269447, 33.942371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130400, 38.237976, 33.476692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.257032, 38.074333, 33.819016>,  <26.333012, 37.976147, 34.024410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.257032, 38.074333, 33.819016>,  <26.130400, 38.237976, 33.476692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257032, 38.074333, 33.819016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417153, -0.750238, -0.512958,
		0.851915, 0.519395, -0.066850,
		0.316581, -0.409111, 0.855807,
		26.352007, 37.951599, 34.075756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813545, 37.834438, 33.256168>,  <26.130400, 38.237976, 33.476692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813545, 37.834438, 33.256168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.741653, 37.689392, 33.621944>,  <26.698519, 37.602364, 33.841412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.741653, 37.689392, 33.621944>,  <26.813545, 37.834438, 33.256168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741653, 37.689392, 33.621944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244667, -0.916847, -0.315484,
		0.952803, 0.167031, 0.253507,
		-0.179732, -0.362619, 0.914442,
		26.687735, 37.580605, 33.896278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350628, 37.385868, 33.446312>,  <26.813545, 37.834438, 33.256168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350628, 37.385868, 33.446312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.048201, 37.277607, 33.684673>,  <26.866743, 37.212650, 33.827690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.048201, 37.277607, 33.684673>,  <27.350628, 37.385868, 33.446312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048201, 37.277607, 33.684673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174644, -0.960905, -0.214849,
		0.630759, -0.058369, 0.773780,
		-0.756070, -0.270654, 0.595906,
		26.821379, 37.196411, 33.863445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525177, 36.901524, 33.833942>,  <27.350628, 37.385868, 33.446312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525177, 36.901524, 33.833942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.129248, 36.852104, 33.805698>,  <26.891689, 36.822453, 33.788754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.129248, 36.852104, 33.805698>,  <27.525177, 36.901524, 33.833942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129248, 36.852104, 33.805698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137796, -0.956060, -0.258770,
		-0.035536, -0.265866, 0.963355,
		-0.989823, -0.123551, -0.070610,
		26.832300, 36.815041, 33.784515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155050, 36.713364, 33.519753>,  <27.525177, 36.901524, 33.833942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155050, 36.713364, 33.519753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.554272, 36.691105, 33.508518>,  <28.793804, 36.677750, 33.501778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.554272, 36.691105, 33.508518>,  <28.155050, 36.713364, 33.519753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554272, 36.691105, 33.508518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062185, 0.857562, 0.510608,
		-0.004325, -0.511362, 0.859355,
		0.998055, -0.055647, -0.028090,
		28.853689, 36.674412, 33.500092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376940, 36.928818, 34.140659>,  <28.155050, 36.713364, 33.519753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376940, 36.928818, 34.140659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.678486, 36.997528, 33.886990>,  <28.859413, 37.038754, 33.734787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.678486, 36.997528, 33.886990>,  <28.376940, 36.928818, 34.140659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678486, 36.997528, 33.886990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142406, 0.899556, 0.412941,
		0.641408, -0.401613, 0.653684,
		0.753867, 0.171775, -0.634174,
		28.904646, 37.049061, 33.696735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999926, 37.119141, 34.526306>,  <28.376940, 36.928818, 34.140659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999926, 37.119141, 34.526306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.054144, 37.279716, 34.163986>,  <29.086676, 37.376064, 33.946594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.054144, 37.279716, 34.163986>,  <28.999926, 37.119141, 34.526306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054144, 37.279716, 34.163986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077254, 0.907170, 0.413613,
		0.987754, -0.126040, 0.091951,
		0.135547, 0.401444, -0.905798,
		29.094809, 37.400150, 33.892246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410704, 37.726070, 34.659428>,  <28.999926, 37.119141, 34.526306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410704, 37.726070, 34.659428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313845, 37.814030, 34.281429>,  <29.255730, 37.866806, 34.054630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313845, 37.814030, 34.281429>,  <29.410704, 37.726070, 34.659428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313845, 37.814030, 34.281429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005188, 0.973671, 0.227901,
		0.970226, 0.060088, -0.234629,
		-0.242146, 0.219898, -0.944992,
		29.241201, 37.879997, 33.997932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936098, 38.087074, 34.481197>,  <29.410704, 37.726070, 34.659428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936098, 38.087074, 34.481197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621149, 38.166859, 34.247868>,  <29.432180, 38.214729, 34.107872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621149, 38.166859, 34.247868>,  <29.936098, 38.087074, 34.481197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621149, 38.166859, 34.247868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121355, 0.977846, 0.170560,
		0.604417, 0.063505, -0.794133,
		-0.787371, 0.199461, -0.583320,
		29.384937, 38.226696, 34.072872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089922, 38.657421, 34.036083>,  <29.936098, 38.087074, 34.481197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089922, 38.657421, 34.036083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.690220, 38.652023, 34.050545>,  <29.450399, 38.648785, 34.059223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.690220, 38.652023, 34.050545>,  <30.089922, 38.657421, 34.036083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690220, 38.652023, 34.050545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006708, 0.983361, 0.181541,
		-0.038004, 0.181163, -0.982718,
		-0.999255, -0.013491, 0.036157,
		29.390444, 38.647976, 34.061390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863979, 39.293621, 33.681759>,  <30.089922, 38.657421, 34.036083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863979, 39.293621, 33.681759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.543249, 39.168808, 33.885609>,  <29.350811, 39.093922, 34.007919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.543249, 39.168808, 33.885609>,  <29.863979, 39.293621, 33.681759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543249, 39.168808, 33.885609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239915, 0.949185, 0.203688,
		-0.547283, 0.041056, -0.835940,
		-0.801824, -0.312030, 0.509622,
		29.302702, 39.075199, 34.038494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299294, 39.645390, 33.372040>,  <29.863979, 39.293621, 33.681759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299294, 39.645390, 33.372040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.168339, 39.525906, 33.730614>,  <29.089766, 39.454216, 33.945759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.168339, 39.525906, 33.730614>,  <29.299294, 39.645390, 33.372040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168339, 39.525906, 33.730614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264980, 0.939671, 0.216340,
		-0.906974, -0.166709, -0.386789,
		-0.327389, -0.298706, 0.896432,
		29.070122, 39.436295, 33.999542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632008, 39.883324, 33.484264>,  <29.299294, 39.645390, 33.372040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632008, 39.883324, 33.484264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.745083, 39.813438, 33.861530>,  <28.812927, 39.771507, 34.087891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.745083, 39.813438, 33.861530>,  <28.632008, 39.883324, 33.484264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745083, 39.813438, 33.861530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539382, 0.784135, 0.306921,
		-0.793193, -0.595489, 0.127426,
		0.282687, -0.174716, 0.943166,
		28.829889, 39.761024, 34.144482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029135, 39.885044, 33.989082>,  <28.632008, 39.883324, 33.484264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029135, 39.885044, 33.989082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.343227, 39.963261, 34.224087>,  <28.531683, 40.010193, 34.365089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.343227, 39.963261, 34.224087>,  <28.029135, 39.885044, 33.989082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343227, 39.963261, 34.224087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444805, 0.838212, 0.315515,
		-0.430764, -0.509082, 0.745170,
		0.785233, 0.195543, 0.587513,
		28.578798, 40.021923, 34.400341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741541, 40.161560, 34.598278>,  <28.029135, 39.885044, 33.989082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741541, 40.161560, 34.598278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120451, 40.283215, 34.638626>,  <28.347797, 40.356205, 34.662834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120451, 40.283215, 34.638626>,  <27.741541, 40.161560, 34.598278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120451, 40.283215, 34.638626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314954, 0.825833, 0.467764,
		0.058959, -0.474871, 0.878078,
		0.947274, 0.304133, 0.100872,
		28.404633, 40.374454, 34.668888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848518, 40.264454, 35.329361>,  <27.741541, 40.161560, 34.598278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848518, 40.264454, 35.329361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.136175, 40.465477, 35.137417>,  <28.308769, 40.586090, 35.022251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.136175, 40.465477, 35.137417>,  <27.848518, 40.264454, 35.329361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136175, 40.465477, 35.137417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152692, 0.788000, 0.596441,
		0.677877, -0.355657, 0.643422,
		0.719144, 0.502559, -0.479860,
		28.351919, 40.616245, 34.993458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271940, 40.546299, 35.884151>,  <27.848518, 40.264454, 35.329361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271940, 40.546299, 35.884151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.338860, 40.767303, 35.557533>,  <28.379011, 40.899906, 35.361561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.338860, 40.767303, 35.557533>,  <28.271940, 40.546299, 35.884151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338860, 40.767303, 35.557533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201278, 0.829915, 0.520316,
		0.965142, 0.077305, 0.250050,
		0.167297, 0.552508, -0.816545,
		28.389050, 40.933056, 35.312569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508078, 41.115456, 36.101871>,  <28.271940, 40.546299, 35.884151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508078, 41.115456, 36.101871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.419556, 41.234802, 35.730495>,  <28.366442, 41.306412, 35.507671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.419556, 41.234802, 35.730495>,  <28.508078, 41.115456, 36.101871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419556, 41.234802, 35.730495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227962, 0.909842, 0.346730,
		0.948187, 0.288382, -0.133335,
		-0.221304, 0.298369, -0.928440,
		28.353165, 41.324314, 35.451965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870272, 41.782059, 36.002087>,  <28.508078, 41.115456, 36.101871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870272, 41.782059, 36.002087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.586674, 41.784355, 35.720013>,  <28.416515, 41.785732, 35.550766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.586674, 41.784355, 35.720013>,  <28.870272, 41.782059, 36.002087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586674, 41.784355, 35.720013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193903, 0.959838, 0.202763,
		0.678031, 0.280496, -0.679409,
		-0.708996, 0.005740, -0.705189,
		28.373974, 41.786076, 35.508457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959873, 42.410458, 35.784348>,  <28.870272, 41.782059, 36.002087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959873, 42.410458, 35.784348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582743, 42.335590, 35.674046>,  <28.356464, 42.290672, 35.607864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582743, 42.335590, 35.674046>,  <28.959873, 42.410458, 35.784348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582743, 42.335590, 35.674046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250053, 0.944281, 0.214025,
		0.220336, 0.270744, -0.937096,
		-0.942828, -0.187166, -0.275759,
		28.299894, 42.279442, 35.591316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723663, 43.007744, 35.427891>,  <28.959873, 42.410458, 35.784348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723663, 43.007744, 35.427891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374849, 42.824409, 35.496574>,  <28.165562, 42.714409, 35.537785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374849, 42.824409, 35.496574>,  <28.723663, 43.007744, 35.427891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374849, 42.824409, 35.496574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406447, 0.873592, 0.267654,
		-0.272680, 0.163612, -0.948091,
		-0.872036, -0.458333, 0.171712,
		28.113239, 42.686909, 35.548088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237093, 43.535053, 35.323017>,  <28.723663, 43.007744, 35.427891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237093, 43.535053, 35.323017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.034311, 43.260639, 35.531765>,  <27.912642, 43.095989, 35.657013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.034311, 43.260639, 35.531765>,  <28.237093, 43.535053, 35.323017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034311, 43.260639, 35.531765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531043, 0.725471, 0.437819,
		-0.678964, -0.055183, -0.732095,
		-0.506954, -0.686037, 0.521873,
		27.882225, 43.054829, 35.688328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522305, 43.478996, 35.050739>,  <28.237093, 43.535053, 35.323017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522305, 43.478996, 35.050739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.519335, 43.350945, 35.429676>,  <27.517553, 43.274113, 35.657040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.519335, 43.350945, 35.429676>,  <27.522305, 43.478996, 35.050739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.519335, 43.350945, 35.429676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730115, 0.649076, 0.213616,
		-0.683284, -0.690086, -0.238547,
		-0.007422, -0.320127, 0.947345,
		27.517109, 43.254906, 35.713879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822523, 43.310196, 35.290630>,  <27.522305, 43.478996, 35.050739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822523, 43.310196, 35.290630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.031475, 43.394886, 35.621033>,  <27.156847, 43.445702, 35.819275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.031475, 43.394886, 35.621033>,  <26.822523, 43.310196, 35.290630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031475, 43.394886, 35.621033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766404, 0.541241, 0.345952,
		-0.373820, -0.813775, 0.445005,
		0.522382, 0.211730, 0.826007,
		27.188190, 43.458405, 35.868835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.964359, 29.253531, 47.140789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.597054, 29.157736, 47.014652>,  <39.376671, 29.100260, 46.938969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.597054, 29.157736, 47.014652>,  <39.964359, 29.253531, 47.140789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597054, 29.157736, 47.014652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317182, -0.031898, 0.947828,
		-0.237052, 0.970375, -0.046670,
		-0.918261, -0.239487, -0.315347,
		39.321575, 29.085890, 46.920048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439724, 29.746637, 47.534843>,  <39.964359, 29.253531, 47.140789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439724, 29.746637, 47.534843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.232834, 29.440203, 47.382221>,  <39.108700, 29.256342, 47.290649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.232834, 29.440203, 47.382221>,  <39.439724, 29.746637, 47.534843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232834, 29.440203, 47.382221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370071, -0.201794, 0.906823,
		-0.771701, 0.610238, -0.179133,
		-0.517229, -0.766087, -0.381555,
		39.077663, 29.210377, 47.267754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789742, 29.888214, 47.783783>,  <39.439724, 29.746637, 47.534843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789742, 29.888214, 47.783783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.804100, 29.499517, 47.690464>,  <38.812717, 29.266300, 47.634472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.804100, 29.499517, 47.690464>,  <38.789742, 29.888214, 47.783783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804100, 29.499517, 47.690464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133153, -0.236020, 0.962583,
		-0.990445, -0.003491, -0.137863,
		0.035899, -0.971742, -0.233299,
		38.814869, 29.207994, 47.620476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317020, 29.608778, 48.322765>,  <38.789742, 29.888214, 47.783783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317020, 29.608778, 48.322765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.529408, 29.304615, 48.173180>,  <38.656841, 29.122116, 48.083427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.529408, 29.304615, 48.173180>,  <38.317020, 29.608778, 48.322765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529408, 29.304615, 48.173180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060126, -0.474011, 0.878464,
		-0.845257, -0.443949, -0.297405,
		0.530966, -0.760410, -0.373968,
		38.688698, 29.076492, 48.060989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883633, 28.985247, 48.308834>,  <38.317020, 29.608778, 48.322765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883633, 28.985247, 48.308834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266396, 28.869457, 48.318104>,  <38.496052, 28.799984, 48.323666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266396, 28.869457, 48.318104>,  <37.883633, 28.985247, 48.308834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266396, 28.869457, 48.318104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162578, -0.467886, 0.868707,
		-0.240626, -0.835037, -0.494785,
		0.956905, -0.289474, 0.023173,
		38.553467, 28.782616, 48.325054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877285, 28.297045, 48.591583>,  <37.883633, 28.985247, 48.308834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877285, 28.297045, 48.591583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256763, 28.413378, 48.641216>,  <38.484451, 28.483177, 48.670994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256763, 28.413378, 48.641216>,  <37.877285, 28.297045, 48.591583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256763, 28.413378, 48.641216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062063, -0.556051, 0.828828,
		0.310045, -0.778604, -0.545572,
		0.948694, 0.290834, 0.124078,
		38.541370, 28.500628, 48.678440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133427, 27.653839, 48.779247>,  <37.877285, 28.297045, 48.591583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133427, 27.653839, 48.779247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.401722, 27.927519, 48.893772>,  <38.562698, 28.091726, 48.962486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.401722, 27.927519, 48.893772>,  <38.133427, 27.653839, 48.779247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401722, 27.927519, 48.893772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125269, -0.484991, 0.865501,
		0.731036, -0.544661, -0.411012,
		0.670742, 0.684199, 0.286317,
		38.602943, 28.132778, 48.979668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696335, 27.315378, 49.047260>,  <38.133427, 27.653839, 48.779247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696335, 27.315378, 49.047260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.743309, 27.682119, 49.199886>,  <38.771492, 27.902164, 49.291462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.743309, 27.682119, 49.199886>,  <38.696335, 27.315378, 49.047260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743309, 27.682119, 49.199886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160419, -0.396694, 0.903825,
		0.980039, -0.044927, -0.193665,
		0.117432, 0.916851, 0.381568,
		38.778538, 27.957174, 49.314358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243587, 27.221546, 49.417107>,  <38.696335, 27.315378, 49.047260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243587, 27.221546, 49.417107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.067089, 27.555376, 49.549038>,  <38.961189, 27.755674, 49.628197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.067089, 27.555376, 49.549038>,  <39.243587, 27.221546, 49.417107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067089, 27.555376, 49.549038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155924, -0.290649, 0.944040,
		0.883735, 0.467984, -0.001882,
		-0.441248, 0.834575, 0.329826,
		38.934715, 27.805748, 49.647987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644348, 27.425711, 50.031925>,  <39.243587, 27.221546, 49.417107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644348, 27.425711, 50.031925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.297348, 27.620718, 50.071449>,  <39.089146, 27.737722, 50.095165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.297348, 27.620718, 50.071449>,  <39.644348, 27.425711, 50.031925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297348, 27.620718, 50.071449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077355, -0.328437, 0.941353,
		0.491380, 0.808983, 0.322632,
		-0.867503, 0.487519, 0.098809,
		39.037098, 27.766973, 50.101093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799229, 27.748186, 50.693069>,  <39.644348, 27.425711, 50.031925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799229, 27.748186, 50.693069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.407745, 27.776245, 50.615913>,  <39.172855, 27.793081, 50.569618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.407745, 27.776245, 50.615913>,  <39.799229, 27.748186, 50.693069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407745, 27.776245, 50.615913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198672, -0.087788, 0.976126,
		0.051540, 0.993666, 0.099856,
		-0.978710, 0.070148, -0.192889,
		39.114132, 27.797289, 50.558048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543556, 28.234655, 51.148487>,  <39.799229, 27.748186, 50.693069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543556, 28.234655, 51.148487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237240, 28.001064, 51.040756>,  <39.053452, 27.860909, 50.976116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237240, 28.001064, 51.040756>,  <39.543556, 28.234655, 51.148487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237240, 28.001064, 51.040756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381051, 0.074671, 0.921534,
		-0.518046, 0.808327, -0.279708,
		-0.765786, -0.583980, -0.269331,
		39.007504, 27.825871, 50.959957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005432, 28.659735, 51.156593>,  <39.543556, 28.234655, 51.148487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005432, 28.659735, 51.156593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.933273, 28.272388, 51.225559>,  <38.889977, 28.039980, 51.266937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.933273, 28.272388, 51.225559>,  <39.005432, 28.659735, 51.156593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933273, 28.272388, 51.225559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384659, 0.230784, 0.893743,
		-0.905259, 0.094911, -0.414123,
		-0.180399, -0.968365, 0.172411,
		38.879154, 27.981878, 51.277283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295414, 28.520731, 51.541733>,  <39.005432, 28.659735, 51.156593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295414, 28.520731, 51.541733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.575455, 28.251804, 51.637939>,  <38.743481, 28.090448, 51.695663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.575455, 28.251804, 51.637939>,  <38.295414, 28.520731, 51.541733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575455, 28.251804, 51.637939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091576, 0.249509, 0.964033,
		-0.708146, -0.696947, 0.113113,
		0.700102, -0.672317, 0.240512,
		38.785484, 28.050110, 51.710094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701382, 28.185194, 51.806934>,  <38.295414, 28.520731, 51.541733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701382, 28.185194, 51.806934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.518024, 28.431084, 52.063679>,  <37.408009, 28.578617, 52.217728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.518024, 28.431084, 52.063679>,  <37.701382, 28.185194, 51.806934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518024, 28.431084, 52.063679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261030, 0.597236, -0.758401,
		-0.849552, -0.515191, -0.113307,
		-0.458393, 0.614725, 0.641864,
		37.380505, 28.615501, 52.256237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988255, 28.348562, 51.432289>,  <37.701382, 28.185194, 51.806934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988255, 28.348562, 51.432289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.129868, 28.622547, 51.687000>,  <37.214836, 28.786938, 51.839828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.129868, 28.622547, 51.687000>,  <36.988255, 28.348562, 51.432289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129868, 28.622547, 51.687000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194791, 0.719948, -0.666131,
		-0.914723, 0.111794, 0.388310,
		0.354032, 0.684965, 0.636777,
		37.236076, 28.828037, 51.878033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520035, 28.879555, 51.380157>,  <36.988255, 28.348562, 51.432289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520035, 28.879555, 51.380157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855606, 29.038149, 51.529289>,  <37.056950, 29.133305, 51.618771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855606, 29.038149, 51.529289>,  <36.520035, 28.879555, 51.380157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855606, 29.038149, 51.529289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086740, 0.773691, -0.627598,
		-0.537290, 0.494168, 0.683460,
		0.838925, 0.396485, 0.372832,
		37.107285, 29.157095, 51.641140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418530, 29.595293, 51.305923>,  <36.520035, 28.879555, 51.380157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418530, 29.595293, 51.305923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.806793, 29.605803, 51.401531>,  <37.039753, 29.612108, 51.458897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.806793, 29.605803, 51.401531>,  <36.418530, 29.595293, 51.305923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806793, 29.605803, 51.401531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116767, 0.817448, -0.564043,
		-0.210210, 0.575403, 0.790394,
		0.970658, 0.026275, 0.239024,
		37.097992, 29.613686, 51.473240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524208, 30.300945, 51.493443>,  <36.418530, 29.595293, 51.305923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524208, 30.300945, 51.493443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.873005, 30.138237, 51.384510>,  <37.082283, 30.040611, 51.319149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.873005, 30.138237, 51.384510>,  <36.524208, 30.300945, 51.493443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873005, 30.138237, 51.384510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078265, 0.665024, -0.742710,
		0.483223, 0.626323, 0.611731,
		0.871992, -0.406772, -0.272336,
		37.134602, 30.016205, 51.302811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012177, 30.837328, 51.534233>,  <36.524208, 30.300945, 51.493443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012177, 30.837328, 51.534233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180042, 30.574303, 51.283955>,  <37.280762, 30.416489, 51.133789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180042, 30.574303, 51.283955>,  <37.012177, 30.837328, 51.534233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180042, 30.574303, 51.283955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132574, 0.726348, -0.674421,
		0.897944, 0.200081, 0.391999,
		0.419667, -0.657561, -0.625694,
		37.305943, 30.377035, 51.096245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356258, 31.240171, 51.099358>,  <37.012177, 30.837328, 51.534233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356258, 31.240171, 51.099358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392834, 30.901943, 50.888966>,  <37.414780, 30.699007, 50.762730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392834, 30.901943, 50.888966>,  <37.356258, 31.240171, 51.099358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392834, 30.901943, 50.888966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275180, 0.529077, -0.802716,
		0.957034, -0.071340, 0.281062,
		0.091437, -0.845570, -0.525976,
		37.420265, 30.648272, 50.731174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931698, 31.321579, 50.712627>,  <37.356258, 31.240171, 51.099358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931698, 31.321579, 50.712627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746929, 31.031399, 50.508530>,  <37.636066, 30.857290, 50.386070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746929, 31.031399, 50.508530>,  <37.931698, 31.321579, 50.712627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746929, 31.031399, 50.508530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282668, 0.424886, -0.859983,
		0.840671, -0.541474, 0.008798,
		-0.461920, -0.725450, -0.510247,
		37.608353, 30.813765, 50.355457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333702, 31.091488, 50.196472>,  <37.931698, 31.321579, 50.712627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333702, 31.091488, 50.196472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960476, 31.005806, 50.080891>,  <37.736538, 30.954397, 50.011539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960476, 31.005806, 50.080891>,  <38.333702, 31.091488, 50.196472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960476, 31.005806, 50.080891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224426, 0.281094, -0.933070,
		0.281093, -0.935469, -0.214206,
		0.933070, 0.214206, 0.288957,
		37.680553, 30.941544, 49.994202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541962, 30.928848, 49.543961>,  <38.333702, 31.091488, 50.196472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541962, 30.928848, 49.543961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.145199, 30.967442, 49.576996>,  <37.907143, 30.990597, 49.596817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.145199, 30.967442, 49.576996>,  <38.541962, 30.928848, 49.543961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145199, 30.967442, 49.576996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039690, 0.382228, -0.923215,
		-0.120642, -0.919017, -0.375304,
		-0.991902, 0.096483, 0.082589,
		37.847630, 30.996386, 49.601772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422913, 30.786381, 48.939854>,  <38.541962, 30.928848, 49.543961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422913, 30.786381, 48.939854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.083763, 30.960630, 49.060741>,  <37.880272, 31.065180, 49.133274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.083763, 30.960630, 49.060741>,  <38.422913, 30.786381, 48.939854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083763, 30.960630, 49.060741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189295, 0.283719, -0.940038,
		-0.495248, -0.854245, -0.158097,
		-0.847878, 0.435625, 0.302215,
		37.829399, 31.091318, 49.151405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842068, 30.532360, 48.486359>,  <38.422913, 30.786381, 48.939854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842068, 30.532360, 48.486359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712070, 30.873999, 48.648788>,  <37.634071, 31.078981, 48.746246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712070, 30.873999, 48.648788>,  <37.842068, 30.532360, 48.486359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712070, 30.873999, 48.648788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207026, 0.354720, -0.911764,
		-0.922779, -0.380384, 0.061540,
		-0.324991, 0.854097, 0.406077,
		37.614574, 31.130228, 48.770611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221424, 30.781254, 48.128742>,  <37.842068, 30.532360, 48.486359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221424, 30.781254, 48.128742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393143, 31.110292, 48.277893>,  <37.496174, 31.307714, 48.367386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393143, 31.110292, 48.277893>,  <37.221424, 30.781254, 48.128742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393143, 31.110292, 48.277893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042185, 0.430673, -0.901521,
		-0.902176, 0.371293, 0.219589,
		0.429300, 0.822595, 0.372880,
		37.521935, 31.357071, 48.389755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810143, 31.343382, 47.747116>,  <37.221424, 30.781254, 48.128742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810143, 31.343382, 47.747116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.138512, 31.524662, 47.886082>,  <37.335533, 31.633430, 47.969460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.138512, 31.524662, 47.886082>,  <36.810143, 31.343382, 47.747116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138512, 31.524662, 47.886082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175940, 0.378057, -0.908910,
		-0.543263, 0.807267, 0.230618,
		0.820921, 0.453202, 0.347415,
		37.384789, 31.660624, 47.990307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284267, 31.732641, 48.113373>,  <36.810143, 31.343382, 47.747116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284267, 31.732641, 48.113373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938026, 31.897985, 48.000328>,  <35.730282, 31.997192, 47.932499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938026, 31.897985, 48.000328>,  <36.284267, 31.732641, 48.113373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938026, 31.897985, 48.000328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415208, -0.277032, 0.866519,
		0.279890, 0.867403, 0.411429,
		-0.865600, 0.413359, -0.282615,
		35.678345, 32.021992, 47.915543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106316, 32.308228, 48.607498>,  <36.284267, 31.732641, 48.113373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106316, 32.308228, 48.607498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.789734, 32.152340, 48.419155>,  <35.599785, 32.058807, 48.306149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.789734, 32.152340, 48.419155>,  <36.106316, 32.308228, 48.607498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789734, 32.152340, 48.419155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313545, -0.402405, 0.860093,
		-0.524675, 0.828363, 0.196291,
		-0.791458, -0.389723, -0.470861,
		35.552296, 32.035423, 48.277897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623585, 32.423603, 49.038826>,  <36.106316, 32.308228, 48.607498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623585, 32.423603, 49.038826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.450996, 32.156883, 48.795776>,  <35.347443, 31.996851, 48.649944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.450996, 32.156883, 48.795776>,  <35.623585, 32.423603, 49.038826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450996, 32.156883, 48.795776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418928, -0.448422, 0.789567,
		-0.798958, 0.595226, -0.085861,
		-0.431469, -0.666800, -0.607628,
		35.321556, 31.956842, 48.613487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005737, 32.403229, 49.223270>,  <35.623585, 32.423603, 49.038826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005737, 32.403229, 49.223270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040508, 32.052055, 49.034939>,  <35.061371, 31.841352, 48.921940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040508, 32.052055, 49.034939>,  <35.005737, 32.403229, 49.223270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040508, 32.052055, 49.034939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394056, -0.464375, 0.793143,
		-0.914967, 0.116588, -0.386320,
		0.086926, -0.877931, -0.470830,
		35.066586, 31.788675, 48.893688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309902, 32.116238, 49.235832>,  <35.005737, 32.403229, 49.223270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309902, 32.116238, 49.235832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.594372, 31.839893, 49.183762>,  <34.765053, 31.674088, 49.152519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.594372, 31.839893, 49.183762>,  <34.309902, 32.116238, 49.235832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594372, 31.839893, 49.183762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284366, -0.452031, 0.845461,
		-0.642937, -0.564252, -0.517929,
		0.711173, -0.690860, -0.130173,
		34.807724, 31.632635, 49.144711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956383, 31.567402, 49.505760>,  <34.309902, 32.116238, 49.235832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956383, 31.567402, 49.505760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330807, 31.433664, 49.461918>,  <34.555462, 31.353422, 49.435612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330807, 31.433664, 49.461918>,  <33.956383, 31.567402, 49.505760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330807, 31.433664, 49.461918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105187, -0.563183, 0.819610,
		-0.335759, -0.755672, -0.562339,
		0.936056, -0.334342, -0.109607,
		34.611622, 31.333361, 49.429035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971497, 30.808695, 49.370380>,  <33.956383, 31.567402, 49.505760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971497, 30.808695, 49.370380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334179, 30.891653, 49.517281>,  <34.551788, 30.941427, 49.605419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334179, 30.891653, 49.517281>,  <33.971497, 30.808695, 49.370380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334179, 30.891653, 49.517281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195347, -0.565210, 0.801484,
		0.373798, -0.798451, -0.471965,
		0.906705, 0.207396, 0.367250,
		34.606190, 30.953873, 49.627457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124058, 30.171831, 48.998356>,  <33.971497, 30.808695, 49.370380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124058, 30.171831, 48.998356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.900215, 29.879486, 48.842056>,  <33.765911, 29.704079, 48.748276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.900215, 29.879486, 48.842056>,  <34.124058, 30.171831, 48.998356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900215, 29.879486, 48.842056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180800, 0.352466, -0.918193,
		0.808799, -0.584470, -0.065101,
		-0.559603, -0.730864, -0.390747,
		33.732334, 29.660227, 48.724831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465141, 30.047281, 48.362488>,  <34.124058, 30.171831, 48.998356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465141, 30.047281, 48.362488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098377, 29.893484, 48.319710>,  <33.878319, 29.801207, 48.294044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098377, 29.893484, 48.319710>,  <34.465141, 30.047281, 48.362488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098377, 29.893484, 48.319710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012137, 0.294704, -0.955512,
		0.398903, -0.874823, -0.274884,
		-0.916912, -0.384493, -0.106941,
		33.823303, 29.778137, 48.287628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587662, 29.672516, 47.761753>,  <34.465141, 30.047281, 48.362488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587662, 29.672516, 47.761753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.193794, 29.729595, 47.801884>,  <33.957474, 29.763844, 47.825962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.193794, 29.729595, 47.801884>,  <34.587662, 29.672516, 47.761753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193794, 29.729595, 47.801884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069366, 0.207373, -0.975800,
		-0.160051, -0.967798, -0.194295,
		-0.984668, 0.142701, 0.100322,
		33.898396, 29.772406, 47.831982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307964, 29.316216, 47.076313>,  <34.587662, 29.672516, 47.761753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307964, 29.316216, 47.076313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009369, 29.541788, 47.217587>,  <33.830212, 29.677132, 47.302349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009369, 29.541788, 47.217587>,  <34.307964, 29.316216, 47.076313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009369, 29.541788, 47.217587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250394, 0.253693, -0.934314,
		-0.616490, -0.785888, -0.048173,
		-0.746487, 0.563933, 0.353180,
		33.785423, 29.710968, 47.323540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706387, 29.154545, 46.636070>,  <34.307964, 29.316216, 47.076313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706387, 29.154545, 46.636070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663441, 29.508022, 46.818302>,  <33.637672, 29.720110, 46.927643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663441, 29.508022, 46.818302>,  <33.706387, 29.154545, 46.636070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663441, 29.508022, 46.818302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261508, 0.416995, -0.870476,
		-0.959211, -0.212596, 0.186324,
		-0.107363, 0.883696, 0.455582,
		33.631233, 29.773130, 46.954975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050869, 29.452160, 46.464127>,  <33.706387, 29.154545, 46.636070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050869, 29.452160, 46.464127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274559, 29.760578, 46.585953>,  <33.408772, 29.945629, 46.659050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274559, 29.760578, 46.585953>,  <33.050869, 29.452160, 46.464127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274559, 29.760578, 46.585953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260701, 0.512304, -0.818278,
		-0.786960, 0.378199, 0.487504,
		0.559222, 0.771045, 0.304566,
		33.442326, 29.991892, 46.677322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783379, 30.022009, 46.132095>,  <33.050869, 29.452160, 46.464127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783379, 30.022009, 46.132095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.125824, 30.173006, 46.273270>,  <33.331291, 30.263605, 46.357975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.125824, 30.173006, 46.273270>,  <32.783379, 30.022009, 46.132095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125824, 30.173006, 46.273270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032266, 0.642563, -0.765553,
		-0.515773, 0.666791, 0.537929,
		0.856117, 0.377495, 0.352931,
		33.382660, 30.286255, 46.379150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.935707, 26.315426, 48.963322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.117123, 26.587154, 48.732559>,  <36.225971, 26.750191, 48.594101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.117123, 26.587154, 48.732559>,  <35.935707, 26.315426, 48.963322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117123, 26.587154, 48.732559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533301, -0.311772, -0.786377,
		-0.714066, 0.664321, 0.220881,
		0.453542, 0.679321, -0.576908,
		36.253185, 26.790951, 48.559486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029007, 26.506872, 49.579388>,  <35.935707, 26.315426, 48.963322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029007, 26.506872, 49.579388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.376850, 26.354088, 49.704536>,  <36.585556, 26.262417, 49.779625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.376850, 26.354088, 49.704536>,  <36.029007, 26.506872, 49.579388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376850, 26.354088, 49.704536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352112, 0.035540, -0.935283,
		0.346121, 0.923496, 0.165398,
		0.869608, -0.381959, 0.312873,
		36.637733, 26.239500, 49.798397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525112, 26.972094, 49.428646>,  <36.029007, 26.506872, 49.579388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525112, 26.972094, 49.428646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.719482, 26.622887, 49.445240>,  <36.836105, 26.413363, 49.455196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.719482, 26.622887, 49.445240>,  <36.525112, 26.972094, 49.428646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719482, 26.622887, 49.445240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270082, 0.104845, -0.957112,
		0.831225, 0.476288, 0.286733,
		0.485923, -0.873016, 0.041487,
		36.865261, 26.360981, 49.457687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186562, 27.071915, 49.242516>,  <36.525112, 26.972094, 49.428646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186562, 27.071915, 49.242516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.187904, 26.674152, 49.200283>,  <37.188709, 26.435495, 49.174942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.187904, 26.674152, 49.200283>,  <37.186562, 27.071915, 49.242516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187904, 26.674152, 49.200283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497675, 0.093237, -0.862338,
		0.867357, -0.049653, 0.495203,
		0.003354, -0.994405, -0.105581,
		37.188911, 26.375832, 49.168610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892429, 26.850088, 49.020702>,  <37.186562, 27.071915, 49.242516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892429, 26.850088, 49.020702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.649693, 26.551785, 48.910736>,  <37.504051, 26.372803, 48.844757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.649693, 26.551785, 48.910736>,  <37.892429, 26.850088, 49.020702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649693, 26.551785, 48.910736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375387, 0.035963, -0.926170,
		0.700588, -0.665243, 0.258125,
		-0.606846, -0.745760, -0.274919,
		37.467640, 26.328056, 48.828262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309639, 26.523275, 48.654938>,  <37.892429, 26.850088, 49.020702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309639, 26.523275, 48.654938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.948044, 26.409498, 48.527256>,  <37.731087, 26.341232, 48.450649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.948044, 26.409498, 48.527256>,  <38.309639, 26.523275, 48.654938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948044, 26.409498, 48.527256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342850, -0.036217, -0.938692,
		0.255444, -0.958009, 0.130261,
		-0.903992, -0.284443, -0.319202,
		37.676846, 26.324165, 48.431496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455338, 26.069950, 48.021164>,  <38.309639, 26.523275, 48.654938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455338, 26.069950, 48.021164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.065742, 26.155653, 47.991646>,  <37.831985, 26.207075, 47.973934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.065742, 26.155653, 47.991646>,  <38.455338, 26.069950, 48.021164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065742, 26.155653, 47.991646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085432, 0.045554, -0.995302,
		-0.209892, -0.975714, -0.062673,
		-0.973985, 0.214260, -0.073796,
		37.773548, 26.219931, 47.969505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244267, 25.594027, 47.447113>,  <38.455338, 26.069950, 48.021164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244267, 25.594027, 47.447113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.961033, 25.875494, 47.470676>,  <37.791092, 26.044374, 47.484814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.961033, 25.875494, 47.470676>,  <38.244267, 25.594027, 47.447113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961033, 25.875494, 47.470676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003378, 0.086802, -0.996220,
		-0.706124, -0.705204, -0.063840,
		-0.708080, 0.703671, 0.058911,
		37.748608, 26.086596, 47.488350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791271, 25.473104, 46.933540>,  <38.244267, 25.594027, 47.447113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791271, 25.473104, 46.933540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.721863, 25.857410, 47.020096>,  <37.680218, 26.087994, 47.072029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.721863, 25.857410, 47.020096>,  <37.791271, 25.473104, 46.933540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721863, 25.857410, 47.020096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034279, 0.213696, -0.976299,
		-0.984233, -0.176830, -0.004148,
		-0.173525, 0.960763, 0.216388,
		37.669804, 26.145639, 47.085011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107857, 25.703953, 46.608059>,  <37.791271, 25.473104, 46.933540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107857, 25.703953, 46.608059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.334129, 26.023903, 46.688263>,  <37.469894, 26.215872, 46.736385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.334129, 26.023903, 46.688263>,  <37.107857, 25.703953, 46.608059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334129, 26.023903, 46.688263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070709, 0.289311, -0.954620,
		-0.821587, 0.525833, 0.220216,
		0.565682, 0.799874, 0.200513,
		37.503834, 26.263865, 46.748417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692455, 26.300058, 46.323868>,  <37.107857, 25.703953, 46.608059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692455, 26.300058, 46.323868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.080715, 26.393112, 46.348270>,  <37.313671, 26.448944, 46.362911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.080715, 26.393112, 46.348270>,  <36.692455, 26.300058, 46.323868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080715, 26.393112, 46.348270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019246, 0.328000, -0.944482,
		-0.239730, 0.915586, 0.322850,
		0.970649, 0.232634, 0.061010,
		37.371910, 26.462902, 46.366573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624371, 26.928099, 46.122749>,  <36.692455, 26.300058, 46.323868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624371, 26.928099, 46.122749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.009350, 26.836758, 46.064030>,  <37.240337, 26.781954, 46.028797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.009350, 26.836758, 46.064030>,  <36.624371, 26.928099, 46.122749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009350, 26.836758, 46.064030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025832, 0.461275, -0.886881,
		0.270237, 0.857369, 0.438054,
		0.962447, -0.228352, -0.146801,
		37.298084, 26.768251, 46.019989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201977, 27.650890, 46.294998>,  <36.624371, 26.928099, 46.122749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201977, 27.650890, 46.294998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.842606, 27.793900, 46.193016>,  <35.626984, 27.879705, 46.131828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.842606, 27.793900, 46.193016>,  <36.201977, 27.650890, 46.294998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842606, 27.793900, 46.193016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407822, -0.464082, 0.786326,
		0.162809, 0.810435, 0.562750,
		-0.898429, 0.357523, -0.254957,
		35.573078, 27.901155, 46.116528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913052, 27.972918, 46.949757>,  <36.201977, 27.650890, 46.294998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913052, 27.972918, 46.949757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.593815, 27.912169, 46.716526>,  <35.402271, 27.875719, 46.576588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.593815, 27.912169, 46.716526>,  <35.913052, 27.972918, 46.949757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593815, 27.912169, 46.716526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469148, -0.450598, 0.759514,
		-0.378085, 0.879713, 0.288368,
		-0.798093, -0.151874, -0.583080,
		35.354385, 27.866606, 46.541603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357193, 28.171976, 47.359825>,  <35.913052, 27.972918, 46.949757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357193, 28.171976, 47.359825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.186485, 27.953796, 47.071285>,  <35.084061, 27.822887, 46.898159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.186485, 27.953796, 47.071285>,  <35.357193, 28.171976, 47.359825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186485, 27.953796, 47.071285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615759, -0.408929, 0.673512,
		-0.662349, 0.731615, -0.161346,
		-0.426772, -0.545450, -0.721353,
		35.058453, 27.790161, 46.854881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769848, 28.222992, 47.440437>,  <35.357193, 28.171976, 47.359825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769848, 28.222992, 47.440437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.779346, 27.871132, 47.250427>,  <34.785046, 27.660015, 47.136421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.779346, 27.871132, 47.250427>,  <34.769848, 28.222992, 47.440437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779346, 27.871132, 47.250427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589680, -0.396021, 0.703878,
		-0.807288, 0.263400, -0.528116,
		0.023743, -0.879652, -0.475025,
		34.786469, 27.607237, 47.107922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085629, 28.016897, 47.553745>,  <34.769848, 28.222992, 47.440437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085629, 28.016897, 47.553745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.326996, 27.707888, 47.474659>,  <34.471817, 27.522482, 47.427208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.326996, 27.707888, 47.474659>,  <34.085629, 28.016897, 47.553745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326996, 27.707888, 47.474659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404157, -0.510020, 0.759300,
		-0.687418, -0.378267, -0.619977,
		0.603419, -0.772524, -0.197718,
		34.508022, 27.476130, 47.415344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693203, 27.387877, 47.623207>,  <34.085629, 28.016897, 47.553745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693203, 27.387877, 47.623207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.069489, 27.260715, 47.670521>,  <34.295261, 27.184418, 47.698910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.069489, 27.260715, 47.670521>,  <33.693203, 27.387877, 47.623207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069489, 27.260715, 47.670521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245626, -0.397955, 0.883911,
		-0.233925, -0.860563, -0.452448,
		0.940716, -0.317902, 0.118285,
		34.351704, 27.165344, 47.706005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623737, 26.700451, 47.937824>,  <33.693203, 27.387877, 47.623207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623737, 26.700451, 47.937824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.001652, 26.808231, 48.012409>,  <34.228401, 26.872900, 48.057159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.001652, 26.808231, 48.012409>,  <33.623737, 26.700451, 47.937824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001652, 26.808231, 48.012409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076249, -0.372651, 0.924834,
		0.318684, -0.887991, -0.331531,
		0.944789, 0.269451, 0.186467,
		34.285088, 26.889067, 48.068348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914825, 26.094749, 48.209473>,  <33.623737, 26.700451, 47.937824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914825, 26.094749, 48.209473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.164814, 26.382936, 48.329700>,  <34.314808, 26.555849, 48.401836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.164814, 26.382936, 48.329700>,  <33.914825, 26.094749, 48.209473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164814, 26.382936, 48.329700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060639, -0.428664, 0.901427,
		0.778292, -0.545136, -0.311590,
		0.624968, 0.720468, 0.300569,
		34.352303, 26.599077, 48.419872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356213, 25.726547, 48.567429>,  <33.914825, 26.094749, 48.209473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356213, 25.726547, 48.567429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.418579, 26.106075, 48.677288>,  <34.455997, 26.333792, 48.743202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.418579, 26.106075, 48.677288>,  <34.356213, 25.726547, 48.567429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418579, 26.106075, 48.677288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023534, -0.281533, 0.959263,
		0.987491, -0.143097, -0.066224,
		0.155912, 0.948821, 0.274644,
		34.465351, 26.390722, 48.759682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931793, 25.763153, 49.134975>,  <34.356213, 25.726547, 48.567429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931793, 25.763153, 49.134975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.747166, 26.114449, 49.185017>,  <34.636391, 26.325226, 49.215042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.747166, 26.114449, 49.185017>,  <34.931793, 25.763153, 49.134975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747166, 26.114449, 49.185017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030487, -0.156649, 0.987184,
		0.886582, 0.451835, 0.099079,
		-0.461565, 0.878240, 0.125107,
		34.608696, 26.377920, 49.222549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348515, 26.097607, 49.704212>,  <34.931793, 25.763153, 49.134975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348515, 26.097607, 49.704212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.971058, 26.229792, 49.696838>,  <34.744583, 26.309103, 49.692413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.971058, 26.229792, 49.696838>,  <35.348515, 26.097607, 49.704212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971058, 26.229792, 49.696838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081480, -0.177974, 0.980656,
		0.320789, 0.926887, 0.194869,
		-0.943639, 0.330462, -0.018431,
		34.687965, 26.328930, 49.691311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224468, 26.593506, 50.217758>,  <35.348515, 26.097607, 49.704212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224468, 26.593506, 50.217758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.854828, 26.470144, 50.127499>,  <34.633041, 26.396128, 50.073341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.854828, 26.470144, 50.127499>,  <35.224468, 26.593506, 50.217758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854828, 26.470144, 50.127499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176610, -0.178965, 0.967874,
		-0.338880, 0.934269, 0.110915,
		-0.924105, -0.308404, -0.225649,
		34.577595, 26.377623, 50.059803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974903, 26.576572, 50.894279>,  <35.224468, 26.593506, 50.217758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974903, 26.576572, 50.894279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.669693, 26.417843, 50.690189>,  <34.486568, 26.322605, 50.567738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.669693, 26.417843, 50.690189>,  <34.974903, 26.576572, 50.894279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669693, 26.417843, 50.690189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463394, -0.214481, 0.859805,
		-0.450623, 0.892485, -0.020231,
		-0.763023, -0.396823, -0.510222,
		34.440784, 26.298796, 50.537125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348202, 26.899647, 51.127296>,  <34.974903, 26.576572, 50.894279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348202, 26.899647, 51.127296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.292984, 26.532740, 50.977863>,  <34.259853, 26.312595, 50.888203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.292984, 26.532740, 50.977863>,  <34.348202, 26.899647, 51.127296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292984, 26.532740, 50.977863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478477, -0.268495, 0.836044,
		-0.867182, 0.294159, -0.401828,
		-0.138041, -0.917268, -0.373583,
		34.251572, 26.257559, 50.865788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808037, 27.253798, 50.835163>,  <34.348202, 26.899647, 51.127296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808037, 27.253798, 50.835163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.521545, 27.526180, 50.896236>,  <33.349651, 27.689610, 50.932880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.521545, 27.526180, 50.896236>,  <33.808037, 27.253798, 50.835163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521545, 27.526180, 50.896236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056498, 0.274649, -0.959883,
		-0.695572, -0.678872, -0.235185,
		-0.716232, 0.680955, 0.152683,
		33.306675, 27.730467, 50.942043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331875, 27.291876, 50.341988>,  <33.808037, 27.253798, 50.835163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331875, 27.291876, 50.341988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.302654, 27.666420, 50.479328>,  <33.285122, 27.891148, 50.561733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.302654, 27.666420, 50.479328>,  <33.331875, 27.291876, 50.341988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302654, 27.666420, 50.479328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181666, 0.351004, -0.918582,
		-0.980643, -0.004728, -0.195747,
		-0.073051, 0.936362, 0.343351,
		33.280739, 27.947329, 50.582333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868172, 27.736702, 49.860153>,  <33.331875, 27.291876, 50.341988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868172, 27.736702, 49.860153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.081554, 28.005213, 50.065994>,  <33.209583, 28.166319, 50.189499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.081554, 28.005213, 50.065994>,  <32.868172, 27.736702, 49.860153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081554, 28.005213, 50.065994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039399, 0.588021, -0.807885,
		-0.844912, 0.451243, 0.287234,
		0.533452, 0.671275, 0.514605,
		33.241589, 28.206594, 50.220375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506119, 28.328085, 49.869488>,  <32.868172, 27.736702, 49.860153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506119, 28.328085, 49.869488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.888794, 28.426897, 49.931107>,  <33.118397, 28.486185, 49.968079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.888794, 28.426897, 49.931107>,  <32.506119, 28.328085, 49.869488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888794, 28.426897, 49.931107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037212, 0.628553, -0.776876,
		-0.288738, 0.737493, 0.610519,
		0.956685, 0.247033, 0.154044,
		33.175800, 28.501007, 49.977318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596149, 29.075512, 49.767544>,  <32.506119, 28.328085, 49.869488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596149, 29.075512, 49.767544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.963593, 28.924316, 49.721451>,  <33.184059, 28.833599, 49.693794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.963593, 28.924316, 49.721451>,  <32.596149, 29.075512, 49.767544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963593, 28.924316, 49.721451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155862, 0.614544, -0.773332,
		0.363128, 0.692430, 0.623441,
		0.918610, -0.377989, -0.115234,
		33.239174, 28.810919, 49.686882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006004, 29.681900, 49.767876>,  <32.596149, 29.075512, 49.767544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006004, 29.681900, 49.767876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.216946, 29.388519, 49.596321>,  <33.343510, 29.212490, 49.493389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.216946, 29.388519, 49.596321>,  <33.006004, 29.681900, 49.767876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216946, 29.388519, 49.596321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158670, 0.580918, -0.798347,
		0.834697, 0.352963, 0.422728,
		0.527357, -0.733452, -0.428886,
		33.375153, 29.168484, 49.467655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598934, 29.964455, 49.554554>,  <33.006004, 29.681900, 49.767876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598934, 29.964455, 49.554554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.512226, 29.653578, 49.318253>,  <33.460201, 29.467052, 49.176472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.512226, 29.653578, 49.318253>,  <33.598934, 29.964455, 49.554554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512226, 29.653578, 49.318253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079029, 0.589181, -0.804127,
		0.973019, -0.220994, -0.066295,
		-0.216767, -0.777192, -0.590750,
		33.447197, 29.420420, 49.141029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212906, 30.142591, 49.935619>,  <33.598934, 29.964455, 49.554554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212906, 30.142591, 49.935619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436581, 30.467314, 50.002884>,  <34.570786, 30.662148, 50.043243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436581, 30.467314, 50.002884>,  <34.212906, 30.142591, 49.935619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436581, 30.467314, 50.002884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112007, -0.274962, 0.954908,
		0.821439, -0.515138, -0.244684,
		0.559188, 0.811806, 0.168166,
		34.604336, 30.710855, 50.053333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807972, 29.898684, 50.318996>,  <34.212906, 30.142591, 49.935619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807972, 29.898684, 50.318996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.774784, 30.290518, 50.392235>,  <34.754871, 30.525620, 50.436176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.774784, 30.290518, 50.392235>,  <34.807972, 29.898684, 50.318996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774784, 30.290518, 50.392235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065728, -0.177949, 0.981842,
		0.994382, 0.093500, -0.049622,
		-0.082973, 0.979588, 0.183094,
		34.749893, 30.584394, 50.447163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331696, 29.996252, 50.837543>,  <34.807972, 29.898684, 50.318996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331696, 29.996252, 50.837543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.072426, 30.297823, 50.880375>,  <34.916866, 30.478765, 50.906075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.072426, 30.297823, 50.880375>,  <35.331696, 29.996252, 50.837543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072426, 30.297823, 50.880375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122860, -0.035240, 0.991798,
		0.751518, 0.656011, -0.069786,
		-0.648171, 0.753928, 0.107081,
		34.877975, 30.524002, 50.912498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612667, 30.461592, 51.283966>,  <35.331696, 29.996252, 50.837543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612667, 30.461592, 51.283966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.219742, 30.529911, 51.314655>,  <34.983986, 30.570902, 51.333069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.219742, 30.529911, 51.314655>,  <35.612667, 30.461592, 51.283966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219742, 30.529911, 51.314655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074613, -0.018761, 0.997036,
		0.171732, 0.985127, 0.005686,
		-0.982314, 0.170799, 0.076725,
		34.925049, 30.581150, 51.337673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522472, 30.854805, 51.918396>,  <35.612667, 30.461592, 51.283966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522472, 30.854805, 51.918396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.166203, 30.693399, 51.834606>,  <34.952442, 30.596556, 51.784332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.166203, 30.693399, 51.834606>,  <35.522472, 30.854805, 51.918396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166203, 30.693399, 51.834606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136604, -0.201936, 0.969825,
		-0.433640, 0.892411, 0.124737,
		-0.890671, -0.403516, -0.209474,
		34.899002, 30.572344, 51.771763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180767, 30.991756, 52.477024>,  <35.522472, 30.854805, 51.918396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180767, 30.991756, 52.477024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.927284, 30.737263, 52.301018>,  <34.775192, 30.584566, 52.195412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.927284, 30.737263, 52.301018>,  <35.180767, 30.991756, 52.477024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927284, 30.737263, 52.301018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173404, -0.437508, 0.882336,
		-0.753884, 0.635448, 0.166929,
		-0.633711, -0.636233, -0.440020,
		34.737171, 30.546392, 52.169010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608982, 30.959801, 52.922459>,  <35.180767, 30.991756, 52.477024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608982, 30.959801, 52.922459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.554638, 30.630306, 52.702274>,  <34.522034, 30.432610, 52.570164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.554638, 30.630306, 52.702274>,  <34.608982, 30.959801, 52.922459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554638, 30.630306, 52.702274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168807, -0.528239, 0.832147,
		-0.976241, 0.205974, -0.067287,
		-0.135857, -0.823734, -0.550458,
		34.513882, 30.383186, 52.537136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977421, 30.610939, 53.056950>,  <34.608982, 30.959801, 52.922459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977421, 30.610939, 53.056950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.254505, 30.352692, 52.928368>,  <34.420753, 30.197742, 52.851219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.254505, 30.352692, 52.928368>,  <33.977421, 30.610939, 53.056950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254505, 30.352692, 52.928368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127710, -0.548467, 0.826362,
		-0.709821, -0.531374, -0.462380,
		0.692708, -0.645620, -0.321452,
		34.462318, 30.159006, 52.831932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809696, 29.978456, 53.400620>,  <33.977421, 30.610939, 53.056950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809696, 29.978456, 53.400620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.188034, 29.894848, 53.301270>,  <34.415035, 29.844683, 53.241661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.188034, 29.894848, 53.301270>,  <33.809696, 29.978456, 53.400620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188034, 29.894848, 53.301270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069681, -0.616560, 0.784218,
		-0.317056, -0.759054, -0.568605,
		0.945844, -0.209020, -0.248376,
		34.471786, 29.832142, 53.226757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.788021, 36.059784, 38.211079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067539, 35.807571, 38.346203>,  <38.235252, 35.656246, 38.427277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067539, 35.807571, 38.346203>,  <37.788021, 36.059784, 38.211079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067539, 35.807571, 38.346203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674120, -0.422524, 0.605835,
		-0.239259, -0.651084, -0.720309,
		0.698797, -0.630526, 0.337816,
		38.277180, 35.618412, 38.447548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546749, 35.320877, 38.213287>,  <37.788021, 36.059784, 38.211079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546749, 35.320877, 38.213287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808331, 35.393524, 38.507050>,  <37.965279, 35.437115, 38.683308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808331, 35.393524, 38.507050>,  <37.546749, 35.320877, 38.213287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808331, 35.393524, 38.507050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653256, -0.354061, 0.669251,
		0.381577, -0.917417, -0.112894,
		0.653954, 0.181622, 0.734410,
		38.004517, 35.448009, 38.727371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458103, 34.792610, 38.552959>,  <37.546749, 35.320877, 38.213287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458103, 34.792610, 38.552959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628555, 35.025547, 38.829884>,  <37.730827, 35.165310, 38.996037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628555, 35.025547, 38.829884>,  <37.458103, 34.792610, 38.552959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628555, 35.025547, 38.829884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669125, -0.312139, 0.674419,
		0.608836, -0.750634, 0.256645,
		0.426133, 0.582338, 0.692310,
		37.756393, 35.200249, 39.037575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571686, 34.381626, 39.178307>,  <37.458103, 34.792610, 38.552959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571686, 34.381626, 39.178307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550747, 34.751225, 39.329826>,  <37.538185, 34.972984, 39.420738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550747, 34.751225, 39.329826>,  <37.571686, 34.381626, 39.178307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550747, 34.751225, 39.329826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525758, -0.347994, 0.776195,
		0.849022, -0.158530, 0.504014,
		-0.052343, 0.923996, 0.378803,
		37.535046, 35.028423, 39.443466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722466, 34.305607, 39.947674>,  <37.571686, 34.381626, 39.178307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722466, 34.305607, 39.947674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564339, 34.671814, 39.917843>,  <37.469463, 34.891537, 39.899944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564339, 34.671814, 39.917843>,  <37.722466, 34.305607, 39.947674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564339, 34.671814, 39.917843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445372, -0.120036, 0.887263,
		0.803349, 0.383962, 0.455196,
		-0.395315, 0.915513, -0.074575,
		37.445744, 34.946468, 39.895470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847229, 34.624413, 40.506828>,  <37.722466, 34.305607, 39.947674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847229, 34.624413, 40.506828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549038, 34.859673, 40.381393>,  <37.370125, 35.000828, 40.306133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549038, 34.859673, 40.381393>,  <37.847229, 34.624413, 40.506828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549038, 34.859673, 40.381393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435760, -0.074055, 0.897011,
		0.504358, 0.805351, 0.311500,
		-0.745477, 0.588154, -0.313590,
		37.325394, 35.036118, 40.287315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742786, 34.949944, 41.115765>,  <37.847229, 34.624413, 40.506828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742786, 34.949944, 41.115765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407410, 35.011978, 40.906780>,  <37.206184, 35.049198, 40.781387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407410, 35.011978, 40.906780>,  <37.742786, 34.949944, 41.115765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407410, 35.011978, 40.906780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504313, 0.142660, 0.851655,
		0.206618, 0.977546, -0.041398,
		-0.838438, 0.155090, -0.522465,
		37.155880, 35.058506, 40.750042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392872, 35.484715, 41.551716>,  <37.742786, 34.949944, 41.115765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392872, 35.484715, 41.551716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119225, 35.309120, 41.318729>,  <36.955036, 35.203762, 41.178936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119225, 35.309120, 41.318729>,  <37.392872, 35.484715, 41.551716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119225, 35.309120, 41.318729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652875, 0.012539, 0.757362,
		-0.325168, 0.898407, -0.295181,
		-0.684120, -0.438986, -0.582470,
		36.913990, 35.177425, 41.143990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884369, 35.870041, 41.749092>,  <37.392872, 35.484715, 41.551716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884369, 35.870041, 41.749092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717110, 35.549175, 41.578590>,  <36.616753, 35.356655, 41.476292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717110, 35.549175, 41.578590>,  <36.884369, 35.870041, 41.749092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717110, 35.549175, 41.578590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581858, -0.123817, 0.803810,
		-0.697562, 0.584130, -0.414969,
		-0.418150, -0.802161, -0.426250,
		36.591663, 35.308529, 41.450714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101833, 35.909966, 41.860630>,  <36.884369, 35.870041, 41.749092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101833, 35.909966, 41.860630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207203, 35.530609, 41.790020>,  <36.270424, 35.302994, 41.747654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207203, 35.530609, 41.790020>,  <36.101833, 35.909966, 41.860630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207203, 35.530609, 41.790020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494308, -0.289841, 0.819543,
		-0.828411, -0.128633, -0.545150,
		0.263427, -0.948391, -0.176523,
		36.286232, 35.246090, 41.737064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528156, 35.664055, 41.996777>,  <36.101833, 35.909966, 41.860630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528156, 35.664055, 41.996777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796986, 35.368866, 42.021133>,  <35.958282, 35.191753, 42.035748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796986, 35.368866, 42.021133>,  <35.528156, 35.664055, 41.996777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796986, 35.368866, 42.021133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550008, -0.442445, 0.708332,
		-0.495793, -0.509539, -0.703249,
		0.672072, -0.737978, 0.060889,
		35.998608, 35.147472, 42.039402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087524, 34.976784, 41.978874>,  <35.528156, 35.664055, 41.996777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087524, 34.976784, 41.978874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447449, 34.910236, 42.140202>,  <35.663403, 34.870308, 42.236996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447449, 34.910236, 42.140202>,  <35.087524, 34.976784, 41.978874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447449, 34.910236, 42.140202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436196, -0.361366, 0.824104,
		0.008643, -0.917462, -0.397728,
		0.899811, -0.166365, 0.403317,
		35.717392, 34.860329, 42.261196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628826, 34.593288, 41.677536>,  <35.087524, 34.976784, 41.978874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628826, 34.593288, 41.677536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303764, 34.362545, 41.644470>,  <34.108727, 34.224098, 41.624630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303764, 34.362545, 41.644470>,  <34.628826, 34.593288, 41.677536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303764, 34.362545, 41.644470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172727, 0.373907, -0.911240,
		0.556562, -0.726244, -0.403495,
		-0.812653, -0.576856, -0.082660,
		34.059967, 34.189487, 41.619671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627232, 34.294609, 40.898247>,  <34.628826, 34.593288, 41.677536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627232, 34.294609, 40.898247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255772, 34.273594, 41.045128>,  <34.032894, 34.260986, 41.133259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255772, 34.273594, 41.045128>,  <34.627232, 34.294609, 40.898247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255772, 34.273594, 41.045128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364273, 0.316083, -0.876012,
		-0.070046, -0.947276, -0.312669,
		-0.928654, -0.052536, 0.367207,
		33.977177, 34.257832, 41.155289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301132, 33.968487, 40.415588>,  <34.627232, 34.294609, 40.898247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301132, 33.968487, 40.415588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994976, 34.132412, 40.614075>,  <33.811283, 34.230766, 40.733166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994976, 34.132412, 40.614075>,  <34.301132, 33.968487, 40.415588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994976, 34.132412, 40.614075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423205, 0.260373, -0.867815,
		-0.484842, -0.874219, -0.025853,
		-0.765392, 0.409812, 0.496214,
		33.765358, 34.255356, 40.762939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683590, 33.641644, 40.233253>,  <34.301132, 33.968487, 40.415588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683590, 33.641644, 40.233253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566685, 33.998295, 40.371578>,  <33.496540, 34.212284, 40.454575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566685, 33.998295, 40.371578>,  <33.683590, 33.641644, 40.233253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566685, 33.998295, 40.371578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287874, 0.262806, -0.920903,
		-0.911982, -0.368695, 0.179868,
		-0.292262, 0.891626, 0.345812,
		33.479008, 34.265781, 40.475323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990974, 33.697662, 39.965122>,  <33.683590, 33.641644, 40.233253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990974, 33.697662, 39.965122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093895, 34.070866, 40.065762>,  <33.155647, 34.294788, 40.126144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093895, 34.070866, 40.065762>,  <32.990974, 33.697662, 39.965122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093895, 34.070866, 40.065762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322476, 0.328336, -0.887809,
		-0.910937, 0.147299, 0.385352,
		0.257298, 0.933005, 0.251594,
		33.171085, 34.350769, 40.141239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423885, 34.088562, 39.745621>,  <32.990974, 33.697662, 39.965122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423885, 34.088562, 39.745621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727928, 34.345402, 39.785511>,  <32.910355, 34.499504, 39.809444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727928, 34.345402, 39.785511>,  <32.423885, 34.088562, 39.745621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727928, 34.345402, 39.785511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304103, 0.487140, -0.818667,
		-0.574241, 0.591953, 0.565544,
		0.760111, 0.642095, 0.099721,
		32.955963, 34.538029, 39.815426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045376, 34.690098, 39.727753>,  <32.423885, 34.088562, 39.745621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045376, 34.690098, 39.727753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433899, 34.728004, 39.640503>,  <32.667015, 34.750748, 39.588154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433899, 34.728004, 39.640503>,  <32.045376, 34.690098, 39.727753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433899, 34.728004, 39.640503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234316, 0.538132, -0.809635,
		0.040653, 0.837516, 0.544898,
		0.971310, 0.094765, -0.218120,
		32.725292, 34.756435, 39.575066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106468, 35.373165, 39.617065>,  <32.045376, 34.690098, 39.727753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106468, 35.373165, 39.617065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417645, 35.197815, 39.437004>,  <32.604351, 35.092606, 39.328968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417645, 35.197815, 39.437004>,  <32.106468, 35.373165, 39.617065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417645, 35.197815, 39.437004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188569, 0.520514, -0.832770,
		0.599374, 0.732732, 0.322267,
		0.777942, -0.438371, -0.450153,
		32.651028, 35.066303, 39.301960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385284, 35.835476, 39.083344>,  <32.106468, 35.373165, 39.617065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385284, 35.835476, 39.083344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536594, 35.479977, 38.979786>,  <32.627380, 35.266678, 38.917652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536594, 35.479977, 38.979786>,  <32.385284, 35.835476, 39.083344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536594, 35.479977, 38.979786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168055, 0.209095, -0.963346,
		0.910310, 0.407919, -0.070263,
		0.378276, -0.888752, -0.258895,
		32.650078, 35.213352, 38.902119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858013, 35.956886, 38.479874>,  <32.385284, 35.835476, 39.083344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858013, 35.956886, 38.479874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740471, 35.574577, 38.484718>,  <32.669945, 35.345192, 38.487625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740471, 35.574577, 38.484718>,  <32.858013, 35.956886, 38.479874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740471, 35.574577, 38.484718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000767, -0.012904, -0.999916,
		0.955851, -0.293818, 0.004525,
		-0.293851, -0.955774, 0.012109,
		32.652317, 35.287846, 38.488350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103077, 35.721802, 37.814941>,  <32.858013, 35.956886, 38.479874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103077, 35.721802, 37.814941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828671, 35.457546, 37.936882>,  <32.664024, 35.298992, 38.010048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828671, 35.457546, 37.936882>,  <33.103077, 35.721802, 37.814941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828671, 35.457546, 37.936882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213994, -0.217260, -0.952368,
		0.695402, -0.718580, 0.007672,
		-0.686020, -0.660637, 0.304855,
		32.622864, 35.259354, 38.028339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252914, 35.111317, 37.521915>,  <33.103077, 35.721802, 37.814941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252914, 35.111317, 37.521915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863750, 35.046974, 37.588337>,  <32.630253, 35.008369, 37.628189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863750, 35.046974, 37.588337>,  <33.252914, 35.111317, 37.521915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863750, 35.046974, 37.588337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100943, -0.350633, -0.931057,
		0.207989, -0.922596, 0.324897,
		-0.972908, -0.160854, 0.166058,
		32.571877, 34.998718, 37.638153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147316, 34.396164, 37.437794>,  <33.252914, 35.111317, 37.521915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147316, 34.396164, 37.437794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791576, 34.573624, 37.393547>,  <32.578133, 34.680099, 37.367001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791576, 34.573624, 37.393547>,  <33.147316, 34.396164, 37.437794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791576, 34.573624, 37.393547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134023, -0.484239, -0.864610,
		-0.437142, -0.754117, 0.490116,
		-0.889350, 0.443644, -0.110613,
		32.524773, 34.706718, 37.360363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723370, 33.902462, 37.099876>,  <33.147316, 34.396164, 37.437794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723370, 33.902462, 37.099876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519150, 34.242016, 37.045132>,  <32.396618, 34.445747, 37.012283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519150, 34.242016, 37.045132>,  <32.723370, 33.902462, 37.099876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519150, 34.242016, 37.045132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309375, -0.329861, -0.891896,
		-0.802266, -0.413012, 0.431035,
		-0.510545, 0.848889, -0.136861,
		32.365986, 34.496681, 37.004074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365170, 33.188847, 37.188053>,  <32.723370, 33.902462, 37.099876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365170, 33.188847, 37.188053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480347, 33.121380, 36.810982>,  <32.549454, 33.080898, 36.584740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480347, 33.121380, 36.810982>,  <32.365170, 33.188847, 37.188053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480347, 33.121380, 36.810982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901900, 0.378720, 0.207721,
		0.321975, -0.910012, 0.261170,
		0.287939, -0.168668, -0.942678,
		32.566727, 33.070778, 36.528179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090591, 32.751263, 37.091927>,  <32.365170, 33.188847, 37.188053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090591, 32.751263, 37.091927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981529, 33.018246, 36.814751>,  <32.916092, 33.178436, 36.648445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981529, 33.018246, 36.814751>,  <33.090591, 32.751263, 37.091927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981529, 33.018246, 36.814751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693069, 0.635805, 0.339716,
		0.667319, -0.387627, -0.635949,
		-0.272657, 0.667455, -0.692937,
		32.899731, 33.218483, 36.606869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613163, 32.862106, 36.771832>,  <33.090591, 32.751263, 37.091927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613163, 32.862106, 36.771832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393719, 33.193684, 36.728230>,  <33.262051, 33.392628, 36.702068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393719, 33.193684, 36.728230>,  <33.613163, 32.862106, 36.771832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393719, 33.193684, 36.728230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765208, 0.550355, 0.334015,
		0.336869, 0.099835, -0.936244,
		-0.548612, 0.828941, -0.109003,
		33.229134, 33.442368, 36.695530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148304, 32.462688, 37.122520>,  <33.613163, 32.862106, 36.771832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148304, 32.462688, 37.122520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479744, 32.604088, 37.296165>,  <34.678608, 32.688927, 37.400352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479744, 32.604088, 37.296165>,  <34.148304, 32.462688, 37.122520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479744, 32.604088, 37.296165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029702, -0.746582, 0.664630,
		0.559047, -0.563609, -0.608121,
		0.828604, 0.353497, 0.434115,
		34.728325, 32.710136, 37.426399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756046, 31.947609, 37.069946>,  <34.148304, 32.462688, 37.122520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756046, 31.947609, 37.069946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781258, 32.183910, 37.391701>,  <34.796383, 32.325691, 37.584755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781258, 32.183910, 37.391701>,  <34.756046, 31.947609, 37.069946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781258, 32.183910, 37.391701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020179, -0.806578, 0.590783,
		0.997808, -0.021004, -0.062759,
		0.063029, 0.590754, 0.804386,
		34.800167, 32.361137, 37.633018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802704, 31.463486, 37.649426>,  <34.756046, 31.947609, 37.069946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802704, 31.463486, 37.649426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789661, 31.811871, 37.845531>,  <34.781837, 32.020901, 37.963196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789661, 31.811871, 37.845531>,  <34.802704, 31.463486, 37.649426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789661, 31.811871, 37.845531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098257, -0.490943, 0.865633,
		0.994627, -0.019950, 0.101584,
		-0.032602, 0.870963, 0.490265,
		34.779881, 32.073158, 37.992611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471146, 31.468096, 38.022640>,  <34.802704, 31.463486, 37.649426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471146, 31.468096, 38.022640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167484, 31.686213, 38.164822>,  <34.985287, 31.817081, 38.250130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167484, 31.686213, 38.164822>,  <35.471146, 31.468096, 38.022640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167484, 31.686213, 38.164822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008147, -0.553999, 0.832478,
		0.650861, 0.629082, 0.425012,
		-0.759153, 0.545290, 0.355451,
		34.939739, 31.849800, 38.271458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708141, 31.867579, 38.584133>,  <35.471146, 31.468096, 38.022640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708141, 31.867579, 38.584133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312824, 31.817755, 38.619396>,  <35.075634, 31.787861, 38.640553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312824, 31.817755, 38.619396>,  <35.708141, 31.867579, 38.584133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312824, 31.817755, 38.619396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138159, -0.485058, 0.863499,
		-0.064794, 0.865566, 0.496586,
		-0.988288, -0.124558, 0.088157,
		35.016338, 31.780388, 38.645844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656895, 31.860023, 39.301933>,  <35.708141, 31.867579, 38.584133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656895, 31.860023, 39.301933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287659, 31.750240, 39.194168>,  <35.066116, 31.684370, 39.129509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287659, 31.750240, 39.194168>,  <35.656895, 31.860023, 39.301933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287659, 31.750240, 39.194168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090960, -0.524842, 0.846326,
		-0.373681, 0.805738, 0.459510,
		-0.923087, -0.274459, -0.269413,
		35.010735, 31.667902, 39.113342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248955, 32.058743, 39.843185>,  <35.656895, 31.860023, 39.301933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248955, 32.058743, 39.843185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031284, 31.796043, 39.634361>,  <34.900681, 31.638424, 39.509068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031284, 31.796043, 39.634361>,  <35.248955, 32.058743, 39.843185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031284, 31.796043, 39.634361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203308, -0.500488, 0.841533,
		-0.813963, 0.564083, 0.138832,
		-0.544178, -0.656751, -0.522062,
		34.868031, 31.599018, 39.477741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678894, 32.102528, 40.119839>,  <35.248955, 32.058743, 39.843185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678894, 32.102528, 40.119839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669800, 31.755373, 39.921341>,  <34.664345, 31.547079, 39.802242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669800, 31.755373, 39.921341>,  <34.678894, 32.102528, 40.119839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669800, 31.755373, 39.921341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213585, -0.480691, 0.850481,
		-0.976660, 0.125327, -0.174438,
		-0.022737, -0.867888, -0.496240,
		34.662979, 31.495007, 39.772469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018326, 31.701859, 40.351948>,  <34.678894, 32.102528, 40.119839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018326, 31.701859, 40.351948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289009, 31.435429, 40.226460>,  <34.451420, 31.275570, 40.151169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289009, 31.435429, 40.226460>,  <34.018326, 31.701859, 40.351948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289009, 31.435429, 40.226460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015160, -0.438611, 0.898549,
		-0.736100, -0.603295, -0.306907,
		0.676703, -0.666074, -0.313716,
		34.492020, 31.235607, 40.132343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742661, 31.001261, 40.486015>,  <34.018326, 31.701859, 40.351948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742661, 31.001261, 40.486015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139618, 30.957668, 40.463108>,  <34.377792, 30.931513, 40.449364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139618, 30.957668, 40.463108>,  <33.742661, 31.001261, 40.486015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139618, 30.957668, 40.463108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017436, -0.584903, 0.810915,
		-0.121870, -0.803748, -0.582354,
		0.992393, -0.108980, -0.057268,
		34.437336, 30.924974, 40.445927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835129, 30.232492, 40.804108>,  <33.742661, 31.001261, 40.486015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835129, 30.232492, 40.804108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193607, 30.409252, 40.788303>,  <34.408695, 30.515308, 40.778820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193607, 30.409252, 40.788303>,  <33.835129, 30.232492, 40.804108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193607, 30.409252, 40.788303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290347, -0.516832, 0.805347,
		0.335461, -0.733219, -0.591486,
		0.896194, 0.441899, -0.039511,
		34.462467, 30.541822, 40.776451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384743, 29.647812, 40.721577>,  <33.835129, 30.232492, 40.804108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384743, 29.647812, 40.721577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514561, 29.977217, 40.907692>,  <34.592453, 30.174860, 41.019360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514561, 29.977217, 40.907692>,  <34.384743, 29.647812, 40.721577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514561, 29.977217, 40.907692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326306, -0.559197, 0.762118,
		0.887803, -0.095516, -0.450203,
		0.324547, 0.823514, 0.465289,
		34.611923, 30.224272, 41.047279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803764, 29.444313, 41.108364>,  <34.384743, 29.647812, 40.721577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803764, 29.444313, 41.108364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803028, 29.820597, 41.244049>,  <34.802586, 30.046366, 41.325459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803028, 29.820597, 41.244049>,  <34.803764, 29.444313, 41.108364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803028, 29.820597, 41.244049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515866, -0.289701, 0.806198,
		0.856668, 0.176472, -0.484746,
		-0.001840, 0.940708, 0.339213,
		34.802475, 30.102810, 41.345814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495136, 29.658672, 41.199856>,  <34.803764, 29.444313, 41.108364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495136, 29.658672, 41.199856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310135, 29.916998, 41.442841>,  <35.199135, 30.071993, 41.588631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310135, 29.916998, 41.442841>,  <35.495136, 29.658672, 41.199856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310135, 29.916998, 41.442841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559180, -0.319226, 0.765123,
		0.688044, 0.693557, -0.213481,
		-0.462508, 0.645812, 0.607465,
		35.171383, 30.110743, 41.625080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954945, 29.933493, 41.703213>,  <35.495136, 29.658672, 41.199856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954945, 29.933493, 41.703213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595814, 29.962486, 41.876945>,  <35.380333, 29.979883, 41.981186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595814, 29.962486, 41.876945>,  <35.954945, 29.933493, 41.703213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595814, 29.962486, 41.876945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360042, -0.447021, 0.818866,
		0.253511, 0.891582, 0.375253,
		-0.897832, 0.072484, 0.434332,
		35.326466, 29.984232, 42.007244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047691, 30.193308, 42.317970>,  <35.954945, 29.933493, 41.703213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047691, 30.193308, 42.317970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684273, 30.036652, 42.376160>,  <35.466221, 29.942657, 42.411072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684273, 30.036652, 42.376160>,  <36.047691, 30.193308, 42.317970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684273, 30.036652, 42.376160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279378, -0.310635, 0.908545,
		-0.310635, 0.866096, 0.391642,
		-0.908545, -0.391642, 0.145474,
		35.411709, 29.919159, 42.419804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040390, 30.157478, 43.039646>,  <36.047691, 30.193308, 42.317970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040390, 30.157478, 43.039646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708939, 29.954967, 42.944107>,  <35.510067, 29.833462, 42.886784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708939, 29.954967, 42.944107>,  <36.040390, 30.157478, 43.039646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708939, 29.954967, 42.944107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056869, -0.348341, 0.935641,
		-0.556896, 0.788887, 0.259855,
		-0.828633, -0.506277, -0.238852,
		35.460350, 29.803083, 42.872452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612865, 30.332502, 43.547649>,  <36.040390, 30.157478, 43.039646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612865, 30.332502, 43.547649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485405, 29.990585, 43.383801>,  <35.408928, 29.785435, 43.285492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485405, 29.990585, 43.383801>,  <35.612865, 30.332502, 43.547649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485405, 29.990585, 43.383801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113554, -0.394607, 0.911806,
		-0.941045, 0.337064, 0.028677,
		-0.318653, -0.854795, -0.409618,
		35.389809, 29.734146, 43.260914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910870, 30.134794, 43.874439>,  <35.612865, 30.332502, 43.547649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910870, 30.134794, 43.874439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098541, 29.806673, 43.743610>,  <35.211143, 29.609800, 43.665112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098541, 29.806673, 43.743610>,  <34.910870, 30.134794, 43.874439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098541, 29.806673, 43.743610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138226, -0.434018, 0.890237,
		-0.872219, -0.372469, -0.317018,
		0.469177, -0.820302, -0.327074,
		35.239296, 29.560583, 43.645489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577366, 29.639008, 44.212120>,  <34.910870, 30.134794, 43.874439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577366, 29.639008, 44.212120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891979, 29.436329, 44.070911>,  <35.080746, 29.314722, 43.986187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891979, 29.436329, 44.070911>,  <34.577366, 29.639008, 44.212120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891979, 29.436329, 44.070911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005992, -0.565364, 0.824820,
		-0.617525, -0.650860, -0.441639,
		0.786529, -0.506700, -0.353027,
		35.127937, 29.284319, 43.965004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486732, 28.909803, 44.290150>,  <34.577366, 29.639008, 44.212120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486732, 28.909803, 44.290150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884262, 28.947500, 44.266747>,  <35.122780, 28.970119, 44.252705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884262, 28.947500, 44.266747>,  <34.486732, 28.909803, 44.290150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884262, 28.947500, 44.266747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095463, -0.458040, 0.883791,
		0.056494, -0.883922, -0.464210,
		0.993829, 0.094244, -0.058505,
		35.182411, 28.975773, 44.249195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566658, 28.375299, 44.616776>,  <34.486732, 28.909803, 44.290150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566658, 28.375299, 44.616776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929710, 28.542984, 44.625397>,  <35.147541, 28.643595, 44.630569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929710, 28.542984, 44.625397>,  <34.566658, 28.375299, 44.616776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929710, 28.542984, 44.625397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223714, -0.526526, 0.820196,
		0.355185, -0.739615, -0.571676,
		0.907632, 0.419213, 0.021552,
		35.202000, 28.668749, 44.631863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045769, 27.833229, 44.677364>,  <34.566658, 28.375299, 44.616776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045769, 27.833229, 44.677364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227177, 28.162622, 44.813713>,  <35.336021, 28.360258, 44.895523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227177, 28.162622, 44.813713>,  <35.045769, 27.833229, 44.677364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227177, 28.162622, 44.813713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165506, -0.453628, 0.875688,
		0.875742, -0.340730, -0.342022,
		0.453524, 0.823484, 0.340868,
		35.363235, 28.409668, 44.915974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688389, 27.592573, 44.964039>,  <35.045769, 27.833229, 44.677364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688389, 27.592573, 44.964039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594540, 27.945217, 45.127853>,  <35.538231, 28.156803, 45.226143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594540, 27.945217, 45.127853>,  <35.688389, 27.592573, 44.964039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594540, 27.945217, 45.127853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040551, -0.412053, 0.910257,
		0.971241, 0.230171, 0.060926,
		-0.234620, 0.881608, 0.409536,
		35.524155, 28.209700, 45.250713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140514, 27.577669, 45.543949>,  <35.688389, 27.592573, 44.964039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140514, 27.577669, 45.543949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858009, 27.849211, 45.624298>,  <35.688507, 28.012136, 45.672508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858009, 27.849211, 45.624298>,  <36.140514, 27.577669, 45.543949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858009, 27.849211, 45.624298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149816, -0.420631, 0.894776,
		0.691916, 0.601853, 0.398779,
		-0.706263, 0.678854, 0.200874,
		35.646130, 28.052866, 45.684559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946579, 27.499132, 45.814682>,  <36.140514, 27.577669, 45.543949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946579, 27.499132, 45.814682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219692, 27.211889, 45.760822>,  <37.383560, 27.039543, 45.728504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219692, 27.211889, 45.760822>,  <36.946579, 27.499132, 45.814682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219692, 27.211889, 45.760822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347936, 0.481640, -0.804340,
		0.642456, 0.502339, 0.578711,
		0.682782, -0.718107, -0.134651,
		37.424526, 26.996458, 45.720428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597366, 27.839811, 45.648315>,  <36.946579, 27.499132, 45.814682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597366, 27.839811, 45.648315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611275, 27.466516, 45.505287>,  <37.619621, 27.242540, 45.419468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611275, 27.466516, 45.505287>,  <37.597366, 27.839811, 45.648315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611275, 27.466516, 45.505287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178137, 0.357848, -0.916631,
		0.983391, -0.031822, 0.178688,
		0.034774, -0.933237, -0.357573,
		37.621708, 27.186544, 45.398014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204098, 27.898035, 45.244560>,  <37.597366, 27.839811, 45.648315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204098, 27.898035, 45.244560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995293, 27.578764, 45.124283>,  <37.870010, 27.387201, 45.052116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995293, 27.578764, 45.124283>,  <38.204098, 27.898035, 45.244560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995293, 27.578764, 45.124283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336168, 0.131474, -0.932580,
		0.783900, -0.587899, 0.199691,
		-0.522009, -0.798179, -0.300695,
		37.838692, 27.339310, 45.034073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602993, 27.641254, 44.750725>,  <38.204098, 27.898035, 45.244560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602993, 27.641254, 44.750725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289433, 27.413736, 44.651142>,  <38.101295, 27.277225, 44.591393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289433, 27.413736, 44.651142>,  <38.602993, 27.641254, 44.750725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289433, 27.413736, 44.651142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235706, 0.098326, -0.966838,
		0.574410, -0.816581, 0.056991,
		-0.783898, -0.568794, -0.248952,
		38.054264, 27.243097, 44.576458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782570, 27.224453, 44.298737>,  <38.602993, 27.641254, 44.750725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782570, 27.224453, 44.298737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387878, 27.233168, 44.234371>,  <38.151062, 27.238398, 44.195751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387878, 27.233168, 44.234371>,  <38.782570, 27.224453, 44.298737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387878, 27.233168, 44.234371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161837, 0.213101, -0.963533,
		0.013296, -0.976787, -0.213799,
		-0.986728, 0.021790, -0.160914,
		38.091862, 27.239704, 44.186096>
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
