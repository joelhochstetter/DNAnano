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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<2.771894, 1.774123, 2.724286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.704739, 1.771637, 2.329971>,  <2.664445, 1.770145, 2.093383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.704739, 1.771637, 2.329971>,  <2.771894, 1.774123, 2.724286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.704739, 1.771637, 2.329971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985376, 0.030610, 0.167625,
		0.029133, 0.999512, -0.011263,
		-0.167888, -0.006215, -0.985786,
		2.654372, 1.769772, 2.034235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.052312, 2.150227, 2.700856>,  <2.771894, 1.774123, 2.724286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.052312, 2.150227, 2.700856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.110405, 1.964710, 2.351273>,  <2.145261, 1.853400, 2.141522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.110405, 1.964710, 2.351273>,  <2.052312, 2.150227, 2.700856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.110405, 1.964710, 2.351273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974116, -0.221678, -0.044235,
		-0.173221, 0.857762, -0.483982,
		0.145231, -0.463792, -0.873959,
		2.153974, 1.825573, 2.089085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.748524, 2.547587, 2.098325>,  <2.052312, 2.150227, 2.700856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.748524, 2.547587, 2.098325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.742451, 2.149635, 2.058356>,  <1.738807, 1.910864, 2.034374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.742451, 2.149635, 2.058356>,  <1.748524, 2.547587, 2.098325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.742451, 2.149635, 2.058356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971326, 0.038389, -0.234631,
		0.237266, 0.093496, -0.966935,
		-0.015183, -0.994879, -0.099923,
		1.737896, 1.851171, 2.028379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.577024, 2.420773, 1.351043>,  <1.748524, 2.547587, 2.098325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.577024, 2.420773, 1.351043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.448788, 2.163898, 1.629559>,  <1.371846, 2.009774, 1.796669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.448788, 2.163898, 1.629559>,  <1.577024, 2.420773, 1.351043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.448788, 2.163898, 1.629559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947208, 0.213947, -0.238798,
		0.004383, -0.736087, -0.676873,
		-0.320591, -0.642186, 0.696290,
		1.352610, 1.971243, 1.838446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.135525, 1.879105, 1.055890>,  <1.577024, 2.420773, 1.351043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.135525, 1.879105, 1.055890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.038078, 1.891132, 1.443653>,  <0.979610, 1.898349, 1.676310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.038078, 1.891132, 1.443653>,  <1.135525, 1.879105, 1.055890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.038078, 1.891132, 1.443653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935196, 0.257596, -0.243009,
		-0.257022, -0.965785, -0.034633,
		-0.243616, 0.030070, 0.969405,
		0.964993, 1.900153, 1.734474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.440233, 1.648507, 1.135965>,  <1.135525, 1.879105, 1.055890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.440233, 1.648507, 1.135965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.509129, 1.857353, 1.470086>,  <0.550466, 1.982661, 1.670558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.509129, 1.857353, 1.470086>,  <0.440233, 1.648507, 1.135965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.509129, 1.857353, 1.470086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962591, 0.269271, 0.030176,
		-0.209168, -0.809252, 0.548963,
		0.172240, 0.522116, 0.835302,
		0.560800, 2.013988, 1.720677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.060834, 1.446028, 1.575940>,  <0.440233, 1.648507, 1.135965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.060834, 1.446028, 1.575940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.070385, 1.798450, 1.712250>,  <0.149117, 2.009904, 1.794035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.070385, 1.798450, 1.712250>,  <-0.060834, 1.446028, 1.575940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.070385, 1.798450, 1.712250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917500, 0.383044, -0.107105,
		-0.224897, -0.277524, 0.934024,
		0.328048, 0.881055, 0.340774,
		0.168799, 2.062767, 1.814482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.531075, 1.614909, 2.076426>,  <-0.060834, 1.446028, 1.575940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.531075, 1.614909, 2.076426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.354305, 1.956909, 1.967850>,  <-0.248244, 2.162109, 1.902704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.354305, 1.956909, 1.967850>,  <-0.531075, 1.614909, 2.076426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.354305, 1.956909, 1.967850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885536, 0.367470, -0.284239,
		-0.143278, 0.365981, 0.919527,
		0.441924, 0.855000, -0.271440,
		-0.221728, 2.213409, 1.886418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.349534, 2.659621, 1.394865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.196404, 3.011404, 1.508001>,  <-1.104525, 3.222474, 1.575883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.196404, 3.011404, 1.508001>,  <-1.349534, 2.659621, 1.394865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.196404, 3.011404, 1.508001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914540, -0.404068, 0.018568,
		0.130616, 0.251561, -0.958987,
		0.382826, 0.879458, 0.282841,
		-1.081556, 3.275241, 1.592853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.762300, 2.664885, 1.028863>,  <-1.349534, 2.659621, 1.394865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.762300, 2.664885, 1.028863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.707329, 2.936291, 1.317511>,  <-0.674346, 3.099134, 1.490699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.707329, 2.936291, 1.317511>,  <-0.762300, 2.664885, 1.028863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.707329, 2.936291, 1.317511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888752, -0.406108, 0.212593,
		0.437302, 0.612123, -0.658841,
		0.137428, 0.678514, 0.721618,
		-0.666100, 3.139845, 1.533996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.058117, 3.040581, 1.064073>,  <-0.762300, 2.664885, 1.028863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.058117, 3.040581, 1.064073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.227798, 2.985458, 1.422081>,  <-0.329607, 2.952385, 1.636886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.227798, 2.985458, 1.422081>,  <-0.058117, 3.040581, 1.064073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.227798, 2.985458, 1.422081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838100, -0.434086, 0.330389,
		0.342986, 0.890269, 0.299635,
		-0.424203, -0.137805, 0.895020,
		-0.355059, 2.944117, 1.690587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.325106, 3.335124, 1.639208>,  <-0.058117, 3.040581, 1.064073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.325106, 3.335124, 1.639208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.136345, 2.990894, 1.715855>,  <0.023088, 2.784356, 1.761842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.136345, 2.990894, 1.715855>,  <0.325106, 3.335124, 1.639208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.136345, 2.990894, 1.715855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873057, -0.425865, 0.237507,
		-0.122791, 0.279372, 0.952299,
		-0.471904, -0.860576, 0.191616,
		-0.005226, 2.732722, 1.773339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.501023, 3.144243, 2.368914>,  <0.325106, 3.335124, 1.639208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.501023, 3.144243, 2.368914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.416939, 2.807348, 2.170340>,  <0.366488, 2.605211, 2.051195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.416939, 2.807348, 2.170340>,  <0.501023, 3.144243, 2.368914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.416939, 2.807348, 2.170340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833335, -0.419891, 0.359506,
		-0.511238, -0.338125, 0.790131,
		-0.210211, -0.842237, -0.496436,
		0.353876, 2.554677, 2.021409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.706098, 2.665873, 2.844018>,  <0.501023, 3.144243, 2.368914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.706098, 2.665873, 2.844018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.689743, 2.496880, 2.481838>,  <0.679930, 2.395483, 2.264531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.689743, 2.496880, 2.481838>,  <0.706098, 2.665873, 2.844018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.689743, 2.496880, 2.481838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752384, -0.609307, 0.250327,
		-0.657455, -0.671009, 0.342783,
		-0.040888, -0.422483, -0.905448,
		0.677477, 2.370135, 2.210204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.704030, 1.944329, 3.036172>,  <0.706098, 2.665873, 2.844018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.704030, 1.944329, 3.036172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.787415, 1.951256, 2.645021>,  <0.837446, 1.955412, 2.410331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.787415, 1.951256, 2.645021>,  <0.704030, 1.944329, 3.036172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.787415, 1.951256, 2.645021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793581, -0.587385, 0.158773,
		-0.571640, -0.809123, -0.136189,
		0.208462, 0.017316, -0.977877,
		0.849953, 1.956451, 2.351658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.010650, 1.272839, 2.876904>,  <0.704030, 1.944329, 3.036172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.010650, 1.272839, 2.876904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.109901, 1.505053, 2.566701>,  <1.169452, 1.644381, 2.380579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.109901, 1.505053, 2.566701>,  <1.010650, 1.272839, 2.876904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.109901, 1.505053, 2.566701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952477, -0.292220, 0.085998,
		-0.176694, -0.759991, -0.625454,
		0.248128, 0.580535, -0.775507,
		1.184340, 1.679213, 2.334049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
