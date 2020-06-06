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
	<24.587034, 35.342205, 34.788155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.396746, 35.116360, 35.057941>,  <24.282572, 34.980854, 35.219814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.396746, 35.116360, 35.057941>,  <24.587034, 35.342205, 34.788155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.396746, 35.116360, 35.057941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729397, -0.681773, -0.056263,
		0.491597, 0.465186, 0.736162,
		-0.475723, -0.564613, 0.674463,
		24.254028, 34.946976, 35.260281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.260677, 34.970356, 34.912170>,  <24.587034, 35.342205, 34.788155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.260677, 34.970356, 34.912170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153156, 35.268913, 34.668652>,  <25.088644, 35.448048, 34.522541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153156, 35.268913, 34.668652>,  <25.260677, 34.970356, 34.912170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.153156, 35.268913, 34.668652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374710, 0.663306, 0.647778,
		0.887320, -0.053998, -0.457982,
		-0.268804, 0.746397, -0.608799,
		25.072515, 35.492832, 34.486012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783304, 35.421921, 34.692276>,  <25.260677, 34.970356, 34.912170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783304, 35.421921, 34.692276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417715, 35.575909, 34.743584>,  <25.198362, 35.668301, 34.774368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417715, 35.575909, 34.743584>,  <25.783304, 35.421921, 34.692276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417715, 35.575909, 34.743584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327160, 0.512112, 0.794171,
		0.240047, 0.767814, -0.594003,
		-0.913972, 0.384972, 0.128267,
		25.143524, 35.691399, 34.782063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308517, 35.689899, 34.070312>,  <25.783304, 35.421921, 34.692276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308517, 35.689899, 34.070312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152256, 35.508186, 33.750057>,  <26.058498, 35.399158, 33.557903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152256, 35.508186, 33.750057>,  <26.308517, 35.689899, 34.070312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152256, 35.508186, 33.750057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439606, 0.672099, -0.595843,
		0.808787, -0.584733, -0.062854,
		-0.390654, -0.454279, -0.800637,
		26.035059, 35.371902, 33.509865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624493, 35.829590, 33.998058>,  <26.308517, 35.689899, 34.070312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624493, 35.829590, 33.998058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800001, 35.873287, 34.354832>,  <25.905306, 35.899506, 34.568897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800001, 35.873287, 34.354832>,  <25.624493, 35.829590, 33.998058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.800001, 35.873287, 34.354832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848249, 0.277236, -0.451237,
		-0.296572, 0.954571, 0.028975,
		0.438770, 0.109246, 0.891934,
		25.931633, 35.906059, 34.622414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805210, 36.547485, 34.166443>,  <25.624493, 35.829590, 33.998058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805210, 36.547485, 34.166443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063850, 36.295197, 34.338070>,  <26.219034, 36.143822, 34.441044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063850, 36.295197, 34.338070>,  <25.805210, 36.547485, 34.166443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063850, 36.295197, 34.338070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748116, 0.414385, -0.518273,
		0.149088, 0.656106, 0.739795,
		0.646602, -0.630721, 0.429064,
		26.257832, 36.105980, 34.466789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.260118, 37.080910, 34.548149>,  <25.805210, 36.547485, 34.166443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.260118, 37.080910, 34.548149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405943, 36.741550, 34.394623>,  <26.493437, 36.537933, 34.302505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405943, 36.741550, 34.394623>,  <26.260118, 37.080910, 34.548149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405943, 36.741550, 34.394623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603184, 0.529176, -0.596776,
		0.709411, -0.013953, 0.704656,
		0.364561, -0.848397, -0.383820,
		26.515310, 36.487030, 34.279476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600939, 37.411781, 34.381813>,  <26.260118, 37.080910, 34.548149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600939, 37.411781, 34.381813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965900, 37.567856, 34.431252>,  <26.184877, 37.661499, 34.460915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965900, 37.567856, 34.431252>,  <25.600939, 37.411781, 34.381813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965900, 37.567856, 34.431252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044746, 0.205079, -0.977722,
		-0.406841, 0.897606, 0.169655,
		0.912402, 0.390186, 0.123599,
		26.239620, 37.684914, 34.468330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596556, 38.105160, 34.045898>,  <25.600939, 37.411781, 34.381813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596556, 38.105160, 34.045898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980581, 37.997017, 34.074688>,  <26.210997, 37.932133, 34.091961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980581, 37.997017, 34.074688>,  <25.596556, 38.105160, 34.045898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980581, 37.997017, 34.074688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149023, 0.276434, -0.949408,
		0.236781, 0.922221, 0.305684,
		0.960066, -0.270355, 0.071978,
		26.268600, 37.915909, 34.096283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094330, 38.767529, 33.840881>,  <25.596556, 38.105160, 34.045898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094330, 38.767529, 33.840881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304981, 38.428062, 33.821198>,  <26.431372, 38.224380, 33.809387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304981, 38.428062, 33.821198>,  <26.094330, 38.767529, 33.840881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304981, 38.428062, 33.821198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339775, 0.263195, -0.902929,
		0.779240, 0.458790, 0.426963,
		0.526630, -0.848670, -0.049206,
		26.462971, 38.173462, 33.806435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794260, 38.946438, 33.567822>,  <26.094330, 38.767529, 33.840881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794260, 38.946438, 33.567822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736271, 38.558285, 33.490536>,  <26.701477, 38.325394, 33.444164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736271, 38.558285, 33.490536>,  <26.794260, 38.946438, 33.567822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736271, 38.558285, 33.490536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548751, 0.083639, -0.831791,
		0.823320, -0.226615, 0.520375,
		-0.144973, -0.970387, -0.193217,
		26.692780, 38.267170, 33.432571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434580, 38.667274, 33.474403>,  <26.794260, 38.946438, 33.567822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434580, 38.667274, 33.474403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.164061, 38.451107, 33.274178>,  <27.001749, 38.321407, 33.154041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.164061, 38.451107, 33.274178>,  <27.434580, 38.667274, 33.474403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164061, 38.451107, 33.274178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540156, 0.098209, -0.835815,
		0.500852, -0.835643, 0.225494,
		-0.676298, -0.540421, -0.500566,
		26.961172, 38.288982, 33.124008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850925, 38.194118, 32.958973>,  <27.434580, 38.667274, 33.474403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850925, 38.194118, 32.958973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468212, 38.191658, 32.842682>,  <27.238585, 38.190182, 32.772907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468212, 38.191658, 32.842682>,  <27.850925, 38.194118, 32.958973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468212, 38.191658, 32.842682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290438, 0.029281, -0.956446,
		0.014384, -0.999552, -0.026233,
		-0.956786, -0.006138, -0.290729,
		27.181177, 38.189812, 32.755463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853584, 37.748043, 32.409950>,  <27.850925, 38.194118, 32.958973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853584, 37.748043, 32.409950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510487, 37.953365, 32.398746>,  <27.304628, 38.076561, 32.392025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510487, 37.953365, 32.398746>,  <27.853584, 37.748043, 32.409950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510487, 37.953365, 32.398746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032953, 0.000527, -0.999457,
		-0.513016, -0.858204, -0.017367,
		-0.857746, 0.513309, -0.028011,
		27.253162, 38.107357, 32.390343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317591, 37.310940, 32.130318>,  <27.853584, 37.748043, 32.409950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.317591, 37.310940, 32.130318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296471, 37.703911, 32.058708>,  <27.283798, 37.939693, 32.015743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296471, 37.703911, 32.058708>,  <27.317591, 37.310940, 32.130318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296471, 37.703911, 32.058708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255463, -0.160020, -0.953484,
		-0.965376, -0.096079, -0.242524,
		-0.052801, 0.982427, -0.179024,
		27.280630, 37.998638, 32.005001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630611, 37.374805, 32.549412>,  <27.317591, 37.310940, 32.130318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630611, 37.374805, 32.549412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811447, 37.643158, 32.784542>,  <26.919949, 37.804169, 32.925621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811447, 37.643158, 32.784542>,  <26.630611, 37.374805, 32.549412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811447, 37.643158, 32.784542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497538, -0.357302, 0.790438,
		0.740320, -0.649811, 0.172257,
		0.452087, 0.670881, 0.587823,
		26.947073, 37.844421, 32.960888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727375, 36.985813, 33.193459>,  <26.630611, 37.374805, 32.549412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727375, 36.985813, 33.193459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740725, 37.373444, 33.291260>,  <26.748734, 37.606022, 33.349941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740725, 37.373444, 33.291260>,  <26.727375, 36.985813, 33.193459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740725, 37.373444, 33.291260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324597, -0.220872, 0.919702,
		0.945263, -0.110059, 0.307188,
		0.033373, 0.969073, 0.244507,
		26.750736, 37.664165, 33.364613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190842, 37.114239, 33.726112>,  <26.727375, 36.985813, 33.193459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190842, 37.114239, 33.726112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959761, 37.440525, 33.737888>,  <26.821112, 37.636295, 33.744953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959761, 37.440525, 33.737888>,  <27.190842, 37.114239, 33.726112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959761, 37.440525, 33.737888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084317, -0.095508, 0.991851,
		0.811882, 0.570512, 0.123954,
		-0.577701, 0.815717, 0.029437,
		26.786449, 37.685242, 33.746719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506464, 37.497887, 34.262016>,  <27.190842, 37.114239, 33.726112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506464, 37.497887, 34.262016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129171, 37.622723, 34.216560>,  <26.902796, 37.697624, 34.189285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129171, 37.622723, 34.216560>,  <27.506464, 37.497887, 34.262016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129171, 37.622723, 34.216560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122986, -0.010366, 0.992354,
		0.308526, 0.949996, 0.048160,
		-0.943232, 0.312090, -0.113639,
		26.846201, 37.716351, 34.182468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423103, 38.062374, 34.724098>,  <27.506464, 37.497887, 34.262016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423103, 38.062374, 34.724098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059792, 37.918346, 34.638889>,  <26.841805, 37.831928, 34.587765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059792, 37.918346, 34.638889>,  <27.423103, 38.062374, 34.724098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059792, 37.918346, 34.638889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234121, 0.015484, 0.972084,
		-0.346722, 0.932796, -0.098364,
		-0.908279, -0.360072, -0.213018,
		26.787308, 37.810326, 34.574986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769110, 38.499016, 35.023632>,  <27.423103, 38.062374, 34.724098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769110, 38.499016, 35.023632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711311, 38.104946, 34.986637>,  <26.676632, 37.868504, 34.964439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711311, 38.104946, 34.986637>,  <26.769110, 38.499016, 35.023632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711311, 38.104946, 34.986637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494628, -0.009038, 0.869058,
		-0.857009, 0.171320, -0.485989,
		-0.144495, -0.985174, -0.092485,
		26.667963, 37.809395, 34.958893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026848, 38.384438, 35.638592>,  <26.769110, 38.499016, 35.023632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026848, 38.384438, 35.638592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832861, 38.686455, 35.815098>,  <26.716469, 38.867664, 35.921001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832861, 38.686455, 35.815098>,  <27.026848, 38.384438, 35.638592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832861, 38.686455, 35.815098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624230, -0.054522, 0.779336,
		0.612492, 0.653403, -0.444879,
		-0.484965, 0.755044, 0.441268,
		26.687372, 38.912968, 35.947479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510981, 38.919235, 35.801163>,  <27.026848, 38.384438, 35.638592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510981, 38.919235, 35.801163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223471, 38.920677, 36.079258>,  <27.050964, 38.921543, 36.246113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223471, 38.920677, 36.079258>,  <27.510981, 38.919235, 35.801163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223471, 38.920677, 36.079258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689521, -0.124327, 0.713515,
		0.089011, 0.992235, 0.086876,
		-0.718775, 0.003607, 0.695233,
		27.007837, 38.921761, 36.287827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679514, 39.507599, 36.310921>,  <27.510981, 38.919235, 35.801163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679514, 39.507599, 36.310921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476952, 39.187798, 36.440132>,  <27.355413, 38.995918, 36.517658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476952, 39.187798, 36.440132>,  <27.679514, 39.507599, 36.310921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476952, 39.187798, 36.440132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611025, -0.068376, 0.788653,
		-0.608440, 0.596761, 0.523141,
		-0.506408, -0.799500, 0.323033,
		27.325029, 38.947948, 36.537041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532185, 39.680489, 37.028400>,  <27.679514, 39.507599, 36.310921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532185, 39.680489, 37.028400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499846, 39.289135, 36.952267>,  <27.480442, 39.054321, 36.906586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499846, 39.289135, 36.952267>,  <27.532185, 39.680489, 37.028400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499846, 39.289135, 36.952267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423099, -0.206585, 0.882219,
		-0.902469, -0.009203, 0.430656,
		-0.080848, -0.978385, -0.190331,
		27.475592, 38.995621, 36.895168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368137, 39.311089, 37.679771>,  <27.532185, 39.680489, 37.028400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368137, 39.311089, 37.679771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516232, 39.042233, 37.423286>,  <27.605087, 38.880920, 37.269394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516232, 39.042233, 37.423286>,  <27.368137, 39.311089, 37.679771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516232, 39.042233, 37.423286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473340, -0.457432, 0.752798,
		-0.799297, -0.582224, 0.148793,
		0.370234, -0.672139, -0.641214,
		27.627302, 38.840591, 37.230923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169735, 38.601181, 37.907902>,  <27.368137, 39.311089, 37.679771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169735, 38.601181, 37.907902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498022, 38.614567, 37.679760>,  <27.694994, 38.622597, 37.542877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498022, 38.614567, 37.679760>,  <27.169735, 38.601181, 37.907902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498022, 38.614567, 37.679760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460164, -0.630397, 0.625179,
		-0.338628, -0.775551, -0.532777,
		0.820719, 0.033461, -0.570351,
		27.744238, 38.624603, 37.508656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463907, 37.988300, 37.514866>,  <27.169735, 38.601181, 37.907902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463907, 37.988300, 37.514866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822140, 38.153954, 37.579891>,  <28.037079, 38.253345, 37.618908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822140, 38.153954, 37.579891>,  <27.463907, 37.988300, 37.514866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822140, 38.153954, 37.579891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193605, -0.691774, 0.695677,
		0.400560, -0.591562, -0.699718,
		0.895583, 0.414129, 0.162567,
		28.090815, 38.278191, 37.628662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911375, 37.559452, 37.909985>,  <27.463907, 37.988300, 37.514866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911375, 37.559452, 37.909985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173929, 37.861221, 37.909218>,  <28.331463, 38.042282, 37.908756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173929, 37.861221, 37.909218>,  <27.911375, 37.559452, 37.909985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173929, 37.861221, 37.909218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635741, -0.551758, 0.539811,
		0.406188, -0.355543, -0.841784,
		0.656387, 0.754422, -0.001916,
		28.370846, 38.087547, 37.908642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584070, 37.259274, 37.648972>,  <27.911375, 37.559452, 37.909985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584070, 37.259274, 37.648972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653675, 37.576439, 37.882557>,  <28.695438, 37.766739, 38.022709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653675, 37.576439, 37.882557>,  <28.584070, 37.259274, 37.648972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653675, 37.576439, 37.882557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704693, -0.514483, 0.488585,
		0.687843, 0.326495, -0.648284,
		0.174011, 0.792911, 0.583962,
		28.705879, 37.814312, 38.057747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327961, 37.382595, 37.636662>,  <28.584070, 37.259274, 37.648972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327961, 37.382595, 37.636662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199608, 37.540051, 37.981239>,  <29.122597, 37.634525, 38.187984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199608, 37.540051, 37.981239>,  <29.327961, 37.382595, 37.636662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199608, 37.540051, 37.981239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772199, -0.417905, 0.478606,
		0.548400, 0.818780, -0.169872,
		-0.320883, 0.393643, 0.861440,
		29.103342, 37.658142, 38.239670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911924, 37.796997, 38.054623>,  <29.327961, 37.382595, 37.636662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911924, 37.796997, 38.054623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625959, 37.635033, 38.282639>,  <29.454380, 37.537853, 38.419449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625959, 37.635033, 38.282639>,  <29.911924, 37.796997, 38.054623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625959, 37.635033, 38.282639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689453, -0.543982, 0.478265,
		0.116439, 0.734936, 0.668066,
		-0.714910, -0.404911, 0.570044,
		29.411486, 37.513557, 38.453651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127573, 37.917629, 38.704258>,  <29.911924, 37.796997, 38.054623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127573, 37.917629, 38.704258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877630, 37.606030, 38.725090>,  <29.727665, 37.419071, 38.737587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877630, 37.606030, 38.725090>,  <30.127573, 37.917629, 38.704258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877630, 37.606030, 38.725090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700437, -0.529877, 0.478141,
		-0.344877, 0.335247, 0.876738,
		-0.624858, -0.778999, 0.052077,
		29.690172, 37.372330, 38.740715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328529, 37.560322, 39.307537>,  <30.127573, 37.917629, 38.704258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328529, 37.560322, 39.307537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085022, 37.309235, 39.113476>,  <29.938917, 37.158585, 38.997040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085022, 37.309235, 39.113476>,  <30.328529, 37.560322, 39.307537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085022, 37.309235, 39.113476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515138, -0.777836, 0.360004,
		-0.603350, -0.030761, 0.796883,
		-0.608770, -0.627714, -0.485154,
		29.902391, 37.120922, 38.967930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675188, 36.828178, 39.160404>,  <30.328529, 37.560322, 39.307537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675188, 36.828178, 39.160404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385601, 36.714485, 39.411827>,  <30.211849, 36.646271, 39.562679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385601, 36.714485, 39.411827>,  <30.675188, 36.828178, 39.160404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385601, 36.714485, 39.411827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681482, 0.153332, -0.715592,
		0.107016, -0.946415, -0.304706,
		-0.723969, -0.284232, 0.628556,
		30.168411, 36.629215, 39.600395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224867, 36.275967, 38.781368>,  <30.675188, 36.828178, 39.160404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224867, 36.275967, 38.781368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031353, 36.470779, 39.072227>,  <29.915245, 36.587669, 39.246742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031353, 36.470779, 39.072227>,  <30.224867, 36.275967, 38.781368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031353, 36.470779, 39.072227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606575, 0.412335, -0.679740,
		-0.630887, -0.769920, 0.095942,
		-0.483785, 0.487035, 0.727151,
		29.886217, 36.616890, 39.290371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535353, 36.097969, 38.823620>,  <30.224867, 36.275967, 38.781368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535353, 36.097969, 38.823620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577957, 36.466328, 38.973602>,  <29.603519, 36.687344, 39.063591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577957, 36.466328, 38.973602>,  <29.535353, 36.097969, 38.823620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577957, 36.466328, 38.973602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709510, 0.334588, -0.620199,
		-0.696599, -0.199979, 0.689027,
		0.106514, 0.920901, 0.374961,
		29.609911, 36.742599, 39.086090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846487, 36.394039, 38.982544>,  <29.535353, 36.097969, 38.823620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846487, 36.394039, 38.982544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094170, 36.706303, 38.948700>,  <29.242779, 36.893661, 38.928394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094170, 36.706303, 38.948700>,  <28.846487, 36.394039, 38.982544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094170, 36.706303, 38.948700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725737, 0.527825, -0.441255,
		-0.299812, 0.334630, 0.893384,
		0.619208, 0.780656, -0.084605,
		29.279932, 36.940498, 38.923317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422031, 36.981773, 39.141586>,  <28.846487, 36.394039, 38.982544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422031, 36.981773, 39.141586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724760, 37.158886, 38.949268>,  <28.906397, 37.265152, 38.833878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724760, 37.158886, 38.949268>,  <28.422031, 36.981773, 39.141586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724760, 37.158886, 38.949268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649021, 0.596204, -0.472559,
		0.077414, 0.669691, 0.738594,
		0.756822, 0.442780, -0.480798,
		28.951807, 37.291721, 38.805031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601736, 37.573036, 39.398331>,  <28.422031, 36.981773, 39.141586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601736, 37.573036, 39.398331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908283, 37.633503, 39.148586>,  <29.092211, 37.669785, 38.998741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908283, 37.633503, 39.148586>,  <28.601736, 37.573036, 39.398331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908283, 37.633503, 39.148586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575770, 0.592676, -0.563227,
		0.284902, 0.791128, 0.541246,
		0.766368, 0.151169, -0.624362,
		29.138193, 37.678852, 38.961277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727705, 38.319397, 39.271671>,  <28.601736, 37.573036, 39.398331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727705, 38.319397, 39.271671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849794, 38.122952, 38.945324>,  <28.923048, 38.005085, 38.749516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849794, 38.122952, 38.945324>,  <28.727705, 38.319397, 39.271671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849794, 38.122952, 38.945324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617316, 0.550316, -0.562204,
		0.725092, 0.675250, -0.135200,
		0.305225, -0.491111, -0.815873,
		28.941362, 37.975616, 38.700562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825506, 38.840248, 38.808857>,  <28.727705, 38.319397, 39.271671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825506, 38.840248, 38.808857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811312, 38.528538, 38.558590>,  <28.802795, 38.341511, 38.408428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811312, 38.528538, 38.558590>,  <28.825506, 38.840248, 38.808857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811312, 38.528538, 38.558590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658743, 0.489045, -0.571745,
		0.751530, 0.391868, -0.530699,
		-0.035487, -0.779279, -0.625672,
		28.800665, 38.294754, 38.370888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871670, 39.000172, 38.029308>,  <28.825506, 38.840248, 38.808857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871670, 39.000172, 38.029308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620241, 38.696781, 38.098137>,  <28.469383, 38.514748, 38.139435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620241, 38.696781, 38.098137>,  <28.871670, 39.000172, 38.029308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620241, 38.696781, 38.098137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727012, 0.494403, -0.476466,
		0.276313, -0.424596, -0.862189,
		-0.628574, -0.758475, 0.172076,
		28.431669, 38.469238, 38.149761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364475, 39.530075, 38.183716>,  <28.871670, 39.000172, 38.029308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364475, 39.530075, 38.183716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309134, 39.622540, 37.798504>,  <28.275928, 39.678017, 37.567375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309134, 39.622540, 37.798504>,  <28.364475, 39.530075, 38.183716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309134, 39.622540, 37.798504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211878, 0.956776, 0.199217,
		0.967453, -0.176482, -0.181353,
		-0.138356, 0.231158, -0.963028,
		28.267626, 39.691887, 37.509594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731749, 40.094997, 38.139317>,  <28.364475, 39.530075, 38.183716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731749, 40.094997, 38.139317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605196, 40.091766, 37.759876>,  <28.529264, 40.089828, 37.532211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605196, 40.091766, 37.759876>,  <28.731749, 40.094997, 38.139317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605196, 40.091766, 37.759876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563563, 0.802776, -0.194803,
		0.763085, -0.596226, -0.249430,
		-0.316383, -0.008082, -0.948597,
		28.510281, 40.089340, 37.475296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320141, 40.035038, 37.601589>,  <28.731749, 40.094997, 38.139317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320141, 40.035038, 37.601589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999207, 40.243244, 37.484749>,  <28.806646, 40.368168, 37.414646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999207, 40.243244, 37.484749>,  <29.320141, 40.035038, 37.601589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999207, 40.243244, 37.484749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565408, 0.819602, -0.092556,
		0.191228, -0.239415, -0.951899,
		-0.802338, 0.520512, -0.292098,
		28.758505, 40.399399, 37.397118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390951, 40.231495, 36.837524>,  <29.320141, 40.035038, 37.601589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390951, 40.231495, 36.837524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180908, 40.477459, 37.072861>,  <29.054882, 40.625038, 37.214062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180908, 40.477459, 37.072861>,  <29.390951, 40.231495, 36.837524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180908, 40.477459, 37.072861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513771, 0.780185, -0.356863,
		-0.678455, 0.114883, -0.725604,
		-0.525107, 0.614910, 0.588344,
		29.023376, 40.661930, 37.249363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122763, 40.780888, 36.427303>,  <29.390951, 40.231495, 36.837524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122763, 40.780888, 36.427303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189152, 40.910534, 36.799839>,  <29.228985, 40.988323, 37.023361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189152, 40.910534, 36.799839>,  <29.122763, 40.780888, 36.427303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189152, 40.910534, 36.799839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470259, 0.804125, -0.363647,
		-0.866781, 0.498329, -0.018954,
		0.165975, 0.324116, 0.931344,
		29.238945, 41.007767, 37.079243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978642, 41.499325, 36.491108>,  <29.122763, 40.780888, 36.427303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978642, 41.499325, 36.491108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246487, 41.386780, 36.766048>,  <29.407194, 41.319252, 36.931011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246487, 41.386780, 36.766048>,  <28.978642, 41.499325, 36.491108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246487, 41.386780, 36.766048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646146, 0.677019, -0.352336,
		-0.366217, 0.680058, 0.635143,
		0.669613, -0.281363, 0.687353,
		29.447371, 41.302372, 36.972256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144728, 42.106693, 37.016693>,  <28.978642, 41.499325, 36.491108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144728, 42.106693, 37.016693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445997, 41.863575, 36.916050>,  <29.626759, 41.717705, 36.855663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445997, 41.863575, 36.916050>,  <29.144728, 42.106693, 37.016693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445997, 41.863575, 36.916050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527408, 0.786538, -0.321246,
		0.393149, 0.109256, 0.912960,
		0.753176, -0.607800, -0.251604,
		29.671949, 41.681236, 36.840569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736738, 42.376049, 37.290005>,  <29.144728, 42.106693, 37.016693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736738, 42.376049, 37.290005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898979, 42.136745, 37.013577>,  <29.996325, 41.993164, 36.847721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898979, 42.136745, 37.013577>,  <29.736738, 42.376049, 37.290005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898979, 42.136745, 37.013577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692119, 0.694855, -0.195315,
		0.597039, -0.399080, 0.695902,
		0.405605, -0.598257, -0.691067,
		30.020660, 41.957268, 36.806255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473795, 42.322155, 37.387375>,  <29.736738, 42.376049, 37.290005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473795, 42.322155, 37.387375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414368, 42.251827, 36.998116>,  <30.378712, 42.209629, 36.764561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414368, 42.251827, 36.998116>,  <30.473795, 42.322155, 37.387375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414368, 42.251827, 36.998116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831528, 0.510419, -0.219165,
		0.535246, -0.841760, 0.070369,
		-0.148566, -0.175821, -0.973147,
		30.369799, 42.199081, 36.706173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043692, 41.959969, 37.056705>,  <30.473795, 42.322155, 37.387375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043692, 41.959969, 37.056705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875931, 42.142040, 36.742531>,  <30.775274, 42.251286, 36.554028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875931, 42.142040, 36.742531>,  <31.043692, 41.959969, 37.056705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875931, 42.142040, 36.742531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904028, 0.288217, -0.315697,
		0.082676, -0.842460, -0.532377,
		-0.419402, 0.455183, -0.785436,
		30.750111, 42.278595, 36.506901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539045, 41.930195, 36.510246>,  <31.043692, 41.959969, 37.056705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539045, 41.930195, 36.510246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300640, 42.248688, 36.468712>,  <31.157597, 42.439785, 36.443790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300640, 42.248688, 36.468712>,  <31.539045, 41.930195, 36.510246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300640, 42.248688, 36.468712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783452, 0.548303, -0.292519,
		-0.175980, -0.255696, -0.950605,
		-0.596015, 0.796231, -0.103835,
		31.121836, 42.487556, 36.437561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830248, 41.812782, 37.129608>,  <31.539045, 41.930195, 36.510246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830248, 41.812782, 37.129608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188549, 41.642090, 37.179443>,  <32.403530, 41.539673, 37.209343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188549, 41.642090, 37.179443>,  <31.830248, 41.812782, 37.129608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188549, 41.642090, 37.179443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049095, 0.373506, 0.926328,
		-0.441830, -0.823645, 0.355521,
		0.895755, -0.426734, 0.124589,
		32.457275, 41.514069, 37.216820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837729, 41.556255, 37.772533>,  <31.830248, 41.812782, 37.129608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837729, 41.556255, 37.772533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224453, 41.583767, 37.674110>,  <32.456490, 41.600273, 37.615059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224453, 41.583767, 37.674110>,  <31.837729, 41.556255, 37.772533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224453, 41.583767, 37.674110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190480, 0.447795, 0.873611,
		0.170266, -0.891487, 0.419833,
		0.966812, 0.068776, -0.246055,
		32.514496, 41.604401, 37.600292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193886, 41.456017, 38.438694>,  <31.837729, 41.556255, 37.772533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193886, 41.456017, 38.438694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494080, 41.594746, 38.213665>,  <32.674198, 41.677982, 38.078648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494080, 41.594746, 38.213665>,  <32.193886, 41.456017, 38.438694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494080, 41.594746, 38.213665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361796, 0.496743, 0.788892,
		0.553057, -0.795589, 0.247320,
		0.750488, 0.346822, -0.562568,
		32.719227, 41.698792, 38.044895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849640, 41.206356, 38.691296>,  <32.193886, 41.456017, 38.438694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849640, 41.206356, 38.691296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864323, 41.561935, 38.508678>,  <32.873131, 41.775284, 38.399109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864323, 41.561935, 38.508678>,  <32.849640, 41.206356, 38.691296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864323, 41.561935, 38.508678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493833, 0.381033, 0.781628,
		0.868781, -0.254146, -0.425004,
		0.036707, 0.888945, -0.456541,
		32.875336, 41.828617, 38.371716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448612, 41.564087, 38.891331>,  <32.849640, 41.206356, 38.691296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448612, 41.564087, 38.891331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215168, 41.858067, 38.753204>,  <33.075100, 42.034454, 38.670330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215168, 41.858067, 38.753204>,  <33.448612, 41.564087, 38.891331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215168, 41.858067, 38.753204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072621, 0.470780, 0.879257,
		0.808778, 0.488069, -0.328126,
		-0.583613, 0.734952, -0.345312,
		33.040085, 42.078552, 38.649612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641273, 42.067684, 39.381222>,  <33.448612, 41.564087, 38.891331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641273, 42.067684, 39.381222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730747, 42.390671, 39.162880>,  <33.784431, 42.584465, 39.031876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730747, 42.390671, 39.162880>,  <33.641273, 42.067684, 39.381222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730747, 42.390671, 39.162880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600263, -0.327098, -0.729857,
		-0.767885, 0.490915, 0.411527,
		0.223687, 0.807471, -0.545852,
		33.797855, 42.632912, 38.999123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053104, 42.650120, 39.100983>,  <33.641273, 42.067684, 39.381222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053104, 42.650120, 39.100983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362942, 42.555370, 38.866413>,  <33.548843, 42.498520, 38.725670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362942, 42.555370, 38.866413>,  <33.053104, 42.650120, 39.100983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362942, 42.555370, 38.866413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631541, -0.239810, -0.737324,
		0.034019, 0.941480, -0.335348,
		0.774596, -0.236870, -0.586425,
		33.595322, 42.484310, 38.690487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776062, 42.689728, 38.383183>,  <33.053104, 42.650120, 39.100983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776062, 42.689728, 38.383183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108112, 42.466702, 38.382057>,  <33.307343, 42.332886, 38.381382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108112, 42.466702, 38.382057>,  <32.776062, 42.689728, 38.383183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108112, 42.466702, 38.382057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397781, -0.588679, -0.703724,
		0.390719, 0.585298, -0.710468,
		0.830126, -0.557569, -0.002813,
		33.357151, 42.299431, 38.381214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180264, 42.760620, 37.748089>,  <32.776062, 42.689728, 38.383183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180264, 42.760620, 37.748089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183678, 42.409245, 37.939201>,  <33.185726, 42.198418, 38.053867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183678, 42.409245, 37.939201>,  <33.180264, 42.760620, 37.748089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183678, 42.409245, 37.939201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158815, -0.472921, -0.866674,
		0.987272, -0.068478, -0.143547,
		0.008538, -0.878440, 0.477777,
		33.186241, 42.145714, 38.082535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582497, 42.296520, 37.332333>,  <33.180264, 42.760620, 37.748089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582497, 42.296520, 37.332333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326229, 42.086132, 37.556080>,  <33.172466, 41.959900, 37.690327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326229, 42.086132, 37.556080>,  <33.582497, 42.296520, 37.332333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326229, 42.086132, 37.556080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150464, -0.628392, -0.763206,
		0.752927, -0.573130, 0.323454,
		-0.640672, -0.525970, 0.559369,
		33.134026, 41.928341, 37.723892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815060, 41.707371, 37.240669>,  <33.582497, 42.296520, 37.332333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815060, 41.707371, 37.240669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435459, 41.664116, 37.359127>,  <33.207699, 41.638161, 37.430202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435459, 41.664116, 37.359127>,  <33.815060, 41.707371, 37.240669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435459, 41.664116, 37.359127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177278, -0.593720, -0.784901,
		0.260704, -0.797372, 0.544271,
		-0.949002, -0.108140, 0.296142,
		33.150757, 41.631676, 37.447971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618019, 41.028511, 37.275383>,  <33.815060, 41.707371, 37.240669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618019, 41.028511, 37.275383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258789, 41.203033, 37.253098>,  <33.043251, 41.307747, 37.239727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258789, 41.203033, 37.253098>,  <33.618019, 41.028511, 37.275383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258789, 41.203033, 37.253098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213873, -0.543838, -0.811479,
		-0.384352, -0.716851, 0.581720,
		-0.898071, 0.436308, -0.055710,
		32.989368, 41.333927, 37.236385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035721, 40.588558, 37.369511>,  <33.618019, 41.028511, 37.275383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035721, 40.588558, 37.369511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928864, 40.895988, 37.136982>,  <32.864750, 41.080444, 36.997467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928864, 40.895988, 37.136982>,  <33.035721, 40.588558, 37.369511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928864, 40.895988, 37.136982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266683, -0.638646, -0.721811,
		-0.926020, -0.037801, 0.375577,
		-0.267146, 0.768572, -0.581318,
		32.848721, 41.126560, 36.962585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356781, 40.363804, 37.152882>,  <33.035721, 40.588558, 37.369511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356781, 40.363804, 37.152882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498642, 40.634174, 36.894474>,  <32.583759, 40.796398, 36.739429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498642, 40.634174, 36.894474>,  <32.356781, 40.363804, 37.152882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498642, 40.634174, 36.894474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394393, -0.518307, -0.758823,
		-0.847746, 0.523906, 0.082761,
		0.354656, 0.675929, -0.646018,
		32.605038, 40.836952, 36.700668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776278, 40.492718, 36.604122>,  <32.356781, 40.363804, 37.152882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776278, 40.492718, 36.604122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123207, 40.628796, 36.458782>,  <32.331364, 40.710442, 36.371578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123207, 40.628796, 36.458782>,  <31.776278, 40.492718, 36.604122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123207, 40.628796, 36.458782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184475, -0.458295, -0.869445,
		-0.462300, 0.821117, -0.334732,
		0.867322, 0.340195, -0.363346,
		32.383404, 40.730854, 36.349777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501272, 40.719234, 35.923092>,  <31.776278, 40.492718, 36.604122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501272, 40.719234, 35.923092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898354, 40.712051, 35.875393>,  <32.136600, 40.707741, 35.846775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898354, 40.712051, 35.875393>,  <31.501272, 40.719234, 35.923092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898354, 40.712051, 35.875393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117408, -0.369693, -0.921707,
		-0.027531, 0.928981, -0.369103,
		0.992702, -0.017960, -0.119248,
		32.196163, 40.706665, 35.839619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658815, 41.184029, 35.387962>,  <31.501272, 40.719234, 35.923092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658815, 41.184029, 35.387962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968687, 40.931698, 35.405560>,  <32.154610, 40.780300, 35.416119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968687, 40.931698, 35.405560>,  <31.658815, 41.184029, 35.387962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968687, 40.931698, 35.405560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201919, -0.312698, -0.928142,
		0.599252, 0.710128, -0.369616,
		0.774678, -0.630823, 0.043996,
		32.201092, 40.742451, 35.418758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071903, 41.231857, 34.703609>,  <31.658815, 41.184029, 35.387962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071903, 41.231857, 34.703609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175621, 40.869141, 34.836578>,  <32.237850, 40.651512, 34.916359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175621, 40.869141, 34.836578>,  <32.071903, 41.231857, 34.703609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175621, 40.869141, 34.836578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229207, -0.392137, -0.890894,
		0.938207, 0.154807, -0.309519,
		0.259291, -0.906787, 0.332422,
		32.253407, 40.597103, 34.936306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423466, 40.957169, 34.217033>,  <32.071903, 41.231857, 34.703609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423466, 40.957169, 34.217033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349575, 40.624672, 34.426762>,  <32.305241, 40.425175, 34.552597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349575, 40.624672, 34.426762>,  <32.423466, 40.957169, 34.217033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349575, 40.624672, 34.426762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022735, -0.529744, -0.847853,
		0.982527, -0.168541, 0.078959,
		-0.184726, -0.831243, 0.524320,
		32.294159, 40.375298, 34.584057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814453, 40.405205, 33.895374>,  <32.423466, 40.957169, 34.217033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814453, 40.405205, 33.895374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526402, 40.216579, 34.098961>,  <32.353573, 40.103405, 34.221115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526402, 40.216579, 34.098961>,  <32.814453, 40.405205, 33.895374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526402, 40.216579, 34.098961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181017, -0.580458, -0.793915,
		0.669815, -0.663850, 0.332642,
		-0.720125, -0.471562, 0.508968,
		32.310364, 40.075111, 34.251652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857735, 39.756676, 33.668163>,  <32.814453, 40.405205, 33.895374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857735, 39.756676, 33.668163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503872, 39.757038, 33.854660>,  <32.291553, 39.757256, 33.966557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503872, 39.757038, 33.854660>,  <32.857735, 39.756676, 33.668163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503872, 39.757038, 33.854660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355967, -0.647132, -0.674172,
		0.301111, -0.762377, 0.572812,
		-0.884658, 0.000902, 0.466240,
		32.238476, 39.757309, 33.994534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655609, 39.015785, 33.757782>,  <32.857735, 39.756676, 33.668163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655609, 39.015785, 33.757782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362309, 39.286739, 33.734150>,  <32.186329, 39.449314, 33.719971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362309, 39.286739, 33.734150>,  <32.655609, 39.015785, 33.757782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362309, 39.286739, 33.734150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288560, -0.388669, -0.875026,
		-0.615694, -0.624564, 0.480458,
		-0.733249, 0.677389, -0.059077,
		32.142334, 39.489956, 33.716427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024662, 38.649296, 33.631172>,  <32.655609, 39.015785, 33.757782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024662, 38.649296, 33.631172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954926, 39.031136, 33.534554>,  <31.913084, 39.260239, 33.476582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954926, 39.031136, 33.534554>,  <32.024662, 38.649296, 33.631172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954926, 39.031136, 33.534554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373041, -0.291046, -0.880984,
		-0.911288, -0.063483, 0.406846,
		-0.174339, 0.954600, -0.241545,
		31.902624, 39.317516, 33.462090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537998, 38.568039, 33.130463>,  <32.024662, 38.649296, 33.631172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537998, 38.568039, 33.130463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649834, 38.949905, 33.089603>,  <31.716934, 39.179028, 33.065086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649834, 38.949905, 33.089603>,  <31.537998, 38.568039, 33.130463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649834, 38.949905, 33.089603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357424, 0.004743, -0.933931,
		-0.891111, 0.297627, 0.342548,
		0.279587, 0.954671, -0.102152,
		31.733709, 39.236305, 33.058956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019341, 38.911594, 32.780891>,  <31.537998, 38.568039, 33.130463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019341, 38.911594, 32.780891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341438, 39.137474, 32.708557>,  <31.534697, 39.273003, 32.665157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341438, 39.137474, 32.708557>,  <31.019341, 38.911594, 32.780891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341438, 39.137474, 32.708557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172796, -0.068254, -0.982590,
		-0.567208, 0.822471, 0.042616,
		0.805243, 0.564697, -0.180834,
		31.583012, 39.306885, 32.654308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872925, 39.387997, 32.322208>,  <31.019341, 38.911594, 32.780891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872925, 39.387997, 32.322208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271008, 39.416306, 32.295216>,  <31.509857, 39.433289, 32.279018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271008, 39.416306, 32.295216>,  <30.872925, 39.387997, 32.322208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271008, 39.416306, 32.295216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082967, 0.245787, -0.965767,
		-0.051758, 0.966737, 0.250481,
		0.995207, 0.070768, -0.067485,
		31.569571, 39.437534, 32.274971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120592, 40.110756, 32.132568>,  <30.872925, 39.387997, 32.322208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120592, 40.110756, 32.132568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381527, 39.836098, 32.004208>,  <31.538088, 39.671303, 31.927193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381527, 39.836098, 32.004208>,  <31.120592, 40.110756, 32.132568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381527, 39.836098, 32.004208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181558, 0.269494, -0.945732,
		0.735863, 0.675197, 0.051135,
		0.652336, -0.686646, -0.320898,
		31.577229, 39.630104, 31.907938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454893, 40.404404, 31.499599>,  <31.120592, 40.110756, 32.132568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454893, 40.404404, 31.499599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501368, 40.007538, 31.481207>,  <31.529253, 39.769421, 31.470171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501368, 40.007538, 31.481207>,  <31.454893, 40.404404, 31.499599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501368, 40.007538, 31.481207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099111, 0.034484, -0.994478,
		0.988270, 0.120102, -0.094327,
		0.116186, -0.992162, -0.045983,
		31.536222, 39.709888, 31.467411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849888, 40.269691, 30.905197>,  <31.454893, 40.404404, 31.499599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849888, 40.269691, 30.905197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654053, 39.927448, 30.972408>,  <31.536552, 39.722103, 31.012735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654053, 39.927448, 30.972408>,  <31.849888, 40.269691, 30.905197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654053, 39.927448, 30.972408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274630, -0.031587, -0.961031,
		0.827576, -0.516655, -0.219511,
		-0.489588, -0.855611, 0.168030,
		31.507175, 39.670765, 31.022818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876059, 39.904156, 30.315512>,  <31.849888, 40.269691, 30.905197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876059, 39.904156, 30.315512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564306, 39.715710, 30.480738>,  <31.377254, 39.602642, 30.579874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564306, 39.715710, 30.480738>,  <31.876059, 39.904156, 30.315512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564306, 39.715710, 30.480738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304983, -0.290636, -0.906927,
		0.547316, -0.832817, 0.082835,
		-0.779378, -0.471112, 0.413064,
		31.330492, 39.574375, 30.604656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819933, 39.422314, 29.779167>,  <31.876059, 39.904156, 30.315512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819933, 39.422314, 29.779167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486361, 39.402626, 29.999037>,  <31.286217, 39.390812, 30.130959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486361, 39.402626, 29.999037>,  <31.819933, 39.422314, 29.779167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486361, 39.402626, 29.999037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504192, -0.337035, -0.795108,
		0.224395, -0.940205, 0.256247,
		-0.833929, -0.049220, 0.549673,
		31.236181, 39.387859, 30.163939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544416, 38.833328, 29.597363>,  <31.819933, 39.422314, 29.779167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544416, 38.833328, 29.597363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232582, 39.043446, 29.733784>,  <31.045481, 39.169514, 29.815636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232582, 39.043446, 29.733784>,  <31.544416, 38.833328, 29.597363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232582, 39.043446, 29.733784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548200, -0.309001, -0.777172,
		-0.302818, -0.792862, 0.528840,
		-0.779601, 0.525251, 0.341076,
		30.998707, 39.201035, 29.836100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975014, 38.415230, 29.433323>,  <31.544416, 38.833328, 29.597363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975014, 38.415230, 29.433323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828014, 38.781361, 29.499195>,  <30.739815, 39.001038, 29.538719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828014, 38.781361, 29.499195>,  <30.975014, 38.415230, 29.433323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828014, 38.781361, 29.499195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555431, -0.073984, -0.828265,
		-0.745950, -0.395856, 0.535590,
		-0.367499, 0.915328, 0.164682,
		30.717764, 39.055958, 29.548599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154181, 38.329308, 29.543224>,  <30.975014, 38.415230, 29.433323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154181, 38.329308, 29.543224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273251, 38.695446, 29.434753>,  <30.344692, 38.915127, 29.369671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273251, 38.695446, 29.434753>,  <30.154181, 38.329308, 29.543224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273251, 38.695446, 29.434753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575957, -0.054346, -0.815671,
		-0.761356, 0.398993, 0.511021,
		0.297675, 0.915342, -0.271179,
		30.362553, 38.970047, 29.353399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593109, 38.609341, 29.362261>,  <30.154181, 38.329308, 29.543224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593109, 38.609341, 29.362261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884422, 38.824192, 29.192039>,  <30.059210, 38.953102, 29.089907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884422, 38.824192, 29.192039>,  <29.593109, 38.609341, 29.362261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884422, 38.824192, 29.192039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488710, -0.028218, -0.871990,
		-0.480380, 0.843028, 0.241950,
		0.728284, 0.537130, -0.425552,
		30.102907, 38.985332, 29.064375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229403, 39.041401, 28.949863>,  <29.593109, 38.609341, 29.362261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229403, 39.041401, 28.949863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588366, 39.089283, 28.780001>,  <29.803743, 39.118011, 28.678083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588366, 39.089283, 28.780001>,  <29.229403, 39.041401, 28.949863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588366, 39.089283, 28.780001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418348, -0.074922, -0.905191,
		-0.140169, 0.989979, -0.017158,
		0.897406, 0.119702, -0.424658,
		29.857588, 39.125195, 28.652603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114166, 39.595528, 28.362516>,  <29.229403, 39.041401, 28.949863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114166, 39.595528, 28.362516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433229, 39.369511, 28.278168>,  <29.624666, 39.233898, 28.227558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433229, 39.369511, 28.278168>,  <29.114166, 39.595528, 28.362516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433229, 39.369511, 28.278168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326002, -0.109790, -0.938972,
		0.507412, 0.817721, -0.271781,
		0.797656, -0.565047, -0.210870,
		29.672525, 39.199997, 28.214907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512846, 39.921993, 27.861929>,  <29.114166, 39.595528, 28.362516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512846, 39.921993, 27.861929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618830, 39.536713, 27.843899>,  <29.682421, 39.305542, 27.833080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618830, 39.536713, 27.843899>,  <29.512846, 39.921993, 27.861929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618830, 39.536713, 27.843899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257845, -0.025732, -0.965844,
		0.929146, 0.267533, -0.255175,
		0.264961, -0.963205, -0.045074,
		29.698318, 39.247749, 27.830378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905575, 39.806423, 27.173222>,  <29.512846, 39.921993, 27.861929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905575, 39.806423, 27.173222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815680, 39.435772, 27.293795>,  <29.761744, 39.213383, 27.366138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815680, 39.435772, 27.293795>,  <29.905575, 39.806423, 27.173222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815680, 39.435772, 27.293795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187676, -0.262390, -0.946535,
		0.956175, -0.269293, -0.114936,
		-0.224737, -0.926624, 0.301431,
		29.748259, 39.157784, 27.384224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279514, 39.411068, 26.655251>,  <29.905575, 39.806423, 27.173222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279514, 39.411068, 26.655251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036024, 39.125351, 26.793373>,  <29.889931, 38.953918, 26.876247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036024, 39.125351, 26.793373>,  <30.279514, 39.411068, 26.655251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036024, 39.125351, 26.793373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299830, -0.195846, -0.933674,
		0.734546, -0.671883, -0.094951,
		-0.608723, -0.714295, 0.345309,
		29.853407, 38.911064, 26.896965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420292, 38.744648, 26.325476>,  <30.279514, 39.411068, 26.655251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420292, 38.744648, 26.325476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044874, 38.688576, 26.451639>,  <29.819624, 38.654934, 26.527338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044874, 38.688576, 26.451639>,  <30.420292, 38.744648, 26.325476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044874, 38.688576, 26.451639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235742, -0.407129, -0.882424,
		0.252111, -0.902549, 0.349063,
		-0.938544, -0.140180, 0.315411,
		29.763311, 38.646523, 26.546263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283140, 38.134285, 26.067123>,  <30.420292, 38.744648, 26.325476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283140, 38.134285, 26.067123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918842, 38.267490, 26.164808>,  <29.700264, 38.347416, 26.223419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918842, 38.267490, 26.164808>,  <30.283140, 38.134285, 26.067123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918842, 38.267490, 26.164808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310826, -0.163431, -0.936311,
		-0.271899, -0.928648, 0.252355,
		-0.910746, 0.333020, 0.244211,
		29.645618, 38.367397, 26.238071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815027, 37.624489, 25.763479>,  <30.283140, 38.134285, 26.067123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815027, 37.624489, 25.763479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599594, 37.954109, 25.833748>,  <29.470333, 38.151882, 25.875910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599594, 37.954109, 25.833748>,  <29.815027, 37.624489, 25.763479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599594, 37.954109, 25.833748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424832, -0.085539, -0.901222,
		-0.727629, -0.560014, 0.396155,
		-0.538584, 0.824055, 0.175671,
		29.438019, 38.201324, 25.886450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137537, 37.584785, 25.437683>,  <29.815027, 37.624489, 25.763479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137537, 37.584785, 25.437683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083067, 37.975204, 25.505550>,  <29.050385, 38.209457, 25.546272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083067, 37.975204, 25.505550>,  <29.137537, 37.584785, 25.437683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083067, 37.975204, 25.505550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338463, 0.115125, -0.933911,
		-0.931075, -0.184601, 0.314678,
		-0.136173, 0.976047, 0.169671,
		29.042215, 38.268021, 25.556452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590204, 37.689278, 24.930027>,  <29.137537, 37.584785, 25.437683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590204, 37.689278, 24.930027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784584, 38.028236, 25.015602>,  <28.901213, 38.231613, 25.066946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784584, 38.028236, 25.015602>,  <28.590204, 37.689278, 24.930027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784584, 38.028236, 25.015602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151897, 0.322944, -0.934149,
		-0.860686, 0.421453, 0.285652,
		0.485949, 0.847399, 0.213936,
		28.930368, 38.282455, 25.079782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040913, 38.237183, 24.773994>,  <28.590204, 37.689278, 24.930027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040913, 38.237183, 24.773994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411232, 38.383671, 24.736519>,  <28.633425, 38.471565, 24.714033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411232, 38.383671, 24.736519>,  <28.040913, 38.237183, 24.773994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411232, 38.383671, 24.736519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153732, 0.138333, -0.978382,
		-0.345341, 0.920189, 0.184369,
		0.925800, 0.366219, -0.093691,
		28.688972, 38.493538, 24.708412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011892, 38.936611, 24.572489>,  <28.040913, 38.237183, 24.773994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011892, 38.936611, 24.572489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363005, 38.785828, 24.454231>,  <28.573671, 38.695358, 24.383278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363005, 38.785828, 24.454231>,  <28.011892, 38.936611, 24.572489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363005, 38.785828, 24.454231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175612, 0.320974, -0.930664,
		0.445715, 0.868837, 0.215546,
		0.877780, -0.376958, -0.295642,
		28.626339, 38.672741, 24.365540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246017, 39.343082, 24.055138>,  <28.011892, 38.936611, 24.572489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246017, 39.343082, 24.055138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477139, 39.019054, 24.015278>,  <28.615810, 38.824638, 23.991362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477139, 39.019054, 24.015278>,  <28.246017, 39.343082, 24.055138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477139, 39.019054, 24.015278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076032, 0.174984, -0.981631,
		0.812628, 0.559612, 0.162698,
		0.577802, -0.810071, -0.099648,
		28.650478, 38.776031, 23.985384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859781, 39.568817, 23.595375>,  <28.246017, 39.343082, 24.055138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859781, 39.568817, 23.595375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863501, 39.169292, 23.576210>,  <28.865732, 38.929577, 23.564711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863501, 39.169292, 23.576210>,  <28.859781, 39.568817, 23.595375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863501, 39.169292, 23.576210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202500, 0.048803, -0.978065,
		0.979238, -0.000608, 0.202713,
		0.009298, -0.998808, -0.047913,
		28.866289, 38.869652, 23.561836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387007, 39.428871, 23.175858>,  <28.859781, 39.568817, 23.595375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387007, 39.428871, 23.175858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196396, 39.077221, 23.172583>,  <29.082029, 38.866230, 23.170618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196396, 39.077221, 23.172583>,  <29.387007, 39.428871, 23.175858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196396, 39.077221, 23.172583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104701, 0.065994, -0.992312,
		0.872902, -0.472008, -0.123492,
		-0.476528, -0.879121, -0.008186,
		29.053438, 38.813484, 23.170126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753309, 39.029167, 22.746601>,  <29.387007, 39.428871, 23.175858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753309, 39.029167, 22.746601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391340, 38.858936, 22.746988>,  <29.174160, 38.756798, 22.747221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391340, 38.858936, 22.746988>,  <29.753309, 39.029167, 22.746601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391340, 38.858936, 22.746988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045138, 0.093712, -0.994576,
		0.423178, -0.900056, -0.104012,
		-0.904922, -0.425578, 0.000970,
		29.119864, 38.731262, 22.747280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720354, 38.437420, 22.312490>,  <29.753309, 39.029167, 22.746601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720354, 38.437420, 22.312490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332254, 38.533745, 22.322481>,  <29.099394, 38.591537, 22.328476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332254, 38.533745, 22.322481>,  <29.720354, 38.437420, 22.312490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332254, 38.533745, 22.322481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031501, -0.023281, -0.999233,
		-0.240043, -0.970293, 0.030174,
		-0.970251, 0.240809, 0.024977,
		29.041180, 38.605988, 22.329975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495489, 38.194370, 21.737974>,  <29.720354, 38.437420, 22.312490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495489, 38.194370, 21.737974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203918, 38.448914, 21.838940>,  <29.028976, 38.601639, 21.899519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203918, 38.448914, 21.838940>,  <29.495489, 38.194370, 21.737974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203918, 38.448914, 21.838940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242466, 0.104826, -0.964480,
		-0.640214, -0.764238, 0.077884,
		-0.728928, 0.636358, 0.252413,
		28.985239, 38.639820, 21.914663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891020, 37.942120, 21.353506>,  <29.495489, 38.194370, 21.737974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891020, 37.942120, 21.353506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868088, 38.330719, 21.445515>,  <28.854328, 38.563877, 21.500719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868088, 38.330719, 21.445515>,  <28.891020, 37.942120, 21.353506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868088, 38.330719, 21.445515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275118, 0.206106, -0.939058,
		-0.959699, -0.117119, 0.255460,
		-0.057330, 0.971495, 0.230021,
		28.850889, 38.622169, 21.514521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414082, 38.164711, 20.841143>,  <28.891020, 37.942120, 21.353506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414082, 38.164711, 20.841143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487259, 38.528080, 20.991507>,  <28.531166, 38.746101, 21.081724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487259, 38.528080, 20.991507>,  <28.414082, 38.164711, 20.841143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487259, 38.528080, 20.991507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248234, 0.412656, -0.876410,
		-0.951268, 0.067020, 0.300993,
		0.182944, 0.908418, 0.375910,
		28.542143, 38.800606, 21.104280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861000, 38.658993, 20.675114>,  <28.414082, 38.164711, 20.841143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861000, 38.658993, 20.675114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174849, 38.897007, 20.744745>,  <28.363157, 39.039814, 20.786524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174849, 38.897007, 20.744745>,  <27.861000, 38.658993, 20.675114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174849, 38.897007, 20.744745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167123, 0.473382, -0.864858,
		-0.597027, 0.649493, 0.470870,
		0.784621, 0.595036, 0.174077,
		28.410234, 39.075520, 20.796968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687042, 38.973061, 20.049501>,  <27.861000, 38.658993, 20.675114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687042, 38.973061, 20.049501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027126, 39.123501, 20.196850>,  <28.231176, 39.213764, 20.285259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027126, 39.123501, 20.196850>,  <27.687042, 38.973061, 20.049501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027126, 39.123501, 20.196850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051067, 0.637513, -0.768745,
		-0.523964, 0.672405, 0.522813,
		0.850208, 0.376096, 0.368371,
		28.282188, 39.236328, 20.307362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653849, 39.740425, 20.070700>,  <27.687042, 38.973061, 20.049501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653849, 39.740425, 20.070700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026543, 39.599606, 20.035082>,  <28.250160, 39.515114, 20.013712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026543, 39.599606, 20.035082>,  <27.653849, 39.740425, 20.070700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026543, 39.599606, 20.035082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080565, 0.439501, -0.894622,
		0.354084, 0.826379, 0.437862,
		0.931737, -0.352048, -0.089043,
		28.306065, 39.493992, 20.008369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012680, 40.278194, 19.850410>,  <27.653849, 39.740425, 20.070700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012680, 40.278194, 19.850410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223045, 39.973373, 19.699314>,  <28.349264, 39.790482, 19.608656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223045, 39.973373, 19.699314>,  <28.012680, 40.278194, 19.850410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223045, 39.973373, 19.699314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239194, 0.293684, -0.925493,
		0.816213, 0.577081, -0.027827,
		0.525912, -0.762055, -0.377743,
		28.380819, 39.744759, 19.585991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567276, 40.215385, 19.269979>,  <28.012680, 40.278194, 19.850410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567276, 40.215385, 19.269979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203594, 40.351231, 19.366322>,  <26.985386, 40.432739, 19.424128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203594, 40.351231, 19.366322>,  <27.567276, 40.215385, 19.269979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203594, 40.351231, 19.366322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411481, 0.821181, 0.395405,
		-0.063502, 0.458612, -0.886365,
		-0.909203, 0.339613, 0.240857,
		26.930834, 40.453114, 19.438580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411419, 40.864220, 18.964588>,  <27.567276, 40.215385, 19.269979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411419, 40.864220, 18.964588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223059, 40.844376, 19.316904>,  <27.110043, 40.832470, 19.528294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223059, 40.844376, 19.316904>,  <27.411419, 40.864220, 18.964588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223059, 40.844376, 19.316904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466470, 0.833422, 0.296335,
		-0.748773, 0.550406, -0.369314,
		-0.470899, -0.049614, 0.880791,
		27.081789, 40.829491, 19.581141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990829, 40.999054, 18.457115>,  <27.411419, 40.864220, 18.964588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990829, 40.999054, 18.457115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300446, 40.869965, 18.239229>,  <28.486216, 40.792511, 18.108498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300446, 40.869965, 18.239229>,  <27.990829, 40.999054, 18.457115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300446, 40.869965, 18.239229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630040, 0.307603, 0.713043,
		-0.062558, -0.895115, 0.441424,
		0.774039, -0.322721, -0.544715,
		28.532658, 40.773148, 18.075815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383158, 40.529530, 18.917784>,  <27.990829, 40.999054, 18.457115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383158, 40.529530, 18.917784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609615, 40.717464, 18.646864>,  <28.745489, 40.830227, 18.484312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609615, 40.717464, 18.646864>,  <28.383158, 40.529530, 18.917784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609615, 40.717464, 18.646864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606122, 0.319584, 0.728342,
		0.558657, -0.822872, -0.103848,
		0.566144, 0.469838, -0.677299,
		28.779459, 40.858418, 18.443674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145590, 40.283051, 19.047880>,  <28.383158, 40.529530, 18.917784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145590, 40.283051, 19.047880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071941, 40.650047, 18.906851>,  <29.027752, 40.870247, 18.822233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071941, 40.650047, 18.906851>,  <29.145590, 40.283051, 19.047880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071941, 40.650047, 18.906851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542053, 0.394012, 0.742248,
		0.819925, -0.054449, -0.569876,
		-0.184123, 0.917491, -0.352575,
		29.016705, 40.925293, 18.801079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836988, 40.502342, 18.842154>,  <29.145590, 40.283051, 19.047880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836988, 40.502342, 18.842154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570162, 40.790203, 18.919222>,  <29.410067, 40.962921, 18.965462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570162, 40.790203, 18.919222>,  <29.836988, 40.502342, 18.842154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570162, 40.790203, 18.919222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570808, 0.327517, 0.752935,
		0.478750, 0.612235, -0.629259,
		-0.667066, 0.719653, 0.192670,
		29.370043, 41.006100, 18.977022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183575, 41.109734, 18.913177>,  <29.836988, 40.502342, 18.842154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183575, 41.109734, 18.913177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861464, 41.060955, 19.145264>,  <29.668196, 41.031689, 19.284515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861464, 41.060955, 19.145264>,  <30.183575, 41.109734, 18.913177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861464, 41.060955, 19.145264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535162, 0.271716, 0.799857,
		-0.255196, 0.954620, -0.153545,
		-0.805280, -0.121949, 0.580217,
		29.619879, 41.024372, 19.319328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052042, 41.665638, 19.445654>,  <30.183575, 41.109734, 18.913177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052042, 41.665638, 19.445654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883387, 41.329441, 19.581766>,  <29.782194, 41.127724, 19.663433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883387, 41.329441, 19.581766>,  <30.052042, 41.665638, 19.445654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883387, 41.329441, 19.581766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403876, 0.161918, 0.900370,
		-0.811853, 0.517062, 0.271185,
		-0.421638, -0.840494, 0.340283,
		29.756895, 41.077293, 19.683851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592588, 41.875034, 20.017889>,  <30.052042, 41.665638, 19.445654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592588, 41.875034, 20.017889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628344, 41.479443, 20.065111>,  <29.649797, 41.242088, 20.093445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628344, 41.479443, 20.065111>,  <29.592588, 41.875034, 20.017889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628344, 41.479443, 20.065111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247020, 0.136839, 0.959300,
		-0.964879, -0.056587, 0.256528,
		0.089387, -0.988976, 0.118055,
		29.655159, 41.182751, 20.100527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386560, 41.717377, 20.712776>,  <29.592588, 41.875034, 20.017889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386560, 41.717377, 20.712776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610128, 41.402576, 20.608280>,  <29.744268, 41.213696, 20.545582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610128, 41.402576, 20.608280>,  <29.386560, 41.717377, 20.712776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610128, 41.402576, 20.608280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423093, -0.000295, 0.906086,
		-0.713164, -0.616957, 0.332808,
		0.558918, -0.786997, -0.261241,
		29.777803, 41.166477, 20.529907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311466, 41.292442, 21.321735>,  <29.386560, 41.717377, 20.712776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311466, 41.292442, 21.321735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626001, 41.159161, 21.113642>,  <29.814722, 41.079193, 20.988785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626001, 41.159161, 21.113642>,  <29.311466, 41.292442, 21.321735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626001, 41.159161, 21.113642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552792, 0.003492, 0.833312,
		-0.275845, -0.942849, 0.186939,
		0.786340, -0.333203, -0.520236,
		29.861904, 41.059200, 20.957571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603212, 40.704567, 21.672157>,  <29.311466, 41.292442, 21.321735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603212, 40.704567, 21.672157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901773, 40.832493, 21.438713>,  <30.080910, 40.909248, 21.298647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901773, 40.832493, 21.438713>,  <29.603212, 40.704567, 21.672157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901773, 40.832493, 21.438713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621100, -0.019829, 0.783480,
		0.238999, -0.947272, -0.213439,
		0.746401, 0.319818, -0.583611,
		30.125694, 40.928440, 21.263630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143934, 40.237785, 21.854774>,  <29.603212, 40.704567, 21.672157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143934, 40.237785, 21.854774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314722, 40.571762, 21.715887>,  <30.417194, 40.772148, 21.632555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314722, 40.571762, 21.715887>,  <30.143934, 40.237785, 21.854774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314722, 40.571762, 21.715887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592027, 0.032136, 0.805277,
		0.683522, -0.549392, -0.480590,
		0.426969, 0.834946, -0.347220,
		30.442812, 40.822247, 21.611721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864189, 40.141682, 22.057745>,  <30.143934, 40.237785, 21.854774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864189, 40.141682, 22.057745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802557, 40.522152, 21.950775>,  <30.765577, 40.750435, 21.886593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802557, 40.522152, 21.950775>,  <30.864189, 40.141682, 22.057745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802557, 40.522152, 21.950775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584941, 0.305944, 0.751161,
		0.796306, -0.040686, -0.603525,
		-0.154082, 0.951180, -0.267424,
		30.756332, 40.807507, 21.870548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524410, 40.397568, 21.905321>,  <30.864189, 40.141682, 22.057745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524410, 40.397568, 21.905321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269436, 40.694798, 21.986830>,  <31.116451, 40.873135, 22.035736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269436, 40.694798, 21.986830>,  <31.524410, 40.397568, 21.905321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269436, 40.694798, 21.986830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526451, 0.226915, 0.819365,
		0.562606, 0.629568, -0.535834,
		-0.637435, 0.743070, 0.203773,
		31.078205, 40.917717, 22.047962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007484, 40.953293, 22.099566>,  <31.524410, 40.397568, 21.905321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007484, 40.953293, 22.099566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641647, 41.012260, 22.250181>,  <31.422144, 41.047642, 22.340549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641647, 41.012260, 22.250181>,  <32.007484, 40.953293, 22.099566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641647, 41.012260, 22.250181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402779, 0.414572, 0.816026,
		-0.035804, 0.897996, -0.438543,
		-0.914596, 0.147419, 0.376538,
		31.367268, 41.056488, 22.363142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065117, 41.639954, 22.431471>,  <32.007484, 40.953293, 22.099566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065117, 41.639954, 22.431471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734827, 41.484837, 22.595320>,  <31.536654, 41.391766, 22.693630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734827, 41.484837, 22.595320>,  <32.065117, 41.639954, 22.431471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734827, 41.484837, 22.595320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345098, 0.227122, 0.910672,
		-0.446187, 0.893326, -0.053714,
		-0.825727, -0.387794, 0.409623,
		31.487108, 41.368500, 22.718206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912842, 42.057732, 22.911928>,  <32.065117, 41.639954, 22.431471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912842, 42.057732, 22.911928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696283, 41.746895, 23.040318>,  <31.566347, 41.560394, 23.117352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696283, 41.746895, 23.040318>,  <31.912842, 42.057732, 22.911928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696283, 41.746895, 23.040318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381949, 0.112774, 0.917277,
		-0.749002, 0.619207, 0.235752,
		-0.541398, -0.777087, 0.320973,
		31.533863, 41.513767, 23.136610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527374, 42.323803, 23.526878>,  <31.912842, 42.057732, 22.911928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527374, 42.323803, 23.526878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546125, 41.926140, 23.565773>,  <31.557375, 41.687542, 23.589109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546125, 41.926140, 23.565773>,  <31.527374, 42.323803, 23.526878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546125, 41.926140, 23.565773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129926, 0.102584, 0.986203,
		-0.990415, -0.033597, 0.133975,
		0.046877, -0.994157, 0.097235,
		31.560188, 41.627892, 23.594944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094301, 42.069298, 24.006828>,  <31.527374, 42.323803, 23.526878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094301, 42.069298, 24.006828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348125, 41.760525, 23.991596>,  <31.500420, 41.575260, 23.982458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348125, 41.760525, 23.991596>,  <31.094301, 42.069298, 24.006828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348125, 41.760525, 23.991596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417640, 0.301026, 0.857298,
		-0.650315, -0.559911, 0.513410,
		0.634560, -0.771935, -0.038079,
		31.538494, 41.528946, 23.980173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929855, 41.717716, 24.607590>,  <31.094301, 42.069298, 24.006828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929855, 41.717716, 24.607590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298471, 41.603863, 24.501951>,  <31.519642, 41.535553, 24.438568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298471, 41.603863, 24.501951>,  <30.929855, 41.717716, 24.607590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298471, 41.603863, 24.501951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284514, 0.032151, 0.958132,
		-0.264223, -0.958098, 0.110610,
		0.921541, -0.284631, -0.264098,
		31.574934, 41.518475, 24.422722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033005, 41.170956, 25.109346>,  <30.929855, 41.717716, 24.607590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033005, 41.170956, 25.109346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378248, 41.315182, 24.967905>,  <31.585394, 41.401718, 24.883041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378248, 41.315182, 24.967905>,  <31.033005, 41.170956, 25.109346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378248, 41.315182, 24.967905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392919, -0.039580, 0.918721,
		0.317261, -0.931895, -0.175834,
		0.863110, 0.360563, -0.353602,
		31.637182, 41.423351, 24.861824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541088, 40.701077, 25.420620>,  <31.033005, 41.170956, 25.109346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541088, 40.701077, 25.420620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740631, 41.031544, 25.315868>,  <31.860357, 41.229824, 25.253017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740631, 41.031544, 25.315868>,  <31.541088, 40.701077, 25.420620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740631, 41.031544, 25.315868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510715, -0.036096, 0.858992,
		0.700223, -0.562260, -0.439945,
		0.498857, 0.826172, -0.261879,
		31.890287, 41.279396, 25.237305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280296, 40.497620, 25.647774>,  <31.541088, 40.701077, 25.420620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280296, 40.497620, 25.647774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218025, 40.891445, 25.615786>,  <32.180664, 41.127743, 25.596592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218025, 40.891445, 25.615786>,  <32.280296, 40.497620, 25.647774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218025, 40.891445, 25.615786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156906, 0.104576, 0.982061,
		0.975267, 0.140337, -0.170764,
		-0.155678, 0.984565, -0.079970,
		32.171322, 41.186813, 25.591795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718311, 40.744305, 26.133041>,  <32.280296, 40.497620, 25.647774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718311, 40.744305, 26.133041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496330, 41.065479, 26.046024>,  <32.363144, 41.258183, 25.993814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496330, 41.065479, 26.046024>,  <32.718311, 40.744305, 26.133041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496330, 41.065479, 26.046024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126588, 0.339969, 0.931878,
		0.822196, 0.489607, -0.290308,
		-0.554950, 0.802936, -0.217543,
		32.329845, 41.306358, 25.980761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061302, 41.249390, 26.496565>,  <32.718311, 40.744305, 26.133041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061302, 41.249390, 26.496565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710457, 41.434135, 26.443857>,  <32.499950, 41.544983, 26.412233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710457, 41.434135, 26.443857>,  <33.061302, 41.249390, 26.496565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710457, 41.434135, 26.443857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062312, 0.381462, 0.922282,
		0.476230, 0.800732, -0.363364,
		-0.877110, 0.461860, -0.131768,
		32.447323, 41.572693, 26.404327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089218, 41.984310, 26.719688>,  <33.061302, 41.249390, 26.496565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089218, 41.984310, 26.719688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713497, 41.862816, 26.783512>,  <32.488064, 41.789921, 26.821806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713497, 41.862816, 26.783512>,  <33.089218, 41.984310, 26.719688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713497, 41.862816, 26.783512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031733, 0.539983, 0.841078,
		-0.341622, 0.784962, -0.516845,
		-0.939302, -0.303732, 0.159561,
		32.431705, 41.771698, 26.831381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755196, 42.580147, 26.993408>,  <33.089218, 41.984310, 26.719688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755196, 42.580147, 26.993408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522514, 42.274445, 27.104786>,  <32.382904, 42.091022, 27.171612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522514, 42.274445, 27.104786>,  <32.755196, 42.580147, 26.993408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522514, 42.274445, 27.104786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219868, 0.181840, 0.958432,
		-0.783122, 0.618743, 0.062260,
		-0.581702, -0.764259, 0.278445,
		32.348003, 42.045166, 27.188320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501911, 42.825066, 27.573029>,  <32.755196, 42.580147, 26.993408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501911, 42.825066, 27.573029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385181, 42.444477, 27.612104>,  <32.315144, 42.216125, 27.635550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385181, 42.444477, 27.612104>,  <32.501911, 42.825066, 27.573029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385181, 42.444477, 27.612104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046613, 0.116159, 0.992136,
		-0.955335, 0.284979, -0.078249,
		-0.291827, -0.951470, 0.097687,
		32.297634, 42.159035, 27.641411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857397, 42.873264, 27.885622>,  <32.501911, 42.825066, 27.573029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857397, 42.873264, 27.885622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047001, 42.526451, 27.947025>,  <32.160763, 42.318363, 27.983868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047001, 42.526451, 27.947025>,  <31.857397, 42.873264, 27.885622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047001, 42.526451, 27.947025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149615, 0.092496, 0.984408,
		-0.867716, -0.489586, -0.085878,
		0.474009, -0.867035, 0.153510,
		32.189205, 42.266342, 27.993078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444572, 42.510849, 28.375387>,  <31.857397, 42.873264, 27.885622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444572, 42.510849, 28.375387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810360, 42.350006, 28.393551>,  <32.029831, 42.253502, 28.404449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810360, 42.350006, 28.393551>,  <31.444572, 42.510849, 28.375387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810360, 42.350006, 28.393551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046893, 0.006158, 0.998881,
		-0.401934, -0.915573, -0.013225,
		0.914467, -0.402105, 0.045409,
		32.084702, 42.229374, 28.407173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413836, 41.978497, 28.907652>,  <31.444572, 42.510849, 28.375387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413836, 41.978497, 28.907652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807285, 42.044697, 28.879118>,  <32.043354, 42.084415, 28.861998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807285, 42.044697, 28.879118>,  <31.413836, 41.978497, 28.907652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807285, 42.044697, 28.879118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089032, -0.102098, 0.990782,
		0.156692, -0.980911, -0.115161,
		0.983627, 0.165500, -0.071334,
		32.102375, 42.094345, 28.857718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744598, 41.357922, 29.295078>,  <31.413836, 41.978497, 28.907652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744598, 41.357922, 29.295078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016964, 41.649288, 29.264692>,  <32.180382, 41.824108, 29.246460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016964, 41.649288, 29.264692>,  <31.744598, 41.357922, 29.295078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016964, 41.649288, 29.264692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246193, -0.129970, 0.960467,
		0.689745, -0.672696, -0.267829,
		0.680912, 0.728415, -0.075967,
		32.221237, 41.867813, 29.241901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446747, 41.085316, 29.708660>,  <31.744598, 41.357922, 29.295078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446747, 41.085316, 29.708660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433739, 41.484753, 29.691862>,  <32.425934, 41.724415, 29.681784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433739, 41.484753, 29.691862>,  <32.446747, 41.085316, 29.708660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433739, 41.484753, 29.691862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173920, 0.047029, 0.983636,
		0.984223, 0.024685, -0.175204,
		-0.032521, 0.998589, -0.041993,
		32.423981, 41.784328, 29.679264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003933, 41.392967, 30.187210>,  <32.446747, 41.085316, 29.708660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003933, 41.392967, 30.187210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773914, 41.707191, 30.095806>,  <32.635902, 41.895725, 30.040964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773914, 41.707191, 30.095806>,  <33.003933, 41.392967, 30.187210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773914, 41.707191, 30.095806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059726, 0.318873, 0.945914,
		0.815940, 0.530293, -0.230284,
		-0.575043, 0.785563, -0.228509,
		32.601402, 41.942860, 30.027254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417042, 41.924820, 30.499998>,  <33.003933, 41.392967, 30.187210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417042, 41.924820, 30.499998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026520, 42.003990, 30.465014>,  <32.792206, 42.051495, 30.444023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026520, 42.003990, 30.465014>,  <33.417042, 41.924820, 30.499998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026520, 42.003990, 30.465014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022958, 0.307150, 0.951384,
		0.215170, 0.930851, -0.295329,
		-0.976307, 0.197929, -0.087460,
		32.733627, 42.063370, 30.438776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349823, 42.618965, 30.789490>,  <33.417042, 41.924820, 30.499998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349823, 42.618965, 30.789490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990501, 42.443218, 30.790625>,  <32.774910, 42.337769, 30.791306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990501, 42.443218, 30.790625>,  <33.349823, 42.618965, 30.789490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990501, 42.443218, 30.790625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167395, 0.348196, 0.922355,
		-0.406244, 0.828077, -0.386334,
		-0.898301, -0.439372, 0.002837,
		32.721012, 42.311405, 30.791475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038498, 43.102440, 31.143448>,  <33.349823, 42.618965, 30.789490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038498, 43.102440, 31.143448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799915, 42.783394, 31.179312>,  <32.656765, 42.591965, 31.200830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799915, 42.783394, 31.179312>,  <33.038498, 43.102440, 31.143448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799915, 42.783394, 31.179312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143330, 0.215754, 0.965871,
		-0.789742, 0.563252, -0.243012,
		-0.596460, -0.797620, 0.089659,
		32.620975, 42.544109, 31.206209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563171, 43.323589, 31.634644>,  <33.038498, 43.102440, 31.143448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563171, 43.323589, 31.634644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527908, 42.925407, 31.649063>,  <32.506752, 42.686497, 31.657715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527908, 42.925407, 31.649063>,  <32.563171, 43.323589, 31.634644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527908, 42.925407, 31.649063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078089, 0.029170, 0.996520,
		-0.993041, 0.090667, 0.075162,
		-0.088159, -0.995454, 0.036047,
		32.501461, 42.626770, 31.659878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014725, 43.204956, 32.111336>,  <32.563171, 43.323589, 31.634644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014725, 43.204956, 32.111336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239037, 42.874737, 32.086018>,  <32.373623, 42.676605, 32.070827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239037, 42.874737, 32.086018>,  <32.014725, 43.204956, 32.111336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239037, 42.874737, 32.086018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179840, 0.046825, 0.982581,
		-0.808199, -0.562393, 0.174724,
		0.560778, -0.825544, -0.063297,
		32.407269, 42.627075, 32.067028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807434, 42.863022, 32.648335>,  <32.014725, 43.204956, 32.111336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807434, 42.863022, 32.648335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166466, 42.712841, 32.555912>,  <32.381886, 42.622734, 32.500458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166466, 42.712841, 32.555912>,  <31.807434, 42.863022, 32.648335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166466, 42.712841, 32.555912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270956, 0.056394, 0.960938,
		-0.347757, -0.925124, 0.152349,
		0.897579, -0.375453, -0.231056,
		32.435738, 42.600204, 32.486595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914597, 42.709442, 33.205585>,  <31.807434, 42.863022, 32.648335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914597, 42.709442, 33.205585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266857, 42.648632, 33.026100>,  <32.478214, 42.612144, 32.918411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266857, 42.648632, 33.026100>,  <31.914597, 42.709442, 33.205585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266857, 42.648632, 33.026100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441805, -0.078436, 0.893676,
		-0.171061, -0.985259, -0.001906,
		0.880651, -0.152031, -0.448710,
		32.531052, 42.603024, 32.891487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192234, 42.116634, 33.530910>,  <31.914597, 42.709442, 33.205585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192234, 42.116634, 33.530910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486462, 42.324371, 33.356911>,  <32.662998, 42.449013, 33.252510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486462, 42.324371, 33.356911>,  <32.192234, 42.116634, 33.530910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486462, 42.324371, 33.356911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528097, -0.037387, 0.848360,
		0.424325, -0.853749, -0.301763,
		0.735569, 0.519340, -0.434999,
		32.707134, 42.480175, 33.226410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896156, 41.741646, 33.669746>,  <32.192234, 42.116634, 33.530910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896156, 41.741646, 33.669746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970051, 42.127972, 33.597000>,  <33.014389, 42.359768, 33.553352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970051, 42.127972, 33.597000>,  <32.896156, 41.741646, 33.669746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970051, 42.127972, 33.597000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441729, 0.083703, 0.893235,
		0.877922, -0.245351, -0.411164,
		0.184741, 0.965814, -0.181864,
		33.025475, 42.417717, 33.542442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594742, 41.859520, 33.933430>,  <32.896156, 41.741646, 33.669746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594742, 41.859520, 33.933430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413139, 42.214039, 33.896862>,  <33.304176, 42.426750, 33.874920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413139, 42.214039, 33.896862>,  <33.594742, 41.859520, 33.933430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413139, 42.214039, 33.896862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398655, 0.293826, 0.868758,
		0.796837, 0.357980, -0.486725,
		-0.454011, 0.886294, -0.091421,
		33.276936, 42.479927, 33.869434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034412, 42.463699, 33.947479>,  <33.594742, 41.859520, 33.933430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034412, 42.463699, 33.947479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671124, 42.574810, 34.072681>,  <33.453152, 42.641476, 34.147804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671124, 42.574810, 34.072681>,  <34.034412, 42.463699, 33.947479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671124, 42.574810, 34.072681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389024, 0.284719, 0.876125,
		0.154253, 0.917482, -0.366651,
		-0.908221, 0.277781, 0.313004,
		33.398659, 42.658146, 34.166584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298874, 42.338264, 33.323372>,  <34.034412, 42.463699, 33.947479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298874, 42.338264, 33.323372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662731, 42.173347, 33.303120>,  <34.881046, 42.074398, 33.290966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662731, 42.173347, 33.303120>,  <34.298874, 42.338264, 33.323372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662731, 42.173347, 33.303120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057235, -0.003667, -0.998354,
		0.411431, 0.911043, -0.026933,
		0.909642, -0.412295, -0.050635,
		34.935623, 42.049660, 33.287930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607941, 42.522461, 32.710064>,  <34.298874, 42.338264, 33.323372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607941, 42.522461, 32.710064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849689, 42.222347, 32.817249>,  <34.994740, 42.042278, 32.881561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849689, 42.222347, 32.817249>,  <34.607941, 42.522461, 32.710064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849689, 42.222347, 32.817249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199351, -0.183221, -0.962647,
		0.771357, 0.635217, 0.038837,
		0.604374, -0.750286, 0.267960,
		35.031002, 41.997261, 32.897636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362713, 42.619068, 32.385082>,  <34.607941, 42.522461, 32.710064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362713, 42.619068, 32.385082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272541, 42.237072, 32.462196>,  <35.218437, 42.007874, 32.508465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272541, 42.237072, 32.462196>,  <35.362713, 42.619068, 32.385082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272541, 42.237072, 32.462196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114153, -0.222411, -0.968247,
		0.967548, -0.196265, 0.159154,
		-0.225431, -0.954994, 0.192789,
		35.204910, 41.950573, 32.520035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838993, 42.298485, 31.963387>,  <35.362713, 42.619068, 32.385082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838993, 42.298485, 31.963387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569107, 42.017097, 32.052734>,  <35.407177, 41.848267, 32.106342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569107, 42.017097, 32.052734>,  <35.838993, 42.298485, 31.963387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569107, 42.017097, 32.052734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118567, -0.402015, -0.907924,
		0.728492, -0.586106, 0.354653,
		-0.674716, -0.703466, 0.223372,
		35.366692, 41.806057, 32.119747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080391, 41.666473, 31.561226>,  <35.838993, 42.298485, 31.963387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080391, 41.666473, 31.561226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703339, 41.566864, 31.650167>,  <35.477108, 41.507099, 31.703533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703339, 41.566864, 31.650167>,  <36.080391, 41.666473, 31.561226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703339, 41.566864, 31.650167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120057, -0.368625, -0.921793,
		0.311515, -0.895602, 0.317578,
		-0.942626, -0.249025, 0.222355,
		35.420551, 41.492157, 31.716873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991138, 41.040844, 31.243488>,  <36.080391, 41.666473, 31.561226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991138, 41.040844, 31.243488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620831, 41.172253, 31.318350>,  <35.398647, 41.251099, 31.363268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620831, 41.172253, 31.318350>,  <35.991138, 41.040844, 31.243488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620831, 41.172253, 31.318350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319133, -0.413508, -0.852740,
		-0.202754, -0.849167, 0.487655,
		-0.925767, 0.328523, 0.187157,
		35.343102, 41.270809, 31.374496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600002, 40.556484, 31.284456>,  <35.991138, 41.040844, 31.243488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600002, 40.556484, 31.284456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365395, 40.860218, 31.171740>,  <35.224628, 41.042458, 31.104111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365395, 40.860218, 31.171740>,  <35.600002, 40.556484, 31.284456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365395, 40.860218, 31.171740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285101, -0.519211, -0.805691,
		-0.758096, -0.392216, 0.521015,
		-0.586521, 0.759333, -0.281791,
		35.189438, 41.088017, 31.087202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084923, 40.265594, 30.848196>,  <35.600002, 40.556484, 31.284456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084923, 40.265594, 30.848196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020607, 40.650135, 30.758797>,  <34.982018, 40.880859, 30.705156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020607, 40.650135, 30.758797>,  <35.084923, 40.265594, 30.848196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020607, 40.650135, 30.758797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499589, -0.274566, -0.821599,
		-0.851210, -0.020443, 0.524426,
		-0.160786, 0.961351, -0.223501,
		34.972370, 40.938541, 30.691746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259838, 40.275021, 30.688204>,  <35.084923, 40.265594, 30.848196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259838, 40.275021, 30.688204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477394, 40.578537, 30.544857>,  <34.607929, 40.760647, 30.458849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477394, 40.578537, 30.544857>,  <34.259838, 40.275021, 30.688204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477394, 40.578537, 30.544857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300120, -0.222917, -0.927489,
		-0.783653, 0.612004, 0.106485,
		0.543890, 0.758788, -0.358365,
		34.640560, 40.806171, 30.437347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846863, 40.498825, 30.167915>,  <34.259838, 40.275021, 30.688204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846863, 40.498825, 30.167915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197853, 40.673771, 30.089167>,  <34.408447, 40.778736, 30.041918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197853, 40.673771, 30.089167>,  <33.846863, 40.498825, 30.167915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197853, 40.673771, 30.089167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185184, -0.069699, -0.980229,
		-0.442436, 0.896581, 0.019833,
		0.877472, 0.437361, -0.196870,
		34.461094, 40.804977, 30.030106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724552, 40.966969, 29.613022>,  <33.846863, 40.498825, 30.167915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724552, 40.966969, 29.613022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120316, 40.910393, 29.599928>,  <34.357773, 40.876446, 29.592072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120316, 40.910393, 29.599928>,  <33.724552, 40.966969, 29.613022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120316, 40.910393, 29.599928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035858, -0.019591, -0.999165,
		0.140684, 0.989753, -0.024455,
		0.989405, -0.141443, -0.032734,
		34.417137, 40.867958, 29.590107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951164, 41.467823, 29.233711>,  <33.724552, 40.966969, 29.613022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951164, 41.467823, 29.233711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235630, 41.189850, 29.191174>,  <34.406311, 41.023067, 29.165651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235630, 41.189850, 29.191174>,  <33.951164, 41.467823, 29.233711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235630, 41.189850, 29.191174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049126, 0.101777, -0.993593,
		0.701303, 0.711837, 0.038242,
		0.711169, -0.694931, -0.106346,
		34.448982, 40.981369, 29.159269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551567, 41.759129, 28.870667>,  <33.951164, 41.467823, 29.233711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551567, 41.759129, 28.870667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606922, 41.363777, 28.845514>,  <34.640137, 41.126568, 28.830423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606922, 41.363777, 28.845514>,  <34.551567, 41.759129, 28.870667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606922, 41.363777, 28.845514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024239, 0.066854, -0.997468,
		0.990081, 0.136514, 0.033209,
		0.138389, -0.988380, -0.062881,
		34.648438, 41.067265, 28.826651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066566, 41.722633, 28.484116>,  <34.551567, 41.759129, 28.870667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066566, 41.722633, 28.484116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933949, 41.346840, 28.449600>,  <34.854378, 41.121365, 28.428892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933949, 41.346840, 28.449600>,  <35.066566, 41.722633, 28.484116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933949, 41.346840, 28.449600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165281, 0.032205, -0.985721,
		0.928847, -0.341076, 0.144601,
		-0.331549, -0.939484, -0.086287,
		34.834484, 41.064995, 28.423714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577358, 41.331699, 28.233761>,  <35.066566, 41.722633, 28.484116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577358, 41.331699, 28.233761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237785, 41.146080, 28.132591>,  <35.034042, 41.034710, 28.071890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237785, 41.146080, 28.132591>,  <35.577358, 41.331699, 28.233761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237785, 41.146080, 28.132591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283241, 0.004552, -0.959038,
		0.446190, -0.885799, 0.127573,
		-0.848934, -0.464047, -0.252926,
		34.983105, 41.006866, 28.056713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845421, 40.802803, 27.774698>,  <35.577358, 41.331699, 28.233761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845421, 40.802803, 27.774698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453239, 40.812298, 27.696568>,  <35.217930, 40.817997, 27.649689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453239, 40.812298, 27.696568>,  <35.845421, 40.802803, 27.774698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453239, 40.812298, 27.696568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192269, -0.095340, -0.976700,
		-0.041805, -0.995162, 0.088913,
		-0.980451, 0.023736, -0.195325,
		35.159103, 40.819420, 27.637970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767399, 40.366497, 27.203999>,  <35.845421, 40.802803, 27.774698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767399, 40.366497, 27.203999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426254, 40.575344, 27.202248>,  <35.221569, 40.700653, 27.201197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426254, 40.575344, 27.202248>,  <35.767399, 40.366497, 27.203999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426254, 40.575344, 27.202248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021018, -0.042708, -0.998867,
		-0.521718, -0.851800, 0.047397,
		-0.852859, 0.522123, -0.004379,
		35.170395, 40.731979, 27.200933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367512, 40.007732, 26.684031>,  <35.767399, 40.366497, 27.203999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367512, 40.007732, 26.684031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217937, 40.370384, 26.762215>,  <35.128193, 40.587975, 26.809124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217937, 40.370384, 26.762215>,  <35.367512, 40.007732, 26.684031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217937, 40.370384, 26.762215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368974, 0.047929, -0.928203,
		-0.850901, -0.419205, 0.316599,
		-0.373934, 0.906626, 0.195458,
		35.105759, 40.642372, 26.820852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768703, 40.036091, 26.408178>,  <35.367512, 40.007732, 26.684031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768703, 40.036091, 26.408178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883678, 40.418720, 26.427584>,  <34.952663, 40.648296, 26.439226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883678, 40.418720, 26.427584>,  <34.768703, 40.036091, 26.408178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883678, 40.418720, 26.427584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374410, 0.158838, -0.913558,
		-0.881587, 0.244428, 0.403806,
		0.287439, 0.956570, 0.048513,
		34.969910, 40.705692, 26.442137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262062, 40.386940, 26.066786>,  <34.768703, 40.036091, 26.408178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262062, 40.386940, 26.066786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561676, 40.651699, 26.055189>,  <34.741444, 40.810555, 26.048231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561676, 40.651699, 26.055189>,  <34.262062, 40.386940, 26.066786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561676, 40.651699, 26.055189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245970, 0.237188, -0.939809,
		-0.615183, 0.711077, 0.340468,
		0.749032, 0.661899, -0.028990,
		34.786385, 40.850269, 26.046492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946655, 40.918884, 25.702494>,  <34.262062, 40.386940, 26.066786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946655, 40.918884, 25.702494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342319, 40.976910, 25.693422>,  <34.579720, 41.011723, 25.687981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342319, 40.976910, 25.693422>,  <33.946655, 40.918884, 25.702494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342319, 40.976910, 25.693422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027378, 0.030489, -0.999160,
		-0.144245, 0.988953, 0.034130,
		0.989163, 0.145059, -0.022677,
		34.639069, 41.020428, 25.686619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007431, 41.474072, 25.331177>,  <33.946655, 40.918884, 25.702494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007431, 41.474072, 25.331177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333450, 41.243462, 25.308157>,  <34.529064, 41.105095, 25.294346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333450, 41.243462, 25.308157>,  <34.007431, 41.474072, 25.331177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333450, 41.243462, 25.308157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094624, -0.034458, -0.994917,
		0.571608, 0.816355, -0.082638,
		0.815053, -0.576522, -0.057550,
		34.577965, 41.070503, 25.290892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422520, 41.758224, 24.787663>,  <34.007431, 41.474072, 25.331177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422520, 41.758224, 24.787663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543358, 41.380421, 24.839252>,  <34.615860, 41.153736, 24.870207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543358, 41.380421, 24.839252>,  <34.422520, 41.758224, 24.787663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543358, 41.380421, 24.839252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063375, -0.154896, -0.985896,
		0.951168, 0.289664, -0.106652,
		0.302099, -0.944512, 0.128974,
		34.633987, 41.097069, 24.877945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882362, 41.672935, 24.259434>,  <34.422520, 41.758224, 24.787663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882362, 41.672935, 24.259434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766136, 41.314919, 24.394772>,  <34.696400, 41.100109, 24.475975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766136, 41.314919, 24.394772>,  <34.882362, 41.672935, 24.259434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766136, 41.314919, 24.394772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122472, -0.315904, -0.940853,
		0.948984, -0.314819, -0.017826,
		-0.290568, -0.895038, 0.338345,
		34.678967, 41.046406, 24.496275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059650, 41.226276, 23.678333>,  <34.882362, 41.672935, 24.259434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059650, 41.226276, 23.678333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803074, 41.007896, 23.893921>,  <34.649128, 40.876869, 24.023273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803074, 41.007896, 23.893921>,  <35.059650, 41.226276, 23.678333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803074, 41.007896, 23.893921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347592, -0.419470, -0.838585,
		0.683909, -0.725245, 0.079297,
		-0.641442, -0.545953, 0.538969,
		34.610641, 40.844112, 24.055611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097038, 40.531811, 23.513376>,  <35.059650, 41.226276, 23.678333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097038, 40.531811, 23.513376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726009, 40.547943, 23.661964>,  <34.503391, 40.557621, 23.751118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726009, 40.547943, 23.661964>,  <35.097038, 40.531811, 23.513376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726009, 40.547943, 23.661964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325197, -0.576743, -0.749409,
		0.184018, -0.815930, 0.548084,
		-0.927569, 0.040331, 0.371469,
		34.447739, 40.560043, 23.773405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792160, 39.908222, 23.412716>,  <35.097038, 40.531811, 23.513376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792160, 39.908222, 23.412716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474651, 40.147305, 23.457739>,  <34.284145, 40.290752, 23.484753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474651, 40.147305, 23.457739>,  <34.792160, 39.908222, 23.412716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474651, 40.147305, 23.457739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427479, -0.416616, -0.802304,
		-0.432662, -0.684955, 0.586208,
		-0.793766, 0.597719, 0.112550,
		34.236519, 40.326618, 23.491507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230274, 39.411976, 23.393885>,  <34.792160, 39.908222, 23.412716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230274, 39.411976, 23.393885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121197, 39.779106, 23.278488>,  <34.055748, 39.999386, 23.209249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121197, 39.779106, 23.278488>,  <34.230274, 39.411976, 23.393885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121197, 39.779106, 23.278488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310132, -0.367708, -0.876704,
		-0.910744, -0.149605, 0.384921,
		-0.272698, 0.917828, -0.288491,
		34.039387, 40.054455, 23.191940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592327, 39.324383, 22.998495>,  <34.230274, 39.411976, 23.393885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592327, 39.324383, 22.998495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753033, 39.669796, 22.876577>,  <33.849457, 39.877045, 22.803427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753033, 39.669796, 22.876577>,  <33.592327, 39.324383, 22.998495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753033, 39.669796, 22.876577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262983, -0.210021, -0.941664,
		-0.877169, 0.458483, 0.142715,
		0.401763, 0.863531, -0.304797,
		33.873562, 39.928856, 22.785139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237068, 39.417465, 22.381891>,  <33.592327, 39.324383, 22.998495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237068, 39.417465, 22.381891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496292, 39.719955, 22.345800>,  <33.651825, 39.901451, 22.324146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496292, 39.719955, 22.345800>,  <33.237068, 39.417465, 22.381891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496292, 39.719955, 22.345800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107532, -0.026424, -0.993850,
		-0.753959, 0.653778, 0.064194,
		0.648061, 0.756225, -0.090225,
		33.690712, 39.946823, 22.318733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870365, 39.874657, 22.030964>,  <33.237068, 39.417465, 22.381891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870365, 39.874657, 22.030964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254215, 39.969772, 21.970873>,  <33.484528, 40.026840, 21.934818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254215, 39.969772, 21.970873>,  <32.870365, 39.874657, 22.030964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254215, 39.969772, 21.970873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110034, -0.174171, -0.978548,
		-0.258850, 0.955574, -0.140975,
		0.959630, 0.237785, -0.150230,
		33.542103, 40.041107, 21.925804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831886, 40.363010, 21.547237>,  <32.870365, 39.874657, 22.030964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831886, 40.363010, 21.547237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195042, 40.195751, 21.535254>,  <33.412933, 40.095394, 21.528063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195042, 40.195751, 21.535254>,  <32.831886, 40.363010, 21.547237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195042, 40.195751, 21.535254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087470, -0.119057, -0.989027,
		0.409992, 0.900543, -0.144665,
		0.907885, -0.418147, -0.029959,
		33.467407, 40.070309, 21.526266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160320, 40.621025, 20.886700>,  <32.831886, 40.363010, 21.547237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160320, 40.621025, 20.886700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371742, 40.295357, 20.982826>,  <33.498596, 40.099957, 21.040503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371742, 40.295357, 20.982826>,  <33.160320, 40.621025, 20.886700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371742, 40.295357, 20.982826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071520, -0.239376, -0.968289,
		0.845883, 0.528979, -0.068293,
		0.528552, -0.814175, 0.240317,
		33.530308, 40.051105, 21.054922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600334, 40.485184, 20.274227>,  <33.160320, 40.621025, 20.886700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600334, 40.485184, 20.274227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622826, 40.135735, 20.467564>,  <33.636318, 39.926064, 20.583565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622826, 40.135735, 20.467564>,  <33.600334, 40.485184, 20.274227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622826, 40.135735, 20.467564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038091, -0.481877, -0.875410,
		0.997691, 0.067632, 0.006184,
		0.056226, -0.873625, 0.483341,
		33.639694, 39.873646, 20.612566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801331, 40.019524, 19.762894>,  <33.600334, 40.485184, 20.274227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801331, 40.019524, 19.762894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657902, 39.771622, 20.042130>,  <33.571846, 39.622879, 20.209671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657902, 39.771622, 20.042130>,  <33.801331, 40.019524, 19.762894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657902, 39.771622, 20.042130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139481, -0.703851, -0.696519,
		0.923024, -0.347119, 0.165934,
		-0.358568, -0.619759, 0.698088,
		33.550331, 39.585693, 20.251556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040676, 39.231209, 19.586147>,  <33.801331, 40.019524, 19.762894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040676, 39.231209, 19.586147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756130, 39.176544, 19.861908>,  <33.585403, 39.143745, 20.027365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756130, 39.176544, 19.861908>,  <34.040676, 39.231209, 19.586147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756130, 39.176544, 19.861908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399859, -0.727985, -0.556912,
		0.577986, -0.671834, 0.463218,
		-0.711369, -0.136666, 0.689404,
		33.542721, 39.135544, 20.068729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891632, 38.554325, 19.571074>,  <34.040676, 39.231209, 19.586147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891632, 38.554325, 19.571074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566017, 38.705452, 19.747522>,  <33.370647, 38.796127, 19.853392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566017, 38.705452, 19.747522>,  <33.891632, 38.554325, 19.571074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566017, 38.705452, 19.747522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569630, -0.667633, -0.479362,
		0.113398, -0.641497, 0.758697,
		-0.814041, 0.377818, 0.441124,
		33.321804, 38.818798, 19.879860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513596, 38.010288, 19.860201>,  <33.891632, 38.554325, 19.571074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513596, 38.010288, 19.860201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263702, 38.304642, 19.755754>,  <33.113766, 38.481255, 19.693087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263702, 38.304642, 19.755754>,  <33.513596, 38.010288, 19.860201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263702, 38.304642, 19.755754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483583, -0.627193, -0.610555,
		-0.613068, -0.255163, 0.747690,
		-0.624737, 0.735881, -0.261119,
		33.076283, 38.525406, 19.677420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542271, 37.288593, 19.756609>,  <33.513596, 38.010288, 19.860201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542271, 37.288593, 19.756609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454109, 36.899067, 19.778866>,  <33.401211, 36.665352, 19.792219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454109, 36.899067, 19.778866>,  <33.542271, 37.288593, 19.756609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454109, 36.899067, 19.778866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020167, 0.061581, 0.997898,
		-0.975200, 0.218818, -0.033212,
		-0.220404, -0.973821, 0.055641,
		33.387989, 36.606922, 19.795559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965618, 37.274380, 20.125425>,  <33.542271, 37.288593, 19.756609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965618, 37.274380, 20.125425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129620, 36.911869, 20.166521>,  <33.228020, 36.694363, 20.191177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129620, 36.911869, 20.166521>,  <32.965618, 37.274380, 20.125425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129620, 36.911869, 20.166521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247710, -0.002235, 0.968832,
		-0.877802, -0.422673, -0.225411,
		0.410003, -0.906279, 0.102738,
		33.252621, 36.639984, 20.197342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530045, 36.772705, 20.499992>,  <32.965618, 37.274380, 20.125425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530045, 36.772705, 20.499992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890930, 36.610451, 20.558615>,  <33.107460, 36.513100, 20.593788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890930, 36.610451, 20.558615>,  <32.530045, 36.772705, 20.499992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890930, 36.610451, 20.558615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175999, -0.036039, 0.983730,
		-0.393750, -0.913326, -0.103906,
		0.902211, -0.405631, 0.146554,
		33.161594, 36.488762, 20.602581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502396, 36.356983, 21.060610>,  <32.530045, 36.772705, 20.499992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502396, 36.356983, 21.060610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898952, 36.354893, 21.008291>,  <33.136887, 36.353638, 20.976900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898952, 36.354893, 21.008291>,  <32.502396, 36.356983, 21.060610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898952, 36.354893, 21.008291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130763, -0.005958, 0.991396,
		-0.005958, -0.999969, -0.005224,
		-0.991396, 0.005224, 0.130795,
		33.196373, 36.353325, 20.969053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776672, 35.832371, 21.561489>,  <32.502396, 36.356983, 21.060610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776672, 35.832371, 21.561489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071072, 36.089787, 21.477421>,  <33.247711, 36.244236, 21.426979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071072, 36.089787, 21.477421>,  <32.776672, 35.832371, 21.561489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071072, 36.089787, 21.477421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252650, 0.026921, 0.967183,
		0.628075, -0.764942, -0.142776,
		0.735995, 0.643536, -0.210172,
		33.291870, 36.282848, 21.414370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456371, 35.591743, 21.832392>,  <32.776672, 35.832371, 21.561489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456371, 35.591743, 21.832392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490253, 35.986183, 21.775202>,  <33.510582, 36.222847, 21.740889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490253, 35.986183, 21.775202>,  <33.456371, 35.591743, 21.832392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490253, 35.986183, 21.775202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429806, 0.093293, 0.898089,
		0.898939, -0.137524, -0.415927,
		0.084706, 0.986095, -0.142973,
		33.515667, 36.282013, 21.732309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108162, 35.719009, 22.079807>,  <33.456371, 35.591743, 21.832392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108162, 35.719009, 22.079807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937771, 36.080883, 22.083651>,  <33.835537, 36.298008, 22.085957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937771, 36.080883, 22.083651>,  <34.108162, 35.719009, 22.079807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937771, 36.080883, 22.083651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454831, 0.204957, 0.866673,
		0.782095, 0.373552, -0.498785,
		-0.425977, 0.904683, 0.009608,
		33.809978, 36.352287, 22.086533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591209, 36.020401, 22.369474>,  <34.108162, 35.719009, 22.079807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591209, 36.020401, 22.369474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301250, 36.295235, 22.389242>,  <34.127277, 36.460136, 22.401102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301250, 36.295235, 22.389242>,  <34.591209, 36.020401, 22.369474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301250, 36.295235, 22.389242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380201, 0.339234, 0.860446,
		0.574436, 0.642521, -0.507140,
		-0.724894, 0.687086, 0.049419,
		34.083782, 36.501362, 22.404068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877731, 36.758522, 22.445887>,  <34.591209, 36.020401, 22.369474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877731, 36.758522, 22.445887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503067, 36.771603, 22.585367>,  <34.278267, 36.779449, 22.669056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503067, 36.771603, 22.585367>,  <34.877731, 36.758522, 22.445887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503067, 36.771603, 22.585367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322555, 0.468450, 0.822504,
		-0.136454, 0.882885, -0.449327,
		-0.936663, 0.032698, 0.348701,
		34.222069, 36.781414, 22.689978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845764, 37.392349, 22.944382>,  <34.877731, 36.758522, 22.445887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845764, 37.392349, 22.944382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505730, 37.200729, 23.031895>,  <34.301708, 37.085758, 23.084402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505730, 37.200729, 23.031895>,  <34.845764, 37.392349, 22.944382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505730, 37.200729, 23.031895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139551, 0.195675, 0.970689,
		-0.507819, 0.855700, -0.099489,
		-0.850086, -0.479050, 0.218781,
		34.250706, 37.057014, 23.097528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500317, 37.787033, 23.413689>,  <34.845764, 37.392349, 22.944382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500317, 37.787033, 23.413689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347099, 37.423042, 23.477207>,  <34.255169, 37.204647, 23.515318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347099, 37.423042, 23.477207>,  <34.500317, 37.787033, 23.413689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347099, 37.423042, 23.477207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074064, 0.141098, 0.987221,
		-0.920756, 0.389910, 0.013350,
		-0.383044, -0.909979, 0.158795,
		34.232185, 37.150047, 23.524845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846809, 37.849758, 23.879961>,  <34.500317, 37.787033, 23.413689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846809, 37.849758, 23.879961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026497, 37.493786, 23.911522>,  <34.134308, 37.280201, 23.930458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026497, 37.493786, 23.911522>,  <33.846809, 37.849758, 23.879961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026497, 37.493786, 23.911522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053913, 0.061154, 0.996671,
		-0.891795, -0.451975, -0.020507,
		0.449216, -0.889932, 0.078904,
		34.161263, 37.226807, 23.935194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441666, 37.452023, 24.420605>,  <33.846809, 37.849758, 23.879961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441666, 37.452023, 24.420605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817333, 37.319401, 24.384745>,  <34.042732, 37.239826, 24.363228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817333, 37.319401, 24.384745>,  <33.441666, 37.452023, 24.420605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817333, 37.319401, 24.384745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099734, 0.013481, 0.994923,
		-0.328665, -0.943339, 0.045728,
		0.939166, -0.331557, -0.089652,
		34.099083, 37.219933, 24.357849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530983, 37.049774, 24.940130>,  <33.441666, 37.452023, 24.420605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530983, 37.049774, 24.940130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917847, 37.107716, 24.856581>,  <34.149963, 37.142483, 24.806452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917847, 37.107716, 24.856581>,  <33.530983, 37.049774, 24.940130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917847, 37.107716, 24.856581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195748, 0.099756, 0.975567,
		0.162156, -0.984411, 0.068123,
		0.967155, 0.144859, -0.208873,
		34.207993, 37.151173, 24.793919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988708, 36.543373, 25.324080>,  <33.530983, 37.049774, 24.940130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988708, 36.543373, 25.324080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224541, 36.853634, 25.233957>,  <34.366039, 37.039791, 25.179884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224541, 36.853634, 25.233957>,  <33.988708, 36.543373, 25.324080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224541, 36.853634, 25.233957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192549, 0.135932, 0.971827,
		0.784423, -0.616353, -0.069208,
		0.589581, 0.775649, -0.225306,
		34.401413, 37.086330, 25.166365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633186, 36.451653, 25.664852>,  <33.988708, 36.543373, 25.324080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633186, 36.451653, 25.664852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650471, 36.840889, 25.574322>,  <34.660839, 37.074432, 25.520004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650471, 36.840889, 25.574322>,  <34.633186, 36.451653, 25.664852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650471, 36.840889, 25.574322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303414, 0.203055, 0.930972,
		0.951879, -0.108896, -0.286476,
		0.043209, 0.973093, -0.226324,
		34.663433, 37.132816, 25.506424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342804, 36.775028, 25.845255>,  <34.633186, 36.451653, 25.664852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342804, 36.775028, 25.845255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093250, 37.087627, 25.843002>,  <34.943516, 37.275185, 25.841650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093250, 37.087627, 25.843002>,  <35.342804, 36.775028, 25.845255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093250, 37.087627, 25.843002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367233, 0.299517, 0.880585,
		0.689859, 0.547318, -0.473855,
		-0.623887, 0.781494, -0.005631,
		34.906086, 37.322075, 25.841312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704208, 37.334343, 26.116322>,  <35.342804, 36.775028, 25.845255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704208, 37.334343, 26.116322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329838, 37.470512, 26.152428>,  <35.105213, 37.552216, 26.174091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329838, 37.470512, 26.152428>,  <35.704208, 37.334343, 26.116322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329838, 37.470512, 26.152428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259537, 0.493425, 0.830164,
		0.238071, 0.800402, -0.550163,
		-0.935929, 0.340425, 0.090264,
		35.049061, 37.572639, 26.179506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734978, 37.951870, 26.414709>,  <35.704208, 37.334343, 26.116322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734978, 37.951870, 26.414709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353527, 37.850784, 26.480101>,  <35.124657, 37.790134, 26.519335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353527, 37.850784, 26.480101>,  <35.734978, 37.951870, 26.414709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353527, 37.850784, 26.480101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062111, 0.366227, 0.928450,
		-0.294503, 0.895552, -0.333549,
		-0.953630, -0.252714, 0.163478,
		35.067436, 37.774971, 26.529144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363472, 38.588768, 26.513929>,  <35.734978, 37.951870, 26.414709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363472, 38.588768, 26.513929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165749, 38.297153, 26.703316>,  <35.047115, 38.122185, 26.816948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165749, 38.297153, 26.703316>,  <35.363472, 38.588768, 26.513929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165749, 38.297153, 26.703316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065803, 0.511716, 0.856631,
		-0.866791, 0.454598, -0.204974,
		-0.494311, -0.729032, 0.473465,
		35.017456, 38.078445, 26.845356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978001, 38.901360, 27.031944>,  <35.363472, 38.588768, 26.513929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978001, 38.901360, 27.031944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978745, 38.521141, 27.156172>,  <34.979191, 38.293011, 27.230707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978745, 38.521141, 27.156172>,  <34.978001, 38.901360, 27.031944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978745, 38.521141, 27.156172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164243, 0.306641, 0.937548,
		-0.986418, 0.049266, 0.156691,
		0.001859, -0.950550, 0.310567,
		34.979301, 38.235977, 27.249342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436737, 38.782379, 27.640959>,  <34.978001, 38.901360, 27.031944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436737, 38.782379, 27.640959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702637, 38.484329, 27.662487>,  <34.862179, 38.305500, 27.675404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702637, 38.484329, 27.662487>,  <34.436737, 38.782379, 27.640959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702637, 38.484329, 27.662487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145393, 0.199705, 0.969009,
		-0.732780, -0.636325, 0.241090,
		0.664751, -0.745123, 0.053823,
		34.902061, 38.260792, 27.678635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252300, 38.508770, 28.232647>,  <34.436737, 38.782379, 27.640959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252300, 38.508770, 28.232647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615532, 38.352657, 28.171881>,  <34.833469, 38.258987, 28.135422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615532, 38.352657, 28.171881>,  <34.252300, 38.508770, 28.232647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615532, 38.352657, 28.171881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177644, 0.030457, 0.983624,
		-0.379267, -0.920190, 0.096989,
		0.908075, -0.390285, -0.151914,
		34.887955, 38.235573, 28.126307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385155, 38.008106, 28.798517>,  <34.252300, 38.508770, 28.232647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385155, 38.008106, 28.798517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739918, 38.117550, 28.649641>,  <34.952778, 38.183216, 28.560316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739918, 38.117550, 28.649641>,  <34.385155, 38.008106, 28.798517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739918, 38.117550, 28.649641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341972, 0.152768, 0.927209,
		0.310553, -0.949631, 0.041925,
		0.886912, 0.273610, -0.372189,
		35.005993, 38.199635, 28.537985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903774, 37.748993, 29.177740>,  <34.385155, 38.008106, 28.798517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903774, 37.748993, 29.177740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099052, 38.047485, 28.996716>,  <35.216217, 38.226582, 28.888102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099052, 38.047485, 28.996716>,  <34.903774, 37.748993, 29.177740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099052, 38.047485, 28.996716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568904, 0.121134, 0.813434,
		0.661828, -0.654576, -0.365395,
		0.488193, 0.746228, -0.452561,
		35.245510, 38.271355, 28.860947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572979, 37.591270, 29.285492>,  <34.903774, 37.748993, 29.177740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572979, 37.591270, 29.285492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608833, 37.976692, 29.184668>,  <35.630344, 38.207943, 29.124172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608833, 37.976692, 29.184668>,  <35.572979, 37.591270, 29.285492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608833, 37.976692, 29.184668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659153, 0.132334, 0.740274,
		0.746648, -0.232502, -0.623266,
		0.089636, 0.963551, -0.252061,
		35.635723, 38.265759, 29.109049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297596, 37.675941, 29.437805>,  <35.572979, 37.591270, 29.285492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297596, 37.675941, 29.437805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156208, 38.037811, 29.342623>,  <36.071377, 38.254932, 29.285513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156208, 38.037811, 29.342623>,  <36.297596, 37.675941, 29.437805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156208, 38.037811, 29.342623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670945, 0.422436, 0.609410,
		0.651840, 0.055752, -0.756305,
		-0.353466, 0.904676, -0.237954,
		36.050167, 38.309216, 29.271236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874245, 38.043598, 29.158484>,  <36.297596, 37.675941, 29.437805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874245, 38.043598, 29.158484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600502, 38.283058, 29.324991>,  <36.436256, 38.426735, 29.424896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600502, 38.283058, 29.324991>,  <36.874245, 38.043598, 29.158484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600502, 38.283058, 29.324991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697898, 0.372436, 0.611743,
		0.211187, 0.709160, -0.672675,
		-0.684352, 0.598651, 0.416268,
		36.395195, 38.462654, 29.449871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133343, 38.701618, 29.121353>,  <36.874245, 38.043598, 29.158484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133343, 38.701618, 29.121353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875042, 38.699780, 29.426767>,  <36.720062, 38.698677, 29.610016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875042, 38.699780, 29.426767>,  <37.133343, 38.701618, 29.121353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875042, 38.699780, 29.426767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724522, 0.311919, 0.614633,
		-0.240983, 0.950098, -0.198094,
		-0.645751, -0.004592, 0.763534,
		36.681316, 38.698402, 29.655828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248425, 39.366394, 29.546648>,  <37.133343, 38.701618, 29.121353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248425, 39.366394, 29.546648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058083, 39.124355, 29.801966>,  <36.943878, 38.979130, 29.955156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058083, 39.124355, 29.801966>,  <37.248425, 39.366394, 29.546648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058083, 39.124355, 29.801966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705034, 0.171446, 0.688137,
		-0.525825, 0.777470, 0.345035,
		-0.475851, -0.605101, 0.638293,
		36.915329, 38.942825, 29.993454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253334, 39.669930, 30.146986>,  <37.248425, 39.366394, 29.546648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253334, 39.669930, 30.146986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185070, 39.289436, 30.249775>,  <37.144112, 39.061142, 30.311449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185070, 39.289436, 30.249775>,  <37.253334, 39.669930, 30.146986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185070, 39.289436, 30.249775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536038, 0.129200, 0.834248,
		-0.826764, 0.280118, 0.487847,
		-0.170658, -0.951231, 0.256972,
		37.133873, 39.004066, 30.326866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098301, 39.652008, 30.880409>,  <37.253334, 39.669930, 30.146986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098301, 39.652008, 30.880409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201225, 39.272087, 30.809229>,  <37.262981, 39.044136, 30.766521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201225, 39.272087, 30.809229>,  <37.098301, 39.652008, 30.880409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201225, 39.272087, 30.809229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670241, 0.042759, 0.740911,
		-0.696110, -0.309913, 0.647599,
		0.257309, -0.949803, -0.177951,
		37.278419, 38.987144, 30.755844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224556, 39.433918, 31.549694>,  <37.098301, 39.652008, 30.880409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224556, 39.433918, 31.549694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406250, 39.162460, 31.318832>,  <37.515266, 38.999584, 31.180315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406250, 39.162460, 31.318832>,  <37.224556, 39.433918, 31.549694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406250, 39.162460, 31.318832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771948, -0.023560, 0.635249,
		-0.444707, -0.734088, 0.513177,
		0.454238, -0.678645, -0.577155,
		37.542522, 38.958866, 31.145685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342606, 38.845848, 31.897055>,  <37.224556, 39.433918, 31.549694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342606, 38.845848, 31.897055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635471, 38.839199, 31.624683>,  <37.811192, 38.835209, 31.461262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635471, 38.839199, 31.624683>,  <37.342606, 38.845848, 31.897055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635471, 38.839199, 31.624683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678298, 0.108858, 0.726679,
		0.062047, -0.993918, 0.090975,
		0.732163, -0.016620, -0.680927,
		37.855122, 38.834213, 31.420404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890301, 38.575699, 32.230412>,  <37.342606, 38.845848, 31.897055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890301, 38.575699, 32.230412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096786, 38.682018, 31.904743>,  <38.220676, 38.745808, 31.709341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096786, 38.682018, 31.904743>,  <37.890301, 38.575699, 32.230412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096786, 38.682018, 31.904743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856447, -0.154972, 0.492425,
		0.004711, -0.951491, -0.307639,
		0.516214, 0.265797, -0.814172,
		38.251652, 38.761757, 31.660492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403664, 38.131706, 32.219723>,  <37.890301, 38.575699, 32.230412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403664, 38.131706, 32.219723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523937, 38.440643, 31.995909>,  <38.596100, 38.626003, 31.861620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523937, 38.440643, 31.995909>,  <38.403664, 38.131706, 32.219723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523937, 38.440643, 31.995909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888781, -0.014126, 0.458115,
		0.345917, -0.635052, -0.690688,
		0.300683, 0.772340, -0.559536,
		38.614143, 38.672344, 31.828049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123009, 37.964592, 31.832680>,  <38.403664, 38.131706, 32.219723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123009, 37.964592, 31.832680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121254, 38.364491, 31.841551>,  <39.120201, 38.604427, 31.846874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121254, 38.364491, 31.841551>,  <39.123009, 37.964592, 31.832680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121254, 38.364491, 31.841551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962383, -0.001802, 0.271692,
		0.271662, 0.022538, -0.962129,
		-0.004389, 0.999744, 0.022180,
		39.119938, 38.664413, 31.848206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723595, 37.999363, 31.584930>,  <39.123009, 37.964592, 31.832680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723595, 37.999363, 31.584930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620472, 38.346359, 31.755102>,  <39.558598, 38.554558, 31.857204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620472, 38.346359, 31.755102>,  <39.723595, 37.999363, 31.584930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620472, 38.346359, 31.755102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928985, 0.101541, 0.355915,
		0.265556, 0.486975, -0.832067,
		-0.257811, 0.867494, 0.425427,
		39.543129, 38.606606, 31.882730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392113, 38.445126, 31.511097>,  <39.723595, 37.999363, 31.584930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392113, 38.445126, 31.511097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171589, 38.585518, 31.813852>,  <40.039276, 38.669754, 31.995504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171589, 38.585518, 31.813852>,  <40.392113, 38.445126, 31.511097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171589, 38.585518, 31.813852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834303, 0.231028, 0.500564,
		0.000825, 0.907436, -0.420189,
		-0.551306, 0.350978, 0.756886,
		40.006199, 38.690811, 32.040916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683571, 39.161659, 31.610966>,  <40.392113, 38.445126, 31.511097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683571, 39.161659, 31.610966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477169, 39.056557, 31.937080>,  <40.353329, 38.993496, 32.132748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477169, 39.056557, 31.937080>,  <40.683571, 39.161659, 31.610966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477169, 39.056557, 31.937080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836312, 0.051297, 0.545849,
		-0.185249, 0.963496, 0.193281,
		-0.516009, -0.262761, 0.815286,
		40.322365, 38.977730, 32.181667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870583, 39.619236, 32.208172>,  <40.683571, 39.161659, 31.610966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870583, 39.619236, 32.208172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748352, 39.250744, 32.304466>,  <40.675014, 39.029648, 32.362244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748352, 39.250744, 32.304466>,  <40.870583, 39.619236, 32.208172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748352, 39.250744, 32.304466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752477, -0.078722, 0.653897,
		-0.583439, 0.380966, 0.717261,
		-0.305576, -0.921232, 0.240739,
		40.656677, 38.974373, 32.376686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959171, 39.590290, 32.855892>,  <40.870583, 39.619236, 32.208172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959171, 39.590290, 32.855892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948788, 39.199169, 32.772732>,  <40.942558, 38.964497, 32.722836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948788, 39.199169, 32.772732>,  <40.959171, 39.590290, 32.855892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948788, 39.199169, 32.772732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613076, -0.179844, 0.769281,
		-0.789597, -0.107491, 0.604137,
		-0.025960, -0.977805, -0.207905,
		40.940998, 38.905827, 32.710361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783028, 39.251534, 33.491066>,  <40.959171, 39.590290, 32.855892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783028, 39.251534, 33.491066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972256, 38.971745, 33.276794>,  <41.085793, 38.803871, 33.148232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972256, 38.971745, 33.276794>,  <40.783028, 39.251534, 33.491066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972256, 38.971745, 33.276794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542212, -0.248088, 0.802782,
		-0.694416, -0.670221, 0.261898,
		0.473067, -0.699468, -0.535678,
		41.114178, 38.761906, 33.116093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780422, 38.683334, 33.935196>,  <40.783028, 39.251534, 33.491066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780422, 38.683334, 33.935196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082111, 38.601799, 33.685524>,  <41.263126, 38.552876, 33.535721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082111, 38.601799, 33.685524>,  <40.780422, 38.683334, 33.935196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082111, 38.601799, 33.685524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608128, -0.141670, 0.781095,
		-0.247647, -0.968699, 0.017111,
		0.754222, -0.203842, -0.624177,
		41.308376, 38.540646, 33.498272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121513, 38.063667, 34.206924>,  <40.780422, 38.683334, 33.935196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121513, 38.063667, 34.206924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393215, 38.226757, 33.962837>,  <41.556236, 38.324612, 33.816383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393215, 38.226757, 33.962837>,  <41.121513, 38.063667, 34.206924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393215, 38.226757, 33.962837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700345, -0.111581, 0.705029,
		0.219372, -0.906260, -0.361342,
		0.679259, 0.407727, -0.610218,
		41.596992, 38.349075, 33.779774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595345, 37.620911, 34.279011>,  <41.121513, 38.063667, 34.206924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595345, 37.620911, 34.279011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774109, 37.932781, 34.103565>,  <41.881367, 38.119904, 33.998299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774109, 37.932781, 34.103565>,  <41.595345, 37.620911, 34.279011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774109, 37.932781, 34.103565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717389, -0.019435, 0.696401,
		0.534441, -0.625885, -0.568014,
		0.446907, 0.779673, -0.438616,
		41.908180, 38.166683, 33.971981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298019, 37.476715, 34.287785>,  <41.595345, 37.620911, 34.279011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298019, 37.476715, 34.287785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279999, 37.872993, 34.236427>,  <42.269188, 38.110760, 34.205612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279999, 37.872993, 34.236427>,  <42.298019, 37.476715, 34.287785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279999, 37.872993, 34.236427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783278, 0.114802, 0.610980,
		0.620037, -0.073046, -0.781164,
		-0.045049, 0.990699, -0.128397,
		42.266483, 38.170204, 34.197906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943905, 37.750645, 34.075436>,  <42.298019, 37.476715, 34.287785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943905, 37.750645, 34.075436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739609, 38.045818, 34.251884>,  <42.617031, 38.222923, 34.357754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739609, 38.045818, 34.251884>,  <42.943905, 37.750645, 34.075436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739609, 38.045818, 34.251884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743285, 0.121157, 0.657912,
		0.432052, 0.663905, -0.610378,
		-0.510743, 0.737937, 0.441124,
		42.586388, 38.267200, 34.384220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446053, 38.346752, 34.209682>,  <42.943905, 37.750645, 34.075436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446053, 38.346752, 34.209682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.165058, 38.352367, 34.494308>,  <42.996464, 38.355736, 34.665085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.165058, 38.352367, 34.494308>,  <43.446053, 38.346752, 34.209682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.165058, 38.352367, 34.494308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708258, -0.084437, 0.700886,
		0.069924, 0.996330, 0.049371,
		-0.702482, 0.014042, 0.711563,
		42.954315, 38.356579, 34.707779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618210, 38.910927, 34.701603>,  <43.446053, 38.346752, 34.209682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618210, 38.910927, 34.701603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389191, 38.640972, 34.887814>,  <43.251778, 38.479000, 34.999538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389191, 38.640972, 34.887814>,  <43.618210, 38.910927, 34.701603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389191, 38.640972, 34.887814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707340, -0.119518, 0.696696,
		-0.414553, 0.728178, 0.545806,
		-0.572552, -0.674887, 0.465523,
		43.217426, 38.438507, 35.027470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436417, 39.124203, 35.408127>,  <43.618210, 38.910927, 34.701603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436417, 39.124203, 35.408127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445045, 38.725719, 35.374397>,  <43.450222, 38.486629, 35.354160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445045, 38.725719, 35.374397>,  <43.436417, 39.124203, 35.408127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445045, 38.725719, 35.374397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649805, -0.050125, 0.758446,
		-0.759795, -0.071151, 0.646258,
		0.021571, -0.996205, -0.084319,
		43.451515, 38.426857, 35.349102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580151, 39.072399, 36.062374>,  <43.436417, 39.124203, 35.408127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580151, 39.072399, 36.062374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627777, 38.716614, 35.885887>,  <43.656353, 38.503143, 35.779995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627777, 38.716614, 35.885887>,  <43.580151, 39.072399, 36.062374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627777, 38.716614, 35.885887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570686, -0.302328, 0.763488,
		-0.812490, -0.342702, 0.471610,
		0.119068, -0.889468, -0.441214,
		43.663498, 38.449772, 35.753525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417168, 38.487083, 36.554562>,  <43.580151, 39.072399, 36.062374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417168, 38.487083, 36.554562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673409, 38.376415, 36.268044>,  <43.827152, 38.310013, 36.096134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673409, 38.376415, 36.268044>,  <43.417168, 38.487083, 36.554562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673409, 38.376415, 36.268044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675060, -0.241649, 0.697065,
		-0.365951, -0.930085, 0.031970,
		0.640604, -0.276673, -0.716294,
		43.865589, 38.293415, 36.053154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741669, 37.924046, 36.838856>,  <43.417168, 38.487083, 36.554562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741669, 37.924046, 36.838856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993397, 37.990982, 36.535290>,  <44.144432, 38.031143, 36.353149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993397, 37.990982, 36.535290>,  <43.741669, 37.924046, 36.838856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993397, 37.990982, 36.535290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777014, -0.153527, 0.610474,
		-0.014358, -0.973872, -0.226642,
		0.629319, 0.167339, -0.758917,
		44.182194, 38.041183, 36.307613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343880, 37.539669, 37.039219>,  <43.741669, 37.924046, 36.838856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343880, 37.539669, 37.039219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514805, 37.740730, 36.738621>,  <44.617359, 37.861366, 36.558262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514805, 37.740730, 36.738621>,  <44.343880, 37.539669, 37.039219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514805, 37.740730, 36.738621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891298, -0.094812, 0.443395,
		0.151621, -0.859276, -0.488524,
		0.427317, 0.502649, -0.751495,
		44.643002, 37.891525, 36.513172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962696, 37.319572, 37.070835>,  <44.343880, 37.539669, 37.039219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962696, 37.319572, 37.070835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.019459, 37.601208, 36.792522>,  <45.053516, 37.770191, 36.625534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.019459, 37.601208, 36.792522>,  <44.962696, 37.319572, 37.070835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019459, 37.601208, 36.792522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988093, -0.058530, 0.142291,
		0.059461, -0.707693, -0.704013,
		0.141904, 0.704091, -0.695786,
		45.062031, 37.812435, 36.583786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516392, 37.123898, 36.572098>,  <44.962696, 37.319572, 37.070835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516392, 37.123898, 36.572098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506912, 37.523769, 36.568619>,  <45.501225, 37.763695, 36.566532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506912, 37.523769, 36.568619>,  <45.516392, 37.123898, 36.572098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506912, 37.523769, 36.568619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997003, 0.024273, 0.073464,
		0.073652, -0.006933, -0.997260,
		-0.023697, 0.999681, -0.008699,
		45.499802, 37.823673, 36.566010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048492, 37.300785, 36.072655>,  <45.516392, 37.123898, 36.572098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048492, 37.300785, 36.072655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.982197, 37.602402, 36.326881>,  <45.942421, 37.783371, 36.479420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.982197, 37.602402, 36.326881>,  <46.048492, 37.300785, 36.072655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982197, 37.602402, 36.326881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982669, 0.072016, 0.170806,
		0.083024, 0.652865, -0.752911,
		-0.165735, 0.754043, 0.635571,
		45.932476, 37.828613, 36.517551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.389519, 37.944641, 35.990387>,  <46.048492, 37.300785, 36.072655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.389519, 37.944641, 35.990387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.325134, 37.966599, 36.384560>,  <46.286503, 37.979771, 36.621063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.325134, 37.966599, 36.384560>,  <46.389519, 37.944641, 35.990387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.325134, 37.966599, 36.384560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986937, 0.015857, 0.160323,
		-0.006826, 0.998366, -0.056727,
		-0.160961, 0.054891, 0.985433,
		46.276848, 37.983067, 36.680191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.798206, 38.543743, 36.352539>,  <46.389519, 37.944641, 35.990387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.798206, 38.543743, 36.352539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719589, 38.244503, 36.606064>,  <46.672417, 38.064960, 36.758179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719589, 38.244503, 36.606064>,  <46.798206, 38.543743, 36.352539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.719589, 38.244503, 36.606064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959723, -0.014434, 0.280578,
		-0.200752, 0.663427, 0.720807,
		-0.196547, -0.748101, 0.633809,
		46.660625, 38.020073, 36.796207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.309742, 38.750847, 36.855877>,  <46.798206, 38.543743, 36.352539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.309742, 38.750847, 36.855877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.168716, 38.377499, 36.882763>,  <47.084099, 38.153488, 36.898895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.168716, 38.377499, 36.882763>,  <47.309742, 38.750847, 36.855877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.168716, 38.377499, 36.882763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905552, -0.322187, 0.275991,
		-0.235948, 0.158168, 0.958807,
		-0.352568, -0.933369, 0.067210,
		47.062946, 38.097488, 36.902927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.478157, 38.401131, 37.483646>,  <47.309742, 38.750847, 36.855877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.478157, 38.401131, 37.483646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.436752, 38.109459, 37.213066>,  <47.411911, 37.934456, 37.050716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.436752, 38.109459, 37.213066>,  <47.478157, 38.401131, 37.483646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.436752, 38.109459, 37.213066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967997, -0.230177, 0.099999,
		-0.228621, -0.644453, 0.729666,
		-0.103507, -0.729177, -0.676452,
		47.405701, 37.890705, 37.010132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.751900, 37.696518, 37.728825>,  <47.478157, 38.401131, 37.483646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.751900, 37.696518, 37.728825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766491, 37.694271, 37.329098>,  <47.775246, 37.692924, 37.089260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766491, 37.694271, 37.329098>,  <47.751900, 37.696518, 37.728825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.766491, 37.694271, 37.329098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896182, -0.442289, 0.035195,
		-0.442186, -0.896855, -0.011096,
		0.036472, -0.005618, -0.999319,
		47.777431, 37.692585, 37.029301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.678707, 37.001167, 37.382610>,  <47.751900, 37.696518, 37.728825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.678707, 37.001167, 37.382610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.892189, 37.251320, 37.154907>,  <48.020279, 37.401413, 37.018284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.892189, 37.251320, 37.154907>,  <47.678707, 37.001167, 37.382610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.892189, 37.251320, 37.154907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806204, -0.579505, 0.119203,
		-0.255340, -0.522558, -0.813471,
		0.533700, 0.625386, -0.569259,
		48.052299, 37.438934, 36.984131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.072628, 37.351543, 37.841133>,  <47.678707, 37.001167, 37.382610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.072628, 37.351543, 37.841133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.021378, 37.680576, 37.619522>,  <46.990627, 37.877995, 37.486557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.021378, 37.680576, 37.619522>,  <47.072628, 37.351543, 37.841133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.021378, 37.680576, 37.619522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988393, -0.059938, 0.139595,
		0.081621, 0.565480, 0.820713,
		-0.128130, 0.822581, -0.554025,
		46.982937, 37.927349, 37.453316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.440258, 37.455452, 37.809097>,  <47.072628, 37.351543, 37.841133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.440258, 37.455452, 37.809097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510284, 37.750481, 37.548225>,  <46.552299, 37.927498, 37.391701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510284, 37.750481, 37.548225>,  <46.440258, 37.455452, 37.809097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510284, 37.750481, 37.548225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975407, 0.039833, -0.216786,
		-0.133917, 0.674092, 0.726407,
		0.175068, 0.737573, -0.652179,
		46.562805, 37.971752, 37.352573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.011616, 38.093449, 37.959095>,  <46.440258, 37.455452, 37.809097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.011616, 38.093449, 37.959095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.073479, 38.102161, 37.564003>,  <46.110596, 38.107391, 37.326950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.073479, 38.102161, 37.564003>,  <46.011616, 38.093449, 37.959095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.073479, 38.102161, 37.564003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987628, -0.022818, -0.155149,
		-0.025918, 0.999502, 0.017986,
		0.154661, 0.021784, -0.987727,
		46.119877, 38.108696, 37.267685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.728031, 38.693417, 37.554974>,  <46.011616, 38.093449, 37.959095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.728031, 38.693417, 37.554974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781322, 38.424213, 37.263958>,  <45.813297, 38.262691, 37.089348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781322, 38.424213, 37.263958>,  <45.728031, 38.693417, 37.554974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781322, 38.424213, 37.263958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953900, 0.112116, -0.278396,
		0.268931, 0.731088, -0.627046,
		0.133230, -0.673009, -0.727536,
		45.821293, 38.222309, 37.045696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480297, 39.038349, 36.944160>,  <45.728031, 38.693417, 37.554974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.480297, 39.038349, 36.944160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480034, 38.652668, 36.838089>,  <45.479874, 38.421261, 36.774445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480034, 38.652668, 36.838089>,  <45.480297, 39.038349, 36.944160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480034, 38.652668, 36.838089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880032, 0.126498, -0.457757,
		0.474914, 0.233066, -0.848609,
		-0.000660, -0.964198, -0.265182,
		45.479836, 38.363407, 36.758533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187012, 38.946918, 36.277599>,  <45.480297, 39.038349, 36.944160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187012, 38.946918, 36.277599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195976, 38.547966, 36.305084>,  <45.201355, 38.308594, 36.321575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195976, 38.547966, 36.305084>,  <45.187012, 38.946918, 36.277599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195976, 38.547966, 36.305084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835495, -0.056428, -0.546593,
		0.549041, -0.045156, -0.834575,
		0.022411, -0.997385, 0.068709,
		45.202698, 38.248749, 36.325699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189098, 38.615498, 35.606583>,  <45.187012, 38.946918, 36.277599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189098, 38.615498, 35.606583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031818, 38.378063, 35.887451>,  <44.937450, 38.235603, 36.055973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031818, 38.378063, 35.887451>,  <45.189098, 38.615498, 35.606583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031818, 38.378063, 35.887451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834853, -0.089487, -0.543150,
		0.385242, -0.799778, -0.460373,
		-0.393202, -0.593588, 0.702172,
		44.913857, 38.199986, 36.098103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991695, 38.077686, 35.293663>,  <45.189098, 38.615498, 35.606583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991695, 38.077686, 35.293663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.760464, 38.080376, 35.620045>,  <44.621723, 38.081989, 35.815872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.760464, 38.080376, 35.620045>,  <44.991695, 38.077686, 35.293663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760464, 38.080376, 35.620045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814251, -0.069802, -0.576301,
		0.053084, -0.997538, 0.045820,
		-0.578080, 0.006717, 0.815952,
		44.587040, 38.082394, 35.864830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489040, 37.558411, 35.163807>,  <44.991695, 38.077686, 35.293663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489040, 37.558411, 35.163807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.335693, 37.793980, 35.448399>,  <44.243687, 37.935322, 35.619156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.335693, 37.793980, 35.448399>,  <44.489040, 37.558411, 35.163807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335693, 37.793980, 35.448399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857549, 0.059105, -0.510995,
		-0.342987, -0.806028, 0.482368,
		-0.383367, 0.588919, 0.711481,
		44.220684, 37.970654, 35.661842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797165, 37.313068, 35.113400>,  <44.489040, 37.558411, 35.163807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797165, 37.313068, 35.113400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730553, 37.623127, 35.357178>,  <43.690586, 37.809162, 35.503445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730553, 37.623127, 35.357178>,  <43.797165, 37.313068, 35.113400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730553, 37.623127, 35.357178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949900, 0.039675, -0.310027,
		-0.264495, -0.630537, 0.729702,
		-0.166533, 0.775145, 0.609441,
		43.680592, 37.855671, 35.540009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167953, 37.207581, 35.454197>,  <43.797165, 37.313068, 35.113400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167953, 37.207581, 35.454197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215557, 37.604027, 35.477962>,  <43.244118, 37.841892, 35.492222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215557, 37.604027, 35.477962>,  <43.167953, 37.207581, 35.454197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215557, 37.604027, 35.477962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895490, 0.132989, -0.424748,
		-0.428875, -0.002659, 0.903360,
		0.119007, 0.991114, 0.059417,
		43.251259, 37.901360, 35.495789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496311, 37.504292, 35.553604>,  <43.167953, 37.207581, 35.454197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496311, 37.504292, 35.553604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715828, 37.813023, 35.425163>,  <42.847538, 37.998260, 35.348099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715828, 37.813023, 35.425163>,  <42.496311, 37.504292, 35.553604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715828, 37.813023, 35.425163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770575, 0.318140, -0.552269,
		-0.324102, 0.550515, 0.769345,
		0.548792, 0.771829, -0.321104,
		42.880466, 38.044571, 35.328831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097584, 38.164383, 35.656555>,  <42.496311, 37.504292, 35.553604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097584, 38.164383, 35.656555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371204, 38.201538, 35.367157>,  <42.535378, 38.223831, 35.193520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371204, 38.201538, 35.367157>,  <42.097584, 38.164383, 35.656555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371204, 38.201538, 35.367157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694366, 0.386763, -0.606852,
		0.223452, 0.917489, 0.329064,
		0.684050, 0.092889, -0.723496,
		42.576420, 38.229404, 35.150108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145821, 38.947102, 35.467197>,  <42.097584, 38.164383, 35.656555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145821, 38.947102, 35.467197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248772, 38.704506, 35.166286>,  <42.310543, 38.558949, 34.985741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248772, 38.704506, 35.166286>,  <42.145821, 38.947102, 35.467197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248772, 38.704506, 35.166286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539205, 0.555896, -0.632643,
		0.801881, 0.568463, -0.183946,
		0.257380, -0.606489, -0.752281,
		42.325985, 38.522560, 34.940601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008728, 39.316620, 34.831467>,  <42.145821, 38.947102, 35.467197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008728, 39.316620, 34.831467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183144, 38.985645, 34.689919>,  <42.287792, 38.787060, 34.604988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183144, 38.985645, 34.689919>,  <42.008728, 39.316620, 34.831467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183144, 38.985645, 34.689919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481780, 0.117494, -0.868379,
		0.760104, 0.549134, -0.347410,
		0.436038, -0.827434, -0.353870,
		42.313953, 38.737415, 34.583759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094013, 39.423637, 34.149323>,  <42.008728, 39.316620, 34.831467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094013, 39.423637, 34.149323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150238, 39.027637, 34.154079>,  <42.183971, 38.790039, 34.156933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150238, 39.027637, 34.154079>,  <42.094013, 39.423637, 34.149323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150238, 39.027637, 34.154079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423921, -0.071034, -0.902910,
		0.894726, 0.121870, -0.429666,
		0.140558, -0.990001, 0.011893,
		42.192406, 38.730637, 34.157646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358055, 39.346947, 33.462173>,  <42.094013, 39.423637, 34.149323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358055, 39.346947, 33.462173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231640, 39.006138, 33.629112>,  <42.155788, 38.801651, 33.729275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231640, 39.006138, 33.629112>,  <42.358055, 39.346947, 33.462173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231640, 39.006138, 33.629112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414423, -0.271728, -0.868572,
		0.853446, -0.447462, -0.267220,
		-0.316042, -0.852022, 0.417344,
		42.136826, 38.750530, 33.754314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420494, 38.945538, 32.955105>,  <42.358055, 39.346947, 33.462173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420494, 38.945538, 32.955105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149166, 38.805065, 33.213268>,  <41.986370, 38.720779, 33.368168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149166, 38.805065, 33.213268>,  <42.420494, 38.945538, 32.955105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149166, 38.805065, 33.213268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625020, -0.186029, -0.758118,
		0.386303, -0.917640, -0.093309,
		-0.678321, -0.351183, 0.645407,
		41.945671, 38.699711, 33.406891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134655, 38.449669, 32.484962>,  <42.420494, 38.945538, 32.955105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134655, 38.449669, 32.484962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911385, 38.474022, 32.815956>,  <41.777424, 38.488632, 33.014553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911385, 38.474022, 32.815956>,  <42.134655, 38.449669, 32.484962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911385, 38.474022, 32.815956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829721, -0.042949, -0.556524,
		0.001663, -0.997221, 0.074481,
		-0.558176, 0.060873, 0.827487,
		41.743931, 38.492287, 33.064201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637764, 37.911076, 32.288616>,  <42.134655, 38.449669, 32.484962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637764, 37.911076, 32.288616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483658, 38.166630, 32.554970>,  <41.391193, 38.319962, 32.714783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483658, 38.166630, 32.554970>,  <41.637764, 37.911076, 32.288616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483658, 38.166630, 32.554970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864023, 0.003684, -0.503439,
		-0.324093, -0.769292, 0.550594,
		-0.385263, 0.638887, 0.665880,
		41.368080, 38.358295, 32.754734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991924, 37.659321, 32.529587>,  <41.637764, 37.911076, 32.288616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991924, 37.659321, 32.529587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979755, 38.057449, 32.566257>,  <40.972454, 38.296326, 32.588261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979755, 38.057449, 32.566257>,  <40.991924, 37.659321, 32.529587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979755, 38.057449, 32.566257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892166, 0.014312, -0.451481,
		-0.450682, -0.095529, 0.887558,
		-0.030427, 0.995324, 0.091678,
		40.970627, 38.356045, 32.593761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276615, 37.839344, 32.888588>,  <40.991924, 37.659321, 32.529587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276615, 37.839344, 32.888588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407207, 38.175991, 32.716499>,  <40.485565, 38.377979, 32.613247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407207, 38.175991, 32.716499>,  <40.276615, 37.839344, 32.888588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407207, 38.175991, 32.716499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918618, 0.175338, -0.354116,
		-0.222596, 0.510820, 0.830370,
		0.326485, 0.841617, -0.430219,
		40.505154, 38.428474, 32.587433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463467, 38.057899, 32.183453>,  <40.276615, 37.839344, 32.888588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463467, 38.057899, 32.183453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097855, 38.203045, 32.255985>,  <39.878487, 38.290131, 32.299503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097855, 38.203045, 32.255985>,  <40.463467, 38.057899, 32.183453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097855, 38.203045, 32.255985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173692, 0.053870, -0.983326,
		-0.366583, -0.930283, 0.013788,
		-0.914029, 0.362865, 0.181330,
		39.823647, 38.311905, 32.310383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771580, 37.542164, 31.590971>,  <40.463467, 38.057899, 32.183453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771580, 37.542164, 31.590971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128174, 37.722488, 31.572962>,  <41.342129, 37.830681, 31.562157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128174, 37.722488, 31.572962>,  <40.771580, 37.542164, 31.590971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128174, 37.722488, 31.572962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443813, -0.888952, -0.113115,
		-0.091015, 0.080858, -0.992562,
		0.891486, 0.450807, -0.045022,
		41.395618, 37.857731, 31.559456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267193, 37.238804, 31.010378>,  <40.771580, 37.542164, 31.590971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267193, 37.238804, 31.010378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468712, 37.388504, 31.321795>,  <41.589622, 37.478325, 31.508644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468712, 37.388504, 31.321795>,  <41.267193, 37.238804, 31.010378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468712, 37.388504, 31.321795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431175, -0.889917, 0.148780,
		0.748518, 0.260732, -0.609704,
		0.503795, 0.374253, 0.778541,
		41.619850, 37.500778, 31.555357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961277, 36.949326, 30.978374>,  <41.267193, 37.238804, 31.010378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961277, 36.949326, 30.978374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914444, 37.068981, 31.357174>,  <41.886345, 37.140774, 31.584454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914444, 37.068981, 31.357174>,  <41.961277, 36.949326, 30.978374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914444, 37.068981, 31.357174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389026, -0.863537, 0.320876,
		0.913756, 0.405978, -0.015265,
		-0.117087, 0.299141, 0.946998,
		41.879318, 37.158722, 31.641273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590302, 36.854847, 31.288738>,  <41.961277, 36.949326, 30.978374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590302, 36.854847, 31.288738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271988, 36.778454, 31.518608>,  <42.081001, 36.732616, 31.656530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271988, 36.778454, 31.518608>,  <42.590302, 36.854847, 31.288738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271988, 36.778454, 31.518608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413410, -0.864767, 0.285081,
		0.442515, 0.464439, 0.767122,
		-0.795784, -0.190983, 0.574676,
		42.033253, 36.721157, 31.691011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738323, 36.974453, 32.073128>,  <42.590302, 36.854847, 31.288738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738323, 36.974453, 32.073128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473572, 36.683727, 31.999735>,  <42.314720, 36.509293, 31.955700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473572, 36.683727, 31.999735>,  <42.738323, 36.974453, 32.073128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473572, 36.683727, 31.999735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517349, -0.620027, 0.589844,
		-0.542468, 0.295480, 0.786397,
		-0.661875, -0.726813, -0.183479,
		42.275009, 36.465683, 31.944691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437641, 36.675652, 32.717144>,  <42.738323, 36.974453, 32.073128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437641, 36.675652, 32.717144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494072, 36.449650, 32.391968>,  <42.527931, 36.314049, 32.196861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494072, 36.449650, 32.391968>,  <42.437641, 36.675652, 32.717144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494072, 36.449650, 32.391968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653753, -0.563479, 0.505073,
		-0.743441, -0.602716, 0.289877,
		0.141077, -0.565000, -0.812940,
		42.536396, 36.280151, 32.148087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991192, 36.096741, 32.667599>,  <42.437641, 36.675652, 32.717144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991192, 36.096741, 32.667599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842896, 35.978043, 33.019619>,  <42.753918, 35.906822, 33.230831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842896, 35.978043, 33.019619>,  <42.991192, 36.096741, 32.667599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842896, 35.978043, 33.019619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403611, -0.904902, -0.135092,
		0.836450, 0.305115, 0.455255,
		-0.370742, -0.296744, 0.880053,
		42.731674, 35.889019, 33.283634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077499, 35.499451, 32.929562>,  <42.991192, 36.096741, 32.667599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077499, 35.499451, 32.929562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233566, 35.137638, 32.860756>,  <43.327206, 34.920551, 32.819473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233566, 35.137638, 32.860756>,  <43.077499, 35.499451, 32.929562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233566, 35.137638, 32.860756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825303, 0.260739, 0.500890,
		-0.408219, -0.337398, 0.848245,
		0.390170, -0.904532, -0.172017,
		43.350616, 34.866280, 32.809151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294285, 35.170834, 33.614525>,  <43.077499, 35.499451, 32.929562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294285, 35.170834, 33.614525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512333, 35.023197, 33.313431>,  <43.643162, 34.934616, 33.132774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512333, 35.023197, 33.313431>,  <43.294285, 35.170834, 33.614525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512333, 35.023197, 33.313431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823483, 0.067339, 0.563330,
		-0.157234, -0.926949, 0.340652,
		0.545117, -0.369095, -0.752739,
		43.675869, 34.912468, 33.087608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665257, 34.706940, 33.923851>,  <43.294285, 35.170834, 33.614525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665257, 34.706940, 33.923851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874584, 34.787949, 33.592762>,  <44.000179, 34.836555, 33.394108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874584, 34.787949, 33.592762>,  <43.665257, 34.706940, 33.923851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874584, 34.787949, 33.592762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816025, 0.160674, 0.555235,
		0.245443, -0.966005, -0.081184,
		0.523316, 0.202527, -0.827721,
		44.031578, 34.848705, 33.344444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324638, 34.201786, 33.729088>,  <43.665257, 34.706940, 33.923851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324638, 34.201786, 33.729088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338997, 34.577957, 33.593845>,  <44.347614, 34.803658, 33.512699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338997, 34.577957, 33.593845>,  <44.324638, 34.201786, 33.729088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338997, 34.577957, 33.593845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835652, 0.157300, 0.526254,
		0.548085, -0.301428, -0.780221,
		0.035899, 0.940425, -0.338102,
		44.349766, 34.860085, 33.492416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992214, 34.273060, 33.630165>,  <44.324638, 34.201786, 33.729088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992214, 34.273060, 33.630165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839695, 34.636707, 33.697247>,  <44.748184, 34.854897, 33.737495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839695, 34.636707, 33.697247>,  <44.992214, 34.273060, 33.630165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839695, 34.636707, 33.697247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840006, 0.264967, 0.473479,
		0.386011, 0.321408, -0.864692,
		-0.381295, 0.909115, 0.167704,
		44.725307, 34.909443, 33.747559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389809, 34.902012, 33.429737>,  <44.992214, 34.273060, 33.630165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389809, 34.902012, 33.429737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157227, 35.041344, 33.723831>,  <45.017677, 35.124943, 33.900288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157227, 35.041344, 33.723831>,  <45.389809, 34.902012, 33.429737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.157227, 35.041344, 33.723831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813297, 0.272558, 0.514062,
		-0.021333, 0.896872, -0.441775,
		-0.581458, 0.348328, 0.735238,
		44.982788, 35.145844, 33.944401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479977, 35.616680, 33.508015>,  <45.389809, 34.902012, 33.429737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479977, 35.616680, 33.508015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.387253, 35.420319, 33.843937>,  <45.331619, 35.302502, 34.045490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.387253, 35.420319, 33.843937>,  <45.479977, 35.616680, 33.508015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.387253, 35.420319, 33.843937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857772, 0.304024, 0.414485,
		-0.458794, 0.816445, 0.350608,
		-0.231811, -0.490904, 0.839807,
		45.317711, 35.273048, 34.095879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586414, 36.093719, 33.934711>,  <45.479977, 35.616680, 33.508015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586414, 36.093719, 33.934711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.606571, 35.767906, 34.165882>,  <45.618664, 35.572418, 34.304585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.606571, 35.767906, 34.165882>,  <45.586414, 36.093719, 33.934711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.606571, 35.767906, 34.165882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740468, 0.418784, 0.525668,
		-0.670200, 0.401447, 0.624238,
		0.050393, -0.814531, 0.577928,
		45.621689, 35.523548, 34.339260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.924000, 36.196613, 34.614620>,  <45.586414, 36.093719, 33.934711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.924000, 36.196613, 34.614620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966259, 35.803829, 34.551895>,  <45.991615, 35.568157, 34.514259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966259, 35.803829, 34.551895>,  <45.924000, 36.196613, 34.614620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.966259, 35.803829, 34.551895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912195, 0.032914, 0.408432,
		-0.395904, -0.186194, 0.899217,
		0.105645, -0.981962, -0.156815,
		45.997952, 35.509239, 34.504852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.147682, 35.918369, 35.175713>,  <45.924000, 36.196613, 34.614620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.147682, 35.918369, 35.175713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.279629, 35.669056, 34.892105>,  <46.358795, 35.519466, 34.721939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.279629, 35.669056, 34.892105>,  <46.147682, 35.918369, 35.175713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.279629, 35.669056, 34.892105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885441, -0.056194, 0.461343,
		-0.327390, -0.779974, 0.533345,
		0.329864, -0.623284, -0.709018,
		46.378590, 35.482071, 34.679401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566978, 35.190495, 35.406502>,  <46.147682, 35.918369, 35.175713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566978, 35.190495, 35.406502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679863, 35.276684, 35.032566>,  <46.747593, 35.328396, 34.808205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679863, 35.276684, 35.032566>,  <46.566978, 35.190495, 35.406502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679863, 35.276684, 35.032566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958770, -0.097296, 0.267008,
		-0.033424, -0.971651, -0.234045,
		0.282210, 0.215471, -0.934842,
		46.764526, 35.341324, 34.752113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.105808, 34.721470, 35.236076>,  <46.566978, 35.190495, 35.406502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.105808, 34.721470, 35.236076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195477, 35.049335, 35.025211>,  <47.249279, 35.246056, 34.898693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195477, 35.049335, 35.025211>,  <47.105808, 34.721470, 35.236076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.195477, 35.049335, 35.025211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932158, -0.022540, 0.361351,
		0.284304, -0.572400, -0.769110,
		0.224173, 0.819665, -0.527159,
		47.262730, 35.295235, 34.867065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.794220, 34.640495, 34.914017>,  <47.105808, 34.721470, 35.236076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.794220, 34.640495, 34.914017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.719894, 35.022911, 35.004761>,  <47.675301, 35.252361, 35.059208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.719894, 35.022911, 35.004761>,  <47.794220, 34.640495, 34.914017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.719894, 35.022911, 35.004761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890801, 0.066471, 0.449506,
		0.414665, 0.285612, -0.863990,
		-0.185815, 0.956037, 0.226860,
		47.664150, 35.309723, 35.072819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.633148, 36.240360, 27.384403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.237751, 36.233109, 27.444481>,  <32.000515, 36.228756, 27.480528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.237751, 36.233109, 27.444481>,  <32.633148, 36.240360, 27.384403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237751, 36.233109, 27.444481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096884, 0.686633, 0.720519,
		-0.116194, 0.726778, -0.676973,
		-0.988490, -0.018132, 0.150196,
		31.941204, 36.227669, 27.489540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365204, 36.866394, 27.216385>,  <32.633148, 36.240360, 27.384403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365204, 36.866394, 27.216385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.126526, 36.704376, 27.493481>,  <31.983318, 36.607166, 27.659739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.126526, 36.704376, 27.493481>,  <32.365204, 36.866394, 27.216385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126526, 36.704376, 27.493481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120987, 0.807987, 0.576645,
		-0.793295, 0.427894, -0.433117,
		-0.596695, -0.405048, 0.692741,
		31.947517, 36.582863, 27.701303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058418, 37.440617, 27.565609>,  <32.365204, 36.866394, 27.216385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058418, 37.440617, 27.565609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.001236, 37.140385, 27.823664>,  <31.966927, 36.960247, 27.978497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.001236, 37.140385, 27.823664>,  <32.058418, 37.440617, 27.565609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001236, 37.140385, 27.823664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112596, 0.635266, 0.764042,
		-0.983304, 0.181861, -0.006301,
		-0.142952, -0.750576, 0.645136,
		31.958351, 36.915211, 28.017204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754860, 37.706818, 28.241428>,  <32.058418, 37.440617, 27.565609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754860, 37.706818, 28.241428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.823473, 37.342293, 28.391138>,  <31.864641, 37.123577, 28.480965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.823473, 37.342293, 28.391138>,  <31.754860, 37.706818, 28.241428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823473, 37.342293, 28.391138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204215, 0.404544, 0.891426,
		-0.963780, -0.076475, 0.255497,
		0.171532, -0.911315, 0.374274,
		31.874933, 37.068897, 28.503420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363379, 37.667950, 28.983301>,  <31.754860, 37.706818, 28.241428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363379, 37.667950, 28.983301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.646894, 37.390114, 28.934040>,  <31.817003, 37.223412, 28.904484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.646894, 37.390114, 28.934040>,  <31.363379, 37.667950, 28.983301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646894, 37.390114, 28.934040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193224, 0.023264, 0.980879,
		-0.678441, -0.719032, 0.150700,
		0.708789, -0.694587, -0.123151,
		31.859531, 37.181736, 28.897095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213116, 37.148891, 29.498665>,  <31.363379, 37.667950, 28.983301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213116, 37.148891, 29.498665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.601538, 37.183205, 29.409498>,  <31.834591, 37.203793, 29.355999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.601538, 37.183205, 29.409498>,  <31.213116, 37.148891, 29.498665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601538, 37.183205, 29.409498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213447, 0.107190, 0.971056,
		0.107190, -0.990531, 0.085779,
		-0.971056, -0.085779, 0.222916,
		31.892855, 37.208939, 29.342623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502068, 36.889893, 30.134386>,  <31.213116, 37.148891, 29.498665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502068, 36.889893, 30.134386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.820107, 37.037663, 29.941992>,  <32.010929, 37.126324, 29.826555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.820107, 37.037663, 29.941992>,  <31.502068, 36.889893, 30.134386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820107, 37.037663, 29.941992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398479, 0.279662, 0.873501,
		0.457204, -0.886181, 0.075152,
		0.795097, 0.369422, -0.480987,
		32.058636, 37.148487, 29.797695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037453, 36.632465, 30.569691>,  <31.502068, 36.889893, 30.134386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037453, 36.632465, 30.569691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.187626, 36.942402, 30.366249>,  <32.277729, 37.128365, 30.244184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.187626, 36.942402, 30.366249>,  <32.037453, 36.632465, 30.569691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187626, 36.942402, 30.366249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529854, 0.270814, 0.803688,
		0.760465, -0.571215, -0.308879,
		0.375430, 0.774838, -0.508605,
		32.300255, 37.174854, 30.213667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746666, 36.435585, 30.541872>,  <32.037453, 36.632465, 30.569691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746666, 36.435585, 30.541872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.707779, 36.830929, 30.495052>,  <32.684448, 37.068134, 30.466961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.707779, 36.830929, 30.495052>,  <32.746666, 36.435585, 30.541872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707779, 36.830929, 30.495052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505474, 0.150341, 0.849643,
		0.857348, 0.023434, -0.514204,
		-0.097217, 0.988356, -0.117050,
		32.678616, 37.127438, 30.459938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452488, 36.685108, 30.650599>,  <32.746666, 36.435585, 30.541872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452488, 36.685108, 30.650599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.246532, 37.028011, 30.651766>,  <33.122959, 37.233753, 30.652466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.246532, 37.028011, 30.651766>,  <33.452488, 36.685108, 30.650599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246532, 37.028011, 30.651766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741598, 0.443706, 0.503148,
		0.430030, 0.261230, -0.864195,
		-0.514886, 0.857254, 0.002920,
		33.092068, 37.285187, 30.652641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951733, 37.256416, 30.489168>,  <33.452488, 36.685108, 30.650599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951733, 37.256416, 30.489168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.643539, 37.411133, 30.691847>,  <33.458622, 37.503963, 30.813454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.643539, 37.411133, 30.691847>,  <33.951733, 37.256416, 30.489168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643539, 37.411133, 30.691847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637366, 0.480819, 0.602144,
		-0.010725, 0.786896, -0.616993,
		-0.770487, 0.386792, 0.506697,
		33.412392, 37.527172, 30.843857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185394, 37.872627, 30.545542>,  <33.951733, 37.256416, 30.489168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185394, 37.872627, 30.545542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.899029, 37.774216, 30.806904>,  <33.727211, 37.715168, 30.963720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.899029, 37.774216, 30.806904>,  <34.185394, 37.872627, 30.545542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899029, 37.774216, 30.806904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594302, 0.276434, 0.755241,
		-0.366433, 0.929008, -0.051689,
		-0.715913, -0.246026, 0.653406,
		33.684254, 37.700409, 31.002926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220230, 38.414333, 31.085581>,  <34.185394, 37.872627, 30.545542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220230, 38.414333, 31.085581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.028687, 38.109367, 31.259665>,  <33.913761, 37.926388, 31.364115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.028687, 38.109367, 31.259665>,  <34.220230, 38.414333, 31.085581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028687, 38.109367, 31.259665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456506, 0.207192, 0.865260,
		-0.749863, 0.613016, 0.248832,
		-0.478862, -0.762419, 0.435211,
		33.885029, 37.880642, 31.390228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914207, 38.704960, 31.671844>,  <34.220230, 38.414333, 31.085581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914207, 38.704960, 31.671844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.947117, 38.314140, 31.750435>,  <33.966862, 38.079647, 31.797588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.947117, 38.314140, 31.750435>,  <33.914207, 38.704960, 31.671844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947117, 38.314140, 31.750435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434397, 0.212586, 0.875275,
		-0.896957, 0.013338, 0.441918,
		0.082271, -0.977051, 0.196474,
		33.971798, 38.021027, 31.809378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929344, 38.709137, 32.432793>,  <33.914207, 38.704960, 31.671844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929344, 38.709137, 32.432793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.043362, 38.337364, 32.339058>,  <34.111771, 38.114300, 32.282818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.043362, 38.337364, 32.339058>,  <33.929344, 38.709137, 32.432793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043362, 38.337364, 32.339058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581102, -0.026860, 0.813388,
		-0.762280, -0.368024, 0.532436,
		0.285045, -0.929428, -0.234334,
		34.128876, 38.058537, 32.268757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834618, 38.271461, 33.039474>,  <33.929344, 38.709137, 32.432793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834618, 38.271461, 33.039474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.090652, 38.075806, 32.802483>,  <34.244274, 37.958412, 32.660286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.090652, 38.075806, 32.802483>,  <33.834618, 38.271461, 33.039474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090652, 38.075806, 32.802483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694789, 0.039340, 0.718137,
		-0.327959, -0.871320, 0.365028,
		0.640087, -0.489136, -0.592481,
		34.282677, 37.929066, 32.624737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296051, 37.788898, 33.472794>,  <33.834618, 38.271461, 33.039474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296051, 37.788898, 33.472794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.503498, 37.808098, 33.131329>,  <34.627964, 37.819618, 32.926449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.503498, 37.808098, 33.131329>,  <34.296051, 37.788898, 33.472794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503498, 37.808098, 33.131329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854504, -0.063421, 0.515559,
		-0.029395, -0.996832, -0.073905,
		0.518613, 0.047997, -0.853661,
		34.659081, 37.822498, 32.875229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798489, 37.258366, 33.475784>,  <34.296051, 37.788898, 33.472794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798489, 37.258366, 33.475784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.925865, 37.544064, 33.226479>,  <35.002289, 37.715481, 33.076897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.925865, 37.544064, 33.226479>,  <34.798489, 37.258366, 33.475784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925865, 37.544064, 33.226479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852569, 0.071632, 0.517682,
		0.414395, -0.696224, -0.586130,
		0.318437, 0.714241, -0.623263,
		35.021397, 37.758335, 33.039501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515667, 37.052200, 33.347115>,  <34.798489, 37.258366, 33.475784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515667, 37.052200, 33.347115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469299, 37.440605, 33.263508>,  <35.441479, 37.673649, 33.213345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469299, 37.440605, 33.263508>,  <35.515667, 37.052200, 33.347115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469299, 37.440605, 33.263508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860838, 0.203195, 0.466551,
		0.495501, -0.125850, -0.859442,
		-0.115919, 0.971017, -0.209019,
		35.434525, 37.731911, 33.200802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043209, 37.176586, 32.991646>,  <35.515667, 37.052200, 33.347115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043209, 37.176586, 32.991646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.967216, 37.555069, 33.096405>,  <35.921619, 37.782158, 33.159260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.967216, 37.555069, 33.096405>,  <36.043209, 37.176586, 32.991646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967216, 37.555069, 33.096405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908326, 0.068152, 0.412673,
		0.372627, 0.316291, -0.872416,
		-0.189981, 0.946211, 0.261900,
		35.910221, 37.838932, 33.174976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610165, 37.675137, 32.682442>,  <36.043209, 37.176586, 32.991646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610165, 37.675137, 32.682442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.463013, 37.805908, 33.030643>,  <36.374722, 37.884373, 33.239563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.463013, 37.805908, 33.030643>,  <36.610165, 37.675137, 32.682442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463013, 37.805908, 33.030643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921618, 0.003732, 0.388081,
		0.123628, 0.945040, -0.302680,
		-0.367882, 0.326933, 0.870504,
		36.352650, 37.903988, 33.291794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178192, 37.579750, 33.151043>,  <36.610165, 37.675137, 32.682442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178192, 37.579750, 33.151043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571995, 37.584656, 33.221012>,  <37.808277, 37.587601, 33.262993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571995, 37.584656, 33.221012>,  <37.178192, 37.579750, 33.151043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571995, 37.584656, 33.221012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150983, -0.566610, -0.810035,
		0.089177, 0.823895, -0.559683,
		0.984506, 0.012266, 0.174923,
		37.867348, 37.588337, 33.273487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614216, 37.862175, 32.583210>,  <37.178192, 37.579750, 33.151043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614216, 37.862175, 32.583210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870155, 37.621338, 32.774239>,  <38.023720, 37.476837, 32.888855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870155, 37.621338, 32.774239>,  <37.614216, 37.862175, 32.583210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870155, 37.621338, 32.774239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049184, -0.588078, -0.807307,
		0.766922, 0.540046, -0.346670,
		0.639852, -0.602091, 0.477572,
		38.062111, 37.440712, 32.917511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024685, 37.569771, 32.029682>,  <37.614216, 37.862175, 32.583210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024685, 37.569771, 32.029682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.134350, 37.346867, 32.343189>,  <38.200150, 37.213123, 32.531296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.134350, 37.346867, 32.343189>,  <38.024685, 37.569771, 32.029682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134350, 37.346867, 32.343189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082024, -0.798478, -0.596410,
		0.958179, 0.227801, -0.173204,
		0.274162, -0.557261, 0.783770,
		38.216599, 37.179688, 32.578320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531418, 37.294308, 31.744265>,  <38.024685, 37.569771, 32.029682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531418, 37.294308, 31.744265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416641, 37.048695, 32.038376>,  <38.347775, 36.901325, 32.214844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416641, 37.048695, 32.038376>,  <38.531418, 37.294308, 31.744265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416641, 37.048695, 32.038376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054027, -0.755958, -0.652387,
		0.956424, -0.226920, 0.183739,
		-0.286939, -0.614032, 0.735276,
		38.330559, 36.864487, 32.258957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969883, 36.702774, 31.552599>,  <38.531418, 37.294308, 31.744265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969883, 36.702774, 31.552599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662392, 36.594448, 31.784365>,  <38.477898, 36.529453, 31.923424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662392, 36.594448, 31.784365>,  <38.969883, 36.702774, 31.552599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662392, 36.594448, 31.784365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308974, -0.635962, -0.707169,
		0.559999, -0.722642, 0.405204,
		-0.768724, -0.270816, 0.579415,
		38.431774, 36.513203, 31.958189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809998, 35.988689, 31.457571>,  <38.969883, 36.702774, 31.552599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809998, 35.988689, 31.457571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470615, 36.124332, 31.620117>,  <38.266987, 36.205719, 31.717644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470615, 36.124332, 31.620117>,  <38.809998, 35.988689, 31.457571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470615, 36.124332, 31.620117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528396, -0.498662, -0.687119,
		-0.030370, -0.797710, 0.602276,
		-0.848454, 0.339108, 0.406363,
		38.216080, 36.226067, 31.742025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277325, 35.389072, 31.465685>,  <38.809998, 35.988689, 31.457571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277325, 35.389072, 31.465685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.031120, 35.700153, 31.516798>,  <37.883396, 35.886803, 31.547466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.031120, 35.700153, 31.516798>,  <38.277325, 35.389072, 31.465685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031120, 35.700153, 31.516798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691489, -0.455099, -0.561006,
		-0.378141, -0.433666, 0.817890,
		-0.615510, 0.777701, 0.127784,
		37.846466, 35.933464, 31.555132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612011, 35.159618, 31.718515>,  <38.277325, 35.389072, 31.465685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612011, 35.159618, 31.718515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535049, 35.522198, 31.568138>,  <37.488873, 35.739746, 31.477911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535049, 35.522198, 31.568138>,  <37.612011, 35.159618, 31.718515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535049, 35.522198, 31.568138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838558, -0.350855, -0.416799,
		-0.509709, 0.235060, 0.827613,
		-0.192399, 0.906448, -0.375945,
		37.477329, 35.794132, 31.455355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885818, 35.193069, 31.603161>,  <37.612011, 35.159618, 31.718515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885818, 35.193069, 31.603161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015041, 35.471493, 31.346680>,  <37.092575, 35.638546, 31.192791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015041, 35.471493, 31.346680>,  <36.885818, 35.193069, 31.603161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015041, 35.471493, 31.346680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719014, -0.260020, -0.644522,
		-0.615348, 0.669253, 0.416471,
		0.323057, 0.696054, -0.641205,
		37.111958, 35.680309, 31.154318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312008, 35.567577, 31.453554>,  <36.885818, 35.193069, 31.603161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312008, 35.567577, 31.453554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.559780, 35.622627, 31.144396>,  <36.708443, 35.655655, 30.958900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.559780, 35.622627, 31.144396>,  <36.312008, 35.567577, 31.453554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559780, 35.622627, 31.144396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708158, -0.326987, -0.625773,
		-0.338846, 0.934954, -0.105089,
		0.619432, 0.137621, -0.772893,
		36.745609, 35.663914, 30.912527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769825, 35.774715, 30.986774>,  <36.312008, 35.567577, 31.453554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769825, 35.774715, 30.986774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.093781, 35.713734, 30.760204>,  <36.288155, 35.677143, 30.624262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.093781, 35.713734, 30.760204>,  <35.769825, 35.774715, 30.986774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093781, 35.713734, 30.760204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581699, -0.333118, -0.742063,
		-0.075556, 0.930478, -0.358471,
		0.809887, -0.152455, -0.566428,
		36.336746, 35.667995, 30.590277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603554, 36.039146, 30.334288>,  <35.769825, 35.774715, 30.986774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603554, 36.039146, 30.334288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.916542, 35.802155, 30.257652>,  <36.104336, 35.659962, 30.211670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.916542, 35.802155, 30.257652>,  <35.603554, 36.039146, 30.334288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916542, 35.802155, 30.257652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449113, -0.323859, -0.832714,
		0.431315, 0.737622, -0.519500,
		0.782473, -0.592477, -0.191591,
		36.151283, 35.624413, 30.200174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777317, 36.073643, 29.634659>,  <35.603554, 36.039146, 30.334288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777317, 36.073643, 29.634659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951771, 35.724049, 29.720387>,  <36.056442, 35.514290, 29.771824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951771, 35.724049, 29.720387>,  <35.777317, 36.073643, 29.634659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951771, 35.724049, 29.720387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265797, -0.352652, -0.897212,
		0.859732, 0.334339, -0.386107,
		0.436134, -0.873987, 0.214320,
		36.082611, 35.461853, 29.784683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260429, 35.866970, 29.087559>,  <35.777317, 36.073643, 29.634659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260429, 35.866970, 29.087559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.132404, 35.545502, 29.288225>,  <36.055588, 35.352619, 29.408625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.132404, 35.545502, 29.288225>,  <36.260429, 35.866970, 29.087559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132404, 35.545502, 29.288225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368744, -0.382089, -0.847370,
		0.872689, -0.456200, -0.174056,
		-0.320065, -0.803673, 0.501666,
		36.036385, 35.304401, 29.438725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245186, 35.447193, 28.554712>,  <36.260429, 35.866970, 29.087559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245186, 35.447193, 28.554712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030598, 35.242615, 28.823225>,  <35.901844, 35.119865, 28.984333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030598, 35.242615, 28.823225>,  <36.245186, 35.447193, 28.554712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030598, 35.242615, 28.823225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631332, -0.284623, -0.721394,
		0.560020, -0.810807, -0.170205,
		-0.536467, -0.511451, 0.671283,
		35.869656, 35.089180, 29.024611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201817, 34.721741, 28.402845>,  <36.245186, 35.447193, 28.554712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201817, 34.721741, 28.402845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.887672, 34.775646, 28.644522>,  <35.699184, 34.807991, 28.789528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.887672, 34.775646, 28.644522>,  <36.201817, 34.721741, 28.402845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887672, 34.775646, 28.644522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618758, -0.200200, -0.759644,
		0.018588, -0.970443, 0.240614,
		-0.785362, 0.134762, 0.604190,
		35.652065, 34.816074, 28.825779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778641, 34.157955, 28.292349>,  <36.201817, 34.721741, 28.402845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778641, 34.157955, 28.292349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.525341, 34.422287, 28.453499>,  <35.373363, 34.580887, 28.550188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.525341, 34.422287, 28.453499>,  <35.778641, 34.157955, 28.292349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525341, 34.422287, 28.453499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660282, -0.189715, -0.726661,
		-0.403765, -0.726167, 0.556467,
		-0.633247, 0.660825, 0.402875,
		35.335365, 34.620533, 28.574362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160267, 33.796398, 28.357798>,  <35.778641, 34.157955, 28.292349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160267, 33.796398, 28.357798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061523, 34.183853, 28.369200>,  <35.002277, 34.416325, 28.376041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061523, 34.183853, 28.369200>,  <35.160267, 33.796398, 28.357798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061523, 34.183853, 28.369200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791898, -0.184685, -0.582055,
		-0.558533, -0.166257, 0.812650,
		-0.246855, 0.968633, 0.028505,
		34.987469, 34.474442, 28.377752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458691, 33.842789, 28.563070>,  <35.160267, 33.796398, 28.357798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458691, 33.842789, 28.563070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.499027, 34.197521, 28.382687>,  <34.523228, 34.410362, 28.274456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.499027, 34.197521, 28.382687>,  <34.458691, 33.842789, 28.563070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499027, 34.197521, 28.382687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839534, -0.167375, -0.516882,
		-0.533866, 0.430718, 0.727646,
		0.100841, 0.886830, -0.450958,
		34.529278, 34.463570, 28.247398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.772526, 34.028492, 28.443640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988377, 34.247402, 28.187737>,  <34.117886, 34.378750, 28.034195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988377, 34.247402, 28.187737>,  <33.772526, 34.028492, 28.443640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988377, 34.247402, 28.187737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792442, 0.073552, -0.605496,
		-0.284320, 0.833712, 0.473377,
		0.539627, 0.547279, -0.639757,
		34.150265, 34.411587, 27.995810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310349, 34.547226, 28.193695>,  <33.772526, 34.028492, 28.443640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310349, 34.547226, 28.193695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.610588, 34.582214, 27.931719>,  <33.790733, 34.603207, 27.774532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.610588, 34.582214, 27.931719>,  <33.310349, 34.547226, 28.193695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610588, 34.582214, 27.931719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657290, 0.200257, -0.726544,
		0.067601, 0.975830, 0.207809,
		0.750600, 0.087476, -0.654941,
		33.835770, 34.608456, 27.735237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098400, 35.059082, 27.719467>,  <33.310349, 34.547226, 28.193695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098400, 35.059082, 27.719467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384621, 34.858097, 27.525347>,  <33.556355, 34.737507, 27.408875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384621, 34.858097, 27.525347>,  <33.098400, 35.059082, 27.719467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384621, 34.858097, 27.525347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536749, 0.049163, -0.842309,
		0.447085, 0.863202, -0.234516,
		0.715553, -0.502460, -0.485303,
		33.599285, 34.707359, 27.379757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183990, 35.529640, 27.182600>,  <33.098400, 35.059082, 27.719467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183990, 35.529640, 27.182600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.377575, 35.201885, 27.059711>,  <33.493725, 35.005234, 26.985979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.377575, 35.201885, 27.059711>,  <33.183990, 35.529640, 27.182600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377575, 35.201885, 27.059711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509908, 0.021262, -0.859966,
		0.711176, 0.572848, -0.407521,
		0.483965, -0.819386, -0.307221,
		33.522766, 34.956070, 26.967545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200050, 35.696793, 26.423298>,  <33.183990, 35.529640, 27.182600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200050, 35.696793, 26.423298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.251259, 35.300236, 26.434212>,  <33.281986, 35.062302, 26.440760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.251259, 35.300236, 26.434212>,  <33.200050, 35.696793, 26.423298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251259, 35.300236, 26.434212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401926, -0.077015, -0.912427,
		0.906678, 0.105847, -0.408328,
		0.128025, -0.991395, 0.027285,
		33.289665, 35.002815, 26.442398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625664, 35.459488, 25.832142>,  <33.200050, 35.696793, 26.423298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625664, 35.459488, 25.832142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.407158, 35.144123, 25.945276>,  <33.276054, 34.954903, 26.013157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.407158, 35.144123, 25.945276>,  <33.625664, 35.459488, 25.832142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407158, 35.144123, 25.945276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175250, -0.222617, -0.959025,
		0.819074, -0.573449, -0.016562,
		-0.546265, -0.788415, 0.282836,
		33.243279, 34.907600, 26.030127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761398, 34.941982, 25.367397>,  <33.625664, 35.459488, 25.832142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761398, 34.941982, 25.367397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.428120, 34.796227, 25.533773>,  <33.228153, 34.708775, 25.633598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.428120, 34.796227, 25.533773>,  <33.761398, 34.941982, 25.367397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428120, 34.796227, 25.533773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270023, -0.388307, -0.881082,
		0.482568, -0.846427, 0.225142,
		-0.833196, -0.364389, 0.415940,
		33.178162, 34.686909, 25.658556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556843, 34.215500, 25.130653>,  <33.761398, 34.941982, 25.367397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556843, 34.215500, 25.130653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.205273, 34.367641, 25.245768>,  <32.994331, 34.458927, 25.314837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.205273, 34.367641, 25.245768>,  <33.556843, 34.215500, 25.130653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205273, 34.367641, 25.245768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446050, -0.441800, -0.778365,
		-0.168908, -0.812492, 0.557966,
		-0.878925, 0.380353, 0.287788,
		32.941597, 34.481747, 25.332104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120724, 33.668003, 25.104868>,  <33.556843, 34.215500, 25.130653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120724, 33.668003, 25.104868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.894875, 33.997822, 25.119406>,  <32.759365, 34.195713, 25.128128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.894875, 33.997822, 25.119406>,  <33.120724, 33.668003, 25.104868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894875, 33.997822, 25.119406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524015, -0.324112, -0.787629,
		-0.637659, -0.463757, 0.615077,
		-0.564623, 0.824549, 0.036343,
		32.725487, 34.245186, 25.130308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386211, 33.430977, 25.026743>,  <33.120724, 33.668003, 25.104868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386211, 33.430977, 25.026743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.400936, 33.822243, 24.944916>,  <32.409771, 34.057003, 24.895821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.400936, 33.822243, 24.944916>,  <32.386211, 33.430977, 25.026743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400936, 33.822243, 24.944916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512188, -0.157307, -0.844345,
		-0.858084, 0.135856, 0.495211,
		0.036810, 0.978160, -0.204567,
		32.411980, 34.115692, 24.883545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750139, 33.630550, 24.724895>,  <32.386211, 33.430977, 25.026743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750139, 33.630550, 24.724895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.993145, 33.917400, 24.588272>,  <32.138950, 34.089508, 24.506298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.993145, 33.917400, 24.588272>,  <31.750139, 33.630550, 24.724895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993145, 33.917400, 24.588272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358720, -0.135958, -0.923491,
		-0.708692, 0.683560, 0.174649,
		0.607516, 0.717120, -0.341559,
		32.175400, 34.132538, 24.485804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378143, 33.955048, 24.221748>,  <31.750139, 33.630550, 24.724895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378143, 33.955048, 24.221748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.749630, 34.055470, 24.112600>,  <31.972523, 34.115723, 24.047112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.749630, 34.055470, 24.112600>,  <31.378143, 33.955048, 24.221748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749630, 34.055470, 24.112600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279085, -0.011235, -0.960201,
		-0.244125, 0.967908, 0.059630,
		0.928716, 0.251051, -0.272872,
		32.028244, 34.130783, 24.030739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288055, 34.711220, 23.906944>,  <31.378143, 33.955048, 24.221748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288055, 34.711220, 23.906944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627468, 34.527920, 23.801117>,  <31.831116, 34.417938, 23.737621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627468, 34.527920, 23.801117>,  <31.288055, 34.711220, 23.906944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627468, 34.527920, 23.801117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229373, 0.132027, -0.964343,
		0.476842, 0.878962, 0.006919,
		0.848534, -0.458252, -0.264566,
		31.882029, 34.390446, 23.721746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549343, 35.147682, 23.410416>,  <31.288055, 34.711220, 23.906944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549343, 35.147682, 23.410416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.766117, 34.819054, 23.339617>,  <31.896181, 34.621876, 23.297138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.766117, 34.819054, 23.339617>,  <31.549343, 35.147682, 23.410416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766117, 34.819054, 23.339617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027459, 0.193183, -0.980778,
		0.839971, 0.536379, 0.082133,
		0.541935, -0.821571, -0.176997,
		31.928698, 34.572582, 23.286518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065403, 35.375515, 22.975466>,  <31.549343, 35.147682, 23.410416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065403, 35.375515, 22.975466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005161, 34.985344, 22.911131>,  <31.969017, 34.751244, 22.872530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005161, 34.985344, 22.911131>,  <32.065403, 35.375515, 22.975466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005161, 34.985344, 22.911131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088620, 0.175360, -0.980508,
		0.984614, -0.133413, -0.112851,
		-0.150602, -0.975423, -0.160839,
		31.959980, 34.692719, 22.862879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361092, 35.211536, 22.216108>,  <32.065403, 35.375515, 22.975466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361092, 35.211536, 22.216108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152176, 34.881042, 22.300539>,  <32.026825, 34.682747, 22.351196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152176, 34.881042, 22.300539>,  <32.361092, 35.211536, 22.216108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152176, 34.881042, 22.300539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335170, -0.028706, -0.941720,
		0.784140, -0.562597, -0.261935,
		-0.522290, -0.826233, 0.211075,
		31.995489, 34.633171, 22.363861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508850, 34.687874, 21.693745>,  <32.361092, 35.211536, 22.216108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508850, 34.687874, 21.693745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153065, 34.580917, 21.841990>,  <31.939592, 34.516743, 21.930937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153065, 34.580917, 21.841990>,  <32.508850, 34.687874, 21.693745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153065, 34.580917, 21.841990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356274, -0.102186, -0.928777,
		0.286217, -0.958155, -0.004373,
		-0.889466, -0.267389, 0.370613,
		31.886225, 34.500702, 21.953173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112637, 34.355965, 21.153250>,  <32.508850, 34.687874, 21.693745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112637, 34.355965, 21.153250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.820702, 34.408089, 21.421684>,  <31.645540, 34.439362, 21.582745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.820702, 34.408089, 21.421684>,  <32.112637, 34.355965, 21.153250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820702, 34.408089, 21.421684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646680, 0.186733, -0.739551,
		-0.221682, -0.973731, -0.052019,
		-0.729838, 0.130306, 0.671087,
		31.601749, 34.447182, 21.623011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636372, 34.073227, 20.847897>,  <32.112637, 34.355965, 21.153250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636372, 34.073227, 20.847897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.442860, 34.273804, 21.134815>,  <31.326752, 34.394150, 21.306967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.442860, 34.273804, 21.134815>,  <31.636372, 34.073227, 20.847897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442860, 34.273804, 21.134815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649181, 0.344065, -0.678368,
		-0.586959, -0.793835, 0.159076,
		-0.483779, 0.501444, 0.717295,
		31.297726, 34.424236, 21.350004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021093, 33.788475, 20.969456>,  <31.636372, 34.073227, 20.847897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021093, 33.788475, 20.969456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.985876, 34.168381, 21.089584>,  <30.964746, 34.396324, 21.161661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.985876, 34.168381, 21.089584>,  <31.021093, 33.788475, 20.969456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985876, 34.168381, 21.089584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603975, 0.188850, -0.774306,
		-0.792125, -0.249558, 0.557009,
		-0.088043, 0.949766, 0.300320,
		30.959463, 34.453312, 21.179680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261503, 33.971088, 20.913927>,  <31.021093, 33.788475, 20.969456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261503, 33.971088, 20.913927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.474203, 34.309666, 20.902769>,  <30.601824, 34.512810, 20.896074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.474203, 34.309666, 20.902769>,  <30.261503, 33.971088, 20.913927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474203, 34.309666, 20.902769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647397, 0.385032, -0.657744,
		-0.546002, 0.367814, 0.752725,
		0.531751, 0.846441, -0.027894,
		30.633728, 34.563599, 20.894402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740862, 34.600899, 20.843323>,  <30.261503, 33.971088, 20.913927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740862, 34.600899, 20.843323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.097864, 34.756134, 20.751396>,  <30.312065, 34.849277, 20.696239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.097864, 34.756134, 20.751396>,  <29.740862, 34.600899, 20.843323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097864, 34.756134, 20.751396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423647, 0.546474, -0.722419,
		-0.154775, 0.742125, 0.652146,
		0.892506, 0.388093, -0.229819,
		30.365616, 34.872562, 20.682451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667826, 35.318535, 20.741255>,  <29.740862, 34.600899, 20.843323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667826, 35.318535, 20.741255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.011696, 35.239132, 20.552979>,  <30.218018, 35.191490, 20.440012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.011696, 35.239132, 20.552979>,  <29.667826, 35.318535, 20.741255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011696, 35.239132, 20.552979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254174, 0.633036, -0.731205,
		0.443117, 0.748236, 0.493750,
		0.859676, -0.198511, -0.470691,
		30.269598, 35.179577, 20.411772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819632, 35.295486, 19.954332>,  <29.667826, 35.318535, 20.741255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819632, 35.295486, 19.954332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.685238, 35.671619, 19.932861>,  <29.604601, 35.897301, 19.919979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.685238, 35.671619, 19.932861>,  <29.819632, 35.295486, 19.954332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685238, 35.671619, 19.932861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203218, -0.016725, 0.978991,
		0.919683, 0.339836, 0.196712,
		-0.335986, 0.940336, -0.053679,
		29.584442, 35.953720, 19.916758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194561, 35.766392, 20.252073>,  <29.819632, 35.295486, 19.954332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194561, 35.766392, 20.252073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.823324, 35.914494, 20.267843>,  <29.600582, 36.003357, 20.277306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.823324, 35.914494, 20.267843>,  <30.194561, 35.766392, 20.252073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823324, 35.914494, 20.267843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094468, 0.131718, 0.986776,
		0.360169, 0.919543, -0.157224,
		-0.928092, 0.370259, 0.039426,
		29.544897, 36.025570, 20.279671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306601, 36.390331, 20.763090>,  <30.194561, 35.766392, 20.252073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306601, 36.390331, 20.763090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.925217, 36.276680, 20.722712>,  <29.696386, 36.208488, 20.698484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.925217, 36.276680, 20.722712>,  <30.306601, 36.390331, 20.763090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925217, 36.276680, 20.722712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141148, 0.124729, 0.982100,
		-0.266448, 0.950640, -0.159027,
		-0.953459, -0.284124, -0.100947,
		29.639179, 36.191444, 20.692427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910679, 36.866230, 21.149281>,  <30.306601, 36.390331, 20.763090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910679, 36.866230, 21.149281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.687363, 36.535172, 21.126268>,  <29.553373, 36.336536, 21.112461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.687363, 36.535172, 21.126268>,  <29.910679, 36.866230, 21.149281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687363, 36.535172, 21.126268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148042, 0.031154, 0.988490,
		-0.816329, 0.560383, -0.139920,
		-0.558293, -0.827647, -0.057528,
		29.519875, 36.286877, 21.109011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280907, 37.022373, 21.482883>,  <29.910679, 36.866230, 21.149281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280907, 37.022373, 21.482883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.285515, 36.623081, 21.506235>,  <29.288279, 36.383507, 21.520247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.285515, 36.623081, 21.506235>,  <29.280907, 37.022373, 21.482883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285515, 36.623081, 21.506235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203487, 0.054820, 0.977542,
		-0.979010, -0.023138, -0.202495,
		0.011518, -0.998228, 0.058377,
		29.288971, 36.323612, 21.523748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542246, 36.853683, 21.720201>,  <29.280907, 37.022373, 21.482883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542246, 36.853683, 21.720201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.778795, 36.544262, 21.811325>,  <28.920725, 36.358608, 21.865999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.778795, 36.544262, 21.811325>,  <28.542246, 36.853683, 21.720201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778795, 36.544262, 21.811325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269306, 0.076833, 0.959985,
		-0.760101, -0.629059, -0.162885,
		0.591372, -0.773551, 0.227810,
		28.956207, 36.312195, 21.879667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192837, 36.525951, 22.256742>,  <28.542246, 36.853683, 21.720201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192837, 36.525951, 22.256742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.561590, 36.375393, 22.293526>,  <28.782843, 36.285057, 22.315596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.561590, 36.375393, 22.293526>,  <28.192837, 36.525951, 22.256742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561590, 36.375393, 22.293526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140477, -0.103503, 0.984659,
		-0.361102, -0.920660, -0.148292,
		0.921885, -0.376394, 0.091956,
		28.838156, 36.262474, 22.321112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223803, 35.985588, 22.845463>,  <28.192837, 36.525951, 22.256742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223803, 35.985588, 22.845463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.615559, 36.054131, 22.802691>,  <28.850613, 36.095257, 22.777027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.615559, 36.054131, 22.802691>,  <28.223803, 35.985588, 22.845463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615559, 36.054131, 22.802691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150512, -0.266130, 0.952114,
		0.134690, -0.948585, -0.286436,
		0.979389, 0.171353, -0.106928,
		28.909376, 36.105537, 22.770613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415825, 35.513371, 23.219324>,  <28.223803, 35.985588, 22.845463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415825, 35.513371, 23.219324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.718210, 35.774212, 23.196411>,  <28.899641, 35.930717, 23.182663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.718210, 35.774212, 23.196411>,  <28.415825, 35.513371, 23.219324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718210, 35.774212, 23.196411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251081, -0.208031, 0.945347,
		0.604547, -0.729030, -0.320995,
		0.755963, 0.652103, -0.057281,
		28.945000, 35.969841, 23.179226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992287, 35.227592, 23.516588>,  <28.415825, 35.513371, 23.219324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992287, 35.227592, 23.516588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.098150, 35.612358, 23.543955>,  <29.161669, 35.843216, 23.560375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.098150, 35.612358, 23.543955>,  <28.992287, 35.227592, 23.516588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098150, 35.612358, 23.543955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542303, -0.207121, 0.814253,
		0.797411, -0.178396, -0.576464,
		0.264657, 0.961913, 0.068416,
		29.177547, 35.900932, 23.564480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625341, 35.206562, 23.612728>,  <28.992287, 35.227592, 23.516588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625341, 35.206562, 23.612728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.559565, 35.579674, 23.741034>,  <29.520100, 35.803539, 23.818018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.559565, 35.579674, 23.741034>,  <29.625341, 35.206562, 23.612728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559565, 35.579674, 23.741034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626749, -0.152302, 0.764192,
		0.761672, 0.326704, -0.559571,
		-0.164441, 0.932775, 0.320766,
		29.510233, 35.859505, 23.837263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345085, 35.530441, 23.782848>,  <29.625341, 35.206562, 23.612728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345085, 35.530441, 23.782848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.069817, 35.762470, 23.957176>,  <29.904655, 35.901688, 24.061773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.069817, 35.762470, 23.957176>,  <30.345085, 35.530441, 23.782848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069817, 35.762470, 23.957176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480873, -0.085146, 0.872646,
		0.543303, 0.810105, -0.220345,
		-0.688173, 0.580069, 0.435817,
		29.863365, 35.936493, 24.087921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820223, 35.918545, 24.224932>,  <30.345085, 35.530441, 23.782848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820223, 35.918545, 24.224932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438614, 35.914730, 24.344767>,  <30.209648, 35.912441, 24.416668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438614, 35.914730, 24.344767>,  <30.820223, 35.918545, 24.224932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438614, 35.914730, 24.344767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299525, -0.067983, 0.951663,
		0.011287, 0.997641, 0.067715,
		-0.954022, -0.009540, 0.299585,
		30.152407, 35.911869, 24.434643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863701, 36.310135, 24.813797>,  <30.820223, 35.918545, 24.224932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863701, 36.310135, 24.813797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.518160, 36.116882, 24.870853>,  <30.310835, 36.000931, 24.905087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.518160, 36.116882, 24.870853>,  <30.863701, 36.310135, 24.813797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518160, 36.116882, 24.870853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274881, -0.214800, 0.937177,
		-0.422140, 0.848790, 0.318359,
		-0.863851, -0.483131, 0.142640,
		30.259005, 35.971943, 24.913645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595188, 36.623375, 25.409698>,  <30.863701, 36.310135, 24.813797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595188, 36.623375, 25.409698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.413610, 36.269020, 25.371441>,  <30.304665, 36.056408, 25.348486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.413610, 36.269020, 25.371441>,  <30.595188, 36.623375, 25.409698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413610, 36.269020, 25.371441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304485, -0.255107, 0.917720,
		-0.837392, 0.387469, 0.385541,
		-0.453942, -0.885883, -0.095646,
		30.277428, 36.003254, 25.342747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054815, 36.526806, 25.888363>,  <30.595188, 36.623375, 25.409698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054815, 36.526806, 25.888363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.151834, 36.150364, 25.794132>,  <30.210045, 35.924500, 25.737593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.151834, 36.150364, 25.794132>,  <30.054815, 36.526806, 25.888363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151834, 36.150364, 25.794132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347735, -0.142358, 0.926722,
		-0.905677, -0.306692, 0.292726,
		0.242546, -0.941103, -0.235578,
		30.224598, 35.868034, 25.723459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783247, 36.099674, 26.405769>,  <30.054815, 36.526806, 25.888363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783247, 36.099674, 26.405769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.069651, 35.876247, 26.238277>,  <30.241493, 35.742191, 26.137783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.069651, 35.876247, 26.238277>,  <29.783247, 36.099674, 26.405769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069651, 35.876247, 26.238277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413005, -0.144643, 0.899169,
		-0.562815, -0.816748, 0.127127,
		0.716007, -0.558570, -0.418729,
		30.284452, 35.708675, 26.112659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863495, 35.511887, 26.811079>,  <29.783247, 36.099674, 26.405769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863495, 35.511887, 26.811079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201962, 35.557808, 26.602919>,  <30.405043, 35.585361, 26.478022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201962, 35.557808, 26.602919>,  <29.863495, 35.511887, 26.811079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201962, 35.557808, 26.602919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532787, -0.160794, 0.830833,
		0.011708, -0.980288, -0.197227,
		0.846168, 0.114808, -0.520402,
		30.455812, 35.592251, 26.446798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254971, 35.078358, 27.168766>,  <29.863495, 35.511887, 26.811079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254971, 35.078358, 27.168766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.516212, 35.316044, 26.980993>,  <30.672956, 35.458656, 26.868330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.516212, 35.316044, 26.980993>,  <30.254971, 35.078358, 27.168766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516212, 35.316044, 26.980993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608408, -0.042641, 0.792478,
		0.450884, -0.803176, -0.389373,
		0.653103, 0.594213, -0.469433,
		30.712143, 35.494308, 26.840164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967609, 34.745712, 27.292007>,  <30.254971, 35.078358, 27.168766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967609, 34.745712, 27.292007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.038216, 35.118858, 27.166399>,  <31.080580, 35.342747, 27.091034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.038216, 35.118858, 27.166399>,  <30.967609, 34.745712, 27.292007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038216, 35.118858, 27.166399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623489, 0.140896, 0.769032,
		0.761645, -0.331534, -0.556760,
		0.176515, 0.932863, -0.314021,
		31.091169, 35.398716, 27.072193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803593, 35.012890, 27.288132>,  <30.967609, 34.745712, 27.292007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803593, 35.012890, 27.288132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.541355, 35.313923, 27.312840>,  <31.384012, 35.494541, 27.327663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.541355, 35.313923, 27.312840>,  <31.803593, 35.012890, 27.288132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541355, 35.313923, 27.312840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536491, 0.406659, 0.739464,
		0.531390, 0.517926, -0.670357,
		-0.655593, 0.752584, 0.061768,
		31.344677, 35.539700, 27.331369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.556103, 34.346935, 30.240683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.397522, 34.677025, 30.079773>,  <36.302372, 34.875080, 29.983227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.397522, 34.677025, 30.079773>,  <36.556103, 34.346935, 30.240683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397522, 34.677025, 30.079773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683864, 0.557800, 0.470308,
		0.612498, -0.088643, -0.785486,
		-0.396455, 0.825228, -0.402272,
		36.278587, 34.924595, 29.959091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121052, 34.757206, 30.068771>,  <36.556103, 34.346935, 30.240683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121052, 34.757206, 30.068771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.821815, 35.022213, 30.083870>,  <36.642273, 35.181217, 30.092928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.821815, 35.022213, 30.083870>,  <37.121052, 34.757206, 30.068771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821815, 35.022213, 30.083870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591220, 0.639598, 0.491298,
		0.301352, 0.389853, -0.870173,
		-0.748095, 0.662518, 0.037745,
		36.597385, 35.220970, 30.095194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380310, 35.417713, 29.837671>,  <37.121052, 34.757206, 30.068771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380310, 35.417713, 29.837671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.065002, 35.511826, 30.065100>,  <36.875816, 35.568295, 30.201557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.065002, 35.511826, 30.065100>,  <37.380310, 35.417713, 29.837671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065002, 35.511826, 30.065100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584199, 0.576336, 0.571445,
		-0.193237, 0.782611, -0.591759,
		-0.788271, 0.235281, 0.568570,
		36.828522, 35.582409, 30.235670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519058, 36.061321, 29.966179>,  <37.380310, 35.417713, 29.837671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519058, 36.061321, 29.966179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.257065, 35.948509, 30.246593>,  <37.099869, 35.880821, 30.414843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.257065, 35.948509, 30.246593>,  <37.519058, 36.061321, 29.966179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257065, 35.948509, 30.246593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546775, 0.463462, 0.697309,
		-0.521565, 0.840037, -0.149355,
		-0.654986, -0.282028, 0.701038,
		37.060570, 35.863899, 30.456905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366749, 36.649239, 30.385714>,  <37.519058, 36.061321, 29.966179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366749, 36.649239, 30.385714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.282845, 36.328838, 30.609997>,  <37.232502, 36.136597, 30.744566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.282845, 36.328838, 30.609997>,  <37.366749, 36.649239, 30.385714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282845, 36.328838, 30.609997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533381, 0.386881, 0.752216,
		-0.819455, 0.456854, 0.346089,
		-0.209757, -0.801004, 0.560709,
		37.219917, 36.088535, 30.778210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179203, 36.924572, 30.903662>,  <37.366749, 36.649239, 30.385714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179203, 36.924572, 30.903662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.280724, 36.568325, 31.054596>,  <37.341637, 36.354576, 31.145157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.280724, 36.568325, 31.054596>,  <37.179203, 36.924572, 30.903662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280724, 36.568325, 31.054596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446127, 0.453924, 0.771313,
		-0.858227, -0.027423, 0.512537,
		0.253805, -0.890618, 0.377336,
		37.356865, 36.301140, 31.167797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199223, 37.043304, 31.587807>,  <37.179203, 36.924572, 30.903662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199223, 37.043304, 31.587807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.381809, 36.687550, 31.577726>,  <37.491360, 36.474098, 31.571678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.381809, 36.687550, 31.577726>,  <37.199223, 37.043304, 31.587807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381809, 36.687550, 31.577726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524826, 0.246269, 0.814806,
		-0.718470, -0.385156, 0.579185,
		0.456463, -0.889385, -0.025203,
		37.518749, 36.420734, 31.570166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111206, 36.665478, 32.231796>,  <37.199223, 37.043304, 31.587807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111206, 36.665478, 32.231796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.455311, 36.520546, 32.088314>,  <37.661774, 36.433586, 32.002224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.455311, 36.520546, 32.088314>,  <37.111206, 36.665478, 32.231796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455311, 36.520546, 32.088314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462374, 0.257955, 0.848333,
		-0.214846, -0.895644, 0.389440,
		0.860263, -0.362328, -0.358702,
		37.713390, 36.411846, 31.980703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354511, 36.323505, 32.754883>,  <37.111206, 36.665478, 32.231796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354511, 36.323505, 32.754883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.679867, 36.368309, 32.526550>,  <37.875080, 36.395191, 32.389549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.679867, 36.368309, 32.526550>,  <37.354511, 36.323505, 32.754883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679867, 36.368309, 32.526550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542624, 0.207572, 0.813924,
		0.209653, -0.971786, 0.108060,
		0.813391, 0.112006, -0.570833,
		37.923885, 36.401909, 32.355301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859295, 36.078037, 33.264534>,  <37.354511, 36.323505, 32.754883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859295, 36.078037, 33.264534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.022842, 36.300163, 32.974857>,  <38.120972, 36.433441, 32.801052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.022842, 36.300163, 32.974857>,  <37.859295, 36.078037, 33.264534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022842, 36.300163, 32.974857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399617, 0.604478, 0.689140,
		0.820449, -0.571163, 0.025235,
		0.408865, 0.555320, -0.724189,
		38.145500, 36.466759, 32.757599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331749, 36.482273, 33.644966>,  <37.859295, 36.078037, 33.264534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331749, 36.482273, 33.644966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291779, 36.680531, 33.299862>,  <38.267796, 36.799484, 33.092800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291779, 36.680531, 33.299862>,  <38.331749, 36.482273, 33.644966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291779, 36.680531, 33.299862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049988, 0.868506, 0.493152,
		0.993738, 0.006152, -0.111564,
		-0.099928, 0.495641, -0.862760,
		38.261799, 36.829224, 33.041035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983124, 36.903107, 33.595222>,  <38.331749, 36.482273, 33.644966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983124, 36.903107, 33.595222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.694611, 37.054482, 33.363178>,  <38.521503, 37.145306, 33.223949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.694611, 37.054482, 33.363178>,  <38.983124, 36.903107, 33.595222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694611, 37.054482, 33.363178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072644, 0.874258, 0.479996,
		0.688816, 0.304073, -0.658082,
		-0.721288, 0.378434, -0.580114,
		38.478226, 37.168011, 33.189144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183144, 37.553146, 33.525665>,  <38.983124, 36.903107, 33.595222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183144, 37.553146, 33.525665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.792118, 37.575256, 33.444355>,  <38.557503, 37.588524, 33.395569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.792118, 37.575256, 33.444355>,  <39.183144, 37.553146, 33.525665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792118, 37.575256, 33.444355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072821, 0.816804, 0.572301,
		0.197674, 0.574261, -0.794449,
		-0.977559, 0.055276, -0.203279,
		38.498852, 37.591839, 33.383369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951424, 38.266384, 33.172211>,  <39.183144, 37.553146, 33.525665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951424, 38.266384, 33.172211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.714119, 38.055035, 33.415150>,  <38.571735, 37.928226, 33.560913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.714119, 38.055035, 33.415150>,  <38.951424, 38.266384, 33.172211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714119, 38.055035, 33.415150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006420, 0.757537, 0.652760,
		-0.804984, 0.383358, -0.452809,
		-0.593261, -0.528369, 0.607345,
		38.536140, 37.896523, 33.597355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616787, 38.624992, 33.233795>,  <38.951424, 38.266384, 33.172211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616787, 38.624992, 33.233795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.858253, 38.754379, 32.942326>,  <40.003132, 38.832012, 32.767445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.858253, 38.754379, 32.942326>,  <39.616787, 38.624992, 33.233795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858253, 38.754379, 32.942326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771779, 0.007961, -0.635841,
		-0.199875, 0.946205, 0.254454,
		0.603662, 0.323471, -0.728669,
		40.039352, 38.851421, 32.723724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339573, 39.192936, 33.030807>,  <39.616787, 38.624992, 33.233795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339573, 39.192936, 33.030807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545162, 39.049648, 32.719036>,  <39.668514, 38.963676, 32.531975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545162, 39.049648, 32.719036>,  <39.339573, 39.192936, 33.030807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545162, 39.049648, 32.719036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814555, 0.081068, -0.574394,
		0.268945, 0.930111, -0.250122,
		0.513973, -0.358218, -0.779430,
		39.699356, 38.942184, 32.485207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147099, 39.662270, 32.518475>,  <39.339573, 39.192936, 33.030807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147099, 39.662270, 32.518475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.283810, 39.352016, 32.306213>,  <39.365837, 39.165867, 32.178856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.283810, 39.352016, 32.306213>,  <39.147099, 39.662270, 32.518475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283810, 39.352016, 32.306213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775688, 0.085956, -0.625235,
		0.530563, 0.625309, -0.572268,
		0.341775, -0.775629, -0.530650,
		39.386341, 39.119328, 32.147018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132786, 39.940228, 31.859137>,  <39.147099, 39.662270, 32.518475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132786, 39.940228, 31.859137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.117996, 39.540504, 31.861053>,  <39.109123, 39.300671, 31.862204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.117996, 39.540504, 31.861053>,  <39.132786, 39.940228, 31.859137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117996, 39.540504, 31.861053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849414, 0.028900, -0.526936,
		0.526431, -0.023552, -0.849892,
		-0.036972, -0.999305, 0.004791,
		39.106903, 39.240711, 31.862492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987122, 39.759499, 31.142815>,  <39.132786, 39.940228, 31.859137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987122, 39.759499, 31.142815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.894100, 39.429401, 31.348682>,  <38.838287, 39.231342, 31.472202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.894100, 39.429401, 31.348682>,  <38.987122, 39.759499, 31.142815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894100, 39.429401, 31.348682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781686, -0.156271, -0.603778,
		0.578694, -0.542721, -0.608742,
		-0.232554, -0.825248, 0.514670,
		38.824333, 39.181828, 31.503084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979450, 39.146473, 30.609503>,  <38.987122, 39.759499, 31.142815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979450, 39.146473, 30.609503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.755062, 39.024036, 30.917171>,  <38.620430, 38.950573, 31.101772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.755062, 39.024036, 30.917171>,  <38.979450, 39.146473, 30.609503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755062, 39.024036, 30.917171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760257, -0.177204, -0.624987,
		0.327603, -0.935364, -0.133303,
		-0.560968, -0.306092, 0.769170,
		38.586773, 38.932209, 31.147923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761772, 38.562908, 30.544168>,  <38.979450, 39.146473, 30.609503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761772, 38.562908, 30.544168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.477276, 38.696754, 30.791449>,  <38.306580, 38.777061, 30.939817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.477276, 38.696754, 30.791449>,  <38.761772, 38.562908, 30.544168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477276, 38.696754, 30.791449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701678, -0.285004, -0.653009,
		-0.042319, -0.898222, 0.437500,
		-0.711236, 0.334619, 0.618202,
		38.263905, 38.797142, 30.976910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234760, 38.167976, 30.316559>,  <38.761772, 38.562908, 30.544168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234760, 38.167976, 30.316559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.038300, 38.423275, 30.553677>,  <37.920425, 38.576454, 30.695948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.038300, 38.423275, 30.553677>,  <38.234760, 38.167976, 30.316559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038300, 38.423275, 30.553677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838582, -0.162308, -0.520035,
		-0.235699, -0.752521, 0.614946,
		-0.491148, 0.638254, 0.592794,
		37.890953, 38.614750, 30.731516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610729, 37.798584, 30.440580>,  <38.234760, 38.167976, 30.316559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610729, 37.798584, 30.440580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.502285, 38.164307, 30.560942>,  <37.437218, 38.383739, 30.633160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.502285, 38.164307, 30.560942>,  <37.610729, 37.798584, 30.440580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502285, 38.164307, 30.560942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890829, -0.119920, -0.438227,
		-0.364590, -0.386861, 0.847002,
		-0.271106, 0.914307, 0.300905,
		37.420952, 38.438599, 30.651213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907631, 37.705444, 30.547947>,  <37.610729, 37.798584, 30.440580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907631, 37.705444, 30.547947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.943325, 38.103539, 30.532263>,  <36.964741, 38.342396, 30.522852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.943325, 38.103539, 30.532263>,  <36.907631, 37.705444, 30.547947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943325, 38.103539, 30.532263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860239, 0.057168, -0.506676,
		-0.502022, 0.078945, 0.861244,
		0.089235, 0.995238, -0.039212,
		36.970097, 38.402111, 30.520498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259171, 38.085602, 30.693836>,  <36.907631, 37.705444, 30.547947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259171, 38.085602, 30.693836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475258, 38.343071, 30.477003>,  <36.604908, 38.497551, 30.346903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475258, 38.343071, 30.477003>,  <36.259171, 38.085602, 30.693836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475258, 38.343071, 30.477003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742637, 0.061673, -0.666849,
		-0.395801, 0.762811, 0.511332,
		0.540215, 0.643674, -0.542081,
		36.637321, 38.536175, 30.314379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840553, 38.712048, 30.604391>,  <36.259171, 38.085602, 30.693836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840553, 38.712048, 30.604391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107361, 38.697975, 30.306705>,  <36.267445, 38.689529, 30.128094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107361, 38.697975, 30.306705>,  <35.840553, 38.712048, 30.604391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107361, 38.697975, 30.306705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742812, 0.045856, -0.667928,
		0.057627, 0.998329, 0.004452,
		0.667015, -0.035184, -0.744213,
		36.307465, 38.687420, 30.083441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524406, 39.138882, 30.025280>,  <35.840553, 38.712048, 30.604391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524406, 39.138882, 30.025280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.811516, 38.929054, 29.842140>,  <35.983784, 38.803158, 29.732256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.811516, 38.929054, 29.842140>,  <35.524406, 39.138882, 30.025280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811516, 38.929054, 29.842140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532747, 0.009624, -0.846220,
		0.448303, 0.851316, -0.272552,
		0.717778, -0.524565, -0.457850,
		36.026848, 38.771687, 29.704784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604210, 39.499969, 29.406523>,  <35.524406, 39.138882, 30.025280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604210, 39.499969, 29.406523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.742813, 39.128090, 29.356581>,  <35.825974, 38.904961, 29.326614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.742813, 39.128090, 29.356581>,  <35.604210, 39.499969, 29.406523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742813, 39.128090, 29.356581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414849, -0.032498, -0.909310,
		0.841329, 0.366878, -0.396946,
		0.346506, -0.929701, -0.124857,
		35.846764, 38.849178, 29.319124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426563, 40.138279, 29.255932>,  <35.604210, 39.499969, 29.406523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426563, 40.138279, 29.255932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.146595, 40.421169, 29.216030>,  <34.978615, 40.590904, 29.192089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.146595, 40.421169, 29.216030>,  <35.426563, 40.138279, 29.255932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146595, 40.421169, 29.216030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093897, 0.229569, 0.968753,
		0.708023, 0.668682, -0.227085,
		-0.699919, 0.707222, -0.099753,
		34.936619, 40.633335, 29.186104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699692, 40.694977, 29.548731>,  <35.426563, 40.138279, 29.255932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699692, 40.694977, 29.548731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.302608, 40.742790, 29.554977>,  <35.064358, 40.771477, 29.558725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.302608, 40.742790, 29.554977>,  <35.699692, 40.694977, 29.548731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302608, 40.742790, 29.554977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033882, 0.152361, 0.987744,
		0.115687, 0.981070, -0.155300,
		-0.992708, 0.119531, 0.015615,
		35.004795, 40.778648, 29.559662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625641, 41.298878, 29.774406>,  <35.699692, 40.694977, 29.548731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625641, 41.298878, 29.774406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.252258, 41.168922, 29.835203>,  <35.028229, 41.090950, 29.871681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.252258, 41.168922, 29.835203>,  <35.625641, 41.298878, 29.774406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252258, 41.168922, 29.835203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036203, 0.336246, 0.941078,
		-0.356849, 0.883962, -0.302111,
		-0.933460, -0.324885, 0.151991,
		34.972221, 41.071457, 29.880800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284821, 41.849827, 30.001995>,  <35.625641, 41.298878, 29.774406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284821, 41.849827, 30.001995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.088737, 41.521763, 30.120003>,  <34.971088, 41.324924, 30.190807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.088737, 41.521763, 30.120003>,  <35.284821, 41.849827, 30.001995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088737, 41.521763, 30.120003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106222, 0.392170, 0.913740,
		-0.865111, 0.416582, -0.279363,
		-0.490205, -0.820160, 0.295020,
		34.941677, 41.275715, 30.208509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742256, 42.166340, 30.386393>,  <35.284821, 41.849827, 30.001995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742256, 42.166340, 30.386393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.807209, 41.784786, 30.487375>,  <34.846180, 41.555855, 30.547964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.807209, 41.784786, 30.487375>,  <34.742256, 42.166340, 30.386393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807209, 41.784786, 30.487375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050344, 0.247509, 0.967577,
		-0.985442, -0.169829, -0.007831,
		0.162384, -0.953886, 0.252456,
		34.855923, 41.498619, 30.563112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301033, 42.047340, 30.900660>,  <34.742256, 42.166340, 30.386393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301033, 42.047340, 30.900660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.574310, 41.761642, 30.961464>,  <34.738277, 41.590225, 30.997948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.574310, 41.761642, 30.961464>,  <34.301033, 42.047340, 30.900660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574310, 41.761642, 30.961464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003734, 0.204749, 0.978807,
		-0.730229, -0.669281, 0.137216,
		0.683192, -0.714242, 0.152012,
		34.779266, 41.547371, 31.007067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101864, 41.711216, 31.580902>,  <34.301033, 42.047340, 30.900660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101864, 41.711216, 31.580902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.478924, 41.591740, 31.521313>,  <34.705158, 41.520054, 31.485559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.478924, 41.591740, 31.521313>,  <34.101864, 41.711216, 31.580902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478924, 41.591740, 31.521313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129314, -0.084657, 0.987983,
		-0.307713, -0.950588, -0.041177,
		0.942651, -0.298690, -0.148974,
		34.761719, 41.502132, 31.476620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196320, 41.164501, 31.962032>,  <34.101864, 41.711216, 31.580902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196320, 41.164501, 31.962032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.569847, 41.292027, 31.897106>,  <34.793964, 41.368542, 31.858150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.569847, 41.292027, 31.897106>,  <34.196320, 41.164501, 31.962032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569847, 41.292027, 31.897106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184197, -0.039507, 0.982095,
		0.306691, -0.946994, -0.095616,
		0.933816, 0.318812, -0.162317,
		34.849991, 41.387669, 31.848412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561535, 40.804806, 32.424480>,  <34.196320, 41.164501, 31.962032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561535, 40.804806, 32.424480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.815311, 41.102310, 32.340290>,  <34.967579, 41.280811, 32.289776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.815311, 41.102310, 32.340290>,  <34.561535, 40.804806, 32.424480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815311, 41.102310, 32.340290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168756, 0.132453, 0.976718,
		0.754324, -0.655190, -0.041481,
		0.634442, 0.743762, -0.210480,
		35.005646, 41.325439, 32.277145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137238, 40.730724, 32.874031>,  <34.561535, 40.804806, 32.424480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137238, 40.730724, 32.874031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.170860, 41.112682, 32.760117>,  <35.191032, 41.341858, 32.691769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.170860, 41.112682, 32.760117>,  <35.137238, 40.730724, 32.874031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170860, 41.112682, 32.760117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152385, 0.270116, 0.950692,
		0.984740, -0.123306, -0.122808,
		0.084054, 0.954899, -0.284784,
		35.196075, 41.399151, 32.674683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634224, 40.911240, 33.244682>,  <35.137238, 40.730724, 32.874031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634224, 40.911240, 33.244682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.443108, 41.245892, 33.137527>,  <35.328438, 41.446682, 33.073235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.443108, 41.245892, 33.137527>,  <35.634224, 40.911240, 33.244682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443108, 41.245892, 33.137527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068027, 0.339270, 0.938226,
		0.875838, 0.430048, -0.219012,
		-0.477786, 0.836633, -0.267890,
		35.299770, 41.496883, 33.057159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026970, 41.551537, 33.438152>,  <35.634224, 40.911240, 33.244682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026970, 41.551537, 33.438152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.637783, 41.643349, 33.427952>,  <35.404270, 41.698437, 33.421833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.637783, 41.643349, 33.427952>,  <36.026970, 41.551537, 33.438152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637783, 41.643349, 33.427952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057042, 0.345848, 0.936555,
		0.223786, 0.909783, -0.349591,
		-0.972968, 0.229530, -0.025500,
		35.345894, 41.712208, 33.420303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.949490, 41.239349, 25.590643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555870, 41.193279, 25.644873>,  <35.319698, 41.165638, 25.677410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555870, 41.193279, 25.644873>,  <35.949490, 41.239349, 25.590643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555870, 41.193279, 25.644873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120437, 0.129543, 0.984232,
		-0.130918, 0.984862, -0.113606,
		-0.984051, -0.115171, 0.135573,
		35.260654, 41.158730, 25.685545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822769, 41.640720, 26.125559>,  <35.949490, 41.239349, 25.590643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822769, 41.640720, 26.125559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498573, 41.408463, 26.094685>,  <35.304058, 41.269108, 26.076160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498573, 41.408463, 26.094685>,  <35.822769, 41.640720, 26.125559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498573, 41.408463, 26.094685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106213, 0.016092, 0.994213,
		-0.576045, 0.813996, -0.074714,
		-0.810488, -0.580648, -0.077187,
		35.255428, 41.234268, 26.071529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351517, 41.932835, 26.576576>,  <35.822769, 41.640720, 26.125559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351517, 41.932835, 26.576576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243027, 41.552338, 26.517818>,  <35.177933, 41.324039, 26.482565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243027, 41.552338, 26.517818>,  <35.351517, 41.932835, 26.576576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243027, 41.552338, 26.517818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133271, -0.114029, 0.984498,
		-0.953244, 0.286599, -0.095845,
		-0.271227, -0.951240, -0.146893,
		35.161659, 41.266964, 26.473751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745728, 41.892673, 26.933962>,  <35.351517, 41.932835, 26.576576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745728, 41.892673, 26.933962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837791, 41.504227, 26.908787>,  <34.893032, 41.271160, 26.893682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837791, 41.504227, 26.908787>,  <34.745728, 41.892673, 26.933962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837791, 41.504227, 26.908787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220546, -0.115042, 0.968568,
		-0.947832, -0.209048, -0.240654,
		0.230163, -0.971115, -0.062936,
		34.906841, 41.212891, 26.889906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057667, 41.377029, 27.083107>,  <34.745728, 41.892673, 26.933962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057667, 41.377029, 27.083107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404976, 41.186310, 27.137909>,  <34.613361, 41.071880, 27.170792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404976, 41.186310, 27.137909>,  <34.057667, 41.377029, 27.083107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404976, 41.186310, 27.137909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298927, -0.282437, 0.911522,
		-0.395916, -0.832402, -0.387759,
		0.868270, -0.476798, 0.137006,
		34.665459, 41.043270, 27.179010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862339, 40.704147, 27.369297>,  <34.057667, 41.377029, 27.083107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862339, 40.704147, 27.369297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248333, 40.766235, 27.453869>,  <34.479931, 40.803486, 27.504612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248333, 40.766235, 27.453869>,  <33.862339, 40.704147, 27.369297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248333, 40.766235, 27.453869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195341, -0.112642, 0.974245,
		0.175038, -0.981437, -0.078378,
		0.964989, 0.155219, 0.211432,
		34.537830, 40.812801, 27.517298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987198, 40.189537, 27.831041>,  <33.862339, 40.704147, 27.369297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987198, 40.189537, 27.831041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289875, 40.439129, 27.909081>,  <34.471481, 40.588882, 27.955904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289875, 40.439129, 27.909081>,  <33.987198, 40.189537, 27.831041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289875, 40.439129, 27.909081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142752, -0.133518, 0.980711,
		0.637990, -0.769952, -0.011959,
		0.756697, 0.623976, 0.195096,
		34.516884, 40.626320, 27.967609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365383, 39.864498, 28.381781>,  <33.987198, 40.189537, 27.831041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365383, 39.864498, 28.381781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500607, 40.240589, 28.398230>,  <34.581741, 40.466244, 28.408098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500607, 40.240589, 28.398230>,  <34.365383, 39.864498, 28.381781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500607, 40.240589, 28.398230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218968, -0.121076, 0.968191,
		0.915296, -0.318305, -0.246810,
		0.338063, 0.940225, 0.041122,
		34.602024, 40.522655, 28.410566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029659, 39.832104, 28.671791>,  <34.365383, 39.864498, 28.381781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029659, 39.832104, 28.671791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898247, 40.206455, 28.722717>,  <34.819401, 40.431065, 28.753273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898247, 40.206455, 28.722717>,  <35.029659, 39.832104, 28.671791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898247, 40.206455, 28.722717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261758, -0.039299, 0.964333,
		0.907498, 0.350136, -0.232062,
		-0.328528, 0.935874, 0.127314,
		34.799686, 40.487217, 28.760912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772121, 39.487450, 28.676268>,  <35.029659, 39.832104, 28.671791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772121, 39.487450, 28.676268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733219, 39.117645, 28.823683>,  <35.709877, 38.895763, 28.912132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733219, 39.117645, 28.823683>,  <35.772121, 39.487450, 28.676268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733219, 39.117645, 28.823683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376731, -0.308543, -0.873427,
		0.921203, -0.223786, -0.318284,
		-0.097257, -0.924511, 0.368538,
		35.704041, 38.840290, 28.934244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936337, 39.068806, 28.177052>,  <35.772121, 39.487450, 28.676268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936337, 39.068806, 28.177052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726006, 38.817169, 28.406052>,  <35.599808, 38.666187, 28.543453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726006, 38.817169, 28.406052>,  <35.936337, 39.068806, 28.177052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726006, 38.817169, 28.406052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418199, -0.394895, -0.818026,
		0.740688, -0.669558, -0.055438,
		-0.525824, -0.629087, 0.572503,
		35.568260, 38.628445, 28.577803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157104, 38.396324, 27.883860>,  <35.936337, 39.068806, 28.177052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157104, 38.396324, 27.883860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814690, 38.353760, 28.086199>,  <35.609241, 38.328220, 28.207602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814690, 38.353760, 28.086199>,  <36.157104, 38.396324, 27.883860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814690, 38.353760, 28.086199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401417, -0.479708, -0.780221,
		0.325685, -0.870951, 0.367931,
		-0.856034, -0.106413, 0.505848,
		35.557880, 38.321835, 28.237953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115623, 37.666565, 27.996237>,  <36.157104, 38.396324, 27.883860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115623, 37.666565, 27.996237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755184, 37.833370, 28.043777>,  <35.538921, 37.933453, 28.072302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755184, 37.833370, 28.043777>,  <36.115623, 37.666565, 27.996237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755184, 37.833370, 28.043777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328454, -0.477470, -0.814948,
		-0.283093, -0.773385, 0.567216,
		-0.901097, 0.417011, 0.118853,
		35.484856, 37.958473, 28.079433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728775, 37.229877, 27.768801>,  <36.115623, 37.666565, 27.996237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728775, 37.229877, 27.768801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479462, 37.542179, 27.751196>,  <35.329872, 37.729561, 27.740633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479462, 37.542179, 27.751196>,  <35.728775, 37.229877, 27.768801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479462, 37.542179, 27.751196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294310, -0.286352, -0.911803,
		-0.724499, -0.555359, 0.408263,
		-0.623284, 0.780756, -0.044014,
		35.292477, 37.776405, 27.737991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154724, 36.959511, 27.398952>,  <35.728775, 37.229877, 27.768801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154724, 36.959511, 27.398952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071442, 37.350487, 27.384735>,  <35.021473, 37.585072, 27.376205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071442, 37.350487, 27.384735>,  <35.154724, 36.959511, 27.398952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071442, 37.350487, 27.384735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373564, -0.113054, -0.920689,
		-0.903936, -0.178415, 0.388674,
		-0.208206, 0.977439, -0.035544,
		35.008980, 37.643719, 27.374071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319530, 37.090561, 27.366659>,  <35.154724, 36.959511, 27.398952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319530, 37.090561, 27.366659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523342, 37.396458, 27.208902>,  <34.645630, 37.579994, 27.114248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523342, 37.396458, 27.208902>,  <34.319530, 37.090561, 27.366659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523342, 37.396458, 27.208902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465732, -0.140290, -0.873735,
		-0.723512, 0.628877, 0.284683,
		0.509534, 0.764743, -0.394390,
		34.676201, 37.625881, 27.090586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843449, 37.435776, 26.822241>,  <34.319530, 37.090561, 27.366659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843449, 37.435776, 26.822241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217911, 37.539051, 26.726789>,  <34.442589, 37.601017, 26.669518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217911, 37.539051, 26.726789>,  <33.843449, 37.435776, 26.822241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217911, 37.539051, 26.726789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200887, -0.164208, -0.965754,
		-0.288529, 0.952038, -0.101859,
		0.936160, 0.258186, -0.238631,
		34.498760, 37.616508, 26.655201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789066, 37.820686, 26.221794>,  <33.843449, 37.435776, 26.822241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789066, 37.820686, 26.221794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180061, 37.736404, 26.226332>,  <34.414658, 37.685837, 26.229053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180061, 37.736404, 26.226332>,  <33.789066, 37.820686, 26.221794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180061, 37.736404, 26.226332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002966, -0.067479, -0.997716,
		0.210987, 0.975218, -0.066585,
		0.977484, -0.210703, 0.011344,
		34.473305, 37.673195, 26.229734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080967, 38.259300, 25.707754>,  <33.789066, 37.820686, 26.221794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080967, 38.259300, 25.707754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354286, 37.970005, 25.747822>,  <34.518276, 37.796429, 25.771862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354286, 37.970005, 25.747822>,  <34.080967, 38.259300, 25.707754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354286, 37.970005, 25.747822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036907, -0.171226, -0.984540,
		0.729210, 0.669034, -0.143690,
		0.683294, -0.723240, 0.100168,
		34.559273, 37.753033, 25.777872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565277, 38.390167, 25.195562>,  <34.080967, 38.259300, 25.707754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565277, 38.390167, 25.195562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570992, 38.007614, 25.312273>,  <34.574421, 37.778084, 25.382299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570992, 38.007614, 25.312273>,  <34.565277, 38.390167, 25.195562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570992, 38.007614, 25.312273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050094, -0.292126, -0.955067,
		0.998642, -0.000969, -0.052084,
		0.014289, -0.956379, 0.291778,
		34.575279, 37.720699, 25.399807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176067, 38.042725, 24.780191>,  <34.565277, 38.390167, 25.195562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176067, 38.042725, 24.780191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919441, 37.761646, 24.903229>,  <34.765465, 37.592999, 24.977051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919441, 37.761646, 24.903229>,  <35.176067, 38.042725, 24.780191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919441, 37.761646, 24.903229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065217, -0.449517, -0.890888,
		0.764289, -0.551505, 0.334223,
		-0.641568, -0.702693, 0.307593,
		34.726971, 37.550838, 24.995506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464920, 37.354950, 24.531199>,  <35.176067, 38.042725, 24.780191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464920, 37.354950, 24.531199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076427, 37.291134, 24.601913>,  <34.843330, 37.252842, 24.644342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076427, 37.291134, 24.601913>,  <35.464920, 37.354950, 24.531199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076427, 37.291134, 24.601913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077321, -0.490883, -0.867788,
		0.225232, -0.856493, 0.464425,
		-0.971232, -0.159544, 0.176787,
		34.785057, 37.243271, 24.654949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291477, 36.618767, 24.260950>,  <35.464920, 37.354950, 24.531199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291477, 36.618767, 24.260950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934422, 36.796974, 24.288374>,  <34.720188, 36.903900, 24.304829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934422, 36.796974, 24.288374>,  <35.291477, 36.618767, 24.260950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934422, 36.796974, 24.288374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273042, -0.413391, -0.868652,
		-0.358656, -0.794117, 0.490656,
		-0.892644, 0.445517, 0.068562,
		34.666630, 36.930630, 24.308941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.631556, 38.349010, 26.984684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.987892, 38.477737, 26.856411>,  <29.201694, 38.554974, 26.779448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.987892, 38.477737, 26.856411>,  <28.631556, 38.349010, 26.984684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987892, 38.477737, 26.856411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355650, -0.054769, 0.933013,
		0.282697, -0.945216, -0.163245,
		0.890840, 0.321818, -0.320682,
		29.255144, 38.574284, 26.760206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076839, 37.989628, 27.380114>,  <28.631556, 38.349010, 26.984684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076839, 37.989628, 27.380114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.306789, 38.283371, 27.235758>,  <29.444759, 38.459618, 27.149143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.306789, 38.283371, 27.235758>,  <29.076839, 37.989628, 27.380114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306789, 38.283371, 27.235758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428962, 0.105108, 0.897187,
		0.696785, -0.670579, -0.254586,
		0.574876, 0.734354, -0.360891,
		29.479252, 38.503677, 27.127491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701462, 37.859043, 27.502647>,  <29.076839, 37.989628, 27.380114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701462, 37.859043, 27.502647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.694901, 38.258797, 27.490198>,  <29.690964, 38.498650, 27.482729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.694901, 38.258797, 27.490198>,  <29.701462, 37.859043, 27.502647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694901, 38.258797, 27.490198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509203, 0.035136, 0.859929,
		0.860490, -0.001743, -0.509464,
		-0.016402, 0.999381, -0.031121,
		29.689980, 38.558613, 27.480862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223166, 38.035957, 27.822376>,  <29.701462, 37.859043, 27.502647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223166, 38.035957, 27.822376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.054169, 38.398449, 27.816090>,  <29.952770, 38.615944, 27.812317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.054169, 38.398449, 27.816090>,  <30.223166, 38.035957, 27.822376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054169, 38.398449, 27.816090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527007, 0.259727, 0.809200,
		0.737404, 0.333597, -0.587323,
		-0.422491, 0.906231, -0.015716,
		29.927422, 38.670319, 27.811375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782913, 38.516121, 28.035084>,  <30.223166, 38.035957, 27.822376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782913, 38.516121, 28.035084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.463238, 38.755108, 28.061401>,  <30.271433, 38.898502, 28.077192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.463238, 38.755108, 28.061401>,  <30.782913, 38.516121, 28.035084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463238, 38.755108, 28.061401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391503, 0.434352, 0.811211,
		0.456096, 0.674069, -0.581040,
		-0.799188, 0.597469, 0.065794,
		30.223482, 38.934349, 28.081141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014381, 39.153942, 28.114264>,  <30.782913, 38.516121, 28.035084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014381, 39.153942, 28.114264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.651123, 39.170704, 28.280884>,  <30.433168, 39.180759, 28.380856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.651123, 39.170704, 28.280884>,  <31.014381, 39.153942, 28.114264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651123, 39.170704, 28.280884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418482, 0.119328, 0.900352,
		-0.011978, 0.991970, -0.125904,
		-0.908146, 0.041904, 0.416551,
		30.378679, 39.183273, 28.405849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981737, 39.840336, 28.573090>,  <31.014381, 39.153942, 28.114264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981737, 39.840336, 28.573090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.702549, 39.589012, 28.710535>,  <30.535036, 39.438217, 28.793003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.702549, 39.589012, 28.710535>,  <30.981737, 39.840336, 28.573090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702549, 39.589012, 28.710535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389377, 0.069735, 0.918435,
		-0.601021, 0.774834, 0.195975,
		-0.697968, -0.628306, 0.343615,
		30.493158, 39.400520, 28.813620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591763, 40.262688, 29.111559>,  <30.981737, 39.840336, 28.573090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591763, 40.262688, 29.111559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.539490, 39.871109, 29.174274>,  <30.508125, 39.636162, 29.211903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.539490, 39.871109, 29.174274>,  <30.591763, 40.262688, 29.111559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539490, 39.871109, 29.174274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140560, 0.138251, 0.980372,
		-0.981410, 0.150154, 0.119534,
		-0.130682, -0.978948, 0.156787,
		30.500286, 39.577423, 29.221310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122519, 40.241070, 29.726425>,  <30.591763, 40.262688, 29.111559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122519, 40.241070, 29.726425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.286459, 39.878883, 29.682318>,  <30.384823, 39.661572, 29.655853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.286459, 39.878883, 29.682318>,  <30.122519, 40.241070, 29.726425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286459, 39.878883, 29.682318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242996, -0.008138, 0.969993,
		-0.879190, -0.424349, 0.216688,
		0.409852, -0.905462, -0.110270,
		30.409414, 39.607246, 29.649237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968855, 39.896904, 30.324484>,  <30.122519, 40.241070, 29.726425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968855, 39.896904, 30.324484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.282265, 39.689308, 30.187817>,  <30.470310, 39.564751, 30.105816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.282265, 39.689308, 30.187817>,  <29.968855, 39.896904, 30.324484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282265, 39.689308, 30.187817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376080, -0.041614, 0.925652,
		-0.494625, -0.853765, 0.162577,
		0.783524, -0.518993, -0.341668,
		30.517323, 39.533611, 30.085316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104403, 39.343952, 30.789558>,  <29.968855, 39.896904, 30.324484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104403, 39.343952, 30.789558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.448250, 39.347797, 30.585220>,  <30.654558, 39.350105, 30.462618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.448250, 39.347797, 30.585220>,  <30.104403, 39.343952, 30.789558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448250, 39.347797, 30.585220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491318, -0.289925, 0.821310,
		-0.140212, -0.957001, -0.253947,
		0.859621, 0.009611, -0.510843,
		30.706137, 39.350681, 30.431967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477911, 38.792877, 31.194311>,  <30.104403, 39.343952, 30.789558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477911, 38.792877, 31.194311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.739946, 39.028904, 31.005554>,  <30.897167, 39.170521, 30.892300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.739946, 39.028904, 31.005554>,  <30.477911, 38.792877, 31.194311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739946, 39.028904, 31.005554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622946, -0.068385, 0.779270,
		0.427548, -0.804455, -0.412376,
		0.655088, 0.590064, -0.471894,
		30.936472, 39.205921, 30.863985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039539, 38.492741, 31.309124>,  <30.477911, 38.792877, 31.194311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039539, 38.492741, 31.309124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.212856, 38.841389, 31.217447>,  <31.316847, 39.050579, 31.162441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.212856, 38.841389, 31.217447>,  <31.039539, 38.492741, 31.309124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212856, 38.841389, 31.217447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463504, 0.002584, 0.886091,
		0.772930, -0.490170, -0.402881,
		0.433294, 0.871623, -0.229193,
		31.342844, 39.102875, 31.148689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791689, 38.431271, 31.421999>,  <31.039539, 38.492741, 31.309124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791689, 38.431271, 31.421999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.691902, 38.818489, 31.432178>,  <31.632030, 39.050819, 31.438286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.691902, 38.818489, 31.432178>,  <31.791689, 38.431271, 31.421999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691902, 38.818489, 31.432178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259465, 0.041497, 0.964861,
		0.932976, 0.247303, -0.261526,
		-0.249465, 0.968049, 0.025451,
		31.617064, 39.108902, 31.439814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345371, 38.302277, 30.903475>,  <31.791689, 38.431271, 31.421999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345371, 38.302277, 30.903475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.556404, 37.969776, 30.833414>,  <32.683025, 37.770275, 30.791378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.556404, 37.969776, 30.833414>,  <32.345371, 38.302277, 30.903475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556404, 37.969776, 30.833414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553607, -0.180045, -0.813082,
		0.644339, 0.525935, -0.555175,
		0.527585, -0.831250, -0.175151,
		32.714680, 37.720402, 30.780869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561195, 38.431538, 30.190180>,  <32.345371, 38.302277, 30.903475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561195, 38.431538, 30.190180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.594051, 38.042267, 30.276133>,  <32.613766, 37.808704, 30.327705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.594051, 38.042267, 30.276133>,  <32.561195, 38.431538, 30.190180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594051, 38.042267, 30.276133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446530, -0.228696, -0.865049,
		0.890991, -0.024897, -0.453339,
		0.082139, -0.973180, 0.214883,
		32.618694, 37.750313, 30.340597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674606, 38.300766, 29.565172>,  <32.561195, 38.431538, 30.190180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674606, 38.300766, 29.565172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.595387, 37.957157, 29.754002>,  <32.547855, 37.750992, 29.867300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.595387, 37.957157, 29.754002>,  <32.674606, 38.300766, 29.565172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595387, 37.957157, 29.754002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251417, -0.420982, -0.871530,
		0.947400, -0.291294, -0.132598,
		-0.198049, -0.859024, 0.472074,
		32.535973, 37.699451, 29.895624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965816, 37.821217, 29.203045>,  <32.674606, 38.300766, 29.565172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965816, 37.821217, 29.203045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.679310, 37.617790, 29.394175>,  <32.507404, 37.495735, 29.508852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.679310, 37.617790, 29.394175>,  <32.965816, 37.821217, 29.203045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679310, 37.617790, 29.394175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157756, -0.548999, -0.820800,
		0.679760, -0.663293, 0.313001,
		-0.716268, -0.508569, 0.477826,
		32.464428, 37.465221, 29.537523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134583, 37.129395, 29.039679>,  <32.965816, 37.821217, 29.203045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134583, 37.129395, 29.039679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.742329, 37.167698, 29.108017>,  <32.506977, 37.190681, 29.149019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.742329, 37.167698, 29.108017>,  <33.134583, 37.129395, 29.039679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742329, 37.167698, 29.108017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195827, -0.493618, -0.847345,
		0.003188, -0.864391, 0.502811,
		-0.980633, 0.095762, 0.170844,
		32.448139, 37.196426, 29.159269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905975, 36.400799, 28.949286>,  <33.134583, 37.129395, 29.039679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905975, 36.400799, 28.949286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.575954, 36.625004, 28.920687>,  <32.377941, 36.759525, 28.903528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.575954, 36.625004, 28.920687>,  <32.905975, 36.400799, 28.949286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575954, 36.625004, 28.920687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272466, -0.505487, -0.818685,
		-0.495005, -0.655991, 0.569776,
		-0.825065, 0.560498, -0.071484,
		32.328438, 36.793159, 28.899237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369141, 35.987835, 28.890465>,  <32.905975, 36.400799, 28.949286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369141, 35.987835, 28.890465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.229439, 36.334801, 28.748699>,  <32.145618, 36.542980, 28.663641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.229439, 36.334801, 28.748699>,  <32.369141, 35.987835, 28.890465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229439, 36.334801, 28.748699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326728, -0.467225, -0.821553,
		-0.878221, -0.171133, 0.446590,
		-0.349253, 0.867418, -0.354413,
		32.124664, 36.595028, 28.642376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608549, 35.886478, 28.746824>,  <32.369141, 35.987835, 28.890465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608549, 35.886478, 28.746824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.729130, 36.190907, 28.517075>,  <31.801477, 36.373562, 28.379225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.729130, 36.190907, 28.517075>,  <31.608549, 35.886478, 28.746824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729130, 36.190907, 28.517075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482063, -0.398083, -0.780478,
		-0.822644, 0.512160, 0.246879,
		0.301451, 0.761067, -0.574374,
		31.819565, 36.419228, 28.344763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990873, 35.989006, 28.415070>,  <31.608549, 35.886478, 28.746824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990873, 35.989006, 28.415070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.285990, 36.180954, 28.225170>,  <31.463060, 36.296124, 28.111231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.285990, 36.180954, 28.225170>,  <30.990873, 35.989006, 28.415070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285990, 36.180954, 28.225170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279362, -0.423183, -0.861901,
		-0.614508, 0.768530, -0.178162,
		0.737792, 0.479874, -0.474747,
		31.507328, 36.324917, 28.082747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694769, 36.093758, 27.811607>,  <30.990873, 35.989006, 28.415070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694769, 36.093758, 27.811607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.081238, 36.148808, 27.724365>,  <31.313120, 36.181839, 27.672020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.081238, 36.148808, 27.724365>,  <30.694769, 36.093758, 27.811607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081238, 36.148808, 27.724365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106584, -0.557027, -0.823627,
		-0.234841, 0.819012, -0.523515,
		0.966173, 0.137623, -0.218107,
		31.371090, 36.190094, 27.658934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749979, 36.465576, 27.135994>,  <30.694769, 36.093758, 27.811607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749979, 36.465576, 27.135994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.058548, 36.226715, 27.223919>,  <31.243689, 36.083397, 27.276674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.058548, 36.226715, 27.223919>,  <30.749979, 36.465576, 27.135994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058548, 36.226715, 27.223919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102852, -0.457913, -0.883027,
		0.627956, 0.658578, -0.414663,
		0.771422, -0.597151, 0.219814,
		31.289974, 36.047569, 27.289864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300777, 36.621521, 26.616592>,  <30.749979, 36.465576, 27.135994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300777, 36.621521, 26.616592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.234835, 36.257236, 26.768076>,  <31.195269, 36.038666, 26.858967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.234835, 36.257236, 26.768076>,  <31.300777, 36.621521, 26.616592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234835, 36.257236, 26.768076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308518, -0.317081, -0.896814,
		0.936824, -0.264685, -0.228699,
		-0.164857, -0.910715, 0.378709,
		31.185377, 35.984020, 26.881689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518188, 36.176979, 26.136618>,  <31.300777, 36.621521, 26.616592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518188, 36.176979, 26.136618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.249165, 35.968174, 26.346445>,  <31.087751, 35.842892, 26.472342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.249165, 35.968174, 26.346445>,  <31.518188, 36.176979, 26.136618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249165, 35.968174, 26.346445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380986, -0.363449, -0.850150,
		0.634442, -0.771626, 0.045561,
		-0.672557, -0.522013, 0.524567,
		31.047398, 35.811569, 26.503815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533821, 35.582527, 25.757168>,  <31.518188, 36.176979, 26.136618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533821, 35.582527, 25.757168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.206600, 35.618843, 25.984343>,  <31.010267, 35.640633, 26.120647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.206600, 35.618843, 25.984343>,  <31.533821, 35.582527, 25.757168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206600, 35.618843, 25.984343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574992, -0.151947, -0.803926,
		0.013310, -0.984210, 0.176502,
		-0.818051, 0.090787, 0.567935,
		30.961185, 35.646080, 26.154724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812895, 34.843296, 25.816652>,  <31.533821, 35.582527, 25.757168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812895, 34.843296, 25.816652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.164867, 34.711407, 25.679829>,  <32.376049, 34.632271, 25.597734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.164867, 34.711407, 25.679829>,  <31.812895, 34.843296, 25.816652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164867, 34.711407, 25.679829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350125, -0.036629, 0.935987,
		-0.321151, -0.943365, 0.083215,
		0.879929, -0.329728, -0.342059,
		32.428844, 34.612488, 25.577211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035286, 34.324821, 26.160772>,  <31.812895, 34.843296, 25.816652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035286, 34.324821, 26.160772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.393753, 34.429359, 26.017342>,  <32.608833, 34.492081, 25.931284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.393753, 34.429359, 26.017342>,  <32.035286, 34.324821, 26.160772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393753, 34.429359, 26.017342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333172, 0.137378, 0.932804,
		0.293043, -0.955420, 0.036042,
		0.896171, 0.261344, -0.358577,
		32.662605, 34.507763, 25.909769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516830, 33.969902, 26.595705>,  <32.035286, 34.324821, 26.160772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516830, 33.969902, 26.595705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.738636, 34.255539, 26.424788>,  <32.871719, 34.426922, 26.322237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.738636, 34.255539, 26.424788>,  <32.516830, 33.969902, 26.595705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738636, 34.255539, 26.424788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678724, -0.090994, 0.728735,
		0.481506, -0.694107, -0.535132,
		0.554514, 0.714097, -0.427293,
		32.904991, 34.469769, 26.296600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181923, 33.677448, 26.565092>,  <32.516830, 33.969902, 26.595705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181923, 33.677448, 26.565092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.236633, 34.072868, 26.539608>,  <33.269459, 34.310120, 26.524317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.236633, 34.072868, 26.539608>,  <33.181923, 33.677448, 26.565092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236633, 34.072868, 26.539608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734509, -0.058055, 0.676110,
		0.664671, -0.139275, -0.734040,
		0.136780, 0.988550, -0.063712,
		33.277668, 34.369434, 26.520494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819553, 33.746613, 26.621906>,  <33.181923, 33.677448, 26.565092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819553, 33.746613, 26.621906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.733967, 34.119125, 26.739840>,  <33.682613, 34.342632, 26.810600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.733967, 34.119125, 26.739840>,  <33.819553, 33.746613, 26.621906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733967, 34.119125, 26.739840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761993, -0.029727, 0.646902,
		0.611215, 0.363078, -0.703272,
		-0.213970, 0.931284, 0.294833,
		33.669777, 34.398510, 26.828289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435814, 34.035736, 26.690481>,  <33.819553, 33.746613, 26.621906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435814, 34.035736, 26.690481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.187275, 34.269409, 26.899349>,  <34.038151, 34.409615, 27.024670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.187275, 34.269409, 26.899349>,  <34.435814, 34.035736, 26.690481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187275, 34.269409, 26.899349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675845, 0.062402, 0.734398,
		0.396437, 0.809221, -0.433589,
		-0.621347, 0.584182, 0.522169,
		34.000870, 34.444664, 27.056000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769711, 34.708706, 26.824793>,  <34.435814, 34.035736, 26.690481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769711, 34.708706, 26.824793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.486042, 34.666569, 27.103643>,  <34.315842, 34.641289, 27.270954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.486042, 34.666569, 27.103643>,  <34.769711, 34.708706, 26.824793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486042, 34.666569, 27.103643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674978, 0.184212, 0.714472,
		-0.203681, 0.977225, -0.059536,
		-0.709167, -0.105339, 0.697126,
		34.273293, 34.634968, 27.312782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853428, 35.309273, 27.315172>,  <34.769711, 34.708706, 26.824793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853428, 35.309273, 27.315172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.660812, 35.002708, 27.485226>,  <34.545242, 34.818771, 27.587257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.660812, 35.002708, 27.485226>,  <34.853428, 35.309273, 27.315172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660812, 35.002708, 27.485226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554964, 0.108801, 0.824728,
		-0.678334, 0.633071, 0.372938,
		-0.481536, -0.766409, 0.425135,
		34.516350, 34.772785, 27.612766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719128, 35.659019, 27.890974>,  <34.853428, 35.309273, 27.315172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719128, 35.659019, 27.890974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.631195, 35.284515, 28.000582>,  <34.578438, 35.059811, 28.066347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.631195, 35.284515, 28.000582>,  <34.719128, 35.659019, 27.890974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631195, 35.284515, 28.000582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454917, 0.150095, 0.877794,
		-0.862975, 0.317621, 0.392927,
		-0.219829, -0.936263, 0.274020,
		34.565247, 35.003635, 28.082788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478672, 35.669868, 28.540276>,  <34.719128, 35.659019, 27.890974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478672, 35.669868, 28.540276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.657272, 35.317924, 28.475191>,  <34.764435, 35.106758, 28.436140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.657272, 35.317924, 28.475191>,  <34.478672, 35.669868, 28.540276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657272, 35.317924, 28.475191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399634, 0.033393, 0.916066,
		-0.800580, -0.474052, 0.366534,
		0.446503, -0.879863, -0.162713,
		34.791222, 35.053967, 28.426376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470852, 35.378906, 29.224342>,  <34.478672, 35.669868, 28.540276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470852, 35.378906, 29.224342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.744133, 35.165340, 29.025072>,  <34.908100, 35.037201, 28.905510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.744133, 35.165340, 29.025072>,  <34.470852, 35.378906, 29.224342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744133, 35.165340, 29.025072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571008, -0.034648, 0.820213,
		-0.455182, -0.844831, 0.281196,
		0.683198, -0.533911, -0.498176,
		34.949093, 35.005169, 28.875620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774506, 35.014446, 29.696112>,  <34.470852, 35.378906, 29.224342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774506, 35.014446, 29.696112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.034229, 34.933205, 29.402950>,  <35.190063, 34.884460, 29.227055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.034229, 34.933205, 29.402950>,  <34.774506, 35.014446, 29.696112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034229, 34.933205, 29.402950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751463, 0.023030, 0.659374,
		-0.117042, -0.978887, 0.167578,
		0.649311, -0.203103, -0.732901,
		35.229023, 34.872272, 29.183081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178276, 34.445587, 29.935093>,  <34.774506, 35.014446, 29.696112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178276, 34.445587, 29.935093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384281, 34.648952, 29.659040>,  <35.507885, 34.770969, 29.493410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384281, 34.648952, 29.659040>,  <35.178276, 34.445587, 29.935093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384281, 34.648952, 29.659040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745226, 0.132258, 0.653564,
		0.423553, -0.850899, -0.310765,
		0.515016, 0.508409, -0.690130,
		35.538788, 34.801476, 29.452002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705204, 34.348995, 30.224035>,  <35.178276, 34.445587, 29.935093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705204, 34.348995, 30.224035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.822079, 34.637043, 29.972301>,  <35.892204, 34.809872, 29.821260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.822079, 34.637043, 29.972301>,  <35.705204, 34.348995, 30.224035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822079, 34.637043, 29.972301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724615, 0.262769, 0.637091,
		0.624149, -0.642172, -0.445031,
		0.292182, 0.720116, -0.629335,
		35.909733, 34.853077, 29.783501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.566639, 36.029362, 24.112663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426514, 36.397831, 24.044867>,  <34.342438, 36.618912, 24.004189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426514, 36.397831, 24.044867>,  <34.566639, 36.029362, 24.112663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426514, 36.397831, 24.044867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128090, -0.226373, -0.965582,
		-0.927832, -0.316547, 0.197294,
		-0.350314, 0.921170, -0.169489,
		34.321419, 36.674183, 23.994020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876232, 35.919250, 23.721638>,  <34.566639, 36.029362, 24.112663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876232, 35.919250, 23.721638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990852, 36.297558, 23.660444>,  <34.059624, 36.524544, 23.623728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990852, 36.297558, 23.660444>,  <33.876232, 35.919250, 23.721638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990852, 36.297558, 23.660444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337379, -0.049839, -0.940049,
		-0.896696, 0.320985, 0.304802,
		0.286551, 0.945772, -0.152984,
		34.076817, 36.581291, 23.614550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317379, 36.261013, 23.544508>,  <33.876232, 35.919250, 23.721638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317379, 36.261013, 23.544508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.608727, 36.480412, 23.380249>,  <33.783535, 36.612053, 23.281694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.608727, 36.480412, 23.380249>,  <33.317379, 36.261013, 23.544508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608727, 36.480412, 23.380249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471920, -0.032924, -0.881027,
		-0.496763, 0.835502, 0.234867,
		0.728367, 0.548500, -0.410645,
		33.827236, 36.644962, 23.257055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004810, 36.798519, 23.115288>,  <33.317379, 36.261013, 23.544508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004810, 36.798519, 23.115288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385532, 36.800369, 22.992624>,  <33.613968, 36.801479, 22.919025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385532, 36.800369, 22.992624>,  <33.004810, 36.798519, 23.115288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385532, 36.800369, 22.992624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306684, 0.005985, -0.951793,
		-0.002566, 0.999971, 0.007115,
		0.951808, 0.004624, -0.306660,
		33.671074, 36.801758, 22.900627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961403, 37.179722, 22.607960>,  <33.004810, 36.798519, 23.115288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961403, 37.179722, 22.607960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301655, 36.976967, 22.552120>,  <33.505806, 36.855312, 22.518616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301655, 36.976967, 22.552120>,  <32.961403, 37.179722, 22.607960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301655, 36.976967, 22.552120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265780, -0.185478, -0.946023,
		0.453634, 0.841821, -0.292494,
		0.850633, -0.506887, -0.139600,
		33.556847, 36.824902, 22.510241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209911, 37.522869, 22.135777>,  <32.961403, 37.179722, 22.607960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209911, 37.522869, 22.135777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398579, 37.170387, 22.123045>,  <33.511780, 36.958897, 22.115406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398579, 37.170387, 22.123045>,  <33.209911, 37.522869, 22.135777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398579, 37.170387, 22.123045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021192, 0.024757, -0.999469,
		0.881524, 0.472088, -0.006997,
		0.471664, -0.881204, -0.031829,
		33.540077, 36.906025, 22.113497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757248, 37.568550, 21.576530>,  <33.209911, 37.522869, 22.135777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757248, 37.568550, 21.576530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.717270, 37.174847, 21.634832>,  <33.693283, 36.938625, 21.669813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.717270, 37.174847, 21.634832>,  <33.757248, 37.568550, 21.576530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717270, 37.174847, 21.634832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028055, -0.149217, -0.988406,
		0.994598, -0.094693, 0.042526,
		-0.099941, -0.984260, 0.145755,
		33.687286, 36.879570, 21.678558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231773, 37.166473, 21.148705>,  <33.757248, 37.568550, 21.576530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231773, 37.166473, 21.148705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948425, 36.898235, 21.236803>,  <33.778416, 36.737293, 21.289661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948425, 36.898235, 21.236803>,  <34.231773, 37.166473, 21.148705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948425, 36.898235, 21.236803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045897, -0.355134, -0.933688,
		0.704347, -0.651288, 0.282345,
		-0.708370, -0.670599, 0.220246,
		33.735916, 36.697056, 21.302877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446377, 36.504509, 20.845369>,  <34.231773, 37.166473, 21.148705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446377, 36.504509, 20.845369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053249, 36.452076, 20.897358>,  <33.817375, 36.420616, 20.928551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053249, 36.452076, 20.897358>,  <34.446377, 36.504509, 20.845369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053249, 36.452076, 20.897358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063768, -0.419642, -0.905447,
		0.173234, -0.898174, 0.404071,
		-0.982814, -0.131088, 0.129972,
		33.758404, 36.412750, 20.936350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248669, 35.816353, 20.673817>,  <34.446377, 36.504509, 20.845369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248669, 35.816353, 20.673817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.929649, 36.053394, 20.628679>,  <33.738235, 36.195618, 20.601597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.929649, 36.053394, 20.628679>,  <34.248669, 35.816353, 20.673817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929649, 36.053394, 20.628679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027680, -0.222814, -0.974468,
		-0.602614, -0.774066, 0.194109,
		-0.797552, 0.592601, -0.112845,
		33.690384, 36.231174, 20.594826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918266, 35.490120, 20.157156>,  <34.248669, 35.816353, 20.673817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918266, 35.490120, 20.157156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697849, 35.822052, 20.192345>,  <33.565601, 36.021210, 20.213459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697849, 35.822052, 20.192345>,  <33.918266, 35.490120, 20.157156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697849, 35.822052, 20.192345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362737, -0.143252, -0.920815,
		-0.751517, -0.539316, 0.379948,
		-0.551038, 0.829829, 0.087974,
		33.532539, 36.070999, 20.218737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254982, 35.336723, 19.921350>,  <33.918266, 35.490120, 20.157156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254982, 35.336723, 19.921350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293915, 35.732391, 19.877411>,  <33.317276, 35.969791, 19.851048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293915, 35.732391, 19.877411>,  <33.254982, 35.336723, 19.921350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293915, 35.732391, 19.877411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364864, -0.067223, -0.928631,
		-0.925959, 0.130470, 0.354370,
		0.097337, 0.989171, -0.109849,
		33.323116, 36.029144, 19.844456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907028, 35.138954, 20.543226>,  <33.254982, 35.336723, 19.921350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907028, 35.138954, 20.543226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.999382, 35.304035, 20.895674>,  <33.054794, 35.403084, 21.107141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.999382, 35.304035, 20.895674>,  <32.907028, 35.138954, 20.543226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999382, 35.304035, 20.895674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353045, 0.879401, -0.319394,
		-0.906672, -0.237332, 0.348740,
		0.230880, 0.412707, 0.881117,
		33.068645, 35.427849, 21.160009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244892, 35.456108, 20.797251>,  <32.907028, 35.138954, 20.543226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244892, 35.456108, 20.797251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.600124, 35.627026, 20.865059>,  <32.813263, 35.729576, 20.905743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.600124, 35.627026, 20.865059>,  <32.244892, 35.456108, 20.797251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600124, 35.627026, 20.865059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345318, 0.863520, -0.367543,
		-0.303431, 0.267870, 0.914426,
		0.888080, 0.427292, 0.169518,
		32.866547, 35.755215, 20.915915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492054, 35.591335, 20.424307>,  <32.244892, 35.456108, 20.797251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492054, 35.591335, 20.424307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.155293, 35.378693, 20.461395>,  <30.953236, 35.251106, 20.483648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.155293, 35.378693, 20.461395>,  <31.492054, 35.591335, 20.424307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155293, 35.378693, 20.461395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343450, -0.395334, 0.851911,
		-0.416224, 0.749072, 0.515412,
		-0.841902, -0.531604, 0.092722,
		30.902721, 35.219212, 20.489212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212660, 35.823318, 20.994913>,  <31.492054, 35.591335, 20.424307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212660, 35.823318, 20.994913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.049963, 35.459045, 20.966011>,  <30.952345, 35.240482, 20.948669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.049963, 35.459045, 20.966011>,  <31.212660, 35.823318, 20.994913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049963, 35.459045, 20.966011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385188, -0.242680, 0.890358,
		-0.828367, 0.334314, 0.449491,
		-0.406742, -0.910681, -0.072254,
		30.927940, 35.185841, 20.944334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915730, 35.616928, 21.695738>,  <31.212660, 35.823318, 20.994913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915730, 35.616928, 21.695738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.933809, 35.260376, 21.515341>,  <30.944656, 35.046444, 21.407103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.933809, 35.260376, 21.515341>,  <30.915730, 35.616928, 21.695738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933809, 35.260376, 21.515341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252165, -0.426656, 0.868549,
		-0.966628, -0.152981, 0.205491,
		0.045198, -0.891382, -0.450994,
		30.947369, 34.992962, 21.380043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553911, 35.190880, 22.127831>,  <30.915730, 35.616928, 21.695738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553911, 35.190880, 22.127831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.769926, 34.937809, 21.905811>,  <30.899534, 34.785965, 21.772600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.769926, 34.937809, 21.905811>,  <30.553911, 35.190880, 22.127831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769926, 34.937809, 21.905811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262928, -0.499658, 0.825355,
		-0.799519, -0.591659, -0.103484,
		0.540035, -0.632679, -0.555050,
		30.931936, 34.748005, 21.739296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622337, 34.580753, 22.463915>,  <30.553911, 35.190880, 22.127831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622337, 34.580753, 22.463915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.924536, 34.522240, 22.208471>,  <31.105856, 34.487133, 22.055204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.924536, 34.522240, 22.208471>,  <30.622337, 34.580753, 22.463915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924536, 34.522240, 22.208471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527984, -0.441161, 0.725679,
		-0.387886, -0.885425, -0.256060,
		0.755498, -0.146285, -0.638611,
		31.151186, 34.478355, 22.016888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880920, 33.897396, 22.532349>,  <30.622337, 34.580753, 22.463915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880920, 33.897396, 22.532349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.200233, 34.040977, 22.338896>,  <31.391821, 34.127125, 22.222824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.200233, 34.040977, 22.338896>,  <30.880920, 33.897396, 22.532349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200233, 34.040977, 22.338896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583015, -0.259049, 0.770057,
		0.151129, -0.896686, -0.416069,
		0.798282, 0.358953, -0.483632,
		31.439718, 34.148663, 22.193806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408199, 33.478981, 22.545725>,  <30.880920, 33.897396, 22.532349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408199, 33.478981, 22.545725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.570169, 33.841530, 22.497519>,  <31.667351, 34.059059, 22.468594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.570169, 33.841530, 22.497519>,  <31.408199, 33.478981, 22.545725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570169, 33.841530, 22.497519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495167, -0.106570, 0.862237,
		0.768664, -0.408818, -0.491959,
		0.404925, 0.906372, -0.120517,
		31.691647, 34.113441, 22.461363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109688, 33.368130, 22.680758>,  <31.408199, 33.478981, 22.545725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109688, 33.368130, 22.680758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.063828, 33.763599, 22.719479>,  <32.036312, 34.000881, 22.742712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.063828, 33.763599, 22.719479>,  <32.109688, 33.368130, 22.680758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063828, 33.763599, 22.719479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343492, -0.051981, 0.937716,
		0.932131, 0.140763, -0.333643,
		-0.114653, 0.988678, 0.096804,
		32.029430, 34.060204, 22.748520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655708, 33.518940, 22.990286>,  <32.109688, 33.368130, 22.680758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655708, 33.518940, 22.990286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.423824, 33.834789, 23.070719>,  <32.284695, 34.024300, 23.118979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.423824, 33.834789, 23.070719>,  <32.655708, 33.518940, 22.990286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423824, 33.834789, 23.070719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377404, 0.041488, 0.925119,
		0.722153, 0.612187, -0.322058,
		-0.579708, 0.789624, 0.201081,
		32.249912, 34.071678, 23.131042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062031, 33.937008, 23.402893>,  <32.655708, 33.518940, 22.990286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062031, 33.937008, 23.402893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.706200, 34.098785, 23.487816>,  <32.492699, 34.195850, 23.538769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.706200, 34.098785, 23.487816>,  <33.062031, 33.937008, 23.402893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706200, 34.098785, 23.487816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334815, 0.261180, 0.905364,
		0.310717, 0.876477, -0.367754,
		-0.889581, 0.404441, 0.212305,
		32.439327, 34.220119, 23.551508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285427, 34.583401, 23.777122>,  <33.062031, 33.937008, 23.402893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285427, 34.583401, 23.777122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.903595, 34.497593, 23.859838>,  <32.674496, 34.446110, 23.909468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.903595, 34.497593, 23.859838>,  <33.285427, 34.583401, 23.777122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903595, 34.497593, 23.859838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156280, 0.230428, 0.960458,
		-0.253684, 0.949150, -0.186437,
		-0.954579, -0.214516, 0.206789,
		32.617222, 34.433239, 23.921875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015553, 35.120621, 24.204029>,  <33.285427, 34.583401, 23.777122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015553, 35.120621, 24.204029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.748642, 34.831810, 24.277163>,  <32.588497, 34.658524, 24.321043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.748642, 34.831810, 24.277163>,  <33.015553, 35.120621, 24.204029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748642, 34.831810, 24.277163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005237, 0.240921, 0.970531,
		-0.744794, 0.648567, -0.156979,
		-0.667273, -0.722024, 0.182833,
		32.548458, 34.615204, 24.332012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443069, 35.416698, 24.649319>,  <33.015553, 35.120621, 24.204029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443069, 35.416698, 24.649319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429443, 35.021179, 24.707457>,  <32.421268, 34.783867, 24.742340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429443, 35.021179, 24.707457>,  <32.443069, 35.416698, 24.649319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429443, 35.021179, 24.707457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021502, 0.146121, 0.989033,
		-0.999188, 0.030563, -0.026239,
		-0.034062, -0.988795, 0.145345,
		32.419224, 34.724541, 24.751060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869658, 35.241856, 25.158823>,  <32.443069, 35.416698, 24.649319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869658, 35.241856, 25.158823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.136478, 34.943893, 25.153790>,  <32.296570, 34.765118, 25.150768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.136478, 34.943893, 25.153790>,  <31.869658, 35.241856, 25.158823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136478, 34.943893, 25.153790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015527, -0.030789, 0.999405,
		-0.744849, -0.666460, -0.032104,
		0.667052, -0.744905, -0.012586,
		32.336594, 34.720421, 25.150013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176905, 34.999138, 25.482975>,  <31.869658, 35.241856, 25.158823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176905, 34.999138, 25.482975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.904408, 35.215916, 25.679831>,  <30.740910, 35.345982, 25.797945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.904408, 35.215916, 25.679831>,  <31.176905, 34.999138, 25.482975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904408, 35.215916, 25.679831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617648, -0.064641, -0.783794,
		-0.392961, -0.837923, 0.378768,
		-0.681243, 0.541946, 0.492140,
		30.700035, 35.378498, 25.827473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568991, 34.694874, 25.331388>,  <31.176905, 34.999138, 25.482975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568991, 34.694874, 25.331388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.470667, 35.065285, 25.445967>,  <30.411673, 35.287533, 25.514713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.470667, 35.065285, 25.445967>,  <30.568991, 34.694874, 25.331388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470667, 35.065285, 25.445967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655483, 0.058903, -0.752910,
		-0.714087, -0.372833, 0.592516,
		-0.245809, 0.926027, 0.286447,
		30.396925, 35.343094, 25.531900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745058, 34.804604, 25.246155>,  <30.568991, 34.694874, 25.331388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745058, 34.804604, 25.246155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.901218, 35.172829, 25.241245>,  <29.994915, 35.393764, 25.238300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.901218, 35.172829, 25.241245>,  <29.745058, 34.804604, 25.246155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901218, 35.172829, 25.241245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715848, 0.295147, -0.632811,
		-0.578920, 0.255836, 0.774209,
		0.390401, 0.920563, -0.012274,
		30.018339, 35.448997, 25.237564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200783, 35.211163, 25.078775>,  <29.745058, 34.804604, 25.246155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200783, 35.211163, 25.078775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.513948, 35.455639, 25.032301>,  <29.701847, 35.602325, 25.004416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.513948, 35.455639, 25.032301>,  <29.200783, 35.211163, 25.078775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513948, 35.455639, 25.032301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455867, 0.436497, -0.775665,
		-0.423360, 0.660244, 0.620359,
		0.782912, 0.611186, -0.116188,
		29.748821, 35.638996, 24.997444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879057, 35.782364, 24.893793>,  <29.200783, 35.211163, 25.078775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879057, 35.782364, 24.893793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.253546, 35.851456, 24.771379>,  <29.478239, 35.892910, 24.697931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.253546, 35.851456, 24.771379>,  <28.879057, 35.782364, 24.893793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253546, 35.851456, 24.771379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351165, 0.427071, -0.833243,
		-0.013230, 0.887566, 0.460490,
		0.936220, 0.172732, -0.306032,
		29.534412, 35.903275, 24.679569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860260, 36.523727, 24.729473>,  <28.879057, 35.782364, 24.893793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860260, 36.523727, 24.729473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.168644, 36.362438, 24.532282>,  <29.353674, 36.265663, 24.413967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.168644, 36.362438, 24.532282>,  <28.860260, 36.523727, 24.729473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168644, 36.362438, 24.532282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410741, 0.276767, -0.868730,
		0.486736, 0.872243, 0.047755,
		0.770961, -0.403227, -0.492978,
		29.399933, 36.241470, 24.384388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187767, 37.078716, 24.283272>,  <28.860260, 36.523727, 24.729473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187767, 37.078716, 24.283272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.281935, 36.716507, 24.142073>,  <29.338436, 36.499180, 24.057354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.281935, 36.716507, 24.142073>,  <29.187767, 37.078716, 24.283272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281935, 36.716507, 24.142073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319396, 0.270950, -0.908060,
		0.917913, 0.326522, -0.225433,
		0.235420, -0.905522, -0.352998,
		29.352560, 36.444851, 24.036173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554302, 37.789700, 23.912476>,  <29.187767, 37.078716, 24.283272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554302, 37.789700, 23.912476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.266317, 38.066853, 23.928350>,  <29.093527, 38.233143, 23.937876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.266317, 38.066853, 23.928350>,  <29.554302, 37.789700, 23.912476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266317, 38.066853, 23.928350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207659, 0.160506, 0.964943,
		0.662220, 0.702962, -0.259441,
		-0.719961, 0.692879, 0.039686,
		29.050329, 38.274715, 23.940256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820929, 38.344669, 24.159222>,  <29.554302, 37.789700, 23.912476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820929, 38.344669, 24.159222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.433834, 38.429432, 24.213749>,  <29.201578, 38.480289, 24.246466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.433834, 38.429432, 24.213749>,  <29.820929, 38.344669, 24.159222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433834, 38.429432, 24.213749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207435, 0.362920, 0.908438,
		0.143035, 0.907404, -0.395168,
		-0.967735, 0.211910, 0.136317,
		29.143513, 38.493004, 24.254644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904873, 38.861755, 24.667753>,  <29.820929, 38.344669, 24.159222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904873, 38.861755, 24.667753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.516169, 38.767548, 24.673624>,  <29.282946, 38.711021, 24.677147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.516169, 38.767548, 24.673624>,  <29.904873, 38.861755, 24.667753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516169, 38.767548, 24.673624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018906, 0.139701, 0.990013,
		-0.235219, 0.961776, -0.140209,
		-0.971759, -0.235520, 0.014677,
		29.224642, 38.696892, 24.678028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681551, 39.335880, 25.137363>,  <29.904873, 38.861755, 24.667753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681551, 39.335880, 25.137363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.446306, 39.012634, 25.124252>,  <29.305159, 38.818687, 25.116385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.446306, 39.012634, 25.124252>,  <29.681551, 39.335880, 25.137363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446306, 39.012634, 25.124252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020026, -0.055067, 0.998282,
		-0.808531, 0.586445, 0.048569,
		-0.588112, -0.808115, -0.032779,
		29.269873, 38.770199, 25.114418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229774, 39.516052, 25.604179>,  <29.681551, 39.335880, 25.137363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229774, 39.516052, 25.604179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.191566, 39.119728, 25.565872>,  <29.168640, 38.881935, 25.542887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.191566, 39.119728, 25.565872>,  <29.229774, 39.516052, 25.604179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191566, 39.119728, 25.565872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161212, -0.110337, 0.980733,
		-0.982286, 0.078243, 0.170270,
		-0.095522, -0.990810, -0.095769,
		29.162910, 38.822487, 25.537142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663994, 39.312134, 26.034365>,  <29.229774, 39.516052, 25.604179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663994, 39.312134, 26.034365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.912931, 39.001709, 25.993528>,  <29.062294, 38.815456, 25.969027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.912931, 39.001709, 25.993528>,  <28.663994, 39.312134, 26.034365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912931, 39.001709, 25.993528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210447, 0.040271, 0.976775,
		-0.753924, -0.629373, 0.188382,
		0.622343, -0.776059, -0.102089,
		29.099634, 38.768890, 25.962902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507875, 38.895367, 26.513512>,  <28.663994, 39.312134, 26.034365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507875, 38.895367, 26.513512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.863741, 38.738159, 26.420536>,  <29.077261, 38.643833, 26.364750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.863741, 38.738159, 26.420536>,  <28.507875, 38.895367, 26.513512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863741, 38.738159, 26.420536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188881, -0.146692, 0.970982,
		-0.415716, -0.907752, -0.056272,
		0.889665, -0.393024, -0.232440,
		29.130640, 38.620251, 26.350803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.210548, 39.456459, 19.555759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.484833, 39.168755, 19.600418>,  <32.649403, 38.996132, 19.627214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.484833, 39.168755, 19.600418>,  <32.210548, 39.456459, 19.555759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484833, 39.168755, 19.600418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311686, 0.428769, 0.847944,
		-0.657764, -0.546644, 0.518195,
		0.685709, -0.719262, 0.111648,
		32.690544, 38.952976, 19.633913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276890, 39.516521, 20.263769>,  <32.210548, 39.456459, 19.555759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276890, 39.516521, 20.263769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.591034, 39.303013, 20.138363>,  <32.779522, 39.174908, 20.063118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.591034, 39.303013, 20.138363>,  <32.276890, 39.516521, 20.263769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591034, 39.303013, 20.138363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487814, 0.221836, 0.844290,
		-0.381112, -0.816010, 0.434604,
		0.785361, -0.533775, -0.313517,
		32.826641, 39.142879, 20.044308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504566, 39.159317, 20.894611>,  <32.276890, 39.516521, 20.263769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504566, 39.159317, 20.894611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.810673, 39.142818, 20.637653>,  <32.994335, 39.132919, 20.483479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.810673, 39.142818, 20.637653>,  <32.504566, 39.159317, 20.894611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810673, 39.142818, 20.637653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639056, 0.168562, 0.750463,
		0.077326, -0.984828, 0.155356,
		0.765263, -0.041251, -0.642394,
		33.040253, 39.130444, 20.444935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046295, 38.894711, 21.251612>,  <32.504566, 39.159317, 20.894611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046295, 38.894711, 21.251612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.233963, 39.077919, 20.949594>,  <33.346565, 39.187843, 20.768383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.233963, 39.077919, 20.949594>,  <33.046295, 38.894711, 21.251612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233963, 39.077919, 20.949594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694229, 0.337154, 0.635904,
		0.545825, -0.822522, -0.159790,
		0.469171, 0.458023, -0.755045,
		33.374714, 39.215324, 20.723082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736702, 38.732014, 21.286480>,  <33.046295, 38.894711, 21.251612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736702, 38.732014, 21.286480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.675903, 39.080360, 21.099506>,  <33.639423, 39.289368, 20.987322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.675903, 39.080360, 21.099506>,  <33.736702, 38.732014, 21.286480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675903, 39.080360, 21.099506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424240, 0.484632, 0.764952,
		0.892702, -0.082032, -0.443119,
		-0.151999, 0.870863, -0.467433,
		33.630302, 39.341618, 20.959276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272438, 39.042046, 21.452330>,  <33.736702, 38.732014, 21.286480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272438, 39.042046, 21.452330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.049274, 39.350006, 21.328402>,  <33.915375, 39.534782, 21.254045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.049274, 39.350006, 21.328402>,  <34.272438, 39.042046, 21.452330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049274, 39.350006, 21.328402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424410, 0.585500, 0.690699,
		0.713168, 0.253860, -0.653411,
		-0.557913, 0.769899, -0.309819,
		33.881901, 39.580975, 21.235456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705395, 39.600319, 21.573772>,  <34.272438, 39.042046, 21.452330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705395, 39.600319, 21.573772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.337189, 39.755573, 21.555859>,  <34.116264, 39.848728, 21.545111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.337189, 39.755573, 21.555859>,  <34.705395, 39.600319, 21.573772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337189, 39.755573, 21.555859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200334, 0.567285, 0.798783,
		0.335445, 0.726318, -0.599950,
		-0.920512, 0.388138, -0.044787,
		34.061035, 39.872013, 21.542423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829632, 40.350498, 21.779686>,  <34.705395, 39.600319, 21.573772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829632, 40.350498, 21.779686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.434715, 40.297493, 21.814779>,  <34.197765, 40.265690, 21.835835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.434715, 40.297493, 21.814779>,  <34.829632, 40.350498, 21.779686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434715, 40.297493, 21.814779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052541, 0.248850, 0.967116,
		-0.149984, 0.959435, -0.238725,
		-0.987291, -0.132509, 0.087733,
		34.138527, 40.257740, 21.841099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597153, 40.846199, 22.142956>,  <34.829632, 40.350498, 21.779686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597153, 40.846199, 22.142956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.318562, 40.566429, 22.207123>,  <34.151409, 40.398567, 22.245623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.318562, 40.566429, 22.207123>,  <34.597153, 40.846199, 22.142956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318562, 40.566429, 22.207123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064906, 0.161232, 0.984780,
		-0.714640, 0.696286, -0.066898,
		-0.696475, -0.699421, 0.160416,
		34.109619, 40.356602, 22.255247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206074, 41.189350, 22.649012>,  <34.597153, 40.846199, 22.142956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206074, 41.189350, 22.649012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.072613, 40.812710, 22.667215>,  <33.992538, 40.586727, 22.678137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.072613, 40.812710, 22.667215>,  <34.206074, 41.189350, 22.649012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072613, 40.812710, 22.667215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001011, 0.047918, 0.998851,
		-0.942697, 0.333311, -0.015036,
		-0.333648, -0.941599, 0.045509,
		33.972519, 40.530231, 22.680868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564968, 41.260014, 22.960831>,  <34.206074, 41.189350, 22.649012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564968, 41.260014, 22.960831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.695644, 40.888889, 23.032879>,  <33.774048, 40.666214, 23.076107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.695644, 40.888889, 23.032879>,  <33.564968, 41.260014, 22.960831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695644, 40.888889, 23.032879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036204, 0.202721, 0.978567,
		-0.944439, -0.313165, 0.099816,
		0.326687, -0.927810, 0.180120,
		33.793652, 40.610546, 23.086914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156254, 40.996330, 23.539833>,  <33.564968, 41.260014, 22.960831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156254, 40.996330, 23.539833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.510601, 40.812687, 23.513113>,  <33.723209, 40.702503, 23.497082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.510601, 40.812687, 23.513113>,  <33.156254, 40.996330, 23.539833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510601, 40.812687, 23.513113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261759, 0.375728, 0.888994,
		-0.383043, -0.805016, 0.453020,
		0.885867, -0.459105, -0.066800,
		33.776360, 40.674957, 23.493073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414055, 40.671745, 23.672930>,  <33.156254, 40.996330, 23.539833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414055, 40.671745, 23.672930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.141449, 40.933884, 23.803198>,  <31.977886, 41.091167, 23.881359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.141449, 40.933884, 23.803198>,  <32.414055, 40.671745, 23.672930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141449, 40.933884, 23.803198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475810, -0.058698, -0.877587,
		-0.556008, -0.753044, 0.351824,
		-0.681513, 0.655347, 0.325669,
		31.936995, 41.130489, 23.900898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828127, 40.311054, 23.683758>,  <32.414055, 40.671745, 23.672930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828127, 40.311054, 23.683758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.756407, 40.703861, 23.660095>,  <31.713375, 40.939545, 23.645897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.756407, 40.703861, 23.660095>,  <31.828127, 40.311054, 23.683758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756407, 40.703861, 23.660095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498331, -0.142504, -0.855195,
		-0.848244, -0.123857, 0.514919,
		-0.179300, 0.982014, -0.059156,
		31.702618, 40.998466, 23.642349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043516, 40.382084, 23.477470>,  <31.828127, 40.311054, 23.683758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043516, 40.382084, 23.477470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.179808, 40.746254, 23.383642>,  <31.261583, 40.964756, 23.327345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.179808, 40.746254, 23.383642>,  <31.043516, 40.382084, 23.477470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179808, 40.746254, 23.383642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534337, -0.017760, -0.845085,
		-0.773556, 0.413284, 0.480425,
		0.340728, 0.910429, -0.234571,
		31.282026, 41.019382, 23.313271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453730, 40.951450, 23.352516>,  <31.043516, 40.382084, 23.477470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453730, 40.951450, 23.352516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.780880, 41.026138, 23.134815>,  <30.977171, 41.070953, 23.004194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.780880, 41.026138, 23.134815>,  <30.453730, 40.951450, 23.352516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780880, 41.026138, 23.134815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562509, 0.060416, -0.824581,
		-0.121087, 0.980553, 0.154447,
		0.817876, 0.186723, -0.544254,
		31.026243, 41.082157, 22.971539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332951, 41.631748, 23.063892>,  <30.453730, 40.951450, 23.352516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332951, 41.631748, 23.063892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.619133, 41.453133, 22.848959>,  <30.790842, 41.345963, 22.719999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.619133, 41.453133, 22.848959>,  <30.332951, 41.631748, 23.063892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619133, 41.453133, 22.848959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602912, -0.006009, -0.797785,
		0.353012, 0.894745, -0.273522,
		0.715458, -0.446537, -0.537331,
		30.833771, 41.319172, 22.687759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227400, 41.900364, 22.377441>,  <30.332951, 41.631748, 23.063892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227400, 41.900364, 22.377441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.495884, 41.619862, 22.281342>,  <30.656975, 41.451561, 22.223682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.495884, 41.619862, 22.281342>,  <30.227400, 41.900364, 22.377441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495884, 41.619862, 22.281342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282718, 0.057429, -0.957482,
		0.685236, 0.710594, -0.159711,
		0.671209, -0.701255, -0.240250,
		30.697247, 41.409485, 22.209267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509808, 42.029083, 21.654083>,  <30.227400, 41.900364, 22.377441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509808, 42.029083, 21.654083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.586044, 41.643967, 21.730724>,  <30.631786, 41.412899, 21.776709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.586044, 41.643967, 21.730724>,  <30.509808, 42.029083, 21.654083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586044, 41.643967, 21.730724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396396, -0.254042, -0.882232,
		0.898079, 0.092195, -0.430064,
		0.190591, -0.962789, 0.191604,
		30.643221, 41.355129, 21.788206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961002, 41.891224, 21.071823>,  <30.509808, 42.029083, 21.654083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961002, 41.891224, 21.071823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.792080, 41.566597, 21.233322>,  <30.690725, 41.371819, 21.330221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.792080, 41.566597, 21.233322>,  <30.961002, 41.891224, 21.071823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792080, 41.566597, 21.233322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424829, -0.216259, -0.879063,
		0.800735, -0.542758, -0.253450,
		-0.422308, -0.811570, 0.403745,
		30.665388, 41.323128, 21.354446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187798, 41.309292, 20.650846>,  <30.961002, 41.891224, 21.071823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187798, 41.309292, 20.650846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.843422, 41.232582, 20.839317>,  <30.636797, 41.186558, 20.952400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.843422, 41.232582, 20.839317>,  <31.187798, 41.309292, 20.650846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843422, 41.232582, 20.839317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416038, -0.267574, -0.869089,
		0.292746, -0.944260, 0.150579,
		-0.860937, -0.191776, 0.471179,
		30.585140, 41.175049, 20.980671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998360, 40.695576, 20.320517>,  <31.187798, 41.309292, 20.650846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998360, 40.695576, 20.320517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.658176, 40.804752, 20.500395>,  <30.454067, 40.870258, 20.608322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.658176, 40.804752, 20.500395>,  <30.998360, 40.695576, 20.320517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658176, 40.804752, 20.500395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523913, -0.362565, -0.770754,
		-0.047324, -0.891095, 0.451342,
		-0.850456, 0.272939, 0.449698,
		30.403040, 40.886635, 20.635303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497190, 40.156536, 20.207037>,  <30.998360, 40.695576, 20.320517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497190, 40.156536, 20.207037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.250021, 40.452034, 20.314690>,  <30.101719, 40.629333, 20.379280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.250021, 40.452034, 20.314690>,  <30.497190, 40.156536, 20.207037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250021, 40.452034, 20.314690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552187, -0.164087, -0.817414,
		-0.559697, -0.653709, 0.509317,
		-0.617923, 0.738742, 0.269130,
		30.064644, 40.673656, 20.395430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864105, 39.873512, 20.166563>,  <30.497190, 40.156536, 20.207037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864105, 39.873512, 20.166563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.818159, 40.270454, 20.148529>,  <29.790590, 40.508621, 20.137709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.818159, 40.270454, 20.148529>,  <29.864105, 39.873512, 20.166563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818159, 40.270454, 20.148529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531389, -0.099730, -0.841237,
		-0.839304, -0.072671, 0.538783,
		-0.114867, 0.992357, -0.045087,
		29.783699, 40.568161, 20.135002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212027, 39.958820, 20.136602>,  <29.864105, 39.873512, 20.166563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212027, 39.958820, 20.136602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387514, 40.281715, 19.978672>,  <29.492807, 40.475452, 19.883913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387514, 40.281715, 19.978672>,  <29.212027, 39.958820, 20.136602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387514, 40.281715, 19.978672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498500, -0.146942, -0.854345,
		-0.747678, 0.571640, 0.337943,
		0.438720, 0.807239, -0.394828,
		29.519131, 40.523888, 19.860224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511816, 39.765438, 20.826725>,  <29.212027, 39.958820, 20.136602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511816, 39.765438, 20.826725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186813, 39.532413, 20.818169>,  <28.991812, 39.392601, 20.813034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186813, 39.532413, 20.818169>,  <29.511816, 39.765438, 20.826725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186813, 39.532413, 20.818169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175621, -0.279604, 0.943917,
		-0.555867, 0.763183, 0.329490,
		-0.812508, -0.582557, -0.021392,
		28.943062, 39.357647, 20.811750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084681, 39.880310, 21.468655>,  <29.511816, 39.765438, 20.826725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084681, 39.880310, 21.468655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917305, 39.534500, 21.357296>,  <28.816879, 39.327015, 21.290482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917305, 39.534500, 21.357296>,  <29.084681, 39.880310, 21.468655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917305, 39.534500, 21.357296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017744, -0.298681, 0.954188,
		-0.908072, 0.404208, 0.109639,
		-0.418437, -0.864526, -0.278396,
		28.791775, 39.275143, 21.273777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505833, 39.811386, 21.827852>,  <29.084681, 39.880310, 21.468655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505833, 39.811386, 21.827852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.595783, 39.433659, 21.731771>,  <28.649754, 39.207024, 21.674124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.595783, 39.433659, 21.731771>,  <28.505833, 39.811386, 21.827852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595783, 39.433659, 21.731771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062981, -0.260086, 0.963529,
		-0.972350, -0.201546, -0.117961,
		0.224875, -0.944317, -0.240201,
		28.663246, 39.150364, 21.659712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975830, 39.434673, 22.242598>,  <28.505833, 39.811386, 21.827852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975830, 39.434673, 22.242598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.270763, 39.184761, 22.139843>,  <28.447723, 39.034813, 22.078190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.270763, 39.184761, 22.139843>,  <27.975830, 39.434673, 22.242598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270763, 39.184761, 22.139843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040273, -0.420255, 0.906512,
		-0.674328, -0.658055, -0.335030,
		0.737333, -0.624779, -0.256888,
		28.491962, 38.997326, 22.062777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795719, 38.770302, 22.453491>,  <27.975830, 39.434673, 22.242598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795719, 38.770302, 22.453491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.192118, 38.732307, 22.415752>,  <28.429956, 38.709511, 22.393108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.192118, 38.732307, 22.415752>,  <27.795719, 38.770302, 22.453491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192118, 38.732307, 22.415752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044196, -0.433110, 0.900257,
		-0.126376, -0.896322, -0.425013,
		0.990997, -0.094987, -0.094349,
		28.489416, 38.703812, 22.387447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918367, 38.173561, 22.835915>,  <27.795719, 38.770302, 22.453491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918367, 38.173561, 22.835915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.277647, 38.346806, 22.805828>,  <28.493214, 38.450752, 22.787775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.277647, 38.346806, 22.805828>,  <27.918367, 38.173561, 22.835915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277647, 38.346806, 22.805828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262975, -0.392286, 0.881451,
		0.352257, -0.811498, -0.466247,
		0.898198, 0.433109, -0.075218,
		28.547106, 38.476738, 22.783262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324080, 37.731449, 23.255520>,  <27.918367, 38.173561, 22.835915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324080, 37.731449, 23.255520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.550060, 38.058979, 23.214809>,  <28.685648, 38.255497, 23.190384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.550060, 38.058979, 23.214809>,  <28.324080, 37.731449, 23.255520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550060, 38.058979, 23.214809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320777, -0.104310, 0.941393,
		0.760219, -0.564488, -0.321590,
		0.564951, 0.818824, -0.101777,
		28.719545, 38.304626, 23.184277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904163, 37.574730, 23.533594>,  <28.324080, 37.731449, 23.255520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904163, 37.574730, 23.533594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.905375, 37.974480, 23.547722>,  <28.906101, 38.214329, 23.556198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.905375, 37.974480, 23.547722>,  <28.904163, 37.574730, 23.533594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905375, 37.974480, 23.547722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355780, -0.034087, 0.933948,
		0.934565, 0.009740, -0.355660,
		0.003026, 0.999371, 0.035322,
		28.906282, 38.274292, 23.558319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515505, 37.138771, 23.565647>,  <28.904163, 37.574730, 23.533594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515505, 37.138771, 23.565647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.424810, 36.749256, 23.572992>,  <29.370394, 36.515549, 23.577398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.424810, 36.749256, 23.572992>,  <29.515505, 37.138771, 23.565647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424810, 36.749256, 23.572992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004926, -0.019999, -0.999788,
		0.973944, -0.226595, 0.009331,
		-0.226734, -0.973784, 0.018362,
		29.356791, 36.457123, 23.578501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929171, 36.860760, 23.111177>,  <29.515505, 37.138771, 23.565647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929171, 36.860760, 23.111177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631800, 36.593510, 23.123348>,  <29.453377, 36.433159, 23.130650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631800, 36.593510, 23.123348>,  <29.929171, 36.860760, 23.111177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631800, 36.593510, 23.123348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083617, 0.047713, -0.995355,
		0.663571, -0.742517, -0.091338,
		-0.743426, -0.668126, 0.030426,
		29.408772, 36.393070, 23.132477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156948, 36.477524, 22.579720>,  <29.929171, 36.860760, 23.111177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156948, 36.477524, 22.579720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.785023, 36.341339, 22.635616>,  <29.561867, 36.259628, 22.669155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.785023, 36.341339, 22.635616>,  <30.156948, 36.477524, 22.579720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785023, 36.341339, 22.635616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086733, -0.166289, -0.982255,
		0.357660, -0.925436, 0.125089,
		-0.929816, -0.340464, 0.139741,
		29.506079, 36.239201, 22.677538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044048, 35.757092, 22.391567>,  <30.156948, 36.477524, 22.579720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044048, 35.757092, 22.391567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.662525, 35.874504, 22.365980>,  <29.433611, 35.944954, 22.350628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.662525, 35.874504, 22.365980>,  <30.044048, 35.757092, 22.391567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662525, 35.874504, 22.365980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028083, -0.299109, -0.953806,
		-0.299109, -0.907949, 0.293535,
		0.953806, -0.293535, 0.063968,
		29.376383, 35.962566, 22.346790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761669, 35.243942, 22.051224>,  <30.044048, 35.757092, 22.391567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761669, 35.243942, 22.051224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.549557, 35.578171, 21.993788>,  <29.422289, 35.778709, 21.959326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.549557, 35.578171, 21.993788>,  <29.761669, 35.243942, 22.051224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549557, 35.578171, 21.993788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062971, -0.207712, -0.976161,
		-0.845479, -0.508600, 0.162763,
		-0.530283, 0.835573, -0.143589,
		29.390472, 35.828842, 21.950710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421186, 35.034752, 21.545597>,  <29.761669, 35.243942, 22.051224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421186, 35.034752, 21.545597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.364523, 35.430714, 21.543844>,  <29.330524, 35.668289, 21.542793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.364523, 35.430714, 21.543844>,  <29.421186, 35.034752, 21.545597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364523, 35.430714, 21.543844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139458, -0.024338, -0.989929,
		-0.980043, -0.139622, 0.141498,
		-0.141659, 0.989906, -0.004380,
		29.322025, 35.727684, 21.542530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843794, 35.163239, 21.052109>,  <29.421186, 35.034752, 21.545597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843794, 35.163239, 21.052109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.039997, 35.510689, 21.080090>,  <29.157719, 35.719158, 21.096878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.039997, 35.510689, 21.080090>,  <28.843794, 35.163239, 21.052109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039997, 35.510689, 21.080090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014387, 0.088332, -0.995987,
		-0.871319, 0.487532, 0.055825,
		0.490507, 0.868625, 0.069951,
		29.187149, 35.771275, 21.101074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439970, 35.781818, 20.769861>,  <28.843794, 35.163239, 21.052109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439970, 35.781818, 20.769861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.826773, 35.879078, 20.739460>,  <29.058855, 35.937435, 20.721220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.826773, 35.879078, 20.739460>,  <28.439970, 35.781818, 20.769861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826773, 35.879078, 20.739460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115328, 0.151816, -0.981657,
		-0.227152, 0.958034, 0.174849,
		0.967006, 0.243151, -0.076002,
		29.116875, 35.952023, 20.716660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420570, 36.421261, 20.417793>,  <28.439970, 35.781818, 20.769861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420570, 36.421261, 20.417793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765438, 36.226650, 20.361294>,  <28.972359, 36.109882, 20.327394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765438, 36.226650, 20.361294>,  <28.420570, 36.421261, 20.417793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765438, 36.226650, 20.361294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205908, -0.081778, -0.975148,
		0.462885, 0.869830, -0.170687,
		0.862172, -0.486527, -0.141250,
		29.024090, 36.080692, 20.318918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.988834, 38.128723, 34.518078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291168, 38.175865, 34.260448>,  <36.472569, 38.204151, 34.105869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291168, 38.175865, 34.260448>,  <35.988834, 38.128723, 34.518078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291168, 38.175865, 34.260448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653430, 0.072924, -0.753467,
		-0.041833, 0.990349, 0.132129,
		0.755830, 0.117857, -0.644073,
		36.517918, 38.211224, 34.067226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886818, 38.713745, 34.146313>,  <35.988834, 38.128723, 34.518078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886818, 38.713745, 34.146313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.038292, 38.467403, 33.869957>,  <36.129177, 38.319599, 33.704144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.038292, 38.467403, 33.869957>,  <35.886818, 38.713745, 34.146313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038292, 38.467403, 33.869957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828867, 0.106474, -0.549220,
		0.411801, 0.780632, -0.470142,
		0.378681, -0.615854, -0.690887,
		36.151897, 38.282646, 33.662689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602150, 39.015297, 33.593575>,  <35.886818, 38.713745, 34.146313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602150, 39.015297, 33.593575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.694420, 38.636833, 33.502739>,  <35.749783, 38.409756, 33.448238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.694420, 38.636833, 33.502739>,  <35.602150, 39.015297, 33.593575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694420, 38.636833, 33.502739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782415, -0.041615, -0.621365,
		0.578460, 0.321013, -0.749889,
		0.230673, -0.946160, -0.227093,
		35.763622, 38.352985, 33.434612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398197, 38.949692, 32.889740>,  <35.602150, 39.015297, 33.593575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398197, 38.949692, 32.889740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407619, 38.563416, 32.993183>,  <35.413273, 38.331650, 33.055248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407619, 38.563416, 32.993183>,  <35.398197, 38.949692, 32.889740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407619, 38.563416, 32.993183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696615, -0.201395, -0.688599,
		0.717059, -0.163934, -0.677460,
		0.023552, -0.965694, 0.258611,
		35.414684, 38.273708, 33.070766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469666, 38.684826, 32.234089>,  <35.398197, 38.949692, 32.889740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469666, 38.684826, 32.234089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332573, 38.407616, 32.487785>,  <35.250317, 38.241291, 32.640003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332573, 38.407616, 32.487785>,  <35.469666, 38.684826, 32.234089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332573, 38.407616, 32.487785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772022, -0.176898, -0.610483,
		0.535273, -0.698876, -0.474399,
		-0.342731, -0.693022, 0.634236,
		35.229755, 38.199711, 32.678055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287766, 38.170044, 31.780573>,  <35.469666, 38.684826, 32.234089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287766, 38.170044, 31.780573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089588, 38.054947, 32.108410>,  <34.970680, 37.985889, 32.305111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089588, 38.054947, 32.108410>,  <35.287766, 38.170044, 31.780573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089588, 38.054947, 32.108410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748725, -0.336896, -0.570887,
		0.440389, -0.896494, -0.048529,
		-0.495447, -0.287747, 0.819593,
		34.940952, 37.968624, 32.354286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117966, 37.436874, 31.673716>,  <35.287766, 38.170044, 31.780573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117966, 37.436874, 31.673716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877934, 37.586906, 31.956337>,  <34.733913, 37.676926, 32.125912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877934, 37.586906, 31.956337>,  <35.117966, 37.436874, 31.673716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877934, 37.586906, 31.956337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797945, -0.343027, -0.495597,
		0.056479, -0.861189, 0.505137,
		-0.600078, 0.375081, 0.706555,
		34.697910, 37.699432, 32.168304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684288, 36.879967, 31.911619>,  <35.117966, 37.436874, 31.673716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684288, 36.879967, 31.911619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503185, 37.224949, 32.002106>,  <34.394524, 37.431938, 32.056396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503185, 37.224949, 32.002106>,  <34.684288, 36.879967, 31.911619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503185, 37.224949, 32.002106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819888, -0.302995, -0.485776,
		-0.350420, -0.405410, 0.844303,
		-0.452758, 0.862460, 0.226215,
		34.367359, 37.483688, 32.069969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926865, 36.740669, 32.155025>,  <34.684288, 36.879967, 31.911619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926865, 36.740669, 32.155025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954781, 37.119457, 32.029564>,  <33.971531, 37.346729, 31.954287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954781, 37.119457, 32.029564>,  <33.926865, 36.740669, 32.155025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954781, 37.119457, 32.029564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768994, -0.149212, -0.621598,
		-0.635436, 0.284579, 0.717800,
		0.069790, 0.946969, -0.313654,
		33.975716, 37.403549, 31.935467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243038, 36.933762, 31.949717>,  <33.926865, 36.740669, 32.155025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243038, 36.933762, 31.949717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435204, 37.239117, 31.777000>,  <33.550503, 37.422329, 31.673370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435204, 37.239117, 31.777000>,  <33.243038, 36.933762, 31.949717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435204, 37.239117, 31.777000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672776, 0.004920, -0.739830,
		-0.562655, 0.645919, 0.515954,
		0.480409, 0.763390, -0.431790,
		33.579327, 37.468132, 31.647463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685379, 37.447594, 31.821529>,  <33.243038, 36.933762, 31.949717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685379, 37.447594, 31.821529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983913, 37.542454, 31.572775>,  <33.163033, 37.599369, 31.423523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983913, 37.542454, 31.572775>,  <32.685379, 37.447594, 31.821529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983913, 37.542454, 31.572775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665556, 0.271712, -0.695131,
		0.004125, 0.932702, 0.360625,
		0.746336, 0.237149, -0.621886,
		33.207813, 37.613598, 31.386209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556107, 38.164574, 31.568018>,  <32.685379, 37.447594, 31.821529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556107, 38.164574, 31.568018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802246, 37.960888, 31.327337>,  <32.949932, 37.838676, 31.182928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802246, 37.960888, 31.327337>,  <32.556107, 38.164574, 31.568018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802246, 37.960888, 31.327337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726825, -0.071112, -0.683131,
		0.305070, 0.857698, -0.413867,
		0.615351, -0.509212, -0.601702,
		32.986851, 37.808125, 31.146826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656380, 38.978973, 31.612925>,  <32.556107, 38.164574, 31.568018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656380, 38.978973, 31.612925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.316105, 39.168495, 31.703999>,  <32.111938, 39.282207, 31.758642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.316105, 39.168495, 31.703999>,  <32.656380, 38.978973, 31.612925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316105, 39.168495, 31.703999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204290, -0.101104, 0.973675,
		0.484349, 0.874808, -0.010785,
		-0.850689, 0.473802, 0.227685,
		32.060898, 39.310635, 31.772305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870522, 39.415939, 32.185745>,  <32.656380, 38.978973, 31.612925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870522, 39.415939, 32.185745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.470783, 39.420704, 32.199421>,  <32.230942, 39.423561, 32.207626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.470783, 39.420704, 32.199421>,  <32.870522, 39.415939, 32.185745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470783, 39.420704, 32.199421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034944, 0.070639, 0.996890,
		0.009455, 0.997431, -0.071008,
		-0.999345, 0.011907, 0.034186,
		32.170979, 39.424274, 32.209675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622799, 40.020054, 32.438850>,  <32.870522, 39.415939, 32.185745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622799, 40.020054, 32.438850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.295517, 39.804768, 32.519718>,  <32.099148, 39.675598, 32.568237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.295517, 39.804768, 32.519718>,  <32.622799, 40.020054, 32.438850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295517, 39.804768, 32.519718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075191, 0.248451, 0.965722,
		-0.569993, 0.805357, -0.162814,
		-0.818202, -0.538212, 0.202171,
		32.050056, 39.643303, 32.580368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135067, 40.436462, 32.745945>,  <32.622799, 40.020054, 32.438850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135067, 40.436462, 32.745945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023319, 40.068649, 32.856518>,  <31.956270, 39.847961, 32.922863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023319, 40.068649, 32.856518>,  <32.135067, 40.436462, 32.745945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023319, 40.068649, 32.856518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135405, 0.322747, 0.936750,
		-0.950589, 0.224268, -0.214674,
		-0.279369, -0.919532, 0.276432,
		31.939508, 39.792789, 32.939449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582960, 40.535835, 33.147083>,  <32.135067, 40.436462, 32.745945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582960, 40.535835, 33.147083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.691957, 40.163486, 33.244434>,  <31.757355, 39.940079, 33.302845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.691957, 40.163486, 33.244434>,  <31.582960, 40.535835, 33.147083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691957, 40.163486, 33.244434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084089, 0.275018, 0.957755,
		-0.958476, -0.240516, 0.153216,
		0.272492, -0.930869, 0.243373,
		31.773705, 39.884224, 33.317448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129364, 40.339397, 33.620308>,  <31.582960, 40.535835, 33.147083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129364, 40.339397, 33.620308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.437948, 40.087360, 33.655708>,  <31.623098, 39.936138, 33.676949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.437948, 40.087360, 33.655708>,  <31.129364, 40.339397, 33.620308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437948, 40.087360, 33.655708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047002, 0.195141, 0.979648,
		-0.634538, -0.751601, 0.180159,
		0.771461, -0.630092, 0.088497,
		31.669386, 39.898335, 33.682259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001863, 39.960686, 34.348213>,  <31.129364, 40.339397, 33.620308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001863, 39.960686, 34.348213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.386602, 39.909706, 34.251377>,  <31.617447, 39.879120, 34.193275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.386602, 39.909706, 34.251377>,  <31.001863, 39.960686, 34.348213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386602, 39.909706, 34.251377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264050, 0.200889, 0.943357,
		-0.071597, -0.971288, 0.226877,
		0.961848, -0.127448, -0.242086,
		31.675158, 39.871471, 34.178753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317896, 39.627438, 34.922787>,  <31.001863, 39.960686, 34.348213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317896, 39.627438, 34.922787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.632128, 39.749092, 34.707245>,  <31.820667, 39.822086, 34.577919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.632128, 39.749092, 34.707245>,  <31.317896, 39.627438, 34.922787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632128, 39.749092, 34.707245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459597, 0.296273, 0.837253,
		0.414293, -0.905383, 0.092963,
		0.785577, 0.304143, -0.538855,
		31.867802, 39.840336, 34.545589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973892, 39.349606, 35.336082>,  <31.317896, 39.627438, 34.922787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973892, 39.349606, 35.336082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.064415, 39.655048, 35.094193>,  <32.118729, 39.838314, 34.949059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.064415, 39.655048, 35.094193>,  <31.973892, 39.349606, 35.336082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064415, 39.655048, 35.094193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457327, 0.464850, 0.758134,
		0.860022, -0.448125, -0.244021,
		0.226305, 0.763609, -0.604720,
		32.132305, 39.884132, 34.912777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601204, 39.452801, 35.385548>,  <31.973892, 39.349606, 35.336082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601204, 39.452801, 35.385548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483173, 39.808449, 35.245605>,  <32.412354, 40.021835, 35.161640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483173, 39.808449, 35.245605>,  <32.601204, 39.452801, 35.385548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483173, 39.808449, 35.245605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474582, 0.454188, 0.753980,
		0.829277, 0.056446, -0.555980,
		-0.295078, 0.889116, -0.349860,
		32.394650, 40.075184, 35.140648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123932, 39.869698, 35.493427>,  <32.601204, 39.452801, 35.385548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123932, 39.869698, 35.493427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832039, 40.141117, 35.459816>,  <32.656902, 40.303970, 35.439648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832039, 40.141117, 35.459816>,  <33.123932, 39.869698, 35.493427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832039, 40.141117, 35.459816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349914, 0.476207, 0.806714,
		0.587410, 0.559283, -0.584938,
		-0.729733, 0.678550, -0.084027,
		32.613117, 40.344681, 35.434608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465420, 40.529301, 35.767094>,  <33.123932, 39.869698, 35.493427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465420, 40.529301, 35.767094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068756, 40.575321, 35.790356>,  <32.830757, 40.602932, 35.804314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068756, 40.575321, 35.790356>,  <33.465420, 40.529301, 35.767094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068756, 40.575321, 35.790356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119032, 0.643935, 0.755764,
		0.049502, 0.756380, -0.652257,
		-0.991656, 0.115052, 0.058157,
		32.771259, 40.609837, 35.807804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350193, 41.227951, 35.705212>,  <33.465420, 40.529301, 35.767094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350193, 41.227951, 35.705212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046505, 41.075607, 35.916321>,  <32.864292, 40.984203, 36.042984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046505, 41.075607, 35.916321>,  <33.350193, 41.227951, 35.705212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046505, 41.075607, 35.916321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055665, 0.769937, 0.635687,
		-0.648453, 0.512002, -0.563349,
		-0.759217, -0.380855, 0.527769,
		32.818741, 40.961349, 36.074650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934628, 41.836643, 35.840076>,  <33.350193, 41.227951, 35.705212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934628, 41.836643, 35.840076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841091, 41.544403, 36.096684>,  <32.784969, 41.369057, 36.250648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841091, 41.544403, 36.096684>,  <32.934628, 41.836643, 35.840076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841091, 41.544403, 36.096684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296649, 0.574734, 0.762680,
		-0.925915, 0.368648, 0.082337,
		-0.233838, -0.730602, 0.641514,
		32.770939, 41.325222, 36.289139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683571, 42.473679, 35.415264>,  <32.934628, 41.836643, 35.840076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683571, 42.473679, 35.415264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.005463, 42.642250, 35.248020>,  <33.198597, 42.743393, 35.147675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.005463, 42.642250, 35.248020>,  <32.683571, 42.473679, 35.415264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005463, 42.642250, 35.248020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523517, 0.171703, -0.834534,
		-0.279904, 0.890459, 0.358798,
		0.804726, 0.421427, -0.418111,
		33.246880, 42.768677, 35.122585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510181, 43.034279, 35.090275>,  <32.683571, 42.473679, 35.415264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510181, 43.034279, 35.090275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.850349, 42.956062, 34.894909>,  <33.054451, 42.909130, 34.777691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.850349, 42.956062, 34.894909>,  <32.510181, 43.034279, 35.090275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850349, 42.956062, 34.894909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491435, 0.036152, -0.870163,
		0.187812, 0.980029, -0.065353,
		0.850422, -0.195543, -0.488410,
		33.105476, 42.897400, 34.748386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289234, 43.267059, 34.358940>,  <32.510181, 43.034279, 35.090275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289234, 43.267059, 34.358940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.642139, 43.088478, 34.299221>,  <32.853882, 42.981331, 34.263390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.642139, 43.088478, 34.299221>,  <32.289234, 43.267059, 34.358940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642139, 43.088478, 34.299221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199911, -0.068200, -0.977438,
		0.426198, 0.892205, -0.149421,
		0.882265, -0.446453, -0.149295,
		32.906818, 42.954544, 34.254433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750706, 43.664284, 33.808468>,  <32.289234, 43.267059, 34.358940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750706, 43.664284, 33.808468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.912567, 43.298515, 33.812275>,  <33.009686, 43.079056, 33.814560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.912567, 43.298515, 33.812275>,  <32.750706, 43.664284, 33.808468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912567, 43.298515, 33.812275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157801, -0.080070, -0.984219,
		0.900752, 0.396767, -0.176698,
		0.404654, -0.914421, 0.009513,
		33.033962, 43.024189, 33.815128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348640, 43.622162, 33.302895>,  <32.750706, 43.664284, 33.808468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348640, 43.622162, 33.302895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249062, 43.242306, 33.379009>,  <33.189312, 43.014393, 33.424679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249062, 43.242306, 33.379009>,  <33.348640, 43.622162, 33.302895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249062, 43.242306, 33.379009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099241, -0.170422, -0.980361,
		0.963419, -0.262944, -0.051817,
		-0.248949, -0.949641, 0.190283,
		33.174377, 42.957413, 33.436092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640133, 43.300858, 32.707863>,  <33.348640, 43.622162, 33.302895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640133, 43.300858, 32.707863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352722, 43.076462, 32.872303>,  <33.180275, 42.941826, 32.970966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352722, 43.076462, 32.872303>,  <33.640133, 43.300858, 32.707863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352722, 43.076462, 32.872303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291083, -0.294270, -0.910316,
		0.631654, -0.773754, 0.048147,
		-0.718529, -0.560990, 0.411103,
		33.137165, 42.908165, 32.995632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699604, 42.656651, 32.347687>,  <33.640133, 43.300858, 32.707863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699604, 42.656651, 32.347687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338898, 42.626011, 32.517838>,  <33.122475, 42.607628, 32.619930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338898, 42.626011, 32.517838>,  <33.699604, 42.656651, 32.347687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338898, 42.626011, 32.517838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361541, -0.405661, -0.839480,
		0.236867, -0.910808, 0.338117,
		-0.901766, -0.076602, 0.425382,
		33.068367, 42.603031, 32.645451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536964, 41.975048, 32.377472>,  <33.699604, 42.656651, 32.347687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536964, 41.975048, 32.377472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199966, 42.190155, 32.390190>,  <32.997768, 42.319221, 32.397820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199966, 42.190155, 32.390190>,  <33.536964, 41.975048, 32.377472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199966, 42.190155, 32.390190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312080, -0.439105, -0.842492,
		-0.439105, -0.719715, 0.537770,
		0.842492, -0.537770, -0.031795,
		32.947220, 42.351486, 32.399727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171902, 41.533180, 31.971224>,  <33.536964, 41.975048, 32.377472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171902, 41.533180, 31.971224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954948, 41.868717, 31.989866>,  <32.824776, 42.070038, 32.001053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954948, 41.868717, 31.989866>,  <33.171902, 41.533180, 31.971224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954948, 41.868717, 31.989866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414629, -0.219020, -0.883240,
		-0.730689, -0.498376, 0.466599,
		-0.542381, 0.838839, 0.046606,
		32.792233, 42.120369, 32.003849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497818, 41.334229, 31.822227>,  <33.171902, 41.533180, 31.971224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497818, 41.334229, 31.822227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.523632, 41.727074, 31.751482>,  <32.539120, 41.962780, 31.709034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.523632, 41.727074, 31.751482>,  <32.497818, 41.334229, 31.822227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523632, 41.727074, 31.751482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422817, -0.133629, -0.896308,
		-0.903914, 0.132624, 0.406632,
		0.064534, 0.982117, -0.176865,
		32.542992, 42.021709, 31.698423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940832, 41.473553, 31.316029>,  <32.497818, 41.334229, 31.822227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940832, 41.473553, 31.316029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.143143, 41.817089, 31.283567>,  <32.264530, 42.023209, 31.264091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.143143, 41.817089, 31.283567>,  <31.940832, 41.473553, 31.316029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143143, 41.817089, 31.283567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229405, 0.043220, -0.972371,
		-0.831601, 0.510421, 0.218882,
		0.505779, 0.858838, -0.081151,
		32.294876, 42.074741, 31.259222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550341, 41.768475, 30.805517>,  <31.940832, 41.473553, 31.316029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550341, 41.768475, 30.805517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903576, 41.955841, 30.816462>,  <32.115517, 42.068260, 30.823029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903576, 41.955841, 30.816462>,  <31.550341, 41.768475, 30.805517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903576, 41.955841, 30.816462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002317, 0.062671, -0.998031,
		-0.469205, 0.881285, 0.056429,
		0.883086, 0.468412, 0.027363,
		32.168503, 42.096363, 30.824671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449390, 42.257549, 30.343361>,  <31.550341, 41.768475, 30.805517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449390, 42.257549, 30.343361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.845869, 42.208035, 30.362146>,  <32.083755, 42.178326, 30.373417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.845869, 42.208035, 30.362146>,  <31.449390, 42.257549, 30.343361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845869, 42.208035, 30.362146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063815, 0.135888, -0.988667,
		0.116004, 0.982960, 0.142591,
		0.991197, -0.123789, 0.046964,
		32.143227, 42.170898, 30.376236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771461, 42.855598, 29.991665>,  <31.449390, 42.257549, 30.343361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771461, 42.855598, 29.991665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.084854, 42.607143, 29.999184>,  <32.272888, 42.458073, 30.003695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.084854, 42.607143, 29.999184>,  <31.771461, 42.855598, 29.991665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084854, 42.607143, 29.999184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205575, 0.230520, -0.951104,
		0.586429, 0.749035, 0.308297,
		0.783480, -0.621133, 0.018799,
		32.319897, 42.420803, 30.004824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402359, 43.138596, 29.511810>,  <31.771461, 42.855598, 29.991665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402359, 43.138596, 29.511810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.421280, 42.741283, 29.554079>,  <32.432632, 42.502895, 29.579439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.421280, 42.741283, 29.554079>,  <32.402359, 43.138596, 29.511810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421280, 42.741283, 29.554079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136587, -0.098364, -0.985732,
		0.989498, 0.061058, 0.131016,
		0.047299, -0.993275, 0.105671,
		32.435471, 42.443302, 29.585781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958130, 42.910431, 29.090794>,  <32.402359, 43.138596, 29.511810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958130, 42.910431, 29.090794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732121, 42.588051, 29.161442>,  <32.596516, 42.394623, 29.203831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732121, 42.588051, 29.161442>,  <32.958130, 42.910431, 29.090794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732121, 42.588051, 29.161442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086014, -0.270437, -0.958887,
		0.820577, -0.526606, 0.222127,
		-0.565027, -0.805947, 0.176619,
		32.562611, 42.346268, 29.214428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299465, 42.397076, 28.647009>,  <32.958130, 42.910431, 29.090794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299465, 42.397076, 28.647009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918350, 42.306656, 28.728096>,  <32.689682, 42.252403, 28.776749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918350, 42.306656, 28.728096>,  <33.299465, 42.397076, 28.647009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918350, 42.306656, 28.728096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130100, -0.299314, -0.945243,
		0.274346, -0.926992, 0.255775,
		-0.952789, -0.226048, 0.202717,
		32.632515, 42.238842, 28.788912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176567, 41.630508, 28.474031>,  <33.299465, 42.397076, 28.647009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176567, 41.630508, 28.474031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.816536, 41.804798, 28.473215>,  <32.600517, 41.909370, 28.472725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.816536, 41.804798, 28.473215>,  <33.176567, 41.630508, 28.474031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816536, 41.804798, 28.473215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163710, -0.342509, -0.925141,
		-0.403806, -0.832365, 0.379618,
		-0.900078, 0.435725, -0.002041,
		32.546513, 41.935516, 28.472603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782349, 41.055107, 28.223270>,  <33.176567, 41.630508, 28.474031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782349, 41.055107, 28.223270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.615940, 41.414345, 28.166195>,  <32.516094, 41.629887, 28.131948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.615940, 41.414345, 28.166195>,  <32.782349, 41.055107, 28.223270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615940, 41.414345, 28.166195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111188, -0.205974, -0.972220,
		-0.902532, -0.388597, 0.185547,
		-0.416020, 0.898091, -0.142691,
		32.491135, 41.683773, 28.123388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151569, 40.895706, 27.821917>,  <32.782349, 41.055107, 28.223270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151569, 40.895706, 27.821917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256538, 41.276543, 27.759102>,  <32.319519, 41.505043, 27.721413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256538, 41.276543, 27.759102>,  <32.151569, 40.895706, 27.821917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256538, 41.276543, 27.759102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299365, -0.074383, -0.951235,
		-0.917340, 0.296641, 0.265502,
		0.262426, 0.952088, -0.157038,
		32.335266, 41.562168, 27.711990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525221, 41.074642, 27.439856>,  <32.151569, 40.895706, 27.821917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525221, 41.074642, 27.439856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.793692, 41.361866, 27.366199>,  <31.954775, 41.534203, 27.322006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.793692, 41.361866, 27.366199>,  <31.525221, 41.074642, 27.439856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793692, 41.361866, 27.366199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256442, -0.008155, -0.966525,
		-0.695527, 0.695932, 0.178667,
		0.671178, 0.718062, -0.184138,
		31.995045, 41.577286, 27.310959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216305, 41.329750, 26.790064>,  <31.525221, 41.074642, 27.439856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216305, 41.329750, 26.790064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.581993, 41.490982, 26.806679>,  <31.801407, 41.587719, 26.816648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.581993, 41.490982, 26.806679>,  <31.216305, 41.329750, 26.790064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581993, 41.490982, 26.806679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026345, 0.043169, -0.998720,
		-0.404354, 0.914147, 0.028847,
		0.914223, 0.403077, 0.041538,
		31.856260, 41.611904, 26.819139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243376, 42.008953, 26.352530>,  <31.216305, 41.329750, 26.790064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243376, 42.008953, 26.352530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.622702, 41.882473, 26.363232>,  <31.850298, 41.806587, 26.369654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.622702, 41.882473, 26.363232>,  <31.243376, 42.008953, 26.352530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622702, 41.882473, 26.363232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046842, 0.056091, -0.997326,
		0.313851, 0.947034, 0.068003,
		0.948316, -0.316197, 0.026756,
		31.907196, 41.787613, 26.371258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569975, 42.343014, 25.883410>,  <31.243376, 42.008953, 26.352530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569975, 42.343014, 25.883410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830204, 42.040230, 25.907940>,  <31.986341, 41.858559, 25.922659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830204, 42.040230, 25.907940>,  <31.569975, 42.343014, 25.883410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830204, 42.040230, 25.907940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098157, 0.003736, -0.995164,
		0.753073, 0.653447, 0.076731,
		0.650573, -0.756963, 0.061327,
		32.025375, 41.813141, 25.926338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179974, 42.470852, 25.467358>,  <31.569975, 42.343014, 25.883410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179974, 42.470852, 25.467358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134098, 42.075176, 25.503910>,  <32.106571, 41.837772, 25.525841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134098, 42.075176, 25.503910>,  <32.179974, 42.470852, 25.467358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134098, 42.075176, 25.503910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221392, -0.115126, -0.968365,
		0.968417, -0.090833, 0.232202,
		-0.114692, -0.989189, 0.091381,
		32.099689, 41.778419, 25.531324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582218, 42.325264, 24.976341>,  <32.179974, 42.470852, 25.467358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582218, 42.325264, 24.976341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.368107, 41.993587, 25.040735>,  <32.239639, 41.794582, 25.079372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.368107, 41.993587, 25.040735>,  <32.582218, 42.325264, 24.976341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368107, 41.993587, 25.040735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012766, -0.182626, -0.983099,
		0.844580, -0.528286, 0.087170,
		-0.535277, -0.829193, 0.160987,
		32.207523, 41.744831, 25.089031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810047, 41.880703, 24.496105>,  <32.582218, 42.325264, 24.976341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810047, 41.880703, 24.496105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.463421, 41.710499, 24.600409>,  <32.255444, 41.608376, 24.662991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.463421, 41.710499, 24.600409>,  <32.810047, 41.880703, 24.496105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463421, 41.710499, 24.600409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164326, -0.250074, -0.954180,
		0.471226, -0.869713, 0.146784,
		-0.866570, -0.425514, 0.260758,
		32.203449, 41.582844, 24.678637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773464, 41.172169, 24.171959>,  <32.810047, 41.880703, 24.496105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773464, 41.172169, 24.171959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395756, 41.277557, 24.250885>,  <32.169132, 41.340790, 24.298241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395756, 41.277557, 24.250885>,  <32.773464, 41.172169, 24.171959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395756, 41.277557, 24.250885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255292, -0.207788, -0.944272,
		-0.207788, -0.942023, 0.263470,
		0.944272, -0.263470, -0.197316,
		32.112473, 41.356598, 24.310080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260422, 40.616211, 24.342077>,  <32.773464, 41.172169, 24.171959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260422, 40.616211, 24.342077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612560, 40.624531, 24.152523>,  <33.823841, 40.629520, 24.038792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612560, 40.624531, 24.152523>,  <33.260422, 40.616211, 24.342077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612560, 40.624531, 24.152523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465016, 0.159276, 0.870857,
		0.093586, -0.987015, 0.130548,
		0.880342, 0.020793, -0.473884,
		33.876663, 40.630772, 24.010357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703568, 40.234081, 24.818531>,  <33.260422, 40.616211, 24.342077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703568, 40.234081, 24.818531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986423, 40.401779, 24.590780>,  <34.156136, 40.502396, 24.454130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986423, 40.401779, 24.590780>,  <33.703568, 40.234081, 24.818531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986423, 40.401779, 24.590780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535701, 0.207918, 0.818409,
		0.461494, -0.883746, -0.077560,
		0.707140, 0.419241, -0.569377,
		34.198566, 40.527550, 24.419968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385929, 39.807110, 24.912109>,  <33.703568, 40.234081, 24.818531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385929, 39.807110, 24.912109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470665, 40.175079, 24.780125>,  <34.521507, 40.395859, 24.700933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470665, 40.175079, 24.780125>,  <34.385929, 39.807110, 24.912109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470665, 40.175079, 24.780125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549272, 0.167186, 0.818748,
		0.808347, -0.354678, -0.469870,
		0.211836, 0.919920, -0.329959,
		34.534214, 40.451054, 24.681137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025085, 39.874229, 25.082199>,  <34.385929, 39.807110, 24.912109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025085, 39.874229, 25.082199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.897308, 40.246666, 25.011751>,  <34.820641, 40.470127, 24.969482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.897308, 40.246666, 25.011751>,  <35.025085, 39.874229, 25.082199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897308, 40.246666, 25.011751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485343, 0.320389, 0.813507,
		0.813879, 0.174392, -0.554246,
		-0.319443, 0.931095, -0.176118,
		34.801476, 40.525993, 24.958916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591511, 40.280624, 25.123947>,  <35.025085, 39.874229, 25.082199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591511, 40.280624, 25.123947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275059, 40.515606, 25.192078>,  <35.085190, 40.656597, 25.232956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275059, 40.515606, 25.192078>,  <35.591511, 40.280624, 25.123947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275059, 40.515606, 25.192078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428136, 0.332985, 0.840131,
		0.436825, 0.737574, -0.514945,
		-0.791128, 0.587457, 0.170327,
		35.037720, 40.691841, 25.243176>
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
