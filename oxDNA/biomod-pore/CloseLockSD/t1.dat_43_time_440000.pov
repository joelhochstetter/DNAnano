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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.056521, 15.397319, 15.381719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.089398, 15.129108, 15.086791>,  <4.109125, 14.968183, 14.909835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.089398, 15.129108, 15.086791>,  <4.056521, 15.397319, 15.381719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.089398, 15.129108, 15.086791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527625, -0.598360, 0.602972,
		-0.845491, -0.438588, 0.304606,
		0.082192, -0.670526, -0.737319,
		4.114056, 14.927951, 14.865595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.714876, 14.729324, 15.565935>,  <4.056521, 15.397319, 15.381719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.714876, 14.729324, 15.565935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.017576, 14.687524, 15.307816>,  <4.199196, 14.662444, 15.152944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.017576, 14.687524, 15.307816>,  <3.714876, 14.729324, 15.565935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.017576, 14.687524, 15.307816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380124, -0.732746, 0.564437,
		-0.531824, -0.672431, -0.514782,
		0.756750, -0.104500, -0.645299,
		4.244601, 14.656174, 15.114226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.655275, 14.130276, 15.260124>,  <3.714876, 14.729324, 15.565935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.655275, 14.130276, 15.260124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.033267, 14.258071, 15.288241>,  <4.260062, 14.334748, 15.305112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.033267, 14.258071, 15.288241>,  <3.655275, 14.130276, 15.260124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.033267, 14.258071, 15.288241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222808, -0.785921, 0.576788,
		0.239522, -0.529391, -0.813864,
		0.944979, 0.319488, 0.070293,
		4.316761, 14.353917, 15.309329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.310230, 14.565742, 14.737371>,  <3.655275, 14.130276, 15.260124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.310230, 14.565742, 14.737371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.708780, 14.555367, 14.704967>,  <3.947910, 14.549141, 14.685524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.708780, 14.555367, 14.704967>,  <3.310230, 14.565742, 14.737371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.708780, 14.555367, 14.704967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038968, 0.707364, -0.705774,
		0.075613, 0.706373, 0.703789,
		0.996375, -0.025941, -0.081012,
		4.007692, 14.547585, 14.680663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.555040, 15.230416, 14.886711>,  <3.310230, 14.565742, 14.737371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.555040, 15.230416, 14.886711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.767609, 15.002157, 14.636287>,  <3.895151, 14.865202, 14.486032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.767609, 15.002157, 14.636287>,  <3.555040, 15.230416, 14.886711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.767609, 15.002157, 14.636287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241558, 0.606289, -0.757670,
		0.811936, 0.553873, 0.184351,
		0.531423, -0.570648, -0.626060,
		3.927036, 14.830963, 14.448469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.038641, 15.665108, 14.657908>,  <3.555040, 15.230416, 14.886711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.038641, 15.665108, 14.657908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.031682, 15.370020, 14.387956>,  <4.027507, 15.192966, 14.225984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.031682, 15.370020, 14.387956>,  <4.038641, 15.665108, 14.657908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.031682, 15.370020, 14.387956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087705, 0.671256, -0.736018,
		0.995995, -0.071995, 0.053024,
		-0.017397, -0.737721, -0.674882,
		4.026464, 15.148704, 14.185492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.641191, 15.825994, 14.239053>,  <4.038641, 15.665108, 14.657908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.641191, 15.825994, 14.239053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.398231, 15.578393, 14.039894>,  <4.252455, 15.429832, 13.920399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.398231, 15.578393, 14.039894>,  <4.641191, 15.825994, 14.239053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.398231, 15.578393, 14.039894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110100, 0.555115, -0.824455,
		0.786729, -0.555592, -0.269025,
		-0.607400, -0.619003, -0.497896,
		4.216011, 15.392692, 13.890525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.005368, 15.664964, 13.641768>,  <4.641191, 15.825994, 14.239053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.005368, 15.664964, 13.641768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.625647, 15.581664, 13.547570>,  <4.397814, 15.531684, 13.491052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.625647, 15.581664, 13.547570>,  <5.005368, 15.664964, 13.641768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.625647, 15.581664, 13.547570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074042, 0.579916, -0.811305,
		0.305519, -0.787610, -0.535097,
		-0.949303, -0.208249, -0.235492,
		4.340856, 15.519189, 13.476923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.970475, 15.534681, 12.878733>,  <5.005368, 15.664964, 13.641768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.970475, 15.534681, 12.878733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.590038, 15.597052, 12.985399>,  <4.361776, 15.634474, 13.049399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.590038, 15.597052, 12.985399>,  <4.970475, 15.534681, 12.878733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.590038, 15.597052, 12.985399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121805, 0.604011, -0.787613,
		-0.283880, -0.781574, -0.555477,
		-0.951092, 0.155927, 0.266666,
		4.304711, 15.643829, 13.065399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.513497, 15.344398, 12.352746>,  <4.970475, 15.534681, 12.878733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.513497, 15.344398, 12.352746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.325891, 15.615423, 12.579350>,  <4.213328, 15.778038, 12.715313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.325891, 15.615423, 12.579350>,  <4.513497, 15.344398, 12.352746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.325891, 15.615423, 12.579350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144552, 0.573895, -0.806070,
		-0.871281, -0.459948, -0.171222,
		-0.469014, 0.677563, 0.566510,
		4.185187, 15.818692, 12.749304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.083964, 15.429373, 11.807129>,  <4.513497, 15.344398, 12.352746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.083964, 15.429373, 11.807129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.049062, 15.726897, 12.072197>,  <4.028121, 15.905412, 12.231237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.049062, 15.726897, 12.072197>,  <4.083964, 15.429373, 11.807129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.049062, 15.726897, 12.072197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016829, 0.666212, -0.745572,
		-0.996044, -0.053902, -0.070648,
		-0.087254, 0.743812, 0.662670,
		4.022886, 15.950041, 12.270998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.433717, 15.855547, 11.624063>,  <4.083964, 15.429373, 11.807129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.433717, 15.855547, 11.624063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.659447, 16.114374, 11.829134>,  <3.794886, 16.269670, 11.952177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.659447, 16.114374, 11.829134>,  <3.433717, 15.855547, 11.624063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.659447, 16.114374, 11.829134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269886, 0.731492, -0.626163,
		-0.780191, 0.214995, 0.587434,
		0.564326, 0.647067, 0.512680,
		3.828745, 16.308495, 11.982938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.027414, 16.417765, 11.943203>,  <3.433717, 15.855547, 11.624063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.027414, 16.417765, 11.943203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.405784, 16.532299, 11.882225>,  <3.632806, 16.601019, 11.845638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.405784, 16.532299, 11.882225>,  <3.027414, 16.417765, 11.943203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.405784, 16.532299, 11.882225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321132, 0.760191, -0.564787,
		-0.045831, 0.583200, 0.811034,
		0.945925, 0.286334, -0.152444,
		3.689561, 16.618198, 11.836492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.982869, 17.079971, 11.956140>,  <3.027414, 16.417765, 11.943203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.982869, 17.079971, 11.956140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.350455, 17.067118, 11.798927>,  <3.571006, 17.059406, 11.704600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.350455, 17.067118, 11.798927>,  <2.982869, 17.079971, 11.956140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.350455, 17.067118, 11.798927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113804, 0.932657, -0.342345,
		0.377563, 0.359331, 0.853421,
		0.918964, -0.032134, -0.393030,
		3.626144, 17.057478, 11.681018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.212896, 17.736372, 12.053982>,  <2.982869, 17.079971, 11.956140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.212896, 17.736372, 12.053982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.456378, 17.602053, 11.766450>,  <3.602467, 17.521461, 11.593930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.456378, 17.602053, 11.766450>,  <3.212896, 17.736372, 12.053982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.456378, 17.602053, 11.766450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070673, 0.879466, -0.470685,
		0.790243, 0.337310, 0.511603,
		0.608705, -0.335799, -0.718831,
		3.638989, 17.501312, 11.550800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.614624, 18.263758, 11.901417>,  <3.212896, 17.736372, 12.053982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.614624, 18.263758, 11.901417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.643716, 18.044659, 11.568027>,  <3.661172, 17.913198, 11.367992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.643716, 18.044659, 11.568027>,  <3.614624, 18.263758, 11.901417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.643716, 18.044659, 11.568027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033344, 0.833887, -0.550927,
		0.996794, 0.067862, 0.042386,
		0.072732, -0.547747, -0.833477,
		3.665536, 17.880335, 11.317984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.216626, 18.579800, 11.636824>,  <3.614624, 18.263758, 11.901417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.216626, 18.579800, 11.636824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.018157, 18.388674, 11.346856>,  <3.899076, 18.273998, 11.172875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.018157, 18.388674, 11.346856>,  <4.216626, 18.579800, 11.636824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.018157, 18.388674, 11.346856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029478, 0.843732, -0.535954,
		0.867727, -0.244554, -0.432717,
		-0.496167, -0.477817, -0.724920,
		3.869306, 18.245329, 11.129381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.525017, 18.811119, 10.923321>,  <4.216626, 18.579800, 11.636824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.525017, 18.811119, 10.923321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.175325, 18.646231, 10.820719>,  <3.965510, 18.547297, 10.759157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.175325, 18.646231, 10.820719>,  <4.525017, 18.811119, 10.923321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.175325, 18.646231, 10.820719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225439, 0.812568, -0.537504,
		0.429999, -0.412076, -0.803302,
		-0.874230, -0.412222, -0.256505,
		3.913056, 18.522564, 10.743767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.553294, 18.689684, 10.178602>,  <4.525017, 18.811119, 10.923321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.553294, 18.689684, 10.178602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.163174, 18.707153, 10.265213>,  <3.929102, 18.717634, 10.317180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.163174, 18.707153, 10.265213>,  <4.553294, 18.689684, 10.178602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.163174, 18.707153, 10.265213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086156, 0.827410, -0.554950,
		-0.203393, -0.559898, -0.803210,
		-0.975299, 0.043671, 0.216528,
		3.870584, 18.720255, 10.330172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.203704, 18.900267, 9.598743>,  <4.553294, 18.689684, 10.178602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.203704, 18.900267, 9.598743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.949152, 18.987648, 9.894662>,  <3.796421, 19.040077, 10.072213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.949152, 18.987648, 9.894662>,  <4.203704, 18.900267, 9.598743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.949152, 18.987648, 9.894662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214459, 0.871143, -0.441721,
		-0.740964, -0.439758, -0.507529,
		-0.636381, 0.218455, 0.739795,
		3.758238, 19.053185, 10.116601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.571734, 19.008032, 9.242294>,  <4.203704, 18.900267, 9.598743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.571734, 19.008032, 9.242294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.529009, 19.193565, 9.594078>,  <3.503374, 19.304886, 9.805148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.529009, 19.193565, 9.594078>,  <3.571734, 19.008032, 9.242294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.529009, 19.193565, 9.594078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084843, 0.877041, -0.472865,
		-0.990653, -0.125123, -0.054326,
		-0.106812, 0.463835, 0.879459,
		3.496966, 19.332716, 9.857916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.962405, 19.478603, 9.134034>,  <3.571734, 19.008032, 9.242294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.962405, 19.478603, 9.134034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.159670, 19.638956, 9.442861>,  <3.278028, 19.735167, 9.628157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.159670, 19.638956, 9.442861>,  <2.962405, 19.478603, 9.134034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.159670, 19.638956, 9.442861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008394, 0.885262, -0.465017,
		-0.869897, 0.235809, 0.433213,
		0.493162, 0.400881, 0.772066,
		3.307618, 19.759220, 9.674480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.743631, 20.158991, 9.122470>,  <2.962405, 19.478603, 9.134034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.743631, 20.158991, 9.122470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.015193, 20.206968, 9.412214>,  <3.178131, 20.235754, 9.586061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.015193, 20.206968, 9.412214>,  <2.743631, 20.158991, 9.122470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.015193, 20.206968, 9.412214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118064, 0.955894, -0.268937,
		-0.724670, 0.268104, 0.634802,
		0.678906, 0.119944, 0.724362,
		3.218865, 20.242952, 9.629522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.542112, 20.744066, 9.596243>,  <2.743631, 20.158991, 9.122470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.542112, 20.744066, 9.596243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.938356, 20.689714, 9.590205>,  <3.176102, 20.657103, 9.586582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.938356, 20.689714, 9.590205>,  <2.542112, 20.744066, 9.596243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.938356, 20.689714, 9.590205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122750, 0.932594, -0.339413,
		0.060197, 0.334373, 0.940516,
		0.990610, -0.135880, -0.015095,
		3.235539, 20.648951, 9.585676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.800629, 21.331789, 9.991855>,  <2.542112, 20.744066, 9.596243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.800629, 21.331789, 9.991855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.068686, 21.180891, 9.736169>,  <3.229520, 21.090353, 9.582757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.068686, 21.180891, 9.736169>,  <2.800629, 21.331789, 9.991855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.068686, 21.180891, 9.736169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021707, 0.870798, -0.491162,
		0.741915, 0.315274, 0.591747,
		0.670143, -0.377246, -0.639214,
		3.269729, 21.067717, 9.544405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.276058, 21.896795, 9.946264>,  <2.800629, 21.331789, 9.991855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.276058, 21.896795, 9.946264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.350935, 21.642166, 9.647002>,  <3.395862, 21.489389, 9.467445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.350935, 21.642166, 9.647002>,  <3.276058, 21.896795, 9.946264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.350935, 21.642166, 9.647002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033490, 0.765311, -0.642789,
		0.981752, 0.095270, 0.164579,
		0.187193, -0.636571, -0.748155,
		3.407093, 21.451195, 9.422556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.908759, 22.060354, 9.464012>,  <3.276058, 21.896795, 9.946264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.908759, 22.060354, 9.464012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.631740, 21.871946, 9.245464>,  <3.465529, 21.758902, 9.114336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.631740, 21.871946, 9.245464>,  <3.908759, 22.060354, 9.464012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.631740, 21.871946, 9.245464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246498, 0.557291, -0.792885,
		0.677952, -0.683788, -0.269843,
		-0.692546, -0.471021, -0.546369,
		3.423976, 21.730640, 9.081553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.180138, 21.723906, 8.765700>,  <3.908759, 22.060354, 9.464012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.180138, 21.723906, 8.765700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.791691, 21.819344, 8.764929>,  <3.558623, 21.876606, 8.764465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.791691, 21.819344, 8.764929>,  <4.180138, 21.723906, 8.765700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.791691, 21.819344, 8.764929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163448, 0.659326, -0.733876,
		-0.173826, -0.712995, -0.679281,
		-0.971117, 0.238594, -0.001930,
		3.500355, 21.890923, 8.764350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.681135, 21.131775, 8.482520>,  <4.180138, 21.723906, 8.765700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.681135, 21.131775, 8.482520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.727420, 21.247681, 8.102489>,  <4.755190, 21.317225, 7.874470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.727420, 21.247681, 8.102489>,  <4.681135, 21.131775, 8.482520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.727420, 21.247681, 8.102489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730895, -0.622866, -0.278984,
		-0.672610, 0.726688, 0.139714,
		0.115711, 0.289763, -0.950078,
		4.762133, 21.334610, 7.817465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.024381, 20.902887, 7.742177>,  <4.681135, 21.131775, 8.482520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.024381, 20.902887, 7.742177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.691236, 20.682442, 7.721715>,  <4.491350, 20.550175, 7.709438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.691236, 20.682442, 7.721715>,  <5.024381, 20.902887, 7.742177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.691236, 20.682442, 7.721715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487246, -0.686209, -0.540101,
		0.262555, -0.474753, 0.840044,
		-0.832860, -0.551114, -0.051154,
		4.441379, 20.517107, 7.706369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.635463, 20.515985, 7.888832>,  <5.024381, 20.902887, 7.742177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.635463, 20.515985, 7.888832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.901667, 20.218103, 7.908880>,  <6.061389, 20.039375, 7.920908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.901667, 20.218103, 7.908880>,  <5.635463, 20.515985, 7.888832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.901667, 20.218103, 7.908880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686740, -0.637246, -0.349721,
		0.292377, 0.198323, -0.935512,
		0.665510, -0.744704, 0.050120,
		6.101320, 19.994692, 7.923915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.345324, 20.446947, 7.133961>,  <5.635463, 20.515985, 7.888832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.345324, 20.446947, 7.133961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.597284, 20.404308, 6.826230>,  <5.748460, 20.378725, 6.641592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.597284, 20.404308, 6.826230>,  <5.345324, 20.446947, 7.133961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.597284, 20.404308, 6.826230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451028, -0.756197, 0.474067,
		-0.632297, -0.645602, -0.428250,
		0.629900, -0.106599, -0.769326,
		5.786254, 20.372328, 6.595432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.228848, 19.933596, 6.668992>,  <5.345324, 20.446947, 7.133961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.228848, 19.933596, 6.668992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.594320, 20.071804, 6.754600>,  <5.813603, 20.154730, 6.805964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.594320, 20.071804, 6.754600>,  <5.228848, 19.933596, 6.668992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.594320, 20.071804, 6.754600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153996, -0.781619, 0.604448,
		0.376133, -0.519313, -0.767358,
		0.913679, 0.345523, 0.214020,
		5.868423, 20.175461, 6.818806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.750741, 19.370102, 6.478722>,  <5.228848, 19.933596, 6.668992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.750741, 19.370102, 6.478722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.900272, 19.623642, 6.749568>,  <5.989991, 19.775766, 6.912075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.900272, 19.623642, 6.749568>,  <5.750741, 19.370102, 6.478722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.900272, 19.623642, 6.749568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143729, -0.760814, 0.632854,
		0.916294, -0.139257, -0.375516,
		0.373827, 0.633853, 0.677115,
		6.012421, 19.813797, 6.952702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.330645, 19.154512, 6.713718>,  <5.750741, 19.370102, 6.478722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.330645, 19.154512, 6.713718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.199168, 19.367683, 7.025603>,  <6.120281, 19.495586, 7.212734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.199168, 19.367683, 7.025603>,  <6.330645, 19.154512, 6.713718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.199168, 19.367683, 7.025603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079638, -0.807004, 0.585152,
		0.941073, 0.254431, 0.222816,
		-0.328694, 0.532926, 0.779712,
		6.100560, 19.527561, 7.259516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.811354, 19.061146, 7.314860>,  <6.330645, 19.154512, 6.713718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.811354, 19.061146, 7.314860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.425202, 19.139406, 7.383870>,  <6.193511, 19.186361, 7.425275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.425202, 19.139406, 7.383870>,  <6.811354, 19.061146, 7.314860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.425202, 19.139406, 7.383870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025913, -0.730047, 0.682905,
		0.259559, 0.654792, 0.709842,
		-0.965379, 0.195649, 0.172523,
		6.135589, 19.198101, 7.435627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.798921, 19.106058, 7.915881>,  <6.811354, 19.061146, 7.314860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.798921, 19.106058, 7.915881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.409253, 19.028421, 7.869710>,  <6.175453, 18.981840, 7.842008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.409253, 19.028421, 7.869710>,  <6.798921, 19.106058, 7.915881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.409253, 19.028421, 7.869710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023569, -0.595740, 0.802831,
		-0.224586, 0.779373, 0.584926,
		-0.974169, -0.194091, -0.115426,
		6.117002, 18.970194, 7.835083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.554715, 19.044870, 8.563766>,  <6.798921, 19.106058, 7.915881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.554715, 19.044870, 8.563766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.276955, 18.861130, 8.342205>,  <6.110299, 18.750885, 8.209269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.276955, 18.861130, 8.342205>,  <6.554715, 19.044870, 8.563766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.276955, 18.861130, 8.342205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080907, -0.715026, 0.694401,
		-0.715026, 0.527006, 0.459350,
		-0.694401, -0.459350, -0.553900,
		6.068635, 18.723326, 8.176035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.009874, 18.917095, 9.115703>,  <6.554715, 19.044870, 8.563766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.009874, 18.917095, 9.115703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.940376, 18.668036, 8.810515>,  <5.898677, 18.518600, 8.627403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.940376, 18.668036, 8.810515>,  <6.009874, 18.917095, 9.115703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.940376, 18.668036, 8.810515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151610, -0.748603, 0.645451,
		-0.973050, 0.227818, 0.035666,
		-0.173746, -0.622649, -0.762968,
		5.888252, 18.481241, 8.581625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.388374, 18.523645, 9.314084>,  <6.009874, 18.917095, 9.115703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.388374, 18.523645, 9.314084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.556427, 18.319391, 9.014020>,  <5.657258, 18.196838, 8.833982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.556427, 18.319391, 9.014020>,  <5.388374, 18.523645, 9.314084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.556427, 18.319391, 9.014020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016642, -0.830854, 0.556242,
		-0.907311, -0.221210, -0.357566,
		0.420131, -0.510635, -0.750161,
		5.682466, 18.166201, 8.788972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.948402, 17.916370, 9.146420>,  <5.388374, 18.523645, 9.314084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.948402, 17.916370, 9.146420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.313121, 17.821287, 9.012481>,  <5.531952, 17.764236, 8.932117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.313121, 17.821287, 9.012481>,  <4.948402, 17.916370, 9.146420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.313121, 17.821287, 9.012481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017416, -0.837071, 0.546816,
		-0.410273, -0.492754, -0.767379,
		0.911796, -0.237709, -0.334846,
		5.586660, 17.749975, 8.912026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.942623, 17.131369, 9.007365>,  <4.948402, 17.916370, 9.146420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.942623, 17.131369, 9.007365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.330802, 17.227507, 9.016008>,  <5.563709, 17.285189, 9.021194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.330802, 17.227507, 9.016008>,  <4.942623, 17.131369, 9.007365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.330802, 17.227507, 9.016008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175612, -0.764805, 0.619866,
		0.165507, -0.597753, -0.784410,
		0.970447, 0.240344, 0.021608,
		5.621936, 17.299610, 9.022491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.321750, 16.455162, 9.047775>,  <4.942623, 17.131369, 9.007365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.321750, 16.455162, 9.047775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.594485, 16.732420, 9.141279>,  <5.758127, 16.898775, 9.197382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.594485, 16.732420, 9.141279>,  <5.321750, 16.455162, 9.047775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.594485, 16.732420, 9.141279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401855, -0.621954, 0.672076,
		0.611235, -0.364310, -0.702617,
		0.681839, 0.693146, 0.233760,
		5.799037, 16.940363, 9.211408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.936909, 16.033100, 9.137124>,  <5.321750, 16.455162, 9.047775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.936909, 16.033100, 9.137124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.968839, 16.377785, 9.337557>,  <5.987997, 16.584595, 9.457816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.968839, 16.377785, 9.337557>,  <5.936909, 16.033100, 9.137124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.968839, 16.377785, 9.337557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367567, -0.492708, 0.788754,
		0.926565, 0.121219, -0.356067,
		0.079825, 0.861711, 0.501082,
		5.992786, 16.636297, 9.487882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.528394, 15.949486, 9.405035>,  <5.936909, 16.033100, 9.137124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.528394, 15.949486, 9.405035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.337338, 16.238110, 9.605520>,  <6.222705, 16.411283, 9.725811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.337338, 16.238110, 9.605520>,  <6.528394, 15.949486, 9.405035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.337338, 16.238110, 9.605520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357895, -0.361211, 0.861068,
		0.802355, 0.590661, -0.085714,
		-0.477638, 0.721559, 0.501213,
		6.194047, 16.454576, 9.755884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.061678, 16.165527, 9.854299>,  <6.528394, 15.949486, 9.405035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.061678, 16.165527, 9.854299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.710040, 16.269428, 10.014159>,  <6.499057, 16.331768, 10.110076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.710040, 16.269428, 10.014159>,  <7.061678, 16.165527, 9.854299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.710040, 16.269428, 10.014159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341992, -0.240317, 0.908454,
		0.332015, 0.935295, 0.122429,
		-0.879095, 0.259751, 0.399652,
		6.446311, 16.347353, 10.134055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.261456, 16.274632, 10.548356>,  <7.061678, 16.165527, 9.854299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.261456, 16.274632, 10.548356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.862256, 16.250444, 10.541015>,  <6.622736, 16.235931, 10.536610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.862256, 16.250444, 10.541015>,  <7.261456, 16.274632, 10.548356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.862256, 16.250444, 10.541015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015881, -0.521110, 0.853342,
		-0.061165, 0.851345, 0.521029,
		-0.998001, -0.060469, -0.018353,
		6.562856, 16.232304, 10.535509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.050286, 16.454584, 11.173326>,  <7.261456, 16.274632, 10.548356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.050286, 16.454584, 11.173326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.753908, 16.238342, 11.013955>,  <6.576081, 16.108597, 10.918332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.753908, 16.238342, 11.013955>,  <7.050286, 16.454584, 11.173326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.753908, 16.238342, 11.013955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079985, -0.518021, 0.851620,
		-0.666784, 0.662873, 0.340586,
		-0.740946, -0.540605, -0.398428,
		6.531624, 16.076160, 10.894426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.605549, 16.420166, 11.690959>,  <7.050286, 16.454584, 11.173326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.605549, 16.420166, 11.690959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.482673, 16.110823, 11.469130>,  <6.408947, 15.925217, 11.336032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.482673, 16.110823, 11.469130>,  <6.605549, 16.420166, 11.690959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.482673, 16.110823, 11.469130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180831, -0.524697, 0.831861,
		-0.934309, 0.355824, 0.021335,
		-0.307191, -0.773357, -0.554574,
		6.390515, 15.878816, 11.302757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.988161, 16.251963, 11.969833>,  <6.605549, 16.420166, 11.690959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.988161, 16.251963, 11.969833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.114153, 15.936577, 11.758511>,  <6.189748, 15.747345, 11.631717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.114153, 15.936577, 11.758511>,  <5.988161, 16.251963, 11.969833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.114153, 15.936577, 11.758511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231483, -0.603652, 0.762902,
		-0.920436, -0.118005, -0.372655,
		0.314980, -0.788466, -0.528307,
		6.208647, 15.700037, 11.600019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.510546, 15.722146, 12.096666>,  <5.988161, 16.251963, 11.969833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.510546, 15.722146, 12.096666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.825443, 15.526822, 11.946039>,  <6.014381, 15.409628, 11.855663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.825443, 15.526822, 11.946039>,  <5.510546, 15.722146, 12.096666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.825443, 15.526822, 11.946039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147821, -0.742309, 0.653549,
		-0.598663, -0.458837, -0.656559,
		0.787242, -0.488309, -0.376567,
		6.061615, 15.380329, 11.833069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.251152, 15.040669, 12.012872>,  <5.510546, 15.722146, 12.096666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.251152, 15.040669, 12.012872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.648198, 15.011844, 12.051909>,  <5.886425, 14.994548, 12.075333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.648198, 15.011844, 12.051909>,  <5.251152, 15.040669, 12.012872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.648198, 15.011844, 12.051909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117771, -0.765505, 0.632560,
		0.029124, -0.639381, -0.768338,
		0.992614, -0.072065, 0.097595,
		5.945982, 14.990224, 12.081188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.342691, 14.338751, 11.886139>,  <5.251152, 15.040669, 12.012872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.342691, 14.338751, 11.886139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.656822, 14.493892, 12.079149>,  <5.845300, 14.586976, 12.194956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.656822, 14.493892, 12.079149>,  <5.342691, 14.338751, 11.886139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.656822, 14.493892, 12.079149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069389, -0.719368, 0.691155,
		0.615180, -0.576265, -0.538026,
		0.785327, 0.387851, 0.482527,
		5.892420, 14.610247, 12.223907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.869411, 13.854274, 11.857850>,  <5.342691, 14.338751, 11.886139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.869411, 13.854274, 11.857850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.975851, 14.097749, 12.156833>,  <6.039715, 14.243834, 12.336223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.975851, 14.097749, 12.156833>,  <5.869411, 13.854274, 11.857850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.975851, 14.097749, 12.156833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101004, -0.788752, 0.606357,
		0.958639, -0.085855, -0.271366,
		0.266099, 0.608686, 0.747457,
		6.055681, 14.280354, 12.381070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.439596, 13.577118, 12.090239>,  <5.869411, 13.854274, 11.857850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.439596, 13.577118, 12.090239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.292148, 13.794241, 12.392095>,  <6.203680, 13.924515, 12.573208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.292148, 13.794241, 12.392095>,  <6.439596, 13.577118, 12.090239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.292148, 13.794241, 12.392095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166215, -0.760236, 0.628024,
		0.914600, 0.356934, 0.190015,
		-0.368619, 0.542807, 0.754639,
		6.181562, 13.957083, 12.618486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.906170, 13.493164, 12.517787>,  <6.439596, 13.577118, 12.090239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.906170, 13.493164, 12.517787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.614587, 13.620160, 12.760380>,  <6.439638, 13.696358, 12.905935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.614587, 13.620160, 12.760380>,  <6.906170, 13.493164, 12.517787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.614587, 13.620160, 12.760380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308921, -0.638041, 0.705317,
		0.610892, 0.701501, 0.367025,
		-0.728958, 0.317491, 0.606482,
		6.395900, 13.715407, 12.942325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.245917, 13.390123, 13.062517>,  <6.906170, 13.493164, 12.517787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.245917, 13.390123, 13.062517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.863464, 13.423850, 13.174733>,  <6.633993, 13.444086, 13.242063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.863464, 13.423850, 13.174733>,  <7.245917, 13.390123, 13.062517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.863464, 13.423850, 13.174733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142595, -0.702595, 0.697156,
		0.255887, 0.706577, 0.659751,
		-0.956132, 0.084316, 0.280539,
		6.576625, 13.449145, 13.258895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.670979, 13.109300, 13.736610>,  <7.245917, 13.390123, 13.062517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.670979, 13.109300, 13.736610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.939202, 13.384195, 13.848362>,  <8.100137, 13.549132, 13.915413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.939202, 13.384195, 13.848362>,  <7.670979, 13.109300, 13.736610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.939202, 13.384195, 13.848362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489363, -0.692807, 0.529663,
		0.557560, -0.218453, -0.800878,
		0.670560, 0.687239, 0.279379,
		8.140370, 13.590367, 13.932176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.301971, 12.895952, 13.527151>,  <7.670979, 13.109300, 13.736610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.301971, 12.895952, 13.527151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.314595, 13.125093, 13.854772>,  <8.322169, 13.262577, 14.051344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.314595, 13.125093, 13.854772>,  <8.301971, 12.895952, 13.527151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.314595, 13.125093, 13.854772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239519, -0.799917, 0.550239,
		0.970379, 0.178813, -0.162454,
		0.031560, 0.572851, 0.819051,
		8.324063, 13.296947, 14.100487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.811322, 12.516466, 13.928537>,  <8.301971, 12.895952, 13.527151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.811322, 12.516466, 13.928537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.607872, 12.770981, 14.160551>,  <8.485802, 12.923690, 14.299759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.607872, 12.770981, 14.160551>,  <8.811322, 12.516466, 13.928537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.607872, 12.770981, 14.160551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362462, -0.452836, 0.814592,
		0.780974, 0.624564, -0.000305,
		-0.508626, 0.636286, 0.580034,
		8.455284, 12.961866, 14.334561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.188892, 12.732808, 14.491631>,  <8.811322, 12.516466, 13.928537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.188892, 12.732808, 14.491631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.808546, 12.784993, 14.603942>,  <8.580338, 12.816304, 14.671329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.808546, 12.784993, 14.603942>,  <9.188892, 12.732808, 14.491631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.808546, 12.784993, 14.603942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194544, -0.453720, 0.869650,
		0.240851, 0.881543, 0.406046,
		-0.950865, 0.130462, 0.280778,
		8.523287, 12.824132, 14.688175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.670010, 12.612379, 14.983548>,  <9.188892, 12.732808, 14.491631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.670010, 12.612379, 14.983548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.321394, 12.708130, 15.154717>,  <9.112225, 12.765580, 15.257419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.321394, 12.708130, 15.154717>,  <9.670010, 12.612379, 14.983548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.321394, 12.708130, 15.154717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455980, 0.716569, 0.527837,
		-0.180284, 0.655154, -0.733669,
		-0.871539, 0.239378, 0.427923,
		9.059933, 12.779943, 15.283094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.413914, 13.335876, 14.900297>,  <9.670010, 12.612379, 14.983548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.413914, 13.335876, 14.900297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.337111, 13.181927, 15.261408>,  <9.291030, 13.089558, 15.478074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.337111, 13.181927, 15.261408>,  <9.413914, 13.335876, 14.900297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.337111, 13.181927, 15.261408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472530, 0.769987, 0.428760,
		-0.860145, 0.508914, 0.034021,
		-0.192006, -0.384872, 0.902777,
		9.279510, 13.066465, 15.532241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.152388, 13.900982, 15.383516>,  <9.413914, 13.335876, 14.900297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.152388, 13.900982, 15.383516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.328419, 13.607262, 15.590258>,  <9.434037, 13.431029, 15.714302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.328419, 13.607262, 15.590258>,  <9.152388, 13.900982, 15.383516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.328419, 13.607262, 15.590258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561534, 0.674199, 0.479723,
		-0.700722, 0.079116, 0.709034,
		0.440077, -0.734299, 0.516853,
		9.460442, 13.386971, 15.745314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.160837, 14.147595, 16.122307>,  <9.152388, 13.900982, 15.383516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.160837, 14.147595, 16.122307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.442844, 13.870173, 16.063074>,  <9.612049, 13.703720, 16.027534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.442844, 13.870173, 16.063074>,  <9.160837, 14.147595, 16.122307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.442844, 13.870173, 16.063074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656545, 0.559351, 0.506039,
		-0.268136, -0.453990, 0.849704,
		0.705019, -0.693556, -0.148083,
		9.654350, 13.662107, 16.018650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.396281, 13.750487, 16.798996>,  <9.160837, 14.147595, 16.122307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.396281, 13.750487, 16.798996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.686596, 13.748665, 16.523834>,  <9.860785, 13.747571, 16.358736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.686596, 13.748665, 16.523834>,  <9.396281, 13.750487, 16.798996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.686596, 13.748665, 16.523834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582468, 0.536117, 0.610991,
		0.366014, -0.844131, 0.391760,
		0.725785, -0.004557, -0.687906,
		9.904331, 13.747298, 16.317463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.003235, 13.793125, 17.212599>,  <9.396281, 13.750487, 16.798996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.003235, 13.793125, 17.212599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.141644, 13.887698, 16.849421>,  <10.224689, 13.944442, 16.631514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.141644, 13.887698, 16.849421>,  <10.003235, 13.793125, 17.212599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.141644, 13.887698, 16.849421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664722, 0.621170, 0.415082,
		0.662129, -0.747160, 0.057775,
		0.346021, 0.236433, -0.907948,
		10.245450, 13.958628, 16.577036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.695900, 13.657341, 17.285015>,  <10.003235, 13.793125, 17.212599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.695900, 13.657341, 17.285015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.675409, 13.900465, 16.968044>,  <10.663115, 14.046340, 16.777863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.675409, 13.900465, 16.968044>,  <10.695900, 13.657341, 17.285015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.675409, 13.900465, 16.968044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641190, 0.628352, 0.440510,
		0.765670, -0.485530, -0.421912,
		-0.051228, 0.607811, -0.792427,
		10.660041, 14.082808, 16.730316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.441664, 13.876044, 17.115593>,  <10.695900, 13.657341, 17.285015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.441664, 13.876044, 17.115593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.200280, 14.137111, 16.932350>,  <11.055449, 14.293751, 16.822405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.200280, 14.137111, 16.932350>,  <11.441664, 13.876044, 17.115593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.200280, 14.137111, 16.932350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576426, 0.754022, 0.314935,
		0.550971, -0.074015, -0.831235,
		-0.603460, 0.652665, -0.458109,
		11.019242, 14.332911, 16.794918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.877807, 14.301492, 16.746738>,  <11.441664, 13.876044, 17.115593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.877807, 14.301492, 16.746738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.530114, 14.494514, 16.789776>,  <11.321499, 14.610328, 16.815598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.530114, 14.494514, 16.789776>,  <11.877807, 14.301492, 16.746738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.530114, 14.494514, 16.789776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491483, 0.819761, 0.294000,
		0.053672, 0.308433, -0.949731,
		-0.869232, 0.482556, 0.107592,
		11.269344, 14.639281, 16.822054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.942336, 14.899469, 16.365973>,  <11.877807, 14.301492, 16.746738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.942336, 14.899469, 16.365973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.670411, 14.972607, 16.650063>,  <11.507256, 15.016489, 16.820517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.670411, 14.972607, 16.650063>,  <11.942336, 14.899469, 16.365973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.670411, 14.972607, 16.650063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535266, 0.785715, 0.310068,
		-0.501342, 0.590949, -0.632009,
		-0.679813, 0.182843, 0.710227,
		11.466467, 15.027459, 16.863131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.874810, 15.562516, 16.353731>,  <11.942336, 14.899469, 16.365973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.874810, 15.562516, 16.353731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.727925, 15.460379, 16.711493>,  <11.639794, 15.399096, 16.926149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.727925, 15.460379, 16.711493>,  <11.874810, 15.562516, 16.353731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.727925, 15.460379, 16.711493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372281, 0.840853, 0.392904,
		-0.852386, 0.477248, -0.213711,
		-0.367212, -0.255345, 0.894402,
		11.617762, 15.383775, 16.979813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.729548, 16.269630, 16.595839>,  <11.874810, 15.562516, 16.353731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.729548, 16.269630, 16.595839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.676362, 16.023613, 16.906719>,  <11.644451, 15.876002, 17.093248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.676362, 16.023613, 16.906719>,  <11.729548, 16.269630, 16.595839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.676362, 16.023613, 16.906719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147703, 0.763112, 0.629161,
		-0.980053, 0.198451, -0.010622,
		-0.132963, -0.615043, 0.777202,
		11.636473, 15.839100, 17.139879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.401823, 16.743183, 17.072638>,  <11.729548, 16.269630, 16.595839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.401823, 16.743183, 17.072638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.551489, 16.435076, 17.279205>,  <11.641289, 16.250212, 17.403147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.551489, 16.435076, 17.279205>,  <11.401823, 16.743183, 17.072638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.551489, 16.435076, 17.279205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375314, 0.635003, 0.675212,
		-0.848021, -0.058822, 0.526688,
		0.374165, -0.770267, 0.516419,
		11.663738, 16.203995, 17.434132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.279527, 16.795126, 17.808197>,  <11.401823, 16.743183, 17.072638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.279527, 16.795126, 17.808197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.607357, 16.567171, 17.784462>,  <11.804055, 16.430397, 17.770222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.607357, 16.567171, 17.784462>,  <11.279527, 16.795126, 17.808197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.607357, 16.567171, 17.784462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435244, 0.551876, 0.711334,
		-0.372635, -0.608818, 0.700346,
		0.819577, -0.569889, -0.059336,
		11.853230, 16.396204, 17.766661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.474134, 16.573067, 18.466761>,  <11.279527, 16.795126, 17.808197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.474134, 16.573067, 18.466761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.813242, 16.506527, 18.265320>,  <12.016706, 16.466602, 18.144455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.813242, 16.506527, 18.265320>,  <11.474134, 16.573067, 18.466761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.813242, 16.506527, 18.265320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518064, 0.463060, 0.719155,
		0.113566, -0.870576, 0.478749,
		0.847769, -0.166351, -0.503602,
		12.067573, 16.456621, 18.114239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.896979, 16.046074, 18.839384>,  <11.474134, 16.573067, 18.466761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.896979, 16.046074, 18.839384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.139397, 16.267517, 18.610918>,  <12.284847, 16.400383, 18.473839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.139397, 16.267517, 18.610918>,  <11.896979, 16.046074, 18.839384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.139397, 16.267517, 18.610918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423734, 0.382993, 0.820833,
		0.673172, -0.739482, -0.002472,
		0.606044, 0.553609, -0.571163,
		12.321210, 16.433599, 18.439569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.599932, 15.947132, 19.024817>,  <11.896979, 16.046074, 18.839384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.599932, 15.947132, 19.024817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.617684, 16.296925, 18.831608>,  <12.628336, 16.506800, 18.715683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.617684, 16.296925, 18.831608>,  <12.599932, 15.947132, 19.024817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.617684, 16.296925, 18.831608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386343, 0.430857, 0.815538,
		0.921287, -0.222807, -0.318728,
		0.044382, 0.874482, -0.483023,
		12.630999, 16.559269, 18.686701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.265224, 16.086775, 19.037445>,  <12.599932, 15.947132, 19.024817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.265224, 16.086775, 19.037445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.087275, 16.435049, 18.953548>,  <12.980505, 16.644014, 18.903210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.087275, 16.435049, 18.953548>,  <13.265224, 16.086775, 19.037445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.087275, 16.435049, 18.953548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406913, 0.405131, 0.818713,
		0.797816, 0.278876, -0.534526,
		-0.444872, 0.870688, -0.209742,
		12.953813, 16.696255, 18.890625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.747906, 16.497648, 19.197739>,  <13.265224, 16.086775, 19.037445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.747906, 16.497648, 19.197739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.411878, 16.714142, 19.183060>,  <13.210260, 16.844038, 19.174252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.411878, 16.714142, 19.183060>,  <13.747906, 16.497648, 19.197739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.411878, 16.714142, 19.183060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180455, 0.342606, 0.921985,
		0.511584, 0.767910, -0.385482,
		-0.840070, 0.541235, -0.036698,
		13.159857, 16.876513, 19.172050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.860632, 17.083815, 19.619148>,  <13.747906, 16.497648, 19.197739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.860632, 17.083815, 19.619148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.465538, 17.143732, 19.636772>,  <13.228481, 17.179684, 19.647346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.465538, 17.143732, 19.636772>,  <13.860632, 17.083815, 19.619148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.465538, 17.143732, 19.636772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091535, 0.326923, 0.940608,
		0.126494, 0.933104, -0.336624,
		-0.987735, 0.149794, 0.044058,
		13.169217, 17.188671, 19.649990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.640605, 17.859570, 19.705515>,  <13.860632, 17.083815, 19.619148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.640605, 17.859570, 19.705515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.334437, 17.657320, 19.864752>,  <13.150737, 17.535971, 19.960295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.334437, 17.657320, 19.864752>,  <13.640605, 17.859570, 19.705515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.334437, 17.657320, 19.864752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037612, 0.582400, 0.812032,
		-0.642431, 0.636518, -0.426763,
		-0.765420, -0.505623, 0.398093,
		13.104812, 17.505632, 19.984180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.373231, 18.310013, 20.112091>,  <13.640605, 17.859570, 19.705515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.373231, 18.310013, 20.112091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.178476, 17.988125, 20.247955>,  <13.061624, 17.794992, 20.329473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.178476, 17.988125, 20.247955>,  <13.373231, 18.310013, 20.112091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.178476, 17.988125, 20.247955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197046, 0.480032, 0.854835,
		-0.850949, 0.349279, -0.392288,
		-0.486886, -0.804720, 0.339659,
		13.032411, 17.746710, 20.349854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.662144, 18.529369, 20.380394>,  <13.373231, 18.310013, 20.112091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.662144, 18.529369, 20.380394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798579, 18.197670, 20.557484>,  <12.880441, 17.998652, 20.663738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798579, 18.197670, 20.557484>,  <12.662144, 18.529369, 20.380394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.798579, 18.197670, 20.557484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201614, 0.395476, 0.896075,
		-0.918156, -0.394902, -0.032295,
		0.341089, -0.829247, 0.442727,
		12.900907, 17.948896, 20.690302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.167604, 18.449902, 20.804346>,  <12.662144, 18.529369, 20.380394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.167604, 18.449902, 20.804346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.435910, 18.197985, 20.961031>,  <12.596893, 18.046835, 21.055042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.435910, 18.197985, 20.961031>,  <12.167604, 18.449902, 20.804346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.435910, 18.197985, 20.961031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242007, 0.313385, 0.918271,
		-0.701076, -0.710740, 0.057793,
		0.670764, -0.629792, 0.391711,
		12.637139, 18.009047, 21.078545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.803144, 18.044069, 21.305164>,  <12.167604, 18.449902, 20.804346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.803144, 18.044069, 21.305164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.191459, 18.043125, 21.401138>,  <12.424447, 18.042559, 21.458723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.191459, 18.043125, 21.401138>,  <11.803144, 18.044069, 21.305164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.191459, 18.043125, 21.401138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235982, 0.171607, 0.956485,
		-0.043433, -0.985163, 0.166036,
		0.970786, -0.002361, 0.239934,
		12.482695, 18.042418, 21.473118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.812232, 17.746168, 21.884459>,  <11.803144, 18.044069, 21.305164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.812232, 17.746168, 21.884459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.172022, 17.920784, 21.876642>,  <12.387896, 18.025553, 21.871952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.172022, 17.920784, 21.876642>,  <11.812232, 17.746168, 21.884459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.172022, 17.920784, 21.876642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010769, 0.066853, 0.997705,
		0.436842, -0.897199, 0.064833,
		0.899474, 0.436538, -0.019543,
		12.441864, 18.051744, 21.870779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.129467, 17.436945, 22.516781>,  <11.812232, 17.746168, 21.884459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.129467, 17.436945, 22.516781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.325164, 17.773781, 22.425983>,  <12.442582, 17.975883, 22.371506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.325164, 17.773781, 22.425983>,  <12.129467, 17.436945, 22.516781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.325164, 17.773781, 22.425983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299725, 0.082078, 0.950489,
		0.819029, -0.533054, -0.212240,
		0.489241, 0.842091, -0.226994,
		12.471936, 18.026407, 22.357885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.708440, 17.332857, 22.808506>,  <12.129467, 17.436945, 22.516781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.708440, 17.332857, 22.808506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.725974, 17.728867, 22.754948>,  <12.736495, 17.966473, 22.722813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.725974, 17.728867, 22.754948>,  <12.708440, 17.332857, 22.808506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.725974, 17.728867, 22.754948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528709, 0.090727, 0.843940,
		0.847670, -0.107786, -0.519459,
		0.043836, 0.990026, -0.133894,
		12.739125, 18.025875, 22.714779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.391192, 17.604557, 23.053953>,  <12.708440, 17.332857, 22.808506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.391192, 17.604557, 23.053953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.158753, 17.929853, 23.066408>,  <13.019290, 18.125031, 23.073881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.158753, 17.929853, 23.066408>,  <13.391192, 17.604557, 23.053953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.158753, 17.929853, 23.066408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541035, 0.357448, 0.761256,
		0.607953, 0.459209, -0.647703,
		-0.581097, 0.813239, 0.031137,
		12.984425, 18.173824, 23.075748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.813781, 18.157362, 23.064392>,  <13.391192, 17.604557, 23.053953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.813781, 18.157362, 23.064392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463242, 18.245340, 23.235804>,  <13.252918, 18.298126, 23.338650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463242, 18.245340, 23.235804>,  <13.813781, 18.157362, 23.064392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.463242, 18.245340, 23.235804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446555, 0.037493, 0.893970,
		0.180557, 0.974792, -0.131075,
		-0.876349, 0.219945, 0.428529,
		13.200336, 18.311323, 23.364363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.917366, 18.858730, 23.536459>,  <13.813781, 18.157362, 23.064392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.917366, 18.858730, 23.536459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.576283, 18.684519, 23.651838>,  <13.371633, 18.579992, 23.721066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.576283, 18.684519, 23.651838>,  <13.917366, 18.858730, 23.536459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.576283, 18.684519, 23.651838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257891, 0.129230, 0.957492,
		-0.454293, 0.890850, 0.002124,
		-0.852708, -0.435530, 0.288451,
		13.320470, 18.553860, 23.738373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.678492, 19.371603, 24.156500>,  <13.917366, 18.858730, 23.536459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.678492, 19.371603, 24.156500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.478968, 19.026871, 24.193237>,  <13.359254, 18.820030, 24.215279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.478968, 19.026871, 24.193237>,  <13.678492, 19.371603, 24.156500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.478968, 19.026871, 24.193237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342156, -0.098449, 0.934471,
		-0.796316, 0.497547, 0.343988,
		-0.498809, -0.861832, 0.091842,
		13.329325, 18.768322, 24.220791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.305533, 19.380678, 24.772465>,  <13.678492, 19.371603, 24.156500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.305533, 19.380678, 24.772465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.337777, 18.987925, 24.703869>,  <13.357123, 18.752274, 24.662712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.337777, 18.987925, 24.703869>,  <13.305533, 19.380678, 24.772465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.337777, 18.987925, 24.703869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465279, -0.115086, 0.877651,
		-0.881486, -0.150536, 0.447572,
		0.080609, -0.981883, -0.171488,
		13.361959, 18.693359, 24.652422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.087229, 19.157581, 25.380487>,  <13.305533, 19.380678, 24.772465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.087229, 19.157581, 25.380487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.299356, 18.865631, 25.207954>,  <13.426631, 18.690462, 25.104435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.299356, 18.865631, 25.207954>,  <13.087229, 19.157581, 25.380487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.299356, 18.865631, 25.207954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537078, -0.104435, 0.837043,
		-0.655982, -0.675558, 0.336616,
		0.530316, -0.729874, -0.431335,
		13.458450, 18.646669, 25.078554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.129771, 18.565479, 25.859591>,  <13.087229, 19.157581, 25.380487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.129771, 18.565479, 25.859591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444460, 18.499487, 25.621649>,  <13.633273, 18.459890, 25.478884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444460, 18.499487, 25.621649>,  <13.129771, 18.565479, 25.859591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.444460, 18.499487, 25.621649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552611, -0.241240, 0.797762,
		-0.275122, -0.956338, -0.098615,
		0.786721, -0.164986, -0.594853,
		13.680476, 18.449993, 25.443193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479479, 18.013073, 26.181330>,  <13.129771, 18.565479, 25.859591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.479479, 18.013073, 26.181330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.769079, 18.156935, 25.945883>,  <13.942840, 18.243252, 25.804615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.769079, 18.156935, 25.945883>,  <13.479479, 18.013073, 26.181330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.769079, 18.156935, 25.945883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647472, -0.060012, 0.759723,
		0.237913, -0.931154, -0.276315,
		0.724001, 0.359654, -0.588618,
		13.986279, 18.264832, 25.769297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.070713, 17.592419, 26.431803>,  <13.479479, 18.013073, 26.181330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.070713, 17.592419, 26.431803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.240983, 17.873404, 26.203646>,  <14.343144, 18.041994, 26.066751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.240983, 17.873404, 26.203646>,  <14.070713, 17.592419, 26.431803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.240983, 17.873404, 26.203646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763286, 0.059811, 0.643286,
		0.486000, -0.709204, -0.510720,
		0.425674, 0.702462, -0.570394,
		14.368686, 18.084143, 26.032528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.856834, 17.436743, 26.181103>,  <14.070713, 17.592419, 26.431803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.856834, 17.436743, 26.181103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.797305, 17.832127, 26.192423>,  <14.761588, 18.069357, 26.199215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.797305, 17.832127, 26.192423>,  <14.856834, 17.436743, 26.181103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.797305, 17.832127, 26.192423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548214, 0.058651, 0.834279,
		0.822991, 0.139676, -0.550615,
		-0.148823, 0.988459, 0.028303,
		14.752658, 18.128664, 26.200914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.544762, 17.688080, 26.371626>,  <14.856834, 17.436743, 26.181103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.544762, 17.688080, 26.371626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.293097, 17.986153, 26.460043>,  <15.142098, 18.164997, 26.513094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.293097, 17.986153, 26.460043>,  <15.544762, 17.688080, 26.371626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.293097, 17.986153, 26.460043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564343, 0.242392, 0.789154,
		0.534484, 0.621249, -0.573042,
		-0.629161, 0.745182, 0.221042,
		15.104349, 18.209707, 26.526356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.995976, 18.264212, 26.390305>,  <15.544762, 17.688080, 26.371626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.995976, 18.264212, 26.390305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.659661, 18.353277, 26.587687>,  <15.457872, 18.406715, 26.706116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.659661, 18.353277, 26.587687>,  <15.995976, 18.264212, 26.390305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.659661, 18.353277, 26.587687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541348, 0.338816, 0.769510,
		0.004150, 0.914126, -0.405410,
		-0.840788, 0.222662, 0.493454,
		15.407425, 18.420076, 26.735723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.055918, 18.863655, 26.647274>,  <15.995976, 18.264212, 26.390305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.055918, 18.863655, 26.647274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.767565, 18.742638, 26.896688>,  <15.594553, 18.670027, 27.046337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.767565, 18.742638, 26.896688>,  <16.055918, 18.863655, 26.647274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767565, 18.742638, 26.896688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534959, 0.329088, 0.778152,
		-0.440624, 0.894521, -0.075384,
		-0.720881, -0.302545, 0.623536,
		15.551300, 18.651875, 27.083750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.108992, 19.423069, 27.191757>,  <16.055918, 18.863655, 26.647274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.108992, 19.423069, 27.191757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851680, 19.153982, 27.337990>,  <15.697293, 18.992531, 27.425730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851680, 19.153982, 27.337990>,  <16.108992, 19.423069, 27.191757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.851680, 19.153982, 27.337990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311124, 0.206607, 0.927640,
		-0.699569, 0.710470, 0.076392,
		-0.643277, -0.672715, 0.365580,
		15.658696, 18.952168, 27.447664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.759696, 19.765568, 27.728331>,  <16.108992, 19.423069, 27.191757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.759696, 19.765568, 27.728331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.733736, 19.368753, 27.771513>,  <15.718160, 19.130665, 27.797422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.733736, 19.368753, 27.771513>,  <15.759696, 19.765568, 27.728331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.733736, 19.368753, 27.771513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284996, 0.085251, 0.954730,
		-0.956329, 0.092729, 0.277193,
		-0.064900, -0.992035, 0.107955,
		15.714266, 19.071142, 27.803900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.155180, 19.601339, 28.209742>,  <15.759696, 19.765568, 27.728331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.155180, 19.601339, 28.209742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.428123, 19.308962, 28.205559>,  <15.591889, 19.133535, 28.203049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.428123, 19.308962, 28.205559>,  <15.155180, 19.601339, 28.209742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.428123, 19.308962, 28.205559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137902, 0.114660, 0.983787,
		-0.717894, -0.672736, 0.179038,
		0.682357, -0.730944, -0.010458,
		15.632831, 19.089678, 28.202421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.069603, 19.196438, 28.866152>,  <15.155180, 19.601339, 28.209742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.069603, 19.196438, 28.866152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.450362, 19.164986, 28.747690>,  <15.678818, 19.146114, 28.676613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.450362, 19.164986, 28.747690>,  <15.069603, 19.196438, 28.866152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.450362, 19.164986, 28.747690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294120, -0.036537, 0.955070,
		-0.085922, -0.996234, -0.011652,
		0.951898, -0.078635, -0.296152,
		15.735931, 19.141396, 28.658844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.306305, 18.700146, 29.329987>,  <15.069603, 19.196438, 28.866152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.306305, 18.700146, 29.329987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.620904, 18.907387, 29.195528>,  <15.809664, 19.031731, 29.114853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.620904, 18.907387, 29.195528>,  <15.306305, 18.700146, 29.329987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.620904, 18.907387, 29.195528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450613, -0.109199, 0.886015,
		0.422339, -0.848320, -0.319348,
		0.786497, 0.518101, -0.336145,
		15.856853, 19.062817, 29.094685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.004709, 18.302176, 29.287342>,  <15.306305, 18.700146, 29.329987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.004709, 18.302176, 29.287342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.049088, 18.688002, 29.383097>,  <16.075714, 18.919497, 29.440550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.049088, 18.688002, 29.383097>,  <16.004709, 18.302176, 29.287342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.049088, 18.688002, 29.383097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426027, -0.263779, 0.865403,
		0.897882, 0.005972, -0.440196,
		0.110946, 0.964565, 0.239386,
		16.082371, 18.977371, 29.454912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.786951, 18.537321, 29.372795>,  <16.004709, 18.302176, 29.287342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.786951, 18.537321, 29.372795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.525974, 18.735733, 29.601974>,  <16.369389, 18.854780, 29.739483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.525974, 18.735733, 29.601974>,  <16.786951, 18.537321, 29.372795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.525974, 18.735733, 29.601974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446281, -0.359554, 0.819484,
		0.612495, 0.790364, 0.013220,
		-0.652444, 0.496030, 0.572950,
		16.330240, 18.884542, 29.773859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.139128, 19.071405, 29.920254>,  <16.786951, 18.537321, 29.372795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.139128, 19.071405, 29.920254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.791368, 18.914812, 30.040846>,  <16.582714, 18.820856, 30.113201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.791368, 18.914812, 30.040846>,  <17.139128, 19.071405, 29.920254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.791368, 18.914812, 30.040846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462627, -0.430606, 0.774955,
		-0.173563, 0.813215, 0.555478,
		-0.869397, -0.391483, 0.301479,
		16.530550, 18.797367, 30.131289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.839611, 18.703590, 29.837091>,  <17.139128, 19.071405, 29.920254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.839611, 18.703590, 29.837091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.217127, 18.575514, 29.869938>,  <18.443636, 18.498669, 29.889647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.217127, 18.575514, 29.869938>,  <17.839611, 18.703590, 29.837091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.217127, 18.575514, 29.869938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234916, -0.824473, -0.514839,
		0.232551, 0.466608, -0.853345,
		0.943788, -0.320191, 0.082118,
		18.500263, 18.479456, 29.894573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250223, 18.771885, 29.218180>,  <17.839611, 18.703590, 29.837091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.250223, 18.771885, 29.218180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.389746, 18.469486, 29.439739>,  <18.473459, 18.288048, 29.572674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.389746, 18.469486, 29.439739>,  <18.250223, 18.771885, 29.218180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.389746, 18.469486, 29.439739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446373, -0.653686, -0.611102,
		0.824066, -0.034088, -0.565467,
		0.348807, -0.755997, 0.553897,
		18.494389, 18.242687, 29.605907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.402861, 18.354643, 28.737963>,  <18.250223, 18.771885, 29.218180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.402861, 18.354643, 28.737963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.408636, 18.125706, 29.065918>,  <18.412102, 17.988342, 29.262691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.408636, 18.125706, 29.065918>,  <18.402861, 18.354643, 28.737963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.408636, 18.125706, 29.065918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530861, -0.699252, -0.478784,
		0.847336, -0.428332, -0.313932,
		0.014439, -0.572344, 0.819886,
		18.412968, 17.954002, 29.311884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.624619, 17.701506, 28.609186>,  <18.402861, 18.354643, 28.737963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.624619, 17.701506, 28.609186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.372103, 17.640333, 28.913313>,  <18.220592, 17.603630, 29.095789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.372103, 17.640333, 28.913313>,  <18.624619, 17.701506, 28.609186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.372103, 17.640333, 28.913313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520811, -0.642822, -0.561726,
		0.574654, -0.750595, 0.326160,
		-0.631291, -0.152930, 0.760318,
		18.182714, 17.594454, 29.141409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535419, 16.909599, 28.682335>,  <18.624619, 17.701506, 28.609186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.535419, 16.909599, 28.682335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235027, 17.133675, 28.822174>,  <18.054792, 17.268120, 28.906076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235027, 17.133675, 28.822174>,  <18.535419, 16.909599, 28.682335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.235027, 17.133675, 28.822174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653597, -0.555237, -0.514318,
		-0.094005, -0.614739, 0.783109,
		-0.750982, 0.560186, 0.349596,
		18.009733, 17.301731, 28.927053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.988848, 16.442423, 28.898830>,  <18.535419, 16.909599, 28.682335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.988848, 16.442423, 28.898830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.806952, 16.793093, 28.836021>,  <17.697815, 17.003494, 28.798336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.806952, 16.793093, 28.836021>,  <17.988848, 16.442423, 28.898830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.806952, 16.793093, 28.836021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745912, -0.471224, -0.470705,
		-0.486649, -0.096919, 0.868204,
		-0.454739, 0.876672, -0.157028,
		17.670530, 17.056095, 28.788914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.298353, 16.426167, 29.207724>,  <17.988848, 16.442423, 28.898830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.298353, 16.426167, 29.207724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.295357, 16.697870, 28.914179>,  <17.293558, 16.860891, 28.738052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.295357, 16.697870, 28.914179>,  <17.298353, 16.426167, 29.207724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.295357, 16.697870, 28.914179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688530, -0.535707, -0.488819,
		-0.725169, 0.501624, 0.471703,
		-0.007492, 0.679258, -0.733862,
		17.293110, 16.901648, 28.694021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.637381, 16.394226, 28.976788>,  <17.298353, 16.426167, 29.207724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.637381, 16.394226, 28.976788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.830776, 16.595057, 28.689968>,  <16.946814, 16.715555, 28.517878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.830776, 16.595057, 28.689968>,  <16.637381, 16.394226, 28.976788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.830776, 16.595057, 28.689968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580332, -0.429403, -0.691974,
		-0.655327, 0.750687, 0.083761,
		0.483488, 0.502078, -0.717047,
		16.975822, 16.745680, 28.474854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128536, 16.730537, 28.471245>,  <16.637381, 16.394226, 28.976788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.128536, 16.730537, 28.471245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.467657, 16.703180, 28.260889>,  <16.671129, 16.686766, 28.134676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.467657, 16.703180, 28.260889>,  <16.128536, 16.730537, 28.471245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.467657, 16.703180, 28.260889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469947, -0.556395, -0.685255,
		-0.245733, 0.828098, -0.503853,
		0.847800, -0.068394, -0.525887,
		16.721996, 16.682663, 28.103123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.880887, 16.762409, 27.772223>,  <16.128536, 16.730537, 28.471245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.880887, 16.762409, 27.772223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.246250, 16.609444, 27.716442>,  <16.465467, 16.517664, 27.682974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.246250, 16.609444, 27.716442>,  <15.880887, 16.762409, 27.772223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.246250, 16.609444, 27.716442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320657, -0.464975, -0.825214,
		0.250731, 0.798473, -0.547335,
		0.913407, -0.382414, -0.139452,
		16.520273, 16.494720, 27.674606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.031855, 16.823864, 27.004723>,  <15.880887, 16.762409, 27.772223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.031855, 16.823864, 27.004723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.322603, 16.572317, 27.115128>,  <16.497053, 16.421389, 27.181370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.322603, 16.572317, 27.115128>,  <16.031855, 16.823864, 27.004723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.322603, 16.572317, 27.115128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130016, -0.520633, -0.843823,
		0.674354, 0.577466, -0.460196,
		0.726872, -0.628868, 0.276011,
		16.540665, 16.383657, 27.197931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.289675, 16.660126, 26.345234>,  <16.031855, 16.823864, 27.004723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.289675, 16.660126, 26.345234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.422558, 16.387108, 26.605623>,  <16.502287, 16.223297, 26.761858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.422558, 16.387108, 26.605623>,  <16.289675, 16.660126, 26.345234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.422558, 16.387108, 26.605623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170100, -0.722211, -0.670430,
		0.927741, 0.111991, -0.356026,
		0.332208, -0.682545, 0.650976,
		16.522221, 16.182344, 26.800917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.584255, 16.295010, 25.873245>,  <16.289675, 16.660126, 26.345234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.584255, 16.295010, 25.873245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.562946, 16.046053, 26.185600>,  <16.550161, 15.896678, 26.373014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.562946, 16.046053, 26.185600>,  <16.584255, 16.295010, 25.873245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.562946, 16.046053, 26.185600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066298, -0.778070, -0.624669,
		0.996377, -0.085048, 0.000185,
		-0.053271, -0.622394, 0.780889,
		16.546965, 15.859335, 26.419867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.946844, 15.708176, 25.706886>,  <16.584255, 16.295010, 25.873245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.946844, 15.708176, 25.706886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.694862, 15.569457, 25.984846>,  <16.543673, 15.486226, 26.151623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.694862, 15.569457, 25.984846>,  <16.946844, 15.708176, 25.706886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.694862, 15.569457, 25.984846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301195, -0.715640, -0.630191,
		0.715848, -0.606293, 0.346368,
		-0.629955, -0.346797, 0.694902,
		16.505877, 15.465418, 26.193317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.198954, 15.094574, 25.889374>,  <16.946844, 15.708176, 25.706886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.198954, 15.094574, 25.889374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.817801, 15.094406, 26.010708>,  <16.589108, 15.094306, 26.083508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.817801, 15.094406, 26.010708>,  <17.198954, 15.094574, 25.889374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.817801, 15.094406, 26.010708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170216, -0.826977, -0.535850,
		0.251076, -0.562235, 0.787942,
		-0.952884, -0.000419, 0.303336,
		16.531935, 15.094280, 26.101709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.092968, 14.405933, 26.177435>,  <17.198954, 15.094574, 25.889374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.092968, 14.405933, 26.177435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.727934, 14.547686, 26.095848>,  <16.508913, 14.632737, 26.046896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.727934, 14.547686, 26.095848>,  <17.092968, 14.405933, 26.177435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.727934, 14.547686, 26.095848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151006, -0.755673, -0.637304,
		-0.379980, -0.550794, 0.743129,
		-0.912586, 0.354380, -0.203968,
		16.454159, 14.653999, 26.034658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.618631, 13.830802, 26.142418>,  <17.092968, 14.405933, 26.177435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.618631, 13.830802, 26.142418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.440506, 14.122972, 25.935276>,  <16.333632, 14.298275, 25.810991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.440506, 14.122972, 25.935276>,  <16.618631, 13.830802, 26.142418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.440506, 14.122972, 25.935276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185028, -0.640952, -0.744946,
		-0.876049, -0.235916, 0.420574,
		-0.445312, 0.730427, -0.517854,
		16.306911, 14.342100, 25.779921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.026472, 13.471168, 25.678320>,  <16.618631, 13.830802, 26.142418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.026472, 13.471168, 25.678320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.089510, 13.836320, 25.527689>,  <16.127333, 14.055411, 25.437311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.089510, 13.836320, 25.527689>,  <16.026472, 13.471168, 25.678320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.089510, 13.836320, 25.527689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293462, -0.320819, -0.900531,
		-0.942891, 0.252431, 0.217336,
		0.157597, 0.912882, -0.376577,
		16.136789, 14.110185, 25.414717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.382964, 13.714671, 25.351618>,  <16.026472, 13.471168, 25.678320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.382964, 13.714671, 25.351618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.668289, 13.917422, 25.158016>,  <15.839484, 14.039073, 25.041855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.668289, 13.917422, 25.158016>,  <15.382964, 13.714671, 25.351618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.668289, 13.917422, 25.158016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323446, -0.374567, -0.868955,
		-0.621747, 0.776385, -0.103236,
		0.713312, 0.506878, -0.484004,
		15.882283, 14.069486, 25.012815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.082714, 14.048753, 24.753157>,  <15.382964, 13.714671, 25.351618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.082714, 14.048753, 24.753157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.466823, 14.021003, 24.645035>,  <15.697288, 14.004353, 24.580162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.466823, 14.021003, 24.645035>,  <15.082714, 14.048753, 24.753157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.466823, 14.021003, 24.645035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276162, -0.375597, -0.884682,
		-0.040150, 0.924183, -0.379834,
		0.960272, -0.069375, -0.270304,
		15.754905, 14.000190, 24.563944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.139137, 14.394170, 24.109741>,  <15.082714, 14.048753, 24.753157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.139137, 14.394170, 24.109741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.489718, 14.201804, 24.119152>,  <15.700067, 14.086385, 24.124798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.489718, 14.201804, 24.119152>,  <15.139137, 14.394170, 24.109741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.489718, 14.201804, 24.119152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162410, -0.341279, -0.925825,
		0.453272, 0.807620, -0.377220,
		0.876452, -0.480914, 0.023527,
		15.752654, 14.057529, 24.126209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.542271, 14.611072, 23.521471>,  <15.139137, 14.394170, 24.109741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.542271, 14.611072, 23.521471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.612853, 14.232650, 23.630169>,  <15.655203, 14.005597, 23.695389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.612853, 14.232650, 23.630169>,  <15.542271, 14.611072, 23.521471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.612853, 14.232650, 23.630169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328943, -0.316884, -0.889596,
		0.927718, 0.067586, -0.367114,
		0.176456, -0.946053, 0.271747,
		15.665790, 13.948833, 23.711693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.946335, 14.262535, 22.927963>,  <15.542271, 14.611072, 23.521471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.946335, 14.262535, 22.927963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.809564, 13.946099, 23.130848>,  <15.727501, 13.756238, 23.252579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.809564, 13.946099, 23.130848>,  <15.946335, 14.262535, 22.927963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.809564, 13.946099, 23.130848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428545, -0.349086, -0.833360,
		0.836322, -0.502311, -0.219656,
		-0.341927, -0.791089, 0.507211,
		15.706985, 13.708773, 23.283010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.106117, 13.647913, 22.492311>,  <15.946335, 14.262535, 22.927963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.106117, 13.647913, 22.492311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.831151, 13.519383, 22.752838>,  <15.666172, 13.442266, 22.909155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.831151, 13.519383, 22.752838>,  <16.106117, 13.647913, 22.492311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.831151, 13.519383, 22.752838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529244, -0.392512, -0.752220,
		0.497356, -0.861791, 0.099759,
		-0.687414, -0.321325, 0.651316,
		15.624927, 13.422986, 22.948233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.879734, 13.018467, 22.299232>,  <16.106117, 13.647913, 22.492311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.879734, 13.018467, 22.299232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.578703, 13.131967, 22.536926>,  <15.398085, 13.200067, 22.679543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.578703, 13.131967, 22.536926>,  <15.879734, 13.018467, 22.299232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.578703, 13.131967, 22.536926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657705, -0.279483, -0.699509,
		-0.032407, -0.917266, 0.396956,
		-0.752578, 0.283749, 0.594233,
		15.352929, 13.217092, 22.715197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.623513, 12.361457, 22.531191>,  <15.879734, 13.018467, 22.299232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.623513, 12.361457, 22.531191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.330104, 12.630828, 22.567932>,  <15.154058, 12.792451, 22.589977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.330104, 12.630828, 22.567932>,  <15.623513, 12.361457, 22.531191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.330104, 12.630828, 22.567932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509651, -0.455578, -0.729866,
		-0.449634, -0.582217, 0.677387,
		-0.733543, 0.673403, 0.091885,
		15.110046, 12.832856, 22.595488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.976732, 11.883216, 22.614302>,  <15.623513, 12.361457, 22.531191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.976732, 11.883216, 22.614302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.854918, 12.253257, 22.523577>,  <14.781829, 12.475281, 22.469141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.854918, 12.253257, 22.523577>,  <14.976732, 11.883216, 22.614302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.854918, 12.253257, 22.523577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665892, -0.377041, -0.643760,
		-0.681062, -0.045015, 0.730841,
		-0.304536, 0.925102, -0.226813,
		14.763556, 12.530787, 22.455532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.241447, 11.948289, 22.733303>,  <14.976732, 11.883216, 22.614302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.241447, 11.948289, 22.733303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.351540, 12.192727, 22.436436>,  <14.417595, 12.339390, 22.258316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.351540, 12.192727, 22.436436>,  <14.241447, 11.948289, 22.733303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.351540, 12.192727, 22.436436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764270, -0.329238, -0.554520,
		-0.583214, 0.719836, 0.376426,
		0.275230, 0.611095, -0.742166,
		14.434109, 12.376056, 22.213785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.628761, 11.956796, 22.344845>,  <14.241447, 11.948289, 22.733303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.628761, 11.956796, 22.344845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.897362, 12.148303, 22.118618>,  <14.058522, 12.263207, 21.982882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.897362, 12.148303, 22.118618>,  <13.628761, 11.956796, 22.344845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.897362, 12.148303, 22.118618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498428, -0.272947, -0.822842,
		-0.548320, 0.834435, 0.055347,
		0.671501, 0.478768, -0.565568,
		14.098812, 12.291933, 21.948948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.161746, 12.139690, 21.885717>,  <13.628761, 11.956796, 22.344845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.161746, 12.139690, 21.885717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.513811, 12.197042, 21.704718>,  <13.725050, 12.231454, 21.596117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.513811, 12.197042, 21.704718>,  <13.161746, 12.139690, 21.885717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.513811, 12.197042, 21.704718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361448, -0.415480, -0.834705,
		-0.307684, 0.898231, -0.313865,
		0.880162, 0.143379, -0.452500,
		13.777860, 12.240056, 21.568968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.009984, 12.499522, 21.277283>,  <13.161746, 12.139690, 21.885717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.009984, 12.499522, 21.277283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.349050, 12.292069, 21.232584>,  <13.552489, 12.167598, 21.205765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.349050, 12.292069, 21.232584>,  <13.009984, 12.499522, 21.277283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.349050, 12.292069, 21.232584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344794, -0.378457, -0.859004,
		0.403215, 0.766676, -0.499626,
		0.847664, -0.518631, -0.111746,
		13.603349, 12.136480, 21.199060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.279278, 12.686161, 20.602968>,  <13.009984, 12.499522, 21.277283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.279278, 12.686161, 20.602968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.464240, 12.344883, 20.699499>,  <13.575217, 12.140116, 20.757418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.464240, 12.344883, 20.699499>,  <13.279278, 12.686161, 20.602968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.464240, 12.344883, 20.699499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342917, -0.423078, -0.838697,
		0.817672, 0.305063, -0.488209,
		0.462406, -0.853195, 0.241328,
		13.602962, 12.088924, 20.771898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.591445, 12.406361, 19.932589>,  <13.279278, 12.686161, 20.602968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.591445, 12.406361, 19.932589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.546638, 12.088411, 20.171127>,  <13.519753, 11.897641, 20.314251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.546638, 12.088411, 20.171127>,  <13.591445, 12.406361, 19.932589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.546638, 12.088411, 20.171127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350006, -0.530103, -0.772326,
		0.930026, -0.295240, -0.218828,
		-0.112020, -0.794874, 0.596345,
		13.513032, 11.849949, 20.350031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.816986, 11.875454, 19.537455>,  <13.591445, 12.406361, 19.932589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.816986, 11.875454, 19.537455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.567363, 11.683597, 19.784191>,  <13.417589, 11.568482, 19.932234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.567363, 11.683597, 19.784191>,  <13.816986, 11.875454, 19.537455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.567363, 11.683597, 19.784191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381100, -0.502332, -0.776161,
		0.682140, -0.719447, 0.130692,
		-0.624058, -0.479644, 0.616842,
		13.380145, 11.539703, 19.969244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.784361, 11.203342, 19.275845>,  <13.816986, 11.875454, 19.537455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.784361, 11.203342, 19.275845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.467562, 11.220231, 19.519470>,  <13.277482, 11.230365, 19.665646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.467562, 11.220231, 19.519470>,  <13.784361, 11.203342, 19.275845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.467562, 11.220231, 19.519470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505788, -0.604100, -0.615826,
		0.341933, -0.795789, 0.499801,
		-0.791998, 0.042222, 0.609062,
		13.229962, 11.232898, 19.702188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.469227, 10.492279, 19.224915>,  <13.784361, 11.203342, 19.275845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.469227, 10.492279, 19.224915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.183452, 10.729502, 19.373434>,  <13.011987, 10.871836, 19.462545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.183452, 10.729502, 19.373434>,  <13.469227, 10.492279, 19.224915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.183452, 10.729502, 19.373434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674809, -0.443727, -0.589694,
		-0.184966, -0.671856, 0.717215,
		-0.714437, 0.593056, 0.371300,
		12.969121, 10.907419, 19.484823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.999681, 10.025125, 19.410400>,  <13.469227, 10.492279, 19.224915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.999681, 10.025125, 19.410400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.825344, 10.383184, 19.372986>,  <12.720742, 10.598021, 19.350536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.825344, 10.383184, 19.372986>,  <12.999681, 10.025125, 19.410400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.825344, 10.383184, 19.372986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615178, -0.372150, -0.695026,
		-0.656962, -0.245379, 0.712875,
		-0.435841, 0.895150, -0.093536,
		12.694592, 10.651730, 19.344925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.254251, 9.909461, 19.468864>,  <12.999681, 10.025125, 19.410400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.254251, 9.909461, 19.468864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.312108, 10.263366, 19.291653>,  <12.346822, 10.475709, 19.185326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.312108, 10.263366, 19.291653>,  <12.254251, 9.909461, 19.468864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.312108, 10.263366, 19.291653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603883, -0.275751, -0.747855,
		-0.783839, 0.375707, 0.494408,
		0.144641, 0.884763, -0.443028,
		12.355500, 10.528794, 19.158745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.586011, 10.113370, 19.306658>,  <12.254251, 9.909461, 19.468864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.586011, 10.113370, 19.306658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.834407, 10.321735, 19.072386>,  <11.983444, 10.446754, 18.931822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.834407, 10.321735, 19.072386>,  <11.586011, 10.113370, 19.306658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.834407, 10.321735, 19.072386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728824, 0.108793, -0.676002,
		-0.288420, 0.846649, 0.447213,
		0.620990, 0.520913, -0.585680,
		12.020704, 10.478009, 18.896681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.193847, 10.648784, 19.215227>,  <11.586011, 10.113370, 19.306658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.193847, 10.648784, 19.215227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.440184, 10.625407, 18.900948>,  <11.587986, 10.611382, 18.712379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.440184, 10.625407, 18.900948>,  <11.193847, 10.648784, 19.215227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.440184, 10.625407, 18.900948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787326, -0.008611, -0.616476,
		0.029262, 0.998254, -0.051314,
		0.615842, -0.058440, -0.785700,
		11.624936, 10.607875, 18.665237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.860723, 11.098162, 18.800365>,  <11.193847, 10.648784, 19.215227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.860723, 11.098162, 18.800365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.122147, 10.913658, 18.560331>,  <11.279001, 10.802957, 18.416311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.122147, 10.913658, 18.560331>,  <10.860723, 11.098162, 18.800365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.122147, 10.913658, 18.560331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578273, 0.207220, -0.789088,
		0.488323, 0.862729, -0.131302,
		0.653560, -0.461258, -0.600083,
		11.318214, 10.775281, 18.380306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.991907, 11.548243, 18.275076>,  <10.860723, 11.098162, 18.800365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.991907, 11.548243, 18.275076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.119883, 11.195298, 18.137045>,  <11.196668, 10.983531, 18.054226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.119883, 11.195298, 18.137045>,  <10.991907, 11.548243, 18.275076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.119883, 11.195298, 18.137045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357852, 0.224699, -0.906340,
		0.877258, 0.413459, -0.243865,
		0.319938, -0.882361, -0.345076,
		11.215864, 10.930590, 18.033522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.230973, 11.736374, 17.628740>,  <10.991907, 11.548243, 18.275076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.230973, 11.736374, 17.628740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.170362, 11.343378, 17.585375>,  <11.133996, 11.107580, 17.559357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.170362, 11.343378, 17.585375>,  <11.230973, 11.736374, 17.628740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.170362, 11.343378, 17.585375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238771, 0.142812, -0.960517,
		0.959181, -0.119659, -0.256230,
		-0.151527, -0.982490, -0.108411,
		11.124905, 11.048631, 17.552851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.588579, 11.569480, 17.038986>,  <11.230973, 11.736374, 17.628740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.588579, 11.569480, 17.038986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.327110, 11.273098, 17.100563>,  <11.170229, 11.095268, 17.137510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.327110, 11.273098, 17.100563>,  <11.588579, 11.569480, 17.038986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.327110, 11.273098, 17.100563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397847, 0.163416, -0.902781,
		0.643763, -0.651368, -0.401607,
		-0.653671, -0.740956, 0.153944,
		11.131009, 11.050811, 17.146746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.725709, 11.100257, 16.584965>,  <11.588579, 11.569480, 17.038986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.725709, 11.100257, 16.584965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.346313, 11.019632, 16.682734>,  <11.118676, 10.971257, 16.741394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.346313, 11.019632, 16.682734>,  <11.725709, 11.100257, 16.584965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.346313, 11.019632, 16.682734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263986, 0.076283, -0.961505,
		0.175160, -0.976500, -0.125563,
		-0.948489, -0.201564, 0.244421,
		11.061767, 10.959164, 16.756060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.421052, 11.122047, 16.970531>,  <11.725709, 11.100257, 16.584965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.421052, 11.122047, 16.970531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.714397, 11.066683, 16.704292>,  <12.890405, 11.033464, 16.544548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.714397, 11.066683, 16.704292>,  <12.421052, 11.122047, 16.970531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.714397, 11.066683, 16.704292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513168, 0.754875, 0.408439,
		0.445911, -0.641097, 0.624626,
		0.733364, -0.138411, -0.665597,
		12.934406, 11.025160, 16.504614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.104385, 11.049283, 17.350407>,  <12.421052, 11.122047, 16.970531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.104385, 11.049283, 17.350407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.235991, 11.122257, 16.979792>,  <13.314954, 11.166041, 16.757423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.235991, 11.122257, 16.979792>,  <13.104385, 11.049283, 17.350407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.235991, 11.122257, 16.979792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637058, 0.681382, 0.360383,
		0.697072, -0.708827, 0.107960,
		0.329011, 0.182436, -0.926536,
		13.334694, 11.176988, 16.701832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.845209, 10.972915, 17.297199>,  <13.104385, 11.049283, 17.350407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.845209, 10.972915, 17.297199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.702583, 11.245891, 17.041969>,  <13.617008, 11.409676, 16.888832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.702583, 11.245891, 17.041969>,  <13.845209, 10.972915, 17.297199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.702583, 11.245891, 17.041969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497158, 0.716835, 0.488857,
		0.791009, -0.142915, -0.594878,
		-0.356564, 0.682439, -0.638074,
		13.595614, 11.450623, 16.850548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.239776, 11.467520, 17.527000>,  <13.845209, 10.972915, 17.297199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.239776, 11.467520, 17.527000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.025611, 11.671119, 17.257406>,  <13.897112, 11.793278, 17.095650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.025611, 11.671119, 17.257406>,  <14.239776, 11.467520, 17.527000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.025611, 11.671119, 17.257406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548217, 0.816490, 0.181114,
		0.642489, -0.272520, -0.716199,
		-0.535412, 0.508997, -0.673986,
		13.864987, 11.823817, 17.055210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.710685, 11.821491, 17.098490>,  <14.239776, 11.467520, 17.527000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.710685, 11.821491, 17.098490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.363346, 12.019133, 17.115618>,  <14.154943, 12.137717, 17.125895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.363346, 12.019133, 17.115618>,  <14.710685, 11.821491, 17.098490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.363346, 12.019133, 17.115618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454146, 0.757477, 0.469020,
		0.199308, 0.426720, -0.882149,
		-0.868348, 0.494104, 0.042822,
		14.102841, 12.167364, 17.128464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.839287, 12.488588, 17.019379>,  <14.710685, 11.821491, 17.098490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.839287, 12.488588, 17.019379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.465161, 12.546860, 17.148354>,  <14.240686, 12.581822, 17.225739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.465161, 12.546860, 17.148354>,  <14.839287, 12.488588, 17.019379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.465161, 12.546860, 17.148354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298105, 0.815329, 0.496359,
		-0.190584, 0.560372, -0.806015,
		-0.935313, 0.145679, 0.322439,
		14.184567, 12.590564, 17.245085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.786051, 13.292928, 16.900194>,  <14.839287, 12.488588, 17.019379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.786051, 13.292928, 16.900194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.551052, 13.113166, 17.169380>,  <14.410052, 13.005309, 17.330893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.551052, 13.113166, 17.169380>,  <14.786051, 13.292928, 16.900194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.551052, 13.113166, 17.169380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369379, 0.590997, 0.717134,
		-0.720004, 0.669893, -0.181209,
		-0.587497, -0.449405, 0.672965,
		14.374803, 12.978344, 17.371269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.389866, 13.843138, 17.266367>,  <14.786051, 13.292928, 16.900194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.389866, 13.843138, 17.266367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.410248, 13.521059, 17.502693>,  <14.422477, 13.327812, 17.644489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.410248, 13.521059, 17.502693>,  <14.389866, 13.843138, 17.266367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.410248, 13.521059, 17.502693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395547, 0.559478, 0.728373,
		-0.917031, 0.196580, 0.347001,
		0.050956, -0.805196, 0.590815,
		14.425534, 13.279500, 17.679937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.410040, 14.156844, 17.881578>,  <14.389866, 13.843138, 17.266367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.410040, 14.156844, 17.881578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.455355, 13.775196, 17.992445>,  <14.482543, 13.546207, 18.058966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.455355, 13.775196, 17.992445>,  <14.410040, 14.156844, 17.881578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.455355, 13.775196, 17.992445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424012, 0.298710, 0.854977,
		-0.898543, 0.020665, 0.438398,
		0.113286, -0.954120, 0.277167,
		14.489341, 13.488960, 18.075596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.129334, 14.070500, 18.563944>,  <14.410040, 14.156844, 17.881578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.129334, 14.070500, 18.563944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.348907, 13.740174, 18.512251>,  <14.480651, 13.541979, 18.481236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.348907, 13.740174, 18.512251>,  <14.129334, 14.070500, 18.563944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.348907, 13.740174, 18.512251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337631, 0.077628, 0.938072,
		-0.764643, -0.558571, 0.321434,
		0.548932, -0.825816, -0.129233,
		14.513587, 13.492430, 18.473480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.038108, 13.633782, 19.214193>,  <14.129334, 14.070500, 18.563944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.038108, 13.633782, 19.214193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.385736, 13.540684, 19.039589>,  <14.594314, 13.484824, 18.934826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.385736, 13.540684, 19.039589>,  <14.038108, 13.633782, 19.214193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.385736, 13.540684, 19.039589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399524, -0.190101, 0.896796,
		-0.291706, -0.953777, -0.072224,
		0.869073, -0.232746, -0.436511,
		14.646459, 13.470860, 18.908636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.300550, 13.251599, 19.699921>,  <14.038108, 13.633782, 19.214193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.300550, 13.251599, 19.699921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.621360, 13.341736, 19.478659>,  <14.813846, 13.395818, 19.345901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.621360, 13.341736, 19.478659>,  <14.300550, 13.251599, 19.699921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.621360, 13.341736, 19.478659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578210, -0.060686, 0.813628,
		0.149776, -0.972388, -0.178967,
		0.802023, 0.225343, -0.553155,
		14.861967, 13.409338, 19.312712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.848924, 12.811021, 19.906157>,  <14.300550, 13.251599, 19.699921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.848924, 12.811021, 19.906157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.026168, 13.121804, 19.727276>,  <15.132514, 13.308274, 19.619947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.026168, 13.121804, 19.727276>,  <14.848924, 12.811021, 19.906157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.026168, 13.121804, 19.727276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684504, 0.028890, 0.728436,
		0.578884, -0.628888, -0.519030,
		0.443110, 0.776959, -0.447201,
		15.159101, 13.354892, 19.593115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.692081, 12.735313, 20.029833>,  <14.848924, 12.811021, 19.906157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.692081, 12.735313, 20.029833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.675653, 13.117226, 19.912046>,  <15.665795, 13.346373, 19.841375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.675653, 13.117226, 19.912046>,  <15.692081, 12.735313, 20.029833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.675653, 13.117226, 19.912046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880591, 0.173840, 0.440839,
		0.472094, -0.241196, -0.847910,
		-0.041072, 0.954780, -0.294464,
		15.663331, 13.403660, 19.823708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.373587, 12.892690, 19.876755>,  <15.692081, 12.735313, 20.029833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.373587, 12.892690, 19.876755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.191641, 13.247672, 19.906471>,  <16.082474, 13.460661, 19.924301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.191641, 13.247672, 19.906471>,  <16.373587, 12.892690, 19.876755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.191641, 13.247672, 19.906471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771509, 0.351019, 0.530622,
		0.444825, 0.298678, -0.844347,
		-0.454867, 0.887455, 0.074291,
		16.055182, 13.513908, 19.928759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844706, 13.499434, 19.663719>,  <16.373587, 12.892690, 19.876755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.844706, 13.499434, 19.663719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.554739, 13.628679, 19.907061>,  <16.380758, 13.706226, 20.053064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.554739, 13.628679, 19.907061>,  <16.844706, 13.499434, 19.663719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.554739, 13.628679, 19.907061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688394, 0.308202, 0.656601,
		0.024662, 0.894767, -0.445851,
		-0.724917, 0.323115, 0.608352,
		16.337263, 13.725614, 20.089565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.266502, 14.070934, 20.124960>,  <16.844706, 13.499434, 19.663719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.266502, 14.070934, 20.124960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.933258, 13.970383, 20.322031>,  <16.733311, 13.910051, 20.440273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.933258, 13.970383, 20.322031>,  <17.266502, 14.070934, 20.124960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.933258, 13.970383, 20.322031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391264, 0.361746, 0.846199,
		-0.390942, 0.897746, -0.203019,
		-0.833113, -0.251380, 0.492678,
		16.683325, 13.894969, 20.469833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059618, 14.648325, 20.421490>,  <17.266502, 14.070934, 20.124960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059618, 14.648325, 20.421490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.874765, 14.368171, 20.639074>,  <16.763853, 14.200078, 20.769625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.874765, 14.368171, 20.639074>,  <17.059618, 14.648325, 20.421490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.874765, 14.368171, 20.639074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471691, 0.325292, 0.819569,
		-0.750961, 0.635330, 0.180038,
		-0.462132, -0.700386, 0.543961,
		16.736126, 14.158054, 20.802263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.739601, 14.959319, 20.992945>,  <17.059618, 14.648325, 20.421490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.739601, 14.959319, 20.992945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.797630, 14.583301, 21.116405>,  <16.832447, 14.357689, 21.190481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.797630, 14.583301, 21.116405>,  <16.739601, 14.959319, 20.992945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.797630, 14.583301, 21.116405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266397, 0.337543, 0.902827,
		-0.952883, -0.048751, 0.299394,
		0.145072, -0.940047, 0.308652,
		16.841152, 14.301287, 21.209002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514563, 14.980794, 21.748138>,  <16.739601, 14.959319, 20.992945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.514563, 14.980794, 21.748138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.733932, 14.650522, 21.695253>,  <16.865555, 14.452359, 21.663523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.733932, 14.650522, 21.695253>,  <16.514563, 14.980794, 21.748138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.733932, 14.650522, 21.695253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312119, 0.055447, 0.948424,
		-0.775764, -0.561407, 0.288119,
		0.548427, -0.825680, -0.132212,
		16.898460, 14.402818, 21.655590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.488235, 14.662841, 22.327085>,  <16.514563, 14.980794, 21.748138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.488235, 14.662841, 22.327085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.823553, 14.521225, 22.161234>,  <17.024744, 14.436255, 22.061722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.823553, 14.521225, 22.161234>,  <16.488235, 14.662841, 22.327085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.823553, 14.521225, 22.161234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449235, 0.017587, 0.893241,
		-0.308950, -0.935065, 0.173790,
		0.838295, -0.354039, -0.414630,
		17.075041, 14.415013, 22.036844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670645, 14.109205, 22.752974>,  <16.488235, 14.662841, 22.327085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670645, 14.109205, 22.752974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.000849, 14.249014, 22.575718>,  <17.198971, 14.332899, 22.469364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.000849, 14.249014, 22.575718>,  <16.670645, 14.109205, 22.752974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.000849, 14.249014, 22.575718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385669, 0.223904, 0.895057,
		0.412064, -0.909780, 0.050034,
		0.825508, 0.349524, -0.443137,
		17.248501, 14.353870, 22.442778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.143177, 13.922389, 23.150709>,  <16.670645, 14.109205, 22.752974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.143177, 13.922389, 23.150709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.351152, 14.191378, 22.940016>,  <17.475937, 14.352771, 22.813599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.351152, 14.191378, 22.940016>,  <17.143177, 13.922389, 23.150709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.351152, 14.191378, 22.940016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447341, 0.310960, 0.838564,
		0.727703, -0.671630, -0.139144,
		0.519937, 0.672470, -0.526735,
		17.507133, 14.393119, 22.781996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.875931, 13.833677, 23.311222>,  <17.143177, 13.922389, 23.150709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.875931, 13.833677, 23.311222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.827995, 14.206488, 23.174419>,  <17.799234, 14.430174, 23.092339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.827995, 14.206488, 23.174419>,  <17.875931, 13.833677, 23.311222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.827995, 14.206488, 23.174419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550902, 0.349014, 0.758087,
		0.825921, -0.097561, -0.555281,
		-0.119841, 0.932025, -0.342005,
		17.792044, 14.486095, 23.071817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.496883, 14.115643, 23.433121>,  <17.875931, 13.833677, 23.311222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.496883, 14.115643, 23.433121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.278484, 14.445053, 23.371553>,  <18.147446, 14.642699, 23.334612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.278484, 14.445053, 23.371553>,  <18.496883, 14.115643, 23.433121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.278484, 14.445053, 23.371553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558038, 0.494523, 0.666364,
		0.624885, 0.277940, -0.729567,
		-0.545997, 0.823527, -0.153919,
		18.114685, 14.692111, 23.325378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.999680, 14.675564, 23.387707>,  <18.496883, 14.115643, 23.433121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.999680, 14.675564, 23.387707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.661098, 14.851274, 23.508074>,  <18.457949, 14.956700, 23.580294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.661098, 14.851274, 23.508074>,  <18.999680, 14.675564, 23.387707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.661098, 14.851274, 23.508074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530193, 0.643218, 0.552418,
		0.049107, 0.627141, -0.777356,
		-0.846454, 0.439276, 0.300920,
		18.407162, 14.983057, 23.598351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.173384, 15.386069, 23.509857>,  <18.999680, 14.675564, 23.387707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.173384, 15.386069, 23.509857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.811554, 15.379548, 23.680260>,  <18.594456, 15.375635, 23.782501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.811554, 15.379548, 23.680260>,  <19.173384, 15.386069, 23.509857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.811554, 15.379548, 23.680260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333704, 0.594790, 0.731346,
		-0.265307, 0.803716, -0.532591,
		-0.904574, -0.016304, 0.426005,
		18.540182, 15.374657, 23.808062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.108044, 16.018330, 23.753902>,  <19.173384, 15.386069, 23.509857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.108044, 16.018330, 23.753902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.838604, 15.802923, 23.956390>,  <18.676939, 15.673679, 24.077883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.838604, 15.802923, 23.956390>,  <19.108044, 16.018330, 23.753902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.838604, 15.802923, 23.956390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161692, 0.560957, 0.811901,
		-0.721191, 0.628749, -0.290788,
		-0.673602, -0.538518, 0.506221,
		18.636524, 15.641368, 24.108257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.650953, 16.579105, 24.052509>,  <19.108044, 16.018330, 23.753902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.650953, 16.579105, 24.052509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.605520, 16.237101, 24.254917>,  <18.578260, 16.031898, 24.376362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.605520, 16.237101, 24.254917>,  <18.650953, 16.579105, 24.052509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.605520, 16.237101, 24.254917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006368, 0.509932, 0.860191,
		-0.993508, 0.094482, -0.063365,
		-0.113584, -0.855010, 0.506020,
		18.571445, 15.980597, 24.406723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.067186, 16.720331, 24.501465>,  <18.650953, 16.579105, 24.052509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.067186, 16.720331, 24.501465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.298832, 16.424702, 24.639099>,  <18.437820, 16.247324, 24.721680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.298832, 16.424702, 24.639099>,  <18.067186, 16.720331, 24.501465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.298832, 16.424702, 24.639099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023511, 0.406749, 0.913238,
		-0.814907, -0.536959, 0.218178,
		0.579115, -0.739074, 0.344086,
		18.472567, 16.202980, 24.742325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.896837, 16.600044, 25.197010>,  <18.067186, 16.720331, 24.501465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.896837, 16.600044, 25.197010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.255287, 16.422588, 25.192196>,  <18.470358, 16.316114, 25.189308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.255287, 16.422588, 25.192196>,  <17.896837, 16.600044, 25.197010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.255287, 16.422588, 25.192196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237882, 0.457264, 0.856926,
		-0.374662, -0.770776, 0.515300,
		0.896125, -0.443638, -0.012035,
		18.524124, 16.289497, 25.188585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.930393, 16.156273, 25.784866>,  <17.896837, 16.600044, 25.197010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.930393, 16.156273, 25.784866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.292639, 16.290144, 25.680674>,  <18.509987, 16.370466, 25.618158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.292639, 16.290144, 25.680674>,  <17.930393, 16.156273, 25.784866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.292639, 16.290144, 25.680674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275609, 0.002376, 0.961267,
		0.322335, -0.942329, -0.090089,
		0.905616, 0.334679, -0.260481,
		18.564323, 16.390547, 25.602530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.475668, 15.768672, 26.020489>,  <17.930393, 16.156273, 25.784866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.475668, 15.768672, 26.020489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.619337, 16.139585, 25.978268>,  <18.705538, 16.362133, 25.952934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.619337, 16.139585, 25.978268>,  <18.475668, 15.768672, 26.020489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.619337, 16.139585, 25.978268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296066, -0.005952, 0.955149,
		0.885065, -0.374314, -0.276675,
		0.359172, 0.927283, -0.105554,
		18.727089, 16.417770, 25.946602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.810509, 15.818327, 26.577768>,  <18.475668, 15.768672, 26.020489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.810509, 15.818327, 26.577768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.842495, 16.184797, 26.420681>,  <18.861687, 16.404678, 26.326427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.842495, 16.184797, 26.420681>,  <18.810509, 15.818327, 26.577768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.842495, 16.184797, 26.420681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285318, 0.356460, 0.889680,
		0.955091, -0.183194, -0.232896,
		0.079966, 0.916175, -0.392720,
		18.866486, 16.459650, 26.302864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.447754, 16.108713, 26.926678>,  <18.810509, 15.818327, 26.577768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.447754, 16.108713, 26.926678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.206963, 16.404125, 26.805222>,  <19.062489, 16.581373, 26.732347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.206963, 16.404125, 26.805222>,  <19.447754, 16.108713, 26.926678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.206963, 16.404125, 26.805222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140371, 0.472205, 0.870241,
		0.786079, 0.481243, -0.387924,
		-0.601977, 0.738531, -0.303638,
		19.026369, 16.625685, 26.714130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.650682, 16.687113, 27.228025>,  <19.447754, 16.108713, 26.926678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.650682, 16.687113, 27.228025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.300688, 16.836710, 27.105042>,  <19.090691, 16.926468, 27.031252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.300688, 16.836710, 27.105042>,  <19.650682, 16.687113, 27.228025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.300688, 16.836710, 27.105042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051711, 0.559223, 0.827403,
		0.481379, 0.739865, -0.469972,
		-0.874986, 0.373992, -0.307458,
		19.038193, 16.948908, 27.012804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.538168, 17.359222, 26.928816>,  <19.650682, 16.687113, 27.228025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.538168, 17.359222, 26.928816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.214819, 17.257549, 27.141201>,  <19.020809, 17.196547, 27.268633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.214819, 17.257549, 27.141201>,  <19.538168, 17.359222, 26.928816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.214819, 17.257549, 27.141201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269697, 0.641830, 0.717857,
		-0.523255, 0.723496, -0.450287,
		-0.808374, -0.254181, 0.530965,
		18.972307, 17.181295, 27.300491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.171158, 18.020990, 27.083483>,  <19.538168, 17.359222, 26.928816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.171158, 18.020990, 27.083483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.083490, 17.728662, 27.342052>,  <19.030890, 17.553265, 27.497194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.083490, 17.728662, 27.342052>,  <19.171158, 18.020990, 27.083483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.083490, 17.728662, 27.342052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214792, 0.610139, 0.762624,
		-0.951750, 0.305992, 0.023250,
		-0.219171, -0.730821, 0.646424,
		19.017738, 17.509417, 27.535980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.219845, 18.737720, 27.132231>,  <19.171158, 18.020990, 27.083483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.219845, 18.737720, 27.132231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.189217, 19.086708, 26.939178>,  <19.170839, 19.296101, 26.823347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.189217, 19.086708, 26.939178>,  <19.219845, 18.737720, 27.132231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.189217, 19.086708, 26.939178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658157, -0.407839, -0.632848,
		-0.748977, 0.269188, 0.605452,
		-0.076572, 0.872471, -0.482630,
		19.166245, 19.348450, 26.794390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.519548, 18.948719, 27.082174>,  <19.219845, 18.737720, 27.132231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.519548, 18.948719, 27.082174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.701855, 19.133488, 26.777830>,  <18.811237, 19.244349, 26.595224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.701855, 19.133488, 26.777830>,  <18.519548, 18.948719, 27.082174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.701855, 19.133488, 26.777830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780773, -0.202984, -0.590924,
		-0.427403, 0.863381, 0.268142,
		0.455764, 0.461921, -0.760860,
		18.838583, 19.272064, 26.549572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.973223, 19.363970, 26.785006>,  <18.519548, 18.948719, 27.082174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.973223, 19.363970, 26.785006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.263580, 19.336885, 26.511219>,  <18.437796, 19.320635, 26.346947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.263580, 19.336885, 26.511219>,  <17.973223, 19.363970, 26.785006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.263580, 19.336885, 26.511219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661876, -0.339441, -0.668356,
		-0.187079, 0.938187, -0.291216,
		0.725894, -0.067713, -0.684466,
		18.481348, 19.316572, 26.305880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.692589, 19.642054, 26.114735>,  <17.973223, 19.363970, 26.785006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.692589, 19.642054, 26.114735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.994125, 19.423162, 25.969261>,  <18.175047, 19.291828, 25.881977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.994125, 19.423162, 25.969261>,  <17.692589, 19.642054, 26.114735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.994125, 19.423162, 25.969261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572704, -0.275910, -0.771935,
		0.322081, 0.790199, -0.521392,
		0.753839, -0.547229, -0.363684,
		18.220278, 19.258993, 25.860155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.708551, 19.778421, 25.424231>,  <17.692589, 19.642054, 26.114735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.708551, 19.778421, 25.424231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.917631, 19.437864, 25.441732>,  <18.043079, 19.233530, 25.452234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.917631, 19.437864, 25.441732>,  <17.708551, 19.778421, 25.424231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.917631, 19.437864, 25.441732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496658, -0.345828, -0.796074,
		0.692905, 0.394374, -0.603616,
		0.522698, -0.851394, 0.043757,
		18.074440, 19.182446, 25.454859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.891562, 19.692627, 24.737862>,  <17.708551, 19.778421, 25.424231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.891562, 19.692627, 24.737862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.936918, 19.341282, 24.923601>,  <17.964132, 19.130474, 25.035046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.936918, 19.341282, 24.923601>,  <17.891562, 19.692627, 24.737862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.936918, 19.341282, 24.923601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373944, -0.470729, -0.799112,
		0.920493, -0.083026, -0.381836,
		0.113394, -0.878363, 0.464350,
		17.970936, 19.077774, 25.062906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265530, 19.257933, 24.274698>,  <17.891562, 19.692627, 24.737862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.265530, 19.257933, 24.274698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.087757, 19.001303, 24.524775>,  <17.981094, 18.847324, 24.674820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.087757, 19.001303, 24.524775>,  <18.265530, 19.257933, 24.274698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.087757, 19.001303, 24.524775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386704, -0.492127, -0.779917,
		0.808048, -0.588383, -0.029382,
		-0.444431, -0.641573, 0.625192,
		17.954428, 18.808830, 24.712332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.413233, 18.562220, 23.989456>,  <18.265530, 19.257933, 24.274698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.413233, 18.562220, 23.989456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.119974, 18.464273, 24.243240>,  <17.944019, 18.405506, 24.395512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.119974, 18.464273, 24.243240>,  <18.413233, 18.562220, 23.989456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.119974, 18.464273, 24.243240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495746, -0.446217, -0.745068,
		0.465548, -0.860774, 0.205751,
		-0.733144, -0.244865, 0.634461,
		17.900030, 18.390814, 24.433578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.260387, 17.880035, 23.824804>,  <18.413233, 18.562220, 23.989456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.260387, 17.880035, 23.824804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.937277, 18.016811, 24.016878>,  <17.743410, 18.098877, 24.132122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.937277, 18.016811, 24.016878>,  <18.260387, 17.880035, 23.824804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.937277, 18.016811, 24.016878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588396, -0.418095, -0.692088,
		-0.035890, -0.841591, 0.538922,
		-0.807776, 0.341939, 0.480184,
		17.694944, 18.119392, 24.160933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.836012, 17.272432, 24.023529>,  <18.260387, 17.880035, 23.824804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.836012, 17.272432, 24.023529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.618511, 17.605848, 23.984449>,  <17.488010, 17.805899, 23.961000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.618511, 17.605848, 23.984449>,  <17.836012, 17.272432, 24.023529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.618511, 17.605848, 23.984449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519511, -0.425734, -0.740850,
		-0.659124, -0.352081, 0.664526,
		-0.543751, 0.833540, -0.097702,
		17.455385, 17.855911, 23.955139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.240065, 16.974974, 23.728676>,  <17.836012, 17.272432, 24.023529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.240065, 16.974974, 23.728676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.190113, 17.368830, 23.679867>,  <17.160143, 17.605143, 23.650581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.190113, 17.368830, 23.679867>,  <17.240065, 16.974974, 23.728676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.190113, 17.368830, 23.679867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576553, -0.172106, -0.798728,
		-0.807460, -0.029391, 0.589189,
		-0.124879, 0.984640, -0.122023,
		17.152649, 17.664221, 23.643259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532650, 17.010489, 23.733641>,  <17.240065, 16.974974, 23.728676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532650, 17.010489, 23.733641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.710066, 17.318033, 23.549412>,  <16.816515, 17.502560, 23.438875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.710066, 17.318033, 23.549412>,  <16.532650, 17.010489, 23.733641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.710066, 17.318033, 23.549412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467259, -0.240152, -0.850879,
		-0.764816, 0.592603, 0.252741,
		0.443538, 0.768861, -0.460572,
		16.843126, 17.548691, 23.411240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.016930, 17.321697, 23.210392>,  <16.532650, 17.010489, 23.733641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.016930, 17.321697, 23.210392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.384218, 17.419733, 23.085938>,  <16.604591, 17.478554, 23.011265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.384218, 17.419733, 23.085938>,  <16.016930, 17.321697, 23.210392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.384218, 17.419733, 23.085938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289526, -0.120703, -0.949529,
		-0.270273, 0.961957, -0.039873,
		0.918219, 0.245088, -0.311135,
		16.659683, 17.493259, 22.992598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.960499, 17.767107, 22.572636>,  <16.016930, 17.321697, 23.210392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.960499, 17.767107, 22.572636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.343763, 17.658455, 22.536533>,  <16.573723, 17.593264, 22.514872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.343763, 17.658455, 22.536533>,  <15.960499, 17.767107, 22.572636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.343763, 17.658455, 22.536533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103813, -0.035936, -0.993947,
		0.266742, 0.961731, -0.062630,
		0.958161, -0.271629, -0.090254,
		16.631212, 17.576965, 22.509457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.314123, 18.273361, 22.025248>,  <15.960499, 17.767107, 22.572636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.314123, 18.273361, 22.025248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.504967, 17.924072, 22.064953>,  <16.619473, 17.714499, 22.088776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.504967, 17.924072, 22.064953>,  <16.314123, 18.273361, 22.025248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.504967, 17.924072, 22.064953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005395, -0.115855, -0.993252,
		0.878829, 0.473352, -0.059986,
		0.477107, -0.873221, 0.099263,
		16.648098, 17.662106, 22.094732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.763479, 18.244658, 21.366989>,  <16.314123, 18.273361, 22.025248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.763479, 18.244658, 21.366989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.760592, 17.882921, 21.537689>,  <16.758858, 17.665880, 21.640110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.760592, 17.882921, 21.537689>,  <16.763479, 18.244658, 21.366989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.760592, 17.882921, 21.537689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178503, -0.418743, -0.890388,
		0.983913, -0.082606, -0.158403,
		-0.007222, -0.904340, 0.426752,
		16.758425, 17.611620, 21.665714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.089891, 17.909172, 20.914902>,  <16.763479, 18.244658, 21.366989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.089891, 17.909172, 20.914902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.907265, 17.603127, 21.096516>,  <16.797688, 17.419500, 21.205484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.907265, 17.603127, 21.096516>,  <17.089891, 17.909172, 20.914902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.907265, 17.603127, 21.096516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071674, -0.477040, -0.875954,
		0.886797, -0.432475, 0.162963,
		-0.456568, -0.765113, 0.454035,
		16.770294, 17.373592, 21.232727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475323, 17.208759, 20.734699>,  <17.089891, 17.909172, 20.914902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.475323, 17.208759, 20.734699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.109232, 17.105343, 20.858322>,  <16.889578, 17.043293, 20.932495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.109232, 17.105343, 20.858322>,  <17.475323, 17.208759, 20.734699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.109232, 17.105343, 20.858322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188917, -0.402149, -0.895872,
		0.355904, -0.878313, 0.319216,
		-0.915228, -0.258539, 0.309055,
		16.834663, 17.027781, 20.951038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.397707, 16.456203, 20.603479>,  <17.475323, 17.208759, 20.734699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.397707, 16.456203, 20.603479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.021065, 16.587172, 20.634920>,  <16.795080, 16.665752, 20.653786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.021065, 16.587172, 20.634920>,  <17.397707, 16.456203, 20.603479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.021065, 16.587172, 20.634920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259479, -0.556783, -0.789090,
		-0.214598, -0.763406, 0.609228,
		-0.941604, 0.327419, 0.078603,
		16.738583, 16.685398, 20.658501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.892733, 15.850621, 20.646667>,  <17.397707, 16.456203, 20.603479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.892733, 15.850621, 20.646667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.698122, 16.167429, 20.499155>,  <16.581356, 16.357513, 20.410648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.698122, 16.167429, 20.499155>,  <16.892733, 15.850621, 20.646667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.698122, 16.167429, 20.499155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315738, -0.552973, -0.771058,
		-0.814617, -0.258703, 0.519106,
		-0.486527, 0.792019, -0.368779,
		16.552164, 16.405035, 20.388521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.195040, 15.715791, 20.739620>,  <16.892733, 15.850621, 20.646667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.195040, 15.715791, 20.739620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.233549, 15.986144, 20.447342>,  <16.256655, 16.148355, 20.271975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.233549, 15.986144, 20.447342>,  <16.195040, 15.715791, 20.739620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.233549, 15.986144, 20.447342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373902, -0.655782, -0.655856,
		-0.922458, 0.336350, 0.189579,
		0.096274, 0.675883, -0.730694,
		16.262432, 16.188910, 20.228134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.852821, 15.457105, 20.169241>,  <16.195040, 15.715791, 20.739620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.852821, 15.457105, 20.169241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.021866, 15.763233, 19.975054>,  <16.123293, 15.946911, 19.858541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.021866, 15.763233, 19.975054>,  <15.852821, 15.457105, 20.169241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.021866, 15.763233, 19.975054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286589, -0.395322, -0.872689,
		-0.859806, 0.507939, 0.052265,
		0.422612, 0.765322, -0.485470,
		16.148649, 15.992830, 19.829412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.390344, 15.698846, 19.641426>,  <15.852821, 15.457105, 20.169241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.390344, 15.698846, 19.641426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.757267, 15.806870, 19.524387>,  <15.977421, 15.871685, 19.454165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.757267, 15.806870, 19.524387>,  <15.390344, 15.698846, 19.641426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.757267, 15.806870, 19.524387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121375, -0.510217, -0.851438,
		-0.379228, 0.816545, -0.435247,
		0.917308, 0.270061, -0.292596,
		16.032459, 15.887889, 19.436609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320207, 16.000601, 18.979151>,  <15.390344, 15.698846, 19.641426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.320207, 16.000601, 18.979151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.711200, 15.917804, 18.962746>,  <15.945796, 15.868126, 18.952904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.711200, 15.917804, 18.962746>,  <15.320207, 16.000601, 18.979151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.711200, 15.917804, 18.962746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148770, -0.538171, -0.829602,
		0.149650, 0.817023, -0.556847,
		0.977483, -0.206992, -0.041011,
		16.004444, 15.855706, 18.950443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.607928, 16.274933, 18.341551>,  <15.320207, 16.000601, 18.979151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.607928, 16.274933, 18.341551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.871417, 15.993919, 18.449276>,  <16.029510, 15.825311, 18.513912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.871417, 15.993919, 18.449276>,  <15.607928, 16.274933, 18.341551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.871417, 15.993919, 18.449276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117560, -0.257445, -0.959115,
		0.743145, 0.663451, -0.086994,
		0.658722, -0.702535, 0.269314,
		16.069035, 15.783159, 18.530069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.079166, 16.304052, 17.840424>,  <15.607928, 16.274933, 18.341551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.079166, 16.304052, 17.840424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.180098, 15.948601, 17.993610>,  <16.240656, 15.735330, 18.085524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.180098, 15.948601, 17.993610>,  <16.079166, 16.304052, 17.840424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.180098, 15.948601, 17.993610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385295, -0.270779, -0.882172,
		0.887625, 0.370153, 0.274060,
		0.252329, -0.888631, 0.382968,
		16.255796, 15.682012, 18.108501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.692192, 16.221153, 17.748756>,  <16.079166, 16.304052, 17.840424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.692192, 16.221153, 17.748756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.578905, 15.839910, 17.791416>,  <16.510933, 15.611164, 17.817013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.578905, 15.839910, 17.791416>,  <16.692192, 16.221153, 17.748756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.578905, 15.839910, 17.791416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478707, -0.236850, -0.845424,
		0.831040, -0.188384, 0.523339,
		-0.283217, -0.953107, 0.106651,
		16.493940, 15.553977, 17.823412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.300396, 15.749831, 17.638775>,  <16.692192, 16.221153, 17.748756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.300396, 15.749831, 17.638775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.999840, 15.493128, 17.577381>,  <16.819506, 15.339106, 17.540545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.999840, 15.493128, 17.577381>,  <17.300396, 15.749831, 17.638775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.999840, 15.493128, 17.577381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478229, -0.369360, -0.796787,
		0.454654, -0.672099, 0.584441,
		-0.751390, -0.641760, -0.153486,
		16.774424, 15.300600, 17.531336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643854, 15.016027, 17.528519>,  <17.300396, 15.749831, 17.638775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.643854, 15.016027, 17.528519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.273863, 14.995556, 17.377893>,  <17.051868, 14.983273, 17.287519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.273863, 14.995556, 17.377893>,  <17.643854, 15.016027, 17.528519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.273863, 14.995556, 17.377893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368835, -0.359575, -0.857127,
		-0.091535, -0.931712, 0.351475,
		-0.924977, -0.051180, -0.376561,
		16.996370, 14.980202, 17.264925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.528500, 14.278421, 17.315823>,  <17.643854, 15.016027, 17.528519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.528500, 14.278421, 17.315823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.245827, 14.502356, 17.142763>,  <17.076223, 14.636716, 17.038927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.245827, 14.502356, 17.142763>,  <17.528500, 14.278421, 17.315823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.245827, 14.502356, 17.142763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218982, -0.408402, -0.886146,
		-0.672789, -0.720966, 0.166017,
		-0.706683, 0.559835, -0.432648,
		17.033821, 14.670306, 17.012968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.122980, 13.752831, 16.958452>,  <17.528500, 14.278421, 17.315823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.122980, 13.752831, 16.958452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.066069, 14.107055, 16.781570>,  <17.031921, 14.319589, 16.675442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.066069, 14.107055, 16.781570>,  <17.122980, 13.752831, 16.958452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.066069, 14.107055, 16.781570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240588, -0.402411, -0.883280,
		-0.960143, -0.232062, -0.155800,
		-0.142280, 0.885558, -0.442203,
		17.023384, 14.372722, 16.648909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.848392, 13.576895, 16.279442>,  <17.122980, 13.752831, 16.958452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.848392, 13.576895, 16.279442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.957056, 13.958952, 16.232283>,  <17.022255, 14.188187, 16.203987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.957056, 13.958952, 16.232283>,  <16.848392, 13.576895, 16.279442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.957056, 13.958952, 16.232283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421162, -0.228142, -0.877823,
		-0.865346, 0.188816, -0.464247,
		0.271661, 0.955144, -0.117899,
		17.038555, 14.245495, 16.196913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616039, 13.789909, 15.647825>,  <16.848392, 13.576895, 16.279442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.616039, 13.789909, 15.647825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.918747, 14.034744, 15.739611>,  <17.100370, 14.181645, 15.794682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.918747, 14.034744, 15.739611>,  <16.616039, 13.789909, 15.647825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.918747, 14.034744, 15.739611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319511, -0.040118, -0.946733,
		-0.570277, 0.789772, -0.225929,
		0.756767, 0.612087, 0.229463,
		17.145777, 14.218370, 15.808450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.544800, 14.242494, 15.075350>,  <16.616039, 13.789909, 15.647825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.544800, 14.242494, 15.075350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.914831, 14.277464, 15.223179>,  <17.136850, 14.298446, 15.311876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.914831, 14.277464, 15.223179>,  <16.544800, 14.242494, 15.075350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.914831, 14.277464, 15.223179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368062, 0.033392, -0.929201,
		-0.093577, 0.995611, -0.001288,
		0.925080, 0.087425, 0.369572,
		17.192356, 14.303692, 15.334050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817926, 14.795598, 14.736343>,  <16.544800, 14.242494, 15.075350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817926, 14.795598, 14.736343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.126457, 14.579400, 14.870756>,  <17.311577, 14.449681, 14.951404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.126457, 14.579400, 14.870756>,  <16.817926, 14.795598, 14.736343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.126457, 14.579400, 14.870756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433982, 0.060476, -0.898889,
		0.465524, 0.839171, 0.281212,
		0.771328, -0.540496, 0.336032,
		17.357855, 14.417252, 14.971566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.427380, 15.240685, 14.664191>,  <16.817926, 14.795598, 14.736343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.427380, 15.240685, 14.664191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.557909, 14.862634, 14.670435>,  <17.636227, 14.635803, 14.674181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.557909, 14.862634, 14.670435>,  <17.427380, 15.240685, 14.664191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.557909, 14.862634, 14.670435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432175, 0.134490, -0.891705,
		0.840676, 0.297731, 0.452349,
		0.326324, -0.945129, 0.015610,
		17.655806, 14.579095, 14.675117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.112663, 15.318742, 14.495716>,  <17.427380, 15.240685, 14.664191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.112663, 15.318742, 14.495716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018515, 14.934274, 14.438094>,  <17.962025, 14.703593, 14.403521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018515, 14.934274, 14.438094>,  <18.112663, 15.318742, 14.495716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.018515, 14.934274, 14.438094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599912, -0.027066, -0.799608,
		0.764660, -0.274625, 0.582989,
		-0.235371, -0.961170, -0.144055,
		17.947903, 14.645923, 14.394877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.731089, 14.978811, 14.301120>,  <18.112663, 15.318742, 14.495716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.731089, 14.978811, 14.301120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.457758, 14.709903, 14.187195>,  <18.293760, 14.548557, 14.118840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.457758, 14.709903, 14.187195>,  <18.731089, 14.978811, 14.301120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.457758, 14.709903, 14.187195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502902, -0.150587, -0.851124,
		0.529298, -0.724827, 0.440987,
		-0.683325, -0.672272, -0.284812,
		18.252760, 14.508222, 14.101751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.112171, 14.462255, 14.029689>,  <18.731089, 14.978811, 14.301120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.112171, 14.462255, 14.029689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.742441, 14.408365, 13.886878>,  <18.520603, 14.376031, 13.801191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.742441, 14.408365, 13.886878>,  <19.112171, 14.462255, 14.029689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.742441, 14.408365, 13.886878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372508, -0.115527, -0.920810,
		0.082812, -0.984125, 0.156972,
		-0.924327, -0.134728, -0.357027,
		18.465143, 14.367948, 13.779770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.172710, 13.785148, 13.564417>,  <19.112171, 14.462255, 14.029689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.172710, 13.785148, 13.564417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.853741, 14.001496, 13.457406>,  <18.662359, 14.131306, 13.393200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.853741, 14.001496, 13.457406>,  <19.172710, 13.785148, 13.564417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.853741, 14.001496, 13.457406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279214, -0.062297, -0.958206,
		-0.534934, -0.838794, -0.101342,
		-0.797425, 0.540873, -0.267527,
		18.614513, 14.163758, 13.377148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.780655, 13.415669, 12.996724>,  <19.172710, 13.785148, 13.564417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.780655, 13.415669, 12.996724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.726229, 13.811650, 12.981320>,  <18.693573, 14.049238, 12.972078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.726229, 13.811650, 12.981320>,  <18.780655, 13.415669, 12.996724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.726229, 13.811650, 12.981320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147506, -0.018193, -0.988894,
		-0.979657, -0.140234, -0.143549,
		-0.136065, 0.989951, -0.038509,
		18.685410, 14.108636, 12.969768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.174091, 13.519808, 12.560521>,  <18.780655, 13.415669, 12.996724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.174091, 13.519808, 12.560521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.450529, 13.808576, 12.546549>,  <18.616392, 13.981836, 12.538165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.450529, 13.808576, 12.546549>,  <18.174091, 13.519808, 12.560521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.450529, 13.808576, 12.546549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073986, -0.118737, -0.990165,
		-0.718969, 0.681713, -0.135470,
		0.691094, 0.721921, -0.034931,
		18.657858, 14.025152, 12.536070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.955193, 14.077993, 12.003153>,  <18.174091, 13.519808, 12.560521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.955193, 14.077993, 12.003153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.321438, 13.932805, 12.072322>,  <18.541185, 13.845692, 12.113823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.321438, 13.932805, 12.072322>,  <17.955193, 14.077993, 12.003153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.321438, 13.932805, 12.072322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081221, -0.254241, -0.963724,
		0.393768, 0.896445, -0.203306,
		0.915615, -0.362971, 0.172922,
		18.596123, 13.823914, 12.124198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.378738, 14.300653, 11.373471>,  <17.955193, 14.077993, 12.003153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.378738, 14.300653, 11.373471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.537025, 13.974620, 11.542728>,  <18.631998, 13.779000, 11.644282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.537025, 13.974620, 11.542728>,  <18.378738, 14.300653, 11.373471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.537025, 13.974620, 11.542728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183519, -0.381276, -0.906062,
		0.899849, 0.436198, -0.001294,
		0.395717, -0.815082, 0.423142,
		18.655741, 13.730095, 11.669671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.074732, 14.058168, 10.996359>,  <18.378738, 14.300653, 11.373471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.074732, 14.058168, 10.996359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.958191, 13.737924, 11.205790>,  <18.888266, 13.545776, 11.331448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.958191, 13.737924, 11.205790>,  <19.074732, 14.058168, 10.996359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.958191, 13.737924, 11.205790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173154, -0.582417, -0.794234,
		0.940814, -0.140744, 0.308319,
		-0.291354, -0.800613, 0.523576,
		18.870785, 13.497740, 11.362863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.529741, 13.577449, 11.248195>,  <19.074732, 14.058168, 10.996359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.529741, 13.577449, 11.248195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.215900, 13.332945, 11.206700>,  <19.027596, 13.186242, 11.181804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.215900, 13.332945, 11.206700>,  <19.529741, 13.577449, 11.248195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.215900, 13.332945, 11.206700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548076, -0.605584, -0.576958,
		0.289852, -0.509537, 0.810159,
		-0.784601, -0.611261, -0.103735,
		18.980520, 13.149567, 11.175580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.660652, 12.879990, 11.454462>,  <19.529741, 13.577449, 11.248195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.660652, 12.879990, 11.454462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.388157, 12.875622, 11.161670>,  <19.224659, 12.873001, 10.985994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.388157, 12.875622, 11.161670>,  <19.660652, 12.879990, 11.454462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.388157, 12.875622, 11.161670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559589, -0.652437, -0.511064,
		-0.471990, -0.757764, 0.450577,
		-0.681239, -0.010921, -0.731980,
		19.183784, 12.872346, 10.942076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.408239, 12.181529, 11.373405>,  <19.660652, 12.879990, 11.454462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.408239, 12.181529, 11.373405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.427256, 12.441066, 11.069631>,  <19.438665, 12.596787, 10.887365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.427256, 12.441066, 11.069631>,  <19.408239, 12.181529, 11.373405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.427256, 12.441066, 11.069631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288028, -0.736907, -0.611562,
		-0.956441, -0.189666, -0.221916,
		0.047539, 0.648842, -0.759437,
		19.441517, 12.635718, 10.841800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.280025, 11.614020, 11.923985>,  <19.408239, 12.181529, 11.373405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.280025, 11.614020, 11.923985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.657360, 11.482278, 11.940183>,  <19.883760, 11.403233, 11.949902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.657360, 11.482278, 11.940183>,  <19.280025, 11.614020, 11.923985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.657360, 11.482278, 11.940183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254698, 0.640413, -0.724569,
		0.212706, 0.693827, 0.688011,
		0.943337, -0.329355, 0.040496,
		19.940361, 11.383471, 11.952332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.834560, 12.143195, 12.128513>,  <19.280025, 11.614020, 11.923985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.834560, 12.143195, 12.128513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.005901, 11.849338, 11.918061>,  <20.108706, 11.673023, 11.791790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.005901, 11.849338, 11.918061>,  <19.834560, 12.143195, 12.128513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.005901, 11.849338, 11.918061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202750, 0.645546, -0.736317,
		0.880572, 0.208730, 0.425470,
		0.428352, -0.734644, -0.526129,
		20.134407, 11.628944, 11.760222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.411041, 12.427968, 11.704142>,  <19.834560, 12.143195, 12.128513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.411041, 12.427968, 11.704142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.382233, 12.073631, 11.520796>,  <20.364946, 11.861030, 11.410789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.382233, 12.073631, 11.520796>,  <20.411041, 12.427968, 11.704142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.382233, 12.073631, 11.520796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292329, 0.420628, -0.858846,
		0.953602, -0.195850, 0.228662,
		-0.072023, -0.885841, -0.458364,
		20.360626, 11.807878, 11.383286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.966549, 12.283645, 11.288041>,  <20.411041, 12.427968, 11.704142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.966549, 12.283645, 11.288041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682796, 12.060263, 11.116038>,  <20.512545, 11.926233, 11.012836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682796, 12.060263, 11.116038>,  <20.966549, 12.283645, 11.288041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682796, 12.060263, 11.116038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271521, 0.346477, -0.897903,
		0.650427, -0.753711, -0.094151,
		-0.709380, -0.558457, -0.430006,
		20.469982, 11.892726, 10.987037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.340940, 12.008814, 10.715665>,  <20.966549, 12.283645, 11.288041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.340940, 12.008814, 10.715665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.948957, 11.975020, 10.643506>,  <20.713768, 11.954744, 10.600211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.948957, 11.975020, 10.643506>,  <21.340940, 12.008814, 10.715665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.948957, 11.975020, 10.643506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140836, 0.346606, -0.927378,
		0.140873, -0.934198, -0.327762,
		-0.979959, -0.084482, -0.180396,
		20.654970, 11.949676, 10.589387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.341022, 11.729619, 10.058784>,  <21.340940, 12.008814, 10.715665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.341022, 11.729619, 10.058784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.991543, 11.912765, 10.124524>,  <20.781855, 12.022652, 10.163968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.991543, 11.912765, 10.124524>,  <21.341022, 11.729619, 10.058784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.991543, 11.912765, 10.124524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030684, 0.389038, -0.920711,
		-0.485498, -0.799382, -0.353951,
		-0.873699, 0.457864, 0.164348,
		20.729433, 12.050123, 10.173829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.986063, 11.629468, 9.408068>,  <21.341022, 11.729619, 10.058784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.986063, 11.629468, 9.408068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.761028, 11.907237, 9.587522>,  <20.626007, 12.073898, 9.695194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.761028, 11.907237, 9.587522>,  <20.986063, 11.629468, 9.408068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.761028, 11.907237, 9.587522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161018, 0.440229, -0.883330,
		-0.810907, -0.569187, -0.135852,
		-0.562586, 0.694423, 0.448634,
		20.592253, 12.115564, 9.722112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.428104, 11.793804, 8.996673>,  <20.986063, 11.629468, 9.408068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.428104, 11.793804, 8.996673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.404646, 12.129174, 9.213413>,  <20.390572, 12.330397, 9.343458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.404646, 12.129174, 9.213413>,  <20.428104, 11.793804, 8.996673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.404646, 12.129174, 9.213413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191624, 0.523238, -0.830363,
		-0.979715, -0.152529, 0.129976,
		-0.058646, 0.838425, 0.541852,
		20.387053, 12.380702, 9.375969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.934954, 12.122644, 8.681152>,  <20.428104, 11.793804, 8.996673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.934954, 12.122644, 8.681152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.147728, 12.410140, 8.860243>,  <20.275393, 12.582638, 8.967697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.147728, 12.410140, 8.860243>,  <19.934954, 12.122644, 8.681152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.147728, 12.410140, 8.860243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096864, 0.576914, -0.811041,
		-0.841227, 0.388052, 0.376501,
		0.531935, 0.718739, 0.447727,
		20.307308, 12.625762, 8.994561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.597651, 12.758658, 8.523634>,  <19.934954, 12.122644, 8.681152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.597651, 12.758658, 8.523634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.968994, 12.861547, 8.630957>,  <20.191799, 12.923280, 8.695350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.968994, 12.861547, 8.630957>,  <19.597651, 12.758658, 8.523634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.968994, 12.861547, 8.630957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046494, 0.635827, -0.770430,
		-0.368767, 0.727709, 0.578316,
		0.928358, 0.257221, 0.268306,
		20.247501, 12.938713, 8.711449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.601765, 13.416790, 8.421099>,  <19.597651, 12.758658, 8.523634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.601765, 13.416790, 8.421099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.990614, 13.325644, 8.443207>,  <20.223923, 13.270956, 8.456471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.990614, 13.325644, 8.443207>,  <19.601765, 13.416790, 8.421099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.990614, 13.325644, 8.443207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206880, 0.722613, -0.659569,
		0.110354, 0.652617, 0.749609,
		0.972123, -0.227865, 0.055271,
		20.282251, 13.257284, 8.459788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.931767, 14.090758, 8.598951>,  <19.601765, 13.416790, 8.421099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.931767, 14.090758, 8.598951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195034, 13.844115, 8.426157>,  <20.352995, 13.696130, 8.322480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195034, 13.844115, 8.426157>,  <19.931767, 14.090758, 8.598951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.195034, 13.844115, 8.426157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307564, 0.743931, -0.593271,
		0.687183, 0.257608, 0.679277,
		0.658167, -0.616607, -0.431986,
		20.392485, 13.659133, 8.296561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.598452, 14.443121, 8.660460>,  <19.931767, 14.090758, 8.598951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.598452, 14.443121, 8.660460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.630373, 14.173596, 8.366628>,  <20.649525, 14.011882, 8.190329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.630373, 14.173596, 8.366628>,  <20.598452, 14.443121, 8.660460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.630373, 14.173596, 8.366628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212796, 0.731459, -0.647831,
		0.973832, -0.104618, 0.201756,
		0.079802, -0.673812, -0.734581,
		20.654314, 13.971453, 8.146254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.310122, 14.477600, 8.337596>,  <20.598452, 14.443121, 8.660460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.310122, 14.477600, 8.337596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.063673, 14.314970, 8.067755>,  <20.915804, 14.217392, 7.905850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.063673, 14.314970, 8.067755>,  <21.310122, 14.477600, 8.337596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.063673, 14.314970, 8.067755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392793, 0.583776, -0.710576,
		0.682722, -0.702781, -0.199976,
		-0.616120, -0.406577, -0.674605,
		20.878836, 14.192997, 7.865374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.713163, 14.375993, 7.785355>,  <21.310122, 14.477600, 8.337596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.713163, 14.375993, 7.785355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.344284, 14.404505, 7.633317>,  <21.122957, 14.421612, 7.542094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.344284, 14.404505, 7.633317>,  <21.713163, 14.375993, 7.785355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.344284, 14.404505, 7.633317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349559, 0.574050, -0.740456,
		0.165413, -0.815712, -0.554304,
		-0.922197, 0.071281, -0.380095,
		21.067625, 14.425889, 7.519289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.782667, 14.397564, 7.078494>,  <21.713163, 14.375993, 7.785355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.782667, 14.397564, 7.078494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.403822, 14.521067, 7.113473>,  <21.176516, 14.595168, 7.134461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.403822, 14.521067, 7.113473>,  <21.782667, 14.397564, 7.078494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.403822, 14.521067, 7.113473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089742, 0.516479, -0.851584,
		-0.308097, -0.798698, -0.516873,
		-0.947113, 0.308756, 0.087449,
		21.119688, 14.613693, 7.139708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.486504, 14.150434, 6.480611>,  <21.782667, 14.397564, 7.078494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.486504, 14.150434, 6.480611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.235481, 14.434168, 6.608995>,  <21.084867, 14.604408, 6.686026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.235481, 14.434168, 6.608995>,  <21.486504, 14.150434, 6.480611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.235481, 14.434168, 6.608995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128075, 0.312575, -0.941219,
		-0.767965, -0.631775, -0.105310,
		-0.627556, 0.709336, 0.320961,
		21.047215, 14.646969, 6.705284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.862160, 14.121195, 5.975971>,  <21.486504, 14.150434, 6.480611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.862160, 14.121195, 5.975971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.862720, 14.480829, 6.151078>,  <20.863056, 14.696610, 6.256142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.862720, 14.480829, 6.151078>,  <20.862160, 14.121195, 5.975971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.862720, 14.480829, 6.151078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192560, 0.429817, -0.882144,
		-0.981284, -0.083061, 0.173730,
		0.001400, 0.899087, 0.437767,
		20.863140, 14.750555, 6.282408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.498699, 14.454005, 5.555603>,  <20.862160, 14.121195, 5.975971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.498699, 14.454005, 5.555603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.678106, 14.753815, 5.750353>,  <20.785751, 14.933701, 5.867203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.678106, 14.753815, 5.750353>,  <20.498699, 14.454005, 5.555603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.678106, 14.753815, 5.750353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011798, 0.539728, -0.841757,
		-0.893696, 0.383288, 0.233235,
		0.448519, 0.749523, 0.486875,
		20.812662, 14.978671, 5.896415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.146963, 15.124680, 5.314695>,  <20.498699, 14.454005, 5.555603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.146963, 15.124680, 5.314695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506634, 15.207464, 5.468917>,  <20.722435, 15.257135, 5.561450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506634, 15.207464, 5.468917>,  <20.146963, 15.124680, 5.314695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.506634, 15.207464, 5.468917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184731, 0.619192, -0.763201,
		-0.396686, 0.757475, 0.518529,
		0.899174, 0.206963, 0.385554,
		20.776386, 15.269553, 5.584583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.208633, 15.812290, 5.282515>,  <20.146963, 15.124680, 5.314695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.208633, 15.812290, 5.282515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.595739, 15.717074, 5.315424>,  <20.828003, 15.659945, 5.335170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.595739, 15.717074, 5.315424>,  <20.208633, 15.812290, 5.282515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.595739, 15.717074, 5.315424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243036, 0.796941, -0.553009,
		0.066069, 0.555178, 0.829103,
		0.967765, -0.238038, 0.082275,
		20.886068, 15.645663, 5.340107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.535629, 16.139492, 5.780056>,  <20.208633, 15.812290, 5.282515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.535629, 16.139492, 5.780056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.815041, 16.042749, 5.510669>,  <20.982687, 15.984704, 5.349036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.815041, 16.042749, 5.510669>,  <20.535629, 16.139492, 5.780056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.815041, 16.042749, 5.510669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293816, 0.955096, -0.038246,
		0.652479, -0.171160, 0.738225,
		0.698529, -0.241857, -0.673470,
		21.024599, 15.970192, 5.308628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.157824, 16.788395, 5.607293>,  <20.535629, 16.139492, 5.780056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.157824, 16.788395, 5.607293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867651, 17.050934, 5.690194>,  <19.693548, 17.208458, 5.739934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867651, 17.050934, 5.690194>,  <20.157824, 16.788395, 5.607293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.867651, 17.050934, 5.690194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202870, -0.083841, 0.975610,
		0.657717, 0.749784, -0.072333,
		-0.725432, 0.656350, 0.207252,
		19.650021, 17.247839, 5.752369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.439060, 17.180128, 6.139405>,  <20.157824, 16.788395, 5.607293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.439060, 17.180128, 6.139405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.039455, 17.176525, 6.156797>,  <19.799692, 17.174364, 6.167233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.039455, 17.176525, 6.156797>,  <20.439060, 17.180128, 6.139405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.039455, 17.176525, 6.156797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040826, 0.198869, 0.979176,
		-0.017468, 0.979985, -0.198305,
		-0.999014, -0.009008, 0.043482,
		19.739752, 17.173822, 6.169842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.277981, 17.725464, 6.523027>,  <20.439060, 17.180128, 6.139405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.277981, 17.725464, 6.523027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.988058, 17.452326, 6.559632>,  <19.814104, 17.288443, 6.581595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.988058, 17.452326, 6.559632>,  <20.277981, 17.725464, 6.523027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.988058, 17.452326, 6.559632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147705, 0.283754, 0.947453,
		-0.672932, 0.673204, -0.306526,
		-0.724807, -0.682847, 0.091512,
		19.770617, 17.247471, 6.587086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.641102, 17.982809, 6.729097>,  <20.277981, 17.725464, 6.523027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.641102, 17.982809, 6.729097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.685904, 17.615309, 6.880546>,  <19.712784, 17.394810, 6.971416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.685904, 17.615309, 6.880546>,  <19.641102, 17.982809, 6.729097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.685904, 17.615309, 6.880546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181349, 0.355723, 0.916828,
		-0.977020, -0.171350, -0.126772,
		0.112003, -0.918750, 0.378622,
		19.719505, 17.339684, 6.994133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.140440, 17.849939, 7.318287>,  <19.641102, 17.982809, 6.729097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.140440, 17.849939, 7.318287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.449900, 17.605204, 7.384160>,  <19.635576, 17.458363, 7.423683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.449900, 17.605204, 7.384160>,  <19.140440, 17.849939, 7.318287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.449900, 17.605204, 7.384160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119492, 0.114360, 0.986227,
		-0.622244, -0.782672, 0.015365,
		0.773650, -0.611838, 0.164682,
		19.681995, 17.421652, 7.433564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.003542, 17.168365, 7.561649>,  <19.140440, 17.849939, 7.318287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.003542, 17.168365, 7.561649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.346954, 17.317793, 7.702147>,  <19.553001, 17.407450, 7.786447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.346954, 17.317793, 7.702147>,  <19.003542, 17.168365, 7.561649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.346954, 17.317793, 7.702147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393701, 0.041364, 0.918308,
		0.328522, -0.926680, 0.182586,
		0.858529, 0.373569, 0.351245,
		19.604513, 17.429863, 7.807521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.166676, 16.888823, 8.217221>,  <19.003542, 17.168365, 7.561649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.166676, 16.888823, 8.217221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.342087, 17.248270, 8.222622>,  <19.447332, 17.463938, 8.225863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.342087, 17.248270, 8.222622>,  <19.166676, 16.888823, 8.217221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.342087, 17.248270, 8.222622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199913, 0.082890, 0.976301,
		0.876202, -0.430833, 0.215995,
		0.438527, 0.898617, 0.013501,
		19.473644, 17.517855, 8.226672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.203424, 16.156855, 8.230925>,  <19.166676, 16.888823, 8.217221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.203424, 16.156855, 8.230925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.478769, 16.212164, 7.946098>,  <19.643976, 16.245350, 7.775202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.478769, 16.212164, 7.946098>,  <19.203424, 16.156855, 8.230925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.478769, 16.212164, 7.946098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722813, -0.213081, 0.657372,
		-0.060829, -0.967200, -0.246624,
		0.688361, 0.138276, -0.712066,
		19.685278, 16.253647, 7.732479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.588770, 15.618717, 8.386262>,  <19.203424, 16.156855, 8.230925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.588770, 15.618717, 8.386262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.816538, 15.824486, 8.129784>,  <19.953199, 15.947947, 7.975897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.816538, 15.824486, 8.129784>,  <19.588770, 15.618717, 8.386262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.816538, 15.824486, 8.129784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816430, -0.262871, 0.514141,
		0.095934, -0.816253, -0.569674,
		0.569420, 0.514422, -0.641195,
		19.987364, 15.978812, 7.937425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128647, 15.160321, 8.055858>,  <19.588770, 15.618717, 8.386262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.128647, 15.160321, 8.055858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.289917, 15.525871, 8.074962>,  <20.386679, 15.745201, 8.086424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.289917, 15.525871, 8.074962>,  <20.128647, 15.160321, 8.055858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.289917, 15.525871, 8.074962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715268, -0.347250, 0.606473,
		0.570825, -0.210354, -0.793669,
		0.403175, 0.913876, 0.047759,
		20.410870, 15.800034, 8.089290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.750835, 15.025049, 7.934531>,  <20.128647, 15.160321, 8.055858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.750835, 15.025049, 7.934531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.743204, 15.376204, 8.125928>,  <20.738625, 15.586896, 8.240766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.743204, 15.376204, 8.125928>,  <20.750835, 15.025049, 7.934531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.743204, 15.376204, 8.125928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676333, -0.341132, 0.652841,
		0.736348, 0.336076, -0.587234,
		-0.019080, 0.877885, 0.478491,
		20.737480, 15.639569, 8.269475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.540688, 15.219895, 8.044175>,  <20.750835, 15.025049, 7.934531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.540688, 15.219895, 8.044175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.324789, 15.456706, 8.283568>,  <21.195250, 15.598792, 8.427204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.324789, 15.456706, 8.283568>,  <21.540688, 15.219895, 8.044175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.324789, 15.456706, 8.283568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682316, -0.108746, 0.722924,
		0.493072, 0.798549, -0.345254,
		-0.539745, 0.592026, 0.598483,
		21.162867, 15.634314, 8.463113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.032314, 15.779476, 8.427300>,  <21.540688, 15.219895, 8.044175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.032314, 15.779476, 8.427300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.693598, 15.703546, 8.626062>,  <21.490368, 15.657988, 8.745319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.693598, 15.703546, 8.626062>,  <22.032314, 15.779476, 8.427300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.693598, 15.703546, 8.626062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531679, -0.273427, 0.801595,
		-0.016296, 0.942976, 0.332462,
		-0.846789, -0.189826, 0.496905,
		21.439562, 15.646598, 8.775134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.042879, 16.150246, 9.023561>,  <22.032314, 15.779476, 8.427300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.042879, 16.150246, 9.023561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.804060, 15.835494, 9.085985>,  <21.660769, 15.646643, 9.123440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.804060, 15.835494, 9.085985>,  <22.042879, 16.150246, 9.023561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.804060, 15.835494, 9.085985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564140, -0.273534, 0.779054,
		-0.570333, 0.553173, 0.607223,
		-0.597048, -0.786879, 0.156062,
		21.624947, 15.599430, 9.132804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.016804, 16.066259, 9.717417>,  <22.042879, 16.150246, 9.023561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.016804, 16.066259, 9.717417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.902140, 15.701979, 9.598455>,  <21.833342, 15.483411, 9.527079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.902140, 15.701979, 9.598455>,  <22.016804, 16.066259, 9.717417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.902140, 15.701979, 9.598455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537871, -0.409879, 0.736677,
		-0.792792, 0.051212, 0.607337,
		-0.286661, -0.910701, -0.297403,
		21.816141, 15.428768, 9.509234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.027521, 15.666935, 10.353348>,  <22.016804, 16.066259, 9.717417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.027521, 15.666935, 10.353348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.998743, 15.374316, 10.082154>,  <21.981476, 15.198745, 9.919438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.998743, 15.374316, 10.082154>,  <22.027521, 15.666935, 10.353348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.998743, 15.374316, 10.082154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486525, -0.619133, 0.616416,
		-0.870699, -0.285507, 0.400461,
		-0.071947, -0.731547, -0.677985,
		21.977160, 15.154852, 9.878758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.671972, 15.069583, 10.657456>,  <22.027521, 15.666935, 10.353348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.671972, 15.069583, 10.657456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.879816, 14.924507, 10.348015>,  <22.004522, 14.837461, 10.162350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.879816, 14.924507, 10.348015>,  <21.671972, 15.069583, 10.657456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.879816, 14.924507, 10.348015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491019, -0.614217, 0.617768,
		-0.699218, -0.700853, -0.141066,
		0.519610, -0.362688, -0.773604,
		22.035700, 14.815701, 10.115933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.648283, 14.431631, 10.756061>,  <21.671972, 15.069583, 10.657456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.648283, 14.431631, 10.756061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.959517, 14.442225, 10.505020>,  <22.146257, 14.448582, 10.354396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.959517, 14.442225, 10.505020>,  <21.648283, 14.431631, 10.756061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.959517, 14.442225, 10.505020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534111, -0.553758, 0.638810,
		-0.330620, -0.832256, -0.445017,
		0.778085, 0.026485, -0.627600,
		22.192942, 14.450171, 10.316740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.936752, 13.734568, 10.650592>,  <21.648283, 14.431631, 10.756061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.936752, 13.734568, 10.650592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.234182, 13.988486, 10.566562>,  <22.412640, 14.140838, 10.516144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.234182, 13.988486, 10.566562>,  <21.936752, 13.734568, 10.650592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.234182, 13.988486, 10.566562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550532, -0.402907, 0.731150,
		0.379490, -0.659317, -0.649067,
		0.743574, 0.634796, -0.210076,
		22.457254, 14.178926, 10.503539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.525888, 13.316622, 10.775871>,  <21.936752, 13.734568, 10.650592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.525888, 13.316622, 10.775871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.665604, 13.691247, 10.764208>,  <22.749434, 13.916022, 10.757210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.665604, 13.691247, 10.764208>,  <22.525888, 13.316622, 10.775871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.665604, 13.691247, 10.764208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597972, -0.198838, 0.776461,
		0.721407, -0.288644, -0.629490,
		0.349287, 0.936562, -0.029158,
		22.770390, 13.972216, 10.755461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.212662, 13.299441, 10.917351>,  <22.525888, 13.316622, 10.775871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.212662, 13.299441, 10.917351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.125288, 13.680363, 11.002584>,  <23.072863, 13.908916, 11.053724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.125288, 13.680363, 11.002584>,  <23.212662, 13.299441, 10.917351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.125288, 13.680363, 11.002584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315670, -0.137661, 0.938830,
		0.923384, 0.272339, -0.270543,
		-0.218437, 0.952303, 0.213083,
		23.059757, 13.966054, 11.066509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.786987, 13.589890, 11.045723>,  <23.212662, 13.299441, 10.917351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.786987, 13.589890, 11.045723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.541437, 13.839936, 11.238549>,  <23.394106, 13.989964, 11.354245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.541437, 13.839936, 11.238549>,  <23.786987, 13.589890, 11.045723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.541437, 13.839936, 11.238549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432457, -0.244573, 0.867851,
		0.660407, 0.741226, -0.120197,
		-0.613876, 0.625115, 0.482066,
		23.357275, 14.027471, 11.383169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.245913, 13.930992, 11.375832>,  <23.786987, 13.589890, 11.045723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.245913, 13.930992, 11.375832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.884550, 13.946609, 11.546635>,  <23.667732, 13.955980, 11.649117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.884550, 13.946609, 11.546635>,  <24.245913, 13.930992, 11.375832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.884550, 13.946609, 11.546635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380790, -0.384769, 0.840804,
		0.197127, 0.922187, 0.332735,
		-0.903404, 0.039043, 0.427008,
		23.613529, 13.958323, 11.674737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.449242, 14.036427, 12.066102>,  <24.245913, 13.930992, 11.375832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.449242, 14.036427, 12.066102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.060186, 13.946626, 12.090028>,  <23.826754, 13.892745, 12.104383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.060186, 13.946626, 12.090028>,  <24.449242, 14.036427, 12.066102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.060186, 13.946626, 12.090028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159922, -0.460172, 0.873308,
		-0.168534, 0.858976, 0.483483,
		-0.972636, -0.224502, 0.059815,
		23.768396, 13.879275, 12.107972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.096262, 14.388246, 12.692993>,  <24.449242, 14.036427, 12.066102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.096262, 14.388246, 12.692993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.867863, 14.072363, 12.603262>,  <23.730824, 13.882833, 12.549423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.867863, 14.072363, 12.603262>,  <24.096262, 14.388246, 12.692993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.867863, 14.072363, 12.603262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055277, -0.235650, 0.970264,
		-0.819087, 0.566421, 0.090904,
		-0.571000, -0.789706, -0.224328,
		23.696562, 13.835451, 12.535963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.651489, 14.929959, 12.644121>,  <24.096262, 14.388246, 12.692993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.651489, 14.929959, 12.644121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.769178, 14.815372, 12.279404>,  <24.839792, 14.746620, 12.060573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.769178, 14.815372, 12.279404>,  <24.651489, 14.929959, 12.644121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.769178, 14.815372, 12.279404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626757, -0.778071, 0.042209,
		-0.721532, 0.559055, -0.408471,
		0.294223, -0.286468, -0.911795,
		24.857445, 14.729432, 12.005865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.562113, 15.328360, 13.256586>,  <24.651489, 14.929959, 12.644121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.562113, 15.328360, 13.256586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956995, 15.372808, 13.210843>,  <25.193924, 15.399476, 13.183397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956995, 15.372808, 13.210843>,  <24.562113, 15.328360, 13.256586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.956995, 15.372808, 13.210843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151037, -0.421732, 0.894053,
		0.051118, -0.899886, -0.433119,
		0.987205, 0.111119, -0.114358,
		25.253157, 15.406143, 13.176536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.058018, 14.870134, 13.722163>,  <24.562113, 15.328360, 13.256586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.058018, 14.870134, 13.722163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314285, 15.138389, 13.572609>,  <25.468046, 15.299341, 13.482877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314285, 15.138389, 13.572609>,  <25.058018, 14.870134, 13.722163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.314285, 15.138389, 13.572609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742602, -0.417438, 0.523725,
		0.195155, -0.613183, -0.765455,
		0.640670, 0.670636, -0.373885,
		25.506487, 15.339580, 13.460443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569309, 14.464398, 13.324264>,  <25.058018, 14.870134, 13.722163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.569309, 14.464398, 13.324264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670630, 14.803121, 13.511350>,  <25.731421, 15.006354, 13.623602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670630, 14.803121, 13.511350>,  <25.569309, 14.464398, 13.324264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.670630, 14.803121, 13.511350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610989, -0.514887, 0.601318,
		0.750021, 0.133456, -0.647810,
		0.253300, 0.846806, 0.467716,
		25.746620, 15.057162, 13.651665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302645, 14.657813, 13.287949>,  <25.569309, 14.464398, 13.324264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302645, 14.657813, 13.287949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192348, 14.819082, 13.636986>,  <26.126171, 14.915844, 13.846408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192348, 14.819082, 13.636986>,  <26.302645, 14.657813, 13.287949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192348, 14.819082, 13.636986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649914, -0.590646, 0.478278,
		0.708222, 0.698991, -0.099162,
		-0.275742, 0.403174, 0.872592,
		26.109627, 14.940034, 13.898764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813145, 15.167570, 13.703045>,  <26.302645, 14.657813, 13.287949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813145, 15.167570, 13.703045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561275, 14.981194, 13.951692>,  <26.410154, 14.869368, 14.100880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561275, 14.981194, 13.951692>,  <26.813145, 15.167570, 13.703045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561275, 14.981194, 13.951692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775244, -0.325306, 0.541453,
		-0.050070, 0.822845, 0.566056,
		-0.629674, -0.465942, 0.621618,
		26.372374, 14.841411, 14.138177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971684, 15.439700, 14.492473>,  <26.813145, 15.167570, 13.703045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971684, 15.439700, 14.492473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796009, 15.080907, 14.512625>,  <26.690605, 14.865631, 14.524716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796009, 15.080907, 14.512625>,  <26.971684, 15.439700, 14.492473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796009, 15.080907, 14.512625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424737, -0.157892, 0.891442,
		-0.791654, 0.412905, 0.450326,
		-0.439184, -0.896983, 0.050380,
		26.664253, 14.811811, 14.527739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383093, 15.307055, 15.074406>,  <26.971684, 15.439700, 14.492473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383093, 15.307055, 15.074406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614975, 15.005257, 14.951327>,  <26.754105, 14.824178, 14.877481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614975, 15.005257, 14.951327>,  <26.383093, 15.307055, 15.074406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614975, 15.005257, 14.951327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492557, 0.023667, 0.869958,
		-0.649099, -0.655877, 0.385352,
		0.579706, -0.754497, -0.307695,
		26.788887, 14.778908, 14.859019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<15.939376, 19.676285, 20.981823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.545043, 19.634798, 21.034555>,  <15.308443, 19.609905, 21.066195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.545043, 19.634798, 21.034555>,  <15.939376, 19.676285, 20.981823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.545043, 19.634798, 21.034555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074514, -0.433350, -0.898140,
		0.150283, -0.895238, 0.419482,
		-0.985831, -0.103718, 0.131833,
		15.249293, 19.603683, 21.074104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.753871, 18.941465, 20.907032>,  <15.939376, 19.676285, 20.981823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.753871, 18.941465, 20.907032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.392498, 19.106676, 20.861046>,  <15.175674, 19.205803, 20.833454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.392498, 19.106676, 20.861046>,  <15.753871, 18.941465, 20.907032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.392498, 19.106676, 20.861046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016677, -0.301806, -0.953224,
		-0.428406, -0.859256, 0.279549,
		-0.903433, 0.413028, -0.114966,
		15.121468, 19.230585, 20.826557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.390953, 18.444370, 20.730627>,  <15.753871, 18.941465, 20.907032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.390953, 18.444370, 20.730627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.169265, 18.757557, 20.617632>,  <15.036252, 18.945469, 20.549835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.169265, 18.757557, 20.617632>,  <15.390953, 18.444370, 20.730627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.169265, 18.757557, 20.617632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095972, -0.397224, -0.912690,
		-0.826818, -0.478720, 0.295293,
		-0.554220, 0.782969, -0.282488,
		15.002998, 18.992447, 20.532885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.881257, 18.165791, 20.394455>,  <15.390953, 18.444370, 20.730627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.881257, 18.165791, 20.394455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.846798, 18.541941, 20.262838>,  <14.826122, 18.767632, 20.183868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.846798, 18.541941, 20.262838>,  <14.881257, 18.165791, 20.394455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.846798, 18.541941, 20.262838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253566, -0.340090, -0.905562,
		-0.963474, 0.005421, 0.267746,
		-0.086149, 0.940377, -0.329043,
		14.820953, 18.824055, 20.164125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.095441, 18.273870, 20.135914>,  <14.881257, 18.165791, 20.394455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.095441, 18.273870, 20.135914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.335440, 18.534338, 19.950018>,  <14.479439, 18.690619, 19.838480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.335440, 18.534338, 19.950018>,  <14.095441, 18.273870, 20.135914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.335440, 18.534338, 19.950018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329621, -0.328099, -0.885269,
		-0.728939, 0.684348, 0.017780,
		0.599998, 0.651168, -0.464740,
		14.515439, 18.729689, 19.810596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.666819, 18.713018, 19.600227>,  <14.095441, 18.273870, 20.135914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.666819, 18.713018, 19.600227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.039100, 18.778725, 19.469500>,  <14.262468, 18.818148, 19.391064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.039100, 18.778725, 19.469500>,  <13.666819, 18.713018, 19.600227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.039100, 18.778725, 19.469500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312943, -0.104983, -0.943952,
		-0.189367, 0.980814, -0.046302,
		0.930702, 0.164264, -0.326819,
		14.318311, 18.828003, 19.371454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.557530, 19.161764, 19.057018>,  <13.666819, 18.713018, 19.600227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.557530, 19.161764, 19.057018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.909450, 18.974163, 19.026060>,  <14.120602, 18.861603, 19.007484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.909450, 18.974163, 19.026060>,  <13.557530, 19.161764, 19.057018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.909450, 18.974163, 19.026060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132974, -0.086515, -0.987336,
		0.456369, 0.878949, -0.138481,
		0.879799, -0.469004, -0.077395,
		14.173389, 18.833462, 19.002842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.823988, 19.391954, 18.398708>,  <13.557530, 19.161764, 19.057018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.823988, 19.391954, 18.398708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.040383, 19.064093, 18.474073>,  <14.170220, 18.867376, 18.519293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.040383, 19.064093, 18.474073>,  <13.823988, 19.391954, 18.398708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.040383, 19.064093, 18.474073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020083, -0.236551, -0.971412,
		0.840790, 0.521739, -0.144433,
		0.540989, -0.819654, 0.188412,
		14.202680, 18.818197, 18.530598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.211548, 19.392458, 17.851606>,  <13.823988, 19.391954, 18.398708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.211548, 19.392458, 17.851606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.248347, 19.022612, 17.999454>,  <14.270427, 18.800703, 18.088163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.248347, 19.022612, 17.999454>,  <14.211548, 19.392458, 17.851606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.248347, 19.022612, 17.999454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055651, -0.365839, -0.929013,
		0.994203, 0.106037, 0.017799,
		0.091998, -0.924618, 0.369619,
		14.275947, 18.745226, 18.110340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.836950, 19.043100, 17.466227>,  <14.211548, 19.392458, 17.851606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.836950, 19.043100, 17.466227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.602355, 18.757923, 17.619978>,  <14.461597, 18.586817, 17.712229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.602355, 18.757923, 17.619978>,  <14.836950, 19.043100, 17.466227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.602355, 18.757923, 17.619978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005892, -0.478307, -0.878173,
		0.809936, -0.512774, 0.284723,
		-0.586489, -0.712941, 0.384377,
		14.426408, 18.544041, 17.735291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.163209, 18.512300, 17.277512>,  <14.836950, 19.043100, 17.466227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.163209, 18.512300, 17.277512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.810718, 18.343903, 17.363485>,  <14.599222, 18.242863, 17.415070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.810718, 18.343903, 17.363485>,  <15.163209, 18.512300, 17.277512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.810718, 18.343903, 17.363485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107024, -0.620602, -0.776787,
		0.460414, -0.661524, 0.591950,
		-0.881229, -0.420997, 0.214935,
		14.546349, 18.217604, 17.427965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203230, 17.686819, 17.203279>,  <15.163209, 18.512300, 17.277512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.203230, 17.686819, 17.203279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.830114, 17.819088, 17.145924>,  <14.606245, 17.898449, 17.111509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.830114, 17.819088, 17.145924>,  <15.203230, 17.686819, 17.203279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.830114, 17.819088, 17.145924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028138, -0.463438, -0.885682,
		-0.359323, -0.822120, 0.441594,
		-0.932789, 0.330672, -0.143391,
		14.550278, 17.918291, 17.102905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.855989, 17.050123, 16.940172>,  <15.203230, 17.686819, 17.203279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.855989, 17.050123, 16.940172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.624846, 17.361715, 16.842791>,  <14.486159, 17.548670, 16.784361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.624846, 17.361715, 16.842791>,  <14.855989, 17.050123, 16.940172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.624846, 17.361715, 16.842791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059051, -0.337428, -0.939497,
		-0.813997, -0.528522, 0.240985,
		-0.577860, 0.778978, -0.243456,
		14.451488, 17.595409, 16.769754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.233891, 16.723886, 16.648645>,  <14.855989, 17.050123, 16.940172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.233891, 16.723886, 16.648645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.242872, 17.097132, 16.505095>,  <14.248261, 17.321079, 16.418964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.242872, 17.097132, 16.505095>,  <14.233891, 16.723886, 16.648645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.242872, 17.097132, 16.505095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029184, -0.359426, -0.932717,
		-0.999322, 0.010470, -0.035302,
		0.022454, 0.933115, -0.358876,
		14.249608, 17.377066, 16.397432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.780849, 16.645491, 16.071133>,  <14.233891, 16.723886, 16.648645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.780849, 16.645491, 16.071133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.016305, 16.966452, 16.031836>,  <14.157578, 17.159029, 16.008257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.016305, 16.966452, 16.031836>,  <13.780849, 16.645491, 16.071133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.016305, 16.966452, 16.031836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062102, -0.076283, -0.995150,
		-0.806008, 0.591885, 0.004928,
		0.588638, 0.802405, -0.098242,
		14.192897, 17.207172, 16.002363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.493974, 17.066748, 15.511373>,  <13.780849, 16.645491, 16.071133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.493974, 17.066748, 15.511373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.865808, 17.212191, 15.535567>,  <14.088909, 17.299456, 15.550084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.865808, 17.212191, 15.535567>,  <13.493974, 17.066748, 15.511373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.865808, 17.212191, 15.535567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055282, 0.024712, -0.998165,
		-0.364434, 0.931225, 0.002871,
		0.929587, 0.363607, 0.060486,
		14.144685, 17.321272, 15.553713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.572763, 17.544300, 14.931085>,  <13.493974, 17.066748, 15.511373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.572763, 17.544300, 14.931085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.945495, 17.435053, 15.026670>,  <14.169133, 17.369505, 15.084022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.945495, 17.435053, 15.026670>,  <13.572763, 17.544300, 14.931085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.945495, 17.435053, 15.026670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234525, -0.049297, -0.970859,
		0.276940, 0.960716, 0.018117,
		0.931827, -0.273119, 0.238964,
		14.225043, 17.353117, 15.098360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.948779, 17.856836, 14.458913>,  <13.572763, 17.544300, 14.931085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.948779, 17.856836, 14.458913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.191792, 17.572561, 14.600802>,  <14.337601, 17.401997, 14.685936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.191792, 17.572561, 14.600802>,  <13.948779, 17.856836, 14.458913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.191792, 17.572561, 14.600802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327037, -0.183167, -0.927090,
		0.723844, 0.679246, 0.121141,
		0.607533, -0.710686, 0.354723,
		14.374052, 17.359356, 14.707219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.490356, 17.990759, 14.206692>,  <13.948779, 17.856836, 14.458913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.490356, 17.990759, 14.206692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.507058, 17.595181, 14.263606>,  <14.517079, 17.357834, 14.297754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.507058, 17.595181, 14.263606>,  <14.490356, 17.990759, 14.206692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507058, 17.595181, 14.263606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319957, -0.121675, -0.939586,
		0.946512, 0.084756, 0.311340,
		0.041753, -0.988945, 0.142285,
		14.519584, 17.298496, 14.306292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.149893, 17.885225, 14.062325>,  <14.490356, 17.990759, 14.206692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.149893, 17.885225, 14.062325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.939456, 17.548094, 14.016957>,  <14.813194, 17.345814, 13.989737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.939456, 17.548094, 14.016957>,  <15.149893, 17.885225, 14.062325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.939456, 17.548094, 14.016957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411554, -0.135609, -0.901240,
		0.744211, -0.520814, 0.418213,
		-0.526092, -0.842830, -0.113421,
		14.781629, 17.295244, 13.982931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.530513, 17.405874, 13.704169>,  <15.149893, 17.885225, 14.062325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.530513, 17.405874, 13.704169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.209955, 17.167658, 13.681911>,  <15.017620, 17.024727, 13.668555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.209955, 17.167658, 13.681911>,  <15.530513, 17.405874, 13.704169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.209955, 17.167658, 13.681911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288854, -0.303867, -0.907870,
		0.523766, -0.743636, 0.415542,
		-0.801394, -0.595542, -0.055647,
		14.969537, 16.988995, 13.665216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.802404, 16.663155, 13.607041>,  <15.530513, 17.405874, 13.704169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.802404, 16.663155, 13.607041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.420149, 16.708403, 13.498261>,  <15.190795, 16.735552, 13.432994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.420149, 16.708403, 13.498261>,  <15.802404, 16.663155, 13.607041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.420149, 16.708403, 13.498261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244594, -0.209608, -0.946699,
		-0.164089, -0.971221, 0.172642,
		-0.955640, 0.113116, -0.271949,
		15.133457, 16.742338, 13.416677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.216984, 16.011826, 13.315626>,  <15.802404, 16.663155, 13.607041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.216984, 16.011826, 13.315626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.553589, 16.138878, 13.140828>,  <16.755552, 16.215109, 13.035950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.553589, 16.138878, 13.140828>,  <16.216984, 16.011826, 13.315626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.553589, 16.138878, 13.140828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202018, 0.565197, 0.799838,
		0.501039, -0.761357, 0.411455,
		0.841515, 0.317629, -0.436994,
		16.806044, 16.234167, 13.009729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718187, 15.928130, 13.787121>,  <16.216984, 16.011826, 13.315626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718187, 15.928130, 13.787121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.853722, 16.208200, 13.535742>,  <16.935041, 16.376244, 13.384914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.853722, 16.208200, 13.535742>,  <16.718187, 15.928130, 13.787121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.853722, 16.208200, 13.535742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388493, 0.504235, 0.771246,
		0.856893, -0.505471, -0.101161,
		0.338834, 0.700176, -0.628447,
		16.955372, 16.418253, 13.347208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451351, 16.073120, 13.908315>,  <16.718187, 15.928130, 13.787121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.451351, 16.073120, 13.908315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.272024, 16.390564, 13.743782>,  <17.164429, 16.581030, 13.645062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.272024, 16.390564, 13.743782>,  <17.451351, 16.073120, 13.908315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.272024, 16.390564, 13.743782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415994, 0.592535, 0.689820,
		0.791177, 0.138146, -0.595780,
		-0.448316, 0.793611, -0.411332,
		17.137529, 16.628647, 13.620382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.937153, 16.617174, 14.013505>,  <17.451351, 16.073120, 13.908315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.937153, 16.617174, 14.013505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.595251, 16.813885, 13.947112>,  <17.390110, 16.931911, 13.907276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.595251, 16.813885, 13.947112>,  <17.937153, 16.617174, 14.013505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.595251, 16.813885, 13.947112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318122, 0.749064, 0.581121,
		0.410112, 0.443914, -0.796711,
		-0.854755, 0.491776, -0.165981,
		17.338825, 16.961418, 13.897318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.155706, 17.267681, 13.809971>,  <17.937153, 16.617174, 14.013505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.155706, 17.267681, 13.809971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.784153, 17.377277, 13.909653>,  <17.561220, 17.443035, 13.969462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.784153, 17.377277, 13.909653>,  <18.155706, 17.267681, 13.809971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.784153, 17.377277, 13.909653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370265, 0.702871, 0.607352,
		-0.008751, 0.656432, -0.754335,
		-0.928885, 0.273989, 0.249205,
		17.505487, 17.459475, 13.984414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.155210, 18.086332, 13.748757>,  <18.155706, 17.267681, 13.809971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.155210, 18.086332, 13.748757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.876837, 17.949348, 14.001232>,  <17.709812, 17.867159, 14.152718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.876837, 17.949348, 14.001232>,  <18.155210, 18.086332, 13.748757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.876837, 17.949348, 14.001232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245172, 0.712837, 0.657080,
		-0.674956, 0.612034, -0.412127,
		-0.695935, -0.342458, 0.631188,
		17.668056, 17.846611, 14.190588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.972992, 18.753790, 14.204583>,  <18.155210, 18.086332, 13.748757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.972992, 18.753790, 14.204583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.804729, 18.444443, 14.394299>,  <17.703772, 18.258835, 14.508128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.804729, 18.444443, 14.394299>,  <17.972992, 18.753790, 14.204583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.804729, 18.444443, 14.394299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148002, 0.457290, 0.876916,
		-0.895066, 0.439077, -0.077903,
		-0.420658, -0.773367, 0.474289,
		17.678532, 18.212433, 14.536585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.609644, 19.055349, 14.723267>,  <17.972992, 18.753790, 14.204583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.609644, 19.055349, 14.723267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.596308, 18.683046, 14.868911>,  <17.588306, 18.459663, 14.956297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.596308, 18.683046, 14.868911>,  <17.609644, 19.055349, 14.723267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.596308, 18.683046, 14.868911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009630, 0.363996, 0.931351,
		-0.999398, 0.034560, -0.003174,
		-0.033343, -0.930759, 0.364109,
		17.586306, 18.403818, 14.978144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.965313, 18.908133, 15.144063>,  <17.609644, 19.055349, 14.723267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.965313, 18.908133, 15.144063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.268414, 18.674154, 15.259754>,  <17.450274, 18.533768, 15.329168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.268414, 18.674154, 15.259754>,  <16.965313, 18.908133, 15.144063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.268414, 18.674154, 15.259754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167719, 0.253756, 0.952616,
		-0.630621, -0.770356, 0.094178,
		0.757752, -0.584944, 0.289227,
		17.495739, 18.498671, 15.346522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.754618, 18.751606, 15.779924>,  <16.965313, 18.908133, 15.144063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.754618, 18.751606, 15.779924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.135786, 18.630909, 15.791884>,  <17.364487, 18.558491, 15.799061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.135786, 18.630909, 15.791884>,  <16.754618, 18.751606, 15.779924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.135786, 18.630909, 15.791884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000126, 0.099004, 0.995087,
		-0.303220, -0.948235, 0.094381,
		0.952921, -0.301742, 0.029900,
		17.421661, 18.540386, 15.800855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.803349, 18.263796, 16.347849>,  <16.754618, 18.751606, 15.779924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.803349, 18.263796, 16.347849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.168209, 18.415905, 16.286694>,  <17.387125, 18.507170, 16.250000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.168209, 18.415905, 16.286694>,  <16.803349, 18.263796, 16.347849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.168209, 18.415905, 16.286694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049489, 0.268117, 0.962115,
		0.406858, -0.885159, 0.225744,
		0.912150, 0.380272, -0.152891,
		17.441854, 18.529985, 16.240826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.124224, 18.074934, 16.864992>,  <16.803349, 18.263796, 16.347849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.124224, 18.074934, 16.864992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.372561, 18.367052, 16.750992>,  <17.521563, 18.542322, 16.682590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.372561, 18.367052, 16.750992>,  <17.124224, 18.074934, 16.864992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.372561, 18.367052, 16.750992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037684, 0.335331, 0.941346,
		0.783029, -0.595168, 0.180668,
		0.620843, 0.730293, -0.285002,
		17.558813, 18.586140, 16.665491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.657099, 18.052048, 17.214161>,  <17.124224, 18.074934, 16.864992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.657099, 18.052048, 17.214161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.623444, 18.433088, 17.097219>,  <17.603251, 18.661713, 17.027054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.623444, 18.433088, 17.097219>,  <17.657099, 18.052048, 17.214161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.623444, 18.433088, 17.097219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036174, 0.296121, 0.954465,
		0.995797, 0.069731, -0.059374,
		-0.084137, 0.952602, -0.292354,
		17.598202, 18.718868, 17.009514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.150379, 18.321280, 17.650858>,  <17.657099, 18.052048, 17.214161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.150379, 18.321280, 17.650858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.902027, 18.614634, 17.540112>,  <17.753016, 18.790646, 17.473663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.902027, 18.614634, 17.540112>,  <18.150379, 18.321280, 17.650858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.902027, 18.614634, 17.540112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023233, 0.370249, 0.928642,
		0.783562, 0.570142, -0.246918,
		-0.620879, 0.733386, -0.276867,
		17.715763, 18.834650, 17.457052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.420145, 18.840496, 18.005215>,  <18.150379, 18.321280, 17.650858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.420145, 18.840496, 18.005215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.064299, 18.991371, 17.902210>,  <17.850790, 19.081896, 17.840406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.064299, 18.991371, 17.902210>,  <18.420145, 18.840496, 18.005215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.064299, 18.991371, 17.902210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156752, 0.277424, 0.947874,
		0.428967, 0.883609, -0.187676,
		-0.889616, 0.377188, -0.257513,
		17.797415, 19.104528, 17.824957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.364820, 19.564980, 18.155336>,  <18.420145, 18.840496, 18.005215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.364820, 19.564980, 18.155336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.002728, 19.395121, 18.161440>,  <17.785473, 19.293205, 18.165102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.002728, 19.395121, 18.161440>,  <18.364820, 19.564980, 18.155336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.002728, 19.395121, 18.161440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120855, 0.291729, 0.948835,
		-0.407372, 0.857070, -0.315402,
		-0.905231, -0.424647, 0.015261,
		17.731159, 19.267727, 18.166018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.962029, 20.142775, 18.203613>,  <18.364820, 19.564980, 18.155336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.962029, 20.142775, 18.203613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.782507, 19.806311, 18.324293>,  <17.674793, 19.604431, 18.396700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.782507, 19.806311, 18.324293>,  <17.962029, 20.142775, 18.203613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.782507, 19.806311, 18.324293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032952, 0.321803, 0.946233,
		-0.893023, 0.434614, -0.116708,
		-0.448803, -0.841162, 0.301699,
		17.647865, 19.553963, 18.414803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.550653, 20.403139, 18.712381>,  <17.962029, 20.142775, 18.203613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.550653, 20.403139, 18.712381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.540508, 20.012512, 18.797865>,  <17.534420, 19.778135, 18.849155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.540508, 20.012512, 18.797865>,  <17.550653, 20.403139, 18.712381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.540508, 20.012512, 18.797865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004134, 0.213880, 0.976851,
		-0.999670, 0.023895, -0.009462,
		-0.025365, -0.976568, 0.213711,
		17.532898, 19.719542, 18.861979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.463524, 20.027988, 19.173555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.801907, 19.821896, 19.228540>,  <17.004936, 19.698240, 19.261532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.801907, 19.821896, 19.228540>,  <16.463524, 20.027988, 19.173555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.801907, 19.821896, 19.228540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023790, 0.221057, 0.974971,
		-0.532722, -0.828052, 0.174747,
		0.845956, -0.515231, 0.137461,
		17.055693, 19.667326, 19.269779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.406891, 19.920916, 19.855400>,  <16.463524, 20.027988, 19.173555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.406891, 19.920916, 19.855400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.778530, 19.784094, 19.799156>,  <17.001514, 19.702002, 19.765409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.778530, 19.784094, 19.799156>,  <16.406891, 19.920916, 19.855400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.778530, 19.784094, 19.799156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136191, -0.037032, 0.989990,
		-0.343838, -0.938950, 0.012178,
		0.929100, -0.342055, -0.140610,
		17.057261, 19.681477, 19.756973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656258, 19.329075, 20.283325>,  <16.406891, 19.920916, 19.855400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.656258, 19.329075, 20.283325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.012913, 19.482376, 20.186911>,  <17.226906, 19.574356, 20.129063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.012913, 19.482376, 20.186911>,  <16.656258, 19.329075, 20.283325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.012913, 19.482376, 20.186911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248260, 0.031330, 0.968187,
		0.378610, -0.923113, -0.067211,
		0.891639, 0.383251, -0.241034,
		17.280405, 19.597351, 20.114601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.165373, 19.027683, 20.768301>,  <16.656258, 19.329075, 20.283325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.165373, 19.027683, 20.768301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.347403, 19.347878, 20.612284>,  <17.456619, 19.539993, 20.518673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.347403, 19.347878, 20.612284>,  <17.165373, 19.027683, 20.768301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.347403, 19.347878, 20.612284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296030, 0.277114, 0.914098,
		0.839807, -0.531445, -0.110860,
		0.455072, 0.800484, -0.390046,
		17.483925, 19.588022, 20.495270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.822527, 18.971535, 21.005552>,  <17.165373, 19.027683, 20.768301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.822527, 18.971535, 21.005552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.726942, 19.349508, 20.916107>,  <17.669592, 19.576292, 20.862440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.726942, 19.349508, 20.916107>,  <17.822527, 18.971535, 21.005552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.726942, 19.349508, 20.916107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350501, 0.298694, 0.887655,
		0.905564, 0.133739, -0.402576,
		-0.238962, 0.944932, -0.223611,
		17.655254, 19.632988, 20.849024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.404732, 19.449112, 21.301577>,  <17.822527, 18.971535, 21.005552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.404732, 19.449112, 21.301577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.099628, 19.699511, 21.236675>,  <17.916567, 19.849751, 21.197735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.099628, 19.699511, 21.236675>,  <18.404732, 19.449112, 21.301577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.099628, 19.699511, 21.236675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248725, 0.515586, 0.819943,
		0.596938, 0.585063, -0.548969,
		-0.762759, 0.625997, -0.162253,
		17.870800, 19.887310, 21.188000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.635550, 20.029829, 21.671484>,  <18.404732, 19.449112, 21.301577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.635550, 20.029829, 21.671484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.252937, 20.124691, 21.603600>,  <18.023369, 20.181608, 21.562868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.252937, 20.124691, 21.603600>,  <18.635550, 20.029829, 21.671484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252937, 20.124691, 21.603600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010396, 0.553858, 0.832547,
		0.291440, 0.798122, -0.527317,
		-0.956533, 0.237155, -0.169713,
		17.965977, 20.195837, 21.552685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.661308, 20.666773, 21.670557>,  <18.635550, 20.029829, 21.671484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.661308, 20.666773, 21.670557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.280943, 20.574276, 21.752817>,  <18.052723, 20.518778, 21.802174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.280943, 20.574276, 21.752817>,  <18.661308, 20.666773, 21.670557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.280943, 20.574276, 21.752817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013568, 0.632758, 0.774231,
		-0.309160, 0.739016, -0.598561,
		-0.950913, -0.231240, 0.205650,
		17.995668, 20.504904, 21.814512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.196671, 21.267179, 21.754650>,  <18.661308, 20.666773, 21.670557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.196671, 21.267179, 21.754650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.008602, 20.980003, 21.959980>,  <17.895761, 20.807697, 22.083178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.008602, 20.980003, 21.959980>,  <18.196671, 21.267179, 21.754650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.008602, 20.980003, 21.959980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038826, 0.597885, 0.800641,
		-0.881722, 0.356506, -0.308982,
		-0.470169, -0.717939, 0.513327,
		17.867552, 20.764622, 22.113977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.801706, 21.758924, 22.233070>,  <18.196671, 21.267179, 21.754650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.801706, 21.758924, 22.233070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.794619, 21.385550, 22.376390>,  <17.790367, 21.161524, 22.462381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.794619, 21.385550, 22.376390>,  <17.801706, 21.758924, 22.233070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.794619, 21.385550, 22.376390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004154, 0.358284, 0.933604,
		-0.999834, 0.018030, -0.002470,
		-0.017718, -0.933439, 0.358299,
		17.789303, 21.105518, 22.483881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.168032, 21.577150, 22.648981>,  <17.801706, 21.758924, 22.233070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.168032, 21.577150, 22.648981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.429949, 21.310205, 22.790897>,  <17.587099, 21.150040, 22.876047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.429949, 21.310205, 22.790897>,  <17.168032, 21.577150, 22.648981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.429949, 21.310205, 22.790897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067812, 0.415653, 0.906992,
		-0.752761, -0.617950, 0.226911,
		0.654792, -0.667361, 0.354792,
		17.626387, 21.109997, 22.897335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.957239, 21.528337, 23.411215>,  <17.168032, 21.577150, 22.648981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.957239, 21.528337, 23.411215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.318956, 21.357691, 23.404825>,  <17.535986, 21.255302, 23.400991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.318956, 21.357691, 23.404825>,  <16.957239, 21.528337, 23.411215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.318956, 21.357691, 23.404825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206607, 0.404580, 0.890858,
		-0.373592, -0.808896, 0.454000,
		0.904291, -0.426618, -0.015976,
		17.590244, 21.229706, 23.400032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.009947, 21.116983, 23.997992>,  <16.957239, 21.528337, 23.411215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.009947, 21.116983, 23.997992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.386166, 21.198494, 23.889294>,  <17.611897, 21.247400, 23.824076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.386166, 21.198494, 23.889294>,  <17.009947, 21.116983, 23.997992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.386166, 21.198494, 23.889294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210552, 0.278000, 0.937221,
		0.266520, -0.938719, 0.218569,
		0.940550, 0.203768, -0.271742,
		17.668329, 21.259626, 23.807770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.327885, 20.664719, 24.424376>,  <17.009947, 21.116983, 23.997992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.327885, 20.664719, 24.424376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.609833, 20.930649, 24.325447>,  <17.779001, 21.090206, 24.266090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.609833, 20.930649, 24.325447>,  <17.327885, 20.664719, 24.424376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.609833, 20.930649, 24.325447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244195, 0.099923, 0.964564,
		0.665980, -0.740286, -0.091914,
		0.704869, 0.664825, -0.247320,
		17.821293, 21.130096, 24.251251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.934784, 20.410601, 24.823229>,  <17.327885, 20.664719, 24.424376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.934784, 20.410601, 24.823229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.014071, 20.792965, 24.736563>,  <18.061642, 21.022385, 24.684563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.014071, 20.792965, 24.736563>,  <17.934784, 20.410601, 24.823229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.014071, 20.792965, 24.736563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374452, 0.130434, 0.918027,
		0.905813, -0.263097, -0.332090,
		0.198215, 0.955912, -0.216666,
		18.073534, 21.079739, 24.671562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.478113, 20.495821, 25.125587>,  <17.934784, 20.410601, 24.823229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.478113, 20.495821, 25.125587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.342646, 20.871357, 25.100649>,  <18.261366, 21.096678, 25.085686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.342646, 20.871357, 25.100649>,  <18.478113, 20.495821, 25.125587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.342646, 20.871357, 25.100649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252805, 0.154619, 0.955082,
		0.906308, 0.307694, -0.289708,
		-0.338668, 0.938838, -0.062346,
		18.241045, 21.153008, 25.081945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.715254, 20.748053, 25.675768>,  <18.478113, 20.495821, 25.125587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.715254, 20.748053, 25.675768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.481062, 21.054298, 25.569147>,  <18.340546, 21.238045, 25.505175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.481062, 21.054298, 25.569147>,  <18.715254, 20.748053, 25.675768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.481062, 21.054298, 25.569147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119761, 0.406872, 0.905600,
		0.801791, 0.498289, -0.329906,
		-0.585481, 0.765613, -0.266551,
		18.305418, 21.283981, 25.489182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.043196, 21.322763, 25.819824>,  <18.715254, 20.748053, 25.675768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.043196, 21.322763, 25.819824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.660801, 21.439552, 25.808235>,  <18.431364, 21.509626, 25.801281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.660801, 21.439552, 25.808235>,  <19.043196, 21.322763, 25.819824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.660801, 21.439552, 25.808235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081007, 0.357563, 0.930369,
		0.282004, 0.887074, -0.365478,
		-0.955987, 0.291974, -0.028975,
		18.374004, 21.527145, 25.799543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.061573, 22.015018, 25.974329>,  <19.043196, 21.322763, 25.819824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.061573, 22.015018, 25.974329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.702515, 21.866001, 26.068514>,  <18.487080, 21.776590, 26.125025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.702515, 21.866001, 26.068514>,  <19.061573, 22.015018, 25.974329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.702515, 21.866001, 26.068514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116981, 0.313694, 0.942291,
		-0.424905, 0.873389, -0.238006,
		-0.897648, -0.372542, 0.235460,
		18.433220, 21.754238, 26.139153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.735649, 22.481676, 26.331038>,  <19.061573, 22.015018, 25.974329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.735649, 22.481676, 26.331038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.484509, 22.180887, 26.411379>,  <18.333824, 22.000414, 26.459583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.484509, 22.180887, 26.411379>,  <18.735649, 22.481676, 26.331038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.484509, 22.180887, 26.411379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063733, 0.306856, 0.949620,
		-0.775721, 0.583417, -0.240585,
		-0.627850, -0.751973, 0.200851,
		18.296154, 21.955296, 26.471634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.097147, 22.706602, 26.772139>,  <18.735649, 22.481676, 26.331038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.097147, 22.706602, 26.772139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.085846, 22.315830, 26.856812>,  <18.079065, 22.081367, 26.907616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.085846, 22.315830, 26.856812>,  <18.097147, 22.706602, 26.772139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.085846, 22.315830, 26.856812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012721, 0.212102, 0.977165,
		-0.999520, 0.024913, -0.018419,
		-0.028251, -0.976930, 0.211683,
		18.077372, 22.022751, 26.920317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.692827, 22.727957, 27.244555>,  <18.097147, 22.706602, 26.772139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.692827, 22.727957, 27.244555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.841688, 22.357897, 27.274488>,  <17.931005, 22.135860, 27.292448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.841688, 22.357897, 27.274488>,  <17.692827, 22.727957, 27.244555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.841688, 22.357897, 27.274488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118958, 0.127502, 0.984679,
		-0.920516, -0.357550, 0.157505,
		0.372154, -0.925149, 0.074834,
		17.953335, 22.080353, 27.296938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.369976, 22.348930, 27.733862>,  <17.692827, 22.727957, 27.244555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.369976, 22.348930, 27.733862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.752707, 22.233126, 27.723524>,  <17.982346, 22.163643, 27.717321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.752707, 22.233126, 27.723524>,  <17.369976, 22.348930, 27.733862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.752707, 22.233126, 27.723524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057519, 0.101433, 0.993178,
		-0.284914, -0.951785, 0.113706,
		0.956826, -0.289511, -0.025846,
		18.039755, 22.146273, 27.715771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.524763, 21.718388, 28.180094>,  <17.369976, 22.348930, 27.733862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.524763, 21.718388, 28.180094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.871929, 21.912455, 28.137516>,  <18.080229, 22.028894, 28.111969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.871929, 21.912455, 28.137516>,  <17.524763, 21.718388, 28.180094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.871929, 21.912455, 28.137516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154155, -0.059383, 0.986260,
		0.472181, -0.872402, -0.126331,
		0.867918, 0.485169, -0.106446,
		18.132305, 22.058004, 28.105583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.862772, 21.825266, 28.205387>,  <17.524763, 21.718388, 28.180094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.862772, 21.825266, 28.205387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.478291, 21.907047, 28.279455>,  <16.247602, 21.956116, 28.323896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.478291, 21.907047, 28.279455>,  <16.862772, 21.825266, 28.205387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.478291, 21.907047, 28.279455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244503, -0.942266, -0.228809,
		0.127697, -0.265206, 0.955698,
		-0.961203, 0.204453, 0.185169,
		16.189930, 21.968384, 28.335007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.542736, 21.286497, 28.636473>,  <16.862772, 21.825266, 28.205387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.542736, 21.286497, 28.636473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.258936, 21.464361, 28.417789>,  <16.088655, 21.571079, 28.286579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.258936, 21.464361, 28.417789>,  <16.542736, 21.286497, 28.636473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.258936, 21.464361, 28.417789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246274, -0.883330, -0.398845,
		-0.660272, -0.148341, 0.736231,
		-0.709500, 0.444660, -0.546706,
		16.046085, 21.597759, 28.253777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.977947, 20.809338, 28.549660>,  <16.542736, 21.286497, 28.636473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.977947, 20.809338, 28.549660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.903509, 21.081062, 28.265715>,  <15.858847, 21.244097, 28.095348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.903509, 21.081062, 28.265715>,  <15.977947, 20.809338, 28.549660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.903509, 21.081062, 28.265715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388997, -0.714387, -0.581664,
		-0.902247, 0.167890, 0.397194,
		-0.186095, 0.679312, -0.709862,
		15.847681, 21.284857, 28.052755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.362396, 20.595579, 28.254019>,  <15.977947, 20.809338, 28.549660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.362396, 20.595579, 28.254019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.506979, 20.858841, 27.989843>,  <15.593729, 21.016798, 27.831339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.506979, 20.858841, 27.989843>,  <15.362396, 20.595579, 28.254019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.506979, 20.858841, 27.989843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335368, -0.569151, -0.750730,
		-0.869987, 0.492847, 0.015001,
		0.361457, 0.658156, -0.660438,
		15.615417, 21.056288, 27.791712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.953457, 20.611738, 27.684965>,  <15.362396, 20.595579, 28.254019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.953457, 20.611738, 27.684965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.272152, 20.776089, 27.507702>,  <15.463368, 20.874699, 27.401344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.272152, 20.776089, 27.507702>,  <14.953457, 20.611738, 27.684965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.272152, 20.776089, 27.507702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322102, -0.331749, -0.886675,
		-0.511333, 0.849189, -0.131972,
		0.796736, 0.410878, -0.443159,
		15.511173, 20.899353, 27.374754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829473, 20.990833, 27.076551>,  <14.953457, 20.611738, 27.684965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829473, 20.990833, 27.076551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.218117, 20.917881, 27.016266>,  <15.451303, 20.874109, 26.980095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.218117, 20.917881, 27.016266>,  <14.829473, 20.990833, 27.076551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.218117, 20.917881, 27.016266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176228, -0.132824, -0.975347,
		0.157866, 0.974215, -0.161193,
		0.971608, -0.182380, -0.150716,
		15.509599, 20.863167, 26.971050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.976094, 21.284826, 26.398579>,  <14.829473, 20.990833, 27.076551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.976094, 21.284826, 26.398579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.314450, 21.077662, 26.449545>,  <15.517464, 20.953362, 26.480124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.314450, 21.077662, 26.449545>,  <14.976094, 21.284826, 26.398579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.314450, 21.077662, 26.449545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101584, -0.078072, -0.991759,
		0.523592, 0.851863, -0.013429,
		0.845891, -0.517913, 0.127414,
		15.568217, 20.922287, 26.487768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.592090, 21.598261, 25.957714>,  <14.976094, 21.284826, 26.398579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.592090, 21.598261, 25.957714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.631516, 21.203783, 26.010941>,  <15.655172, 20.967096, 26.042877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.631516, 21.203783, 26.010941>,  <15.592090, 21.598261, 25.957714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.631516, 21.203783, 26.010941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114237, -0.121620, -0.985981,
		0.988552, 0.112386, 0.100672,
		0.098567, -0.986193, 0.133067,
		15.661086, 20.907925, 26.050861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.138918, 21.391659, 25.447647>,  <15.592090, 21.598261, 25.957714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.138918, 21.391659, 25.447647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.994336, 21.032682, 25.548798>,  <15.907587, 20.817297, 25.609488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.994336, 21.032682, 25.548798>,  <16.138918, 21.391659, 25.447647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.994336, 21.032682, 25.548798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150012, -0.323656, -0.934207,
		0.920242, -0.299739, 0.251615,
		-0.361455, -0.897442, 0.252878,
		15.885900, 20.763451, 25.624660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.578388, 20.844482, 25.167938>,  <16.138918, 21.391659, 25.447647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.578388, 20.844482, 25.167938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.244497, 20.638922, 25.247065>,  <16.044163, 20.515585, 25.294540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.244497, 20.638922, 25.247065>,  <16.578388, 20.844482, 25.167938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.244497, 20.638922, 25.247065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048793, -0.426849, -0.903005,
		0.548496, -0.744112, 0.381378,
		-0.834728, -0.513903, 0.197818,
		15.994079, 20.484751, 25.306410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670780, 20.221058, 24.901543>,  <16.578388, 20.844482, 25.167938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670780, 20.221058, 24.901543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.274790, 20.277540, 24.902807>,  <16.037195, 20.311430, 24.903566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.274790, 20.277540, 24.902807>,  <16.670780, 20.221058, 24.901543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.274790, 20.277540, 24.902807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029753, -0.186607, -0.981984,
		-0.138068, -0.972235, 0.188938,
		-0.989976, 0.141202, 0.003163,
		15.977798, 20.319902, 24.903755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.441494, 19.627016, 24.524323>,  <16.670780, 20.221058, 24.901543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.441494, 19.627016, 24.524323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.134363, 19.882465, 24.544727>,  <15.950085, 20.035734, 24.556971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.134363, 19.882465, 24.544727>,  <16.441494, 19.627016, 24.524323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.134363, 19.882465, 24.544727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225904, -0.195379, -0.954355,
		-0.599508, -0.744303, 0.294285,
		-0.767826, 0.638624, 0.051010,
		15.904016, 20.074053, 24.560030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.881786, 19.231817, 24.295275>,  <16.441494, 19.627016, 24.524323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.881786, 19.231817, 24.295275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.811979, 19.621799, 24.240129>,  <15.770095, 19.855789, 24.207043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.811979, 19.621799, 24.240129>,  <15.881786, 19.231817, 24.295275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.811979, 19.621799, 24.240129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205270, -0.172961, -0.963301,
		-0.963020, -0.139814, 0.230313,
		-0.174518, 0.974955, -0.137865,
		15.759624, 19.914286, 24.198771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.367019, 19.190437, 23.760118>,  <15.881786, 19.231817, 24.295275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.367019, 19.190437, 23.760118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.477504, 19.574867, 23.757542>,  <15.543795, 19.805525, 23.755995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.477504, 19.574867, 23.757542>,  <15.367019, 19.190437, 23.760118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.477504, 19.574867, 23.757542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018071, -0.001509, -0.999836,
		-0.960927, 0.276283, 0.016950,
		0.276212, 0.961075, -0.006442,
		15.560368, 19.863190, 23.755610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.812481, 19.491444, 23.521086>,  <15.367019, 19.190437, 23.760118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.812481, 19.491444, 23.521086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.105419, 19.755980, 23.456215>,  <15.281182, 19.914701, 23.417294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.105419, 19.755980, 23.456215>,  <14.812481, 19.491444, 23.521086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.105419, 19.755980, 23.456215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211572, -0.005379, -0.977348,
		-0.647229, 0.750069, 0.135982,
		0.732347, 0.661338, -0.162175,
		15.325123, 19.954380, 23.407562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.599880, 20.050636, 23.250195>,  <14.812481, 19.491444, 23.521086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.599880, 20.050636, 23.250195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.984495, 20.056299, 23.140471>,  <15.215264, 20.059696, 23.074636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.984495, 20.056299, 23.140471>,  <14.599880, 20.050636, 23.250195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.984495, 20.056299, 23.140471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273107, 0.155886, -0.949269,
		0.029324, 0.987674, 0.153756,
		0.961537, 0.014156, -0.274312,
		15.272956, 20.060545, 23.058178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.504211, 20.652193, 22.788652>,  <14.599880, 20.050636, 23.250195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.504211, 20.652193, 22.788652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.825625, 20.427725, 22.709238>,  <15.018474, 20.293043, 22.661591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.825625, 20.427725, 22.709238>,  <14.504211, 20.652193, 22.788652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.825625, 20.427725, 22.709238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225353, 0.021918, -0.974031,
		0.550951, 0.827408, -0.108850,
		0.803535, -0.561173, -0.198534,
		15.066686, 20.259373, 22.649677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.724274, 20.927872, 22.136795>,  <14.504211, 20.652193, 22.788652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.724274, 20.927872, 22.136795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.858384, 20.553978, 22.183887>,  <14.938850, 20.329641, 22.212143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.858384, 20.553978, 22.183887>,  <14.724274, 20.927872, 22.136795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.858384, 20.553978, 22.183887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092682, -0.157082, -0.983227,
		0.937550, 0.318740, -0.139299,
		0.335275, -0.934735, 0.117730,
		14.958967, 20.273558, 22.219206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.084820, 20.844910, 21.483538>,  <14.724274, 20.927872, 22.136795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.084820, 20.844910, 21.483538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.059787, 20.478045, 21.640966>,  <15.044767, 20.257925, 21.735424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.059787, 20.478045, 21.640966>,  <15.084820, 20.844910, 21.483538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.059787, 20.478045, 21.640966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052297, -0.390787, -0.918994,
		0.996669, -0.078095, -0.023509,
		-0.062582, -0.917162, 0.393570,
		15.041013, 20.202896, 21.759037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.575009, 20.467331, 21.167484>,  <15.084820, 20.844910, 21.483538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.575009, 20.467331, 21.167484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.331393, 20.179054, 21.299953>,  <15.185224, 20.006088, 21.379435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.331393, 20.179054, 21.299953>,  <15.575009, 20.467331, 21.167484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.331393, 20.179054, 21.299953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058670, -0.375469, -0.924976,
		0.790967, -0.582777, 0.186392,
		-0.609039, -0.720690, 0.331175,
		15.148682, 19.962847, 21.399305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.015247, 18.662491, 2.869755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.794893, 18.333200, 2.814878>,  <19.662682, 18.135626, 2.781952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.794893, 18.333200, 2.814878>,  <20.015247, 18.662491, 2.869755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.794893, 18.333200, 2.814878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723099, -0.552886, 0.414059,
		-0.416716, 0.128895, 0.899852,
		-0.550885, -0.823227, -0.137192,
		19.629627, 18.086233, 2.773721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.774860, 18.374790, 3.463882>,  <20.015247, 18.662491, 2.869755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.774860, 18.374790, 3.463882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.848888, 18.097937, 3.184828>,  <19.893305, 17.931824, 3.017395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.848888, 18.097937, 3.184828>,  <19.774860, 18.374790, 3.463882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.848888, 18.097937, 3.184828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711856, -0.394996, 0.580723,
		-0.677503, -0.604091, 0.419599,
		0.185070, -0.692136, -0.697637,
		19.904409, 17.890295, 2.975536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.959343, 17.699598, 3.743398>,  <19.774860, 18.374790, 3.463882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.959343, 17.699598, 3.743398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.151356, 17.763832, 3.398427>,  <20.266563, 17.802372, 3.191444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.151356, 17.763832, 3.398427>,  <19.959343, 17.699598, 3.743398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.151356, 17.763832, 3.398427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862776, -0.264273, 0.431019,
		-0.158702, -0.950985, -0.265406,
		0.480033, 0.160583, -0.862428,
		20.295366, 17.812006, 3.139698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.505087, 17.145025, 3.562214>,  <19.959343, 17.699598, 3.743398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.505087, 17.145025, 3.562214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.626820, 17.501295, 3.427112>,  <20.699860, 17.715057, 3.346051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.626820, 17.501295, 3.427112>,  <20.505087, 17.145025, 3.562214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.626820, 17.501295, 3.427112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881736, -0.129228, 0.453698,
		0.360450, -0.435885, -0.824669,
		0.304331, 0.890676, -0.337755,
		20.718119, 17.768497, 3.325786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.745216, 17.000830, 4.235925>,  <20.505087, 17.145025, 3.562214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.745216, 17.000830, 4.235925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.417856, 16.907234, 4.025983>,  <20.221441, 16.851078, 3.900018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.417856, 16.907234, 4.025983>,  <20.745216, 17.000830, 4.235925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.417856, 16.907234, 4.025983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512904, -0.709305, -0.483546,
		-0.259139, -0.664934, 0.700507,
		-0.818399, -0.233987, -0.524855,
		20.172337, 16.837038, 3.868527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.370199, 16.321880, 4.461283>,  <20.745216, 17.000830, 4.235925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.370199, 16.321880, 4.461283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.383192, 16.462234, 4.086941>,  <20.390987, 16.546446, 3.862335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.383192, 16.462234, 4.086941>,  <20.370199, 16.321880, 4.461283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.383192, 16.462234, 4.086941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466435, -0.833453, -0.296300,
		-0.883959, -0.426891, -0.190739,
		0.032484, 0.350884, -0.935855,
		20.392937, 16.567499, 3.806184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.178331, 16.058718, 4.238719>,  <20.370199, 16.321880, 4.461283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.178331, 16.058718, 4.238719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.529461, 16.139214, 4.412582>,  <21.740139, 16.187511, 4.516900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.529461, 16.139214, 4.412582>,  <21.178331, 16.058718, 4.238719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.529461, 16.139214, 4.412582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105799, -0.803584, 0.585713,
		0.467153, -0.560139, -0.684114,
		0.877824, 0.201239, 0.434658,
		21.792809, 16.199585, 4.542979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.541090, 15.371772, 4.320312>,  <21.178331, 16.058718, 4.238719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.541090, 15.371772, 4.320312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.635860, 15.656063, 4.585258>,  <21.692722, 15.826638, 4.744226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.635860, 15.656063, 4.585258>,  <21.541090, 15.371772, 4.320312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.635860, 15.656063, 4.585258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458280, -0.519402, 0.721250,
		0.856648, -0.474432, 0.202654,
		0.236926, 0.710730, 0.662367,
		21.706938, 15.869282, 4.783968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.890720, 15.048319, 4.912439>,  <21.541090, 15.371772, 4.320312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.890720, 15.048319, 4.912439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.709259, 15.390279, 5.013115>,  <21.600382, 15.595454, 5.073520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.709259, 15.390279, 5.013115>,  <21.890720, 15.048319, 4.912439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.709259, 15.390279, 5.013115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450701, -0.463731, 0.762773,
		0.768810, 0.232597, 0.595676,
		-0.453652, 0.854899, 0.251689,
		21.573164, 15.646749, 5.088622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.116146, 15.253247, 5.592431>,  <21.890720, 15.048319, 4.912439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.116146, 15.253247, 5.592431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.755053, 15.405519, 5.512281>,  <21.538397, 15.496883, 5.464191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.755053, 15.405519, 5.512281>,  <22.116146, 15.253247, 5.592431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.755053, 15.405519, 5.512281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324498, -0.296771, 0.898125,
		0.282434, 0.875790, 0.391436,
		-0.902736, 0.380682, -0.200374,
		21.484232, 15.519724, 5.452169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.835102, 15.600934, 6.186545>,  <22.116146, 15.253247, 5.592431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.835102, 15.600934, 6.186545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.511797, 15.486338, 5.980776>,  <21.317814, 15.417580, 5.857315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.511797, 15.486338, 5.980776>,  <21.835102, 15.600934, 6.186545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.511797, 15.486338, 5.980776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340909, -0.484641, 0.805546,
		-0.480093, 0.826466, 0.294050,
		-0.808265, -0.286492, -0.514422,
		21.269318, 15.400390, 5.826449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.401484, 15.878197, 6.604537>,  <21.835102, 15.600934, 6.186545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.401484, 15.878197, 6.604537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.215466, 15.603598, 6.380946>,  <21.103855, 15.438838, 6.246791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.215466, 15.603598, 6.380946>,  <21.401484, 15.878197, 6.604537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.215466, 15.603598, 6.380946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330869, -0.450874, 0.828998,
		-0.821133, 0.570469, -0.017465,
		-0.465044, -0.686497, -0.558978,
		21.075953, 15.397649, 6.213252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.718172, 15.930065, 6.853938>,  <21.401484, 15.878197, 6.604537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.718172, 15.930065, 6.853938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.789381, 15.572860, 6.688609>,  <20.832108, 15.358537, 6.589412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.789381, 15.572860, 6.688609>,  <20.718172, 15.930065, 6.853938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.789381, 15.572860, 6.688609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339670, -0.449981, 0.825919,
		-0.923543, -0.006641, -0.383437,
		0.178024, -0.893014, -0.413321,
		20.842789, 15.304955, 6.564613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.214327, 15.566309, 7.098142>,  <20.718172, 15.930065, 6.853938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.214327, 15.566309, 7.098142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.478352, 15.295169, 6.968629>,  <20.636766, 15.132485, 6.890921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.478352, 15.295169, 6.968629>,  <20.214327, 15.566309, 7.098142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.478352, 15.295169, 6.968629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233896, -0.595038, 0.768910,
		-0.713869, -0.431797, -0.551309,
		0.660063, -0.677850, -0.323784,
		20.676371, 15.091814, 6.871494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.929102, 14.974129, 7.111216>,  <20.214327, 15.566309, 7.098142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.929102, 14.974129, 7.111216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.304247, 14.836940, 7.090098>,  <20.529333, 14.754626, 7.077428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.304247, 14.836940, 7.090098>,  <19.929102, 14.974129, 7.111216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.304247, 14.836940, 7.090098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179071, -0.608652, 0.772965,
		-0.297236, -0.715481, -0.632248,
		0.937862, -0.342971, -0.052792,
		20.585606, 14.734049, 7.074261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.931601, 14.175677, 6.993816>,  <19.929102, 14.974129, 7.111216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.931601, 14.175677, 6.993816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.272701, 14.295363, 7.165064>,  <20.477362, 14.367175, 7.267812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.272701, 14.295363, 7.165064>,  <19.931601, 14.175677, 6.993816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.272701, 14.295363, 7.165064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034647, -0.785444, 0.617962,
		0.521167, -0.541801, -0.659421,
		0.852751, 0.299215, 0.428119,
		20.528526, 14.385128, 7.293499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.040745, 13.437892, 7.167663>,  <19.931601, 14.175677, 6.993816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.040745, 13.437892, 7.167663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.327625, 13.660475, 7.335461>,  <20.499754, 13.794024, 7.436140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.327625, 13.660475, 7.335461>,  <20.040745, 13.437892, 7.167663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.327625, 13.660475, 7.335461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202871, -0.742624, 0.638242,
		0.666683, -0.372644, -0.645500,
		0.717201, 0.556458, 0.419496,
		20.542786, 13.827413, 7.461310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.706816, 13.045685, 7.261856>,  <20.040745, 13.437892, 7.167663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.706816, 13.045685, 7.261856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.717113, 13.329324, 7.543712>,  <20.723293, 13.499507, 7.712826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.717113, 13.329324, 7.543712>,  <20.706816, 13.045685, 7.261856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.717113, 13.329324, 7.543712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008902, -0.704684, 0.709465,
		0.999629, -0.024539, -0.011831,
		0.025746, 0.709096, 0.704641,
		20.724838, 13.542052, 7.755105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.202562, 12.790405, 7.756272>,  <20.706816, 13.045685, 7.261856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.202562, 12.790405, 7.756272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.968044, 13.063386, 7.930866>,  <20.827333, 13.227174, 8.035622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.968044, 13.063386, 7.930866>,  <21.202562, 12.790405, 7.756272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.968044, 13.063386, 7.930866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033987, -0.559052, 0.828436,
		0.809384, 0.470873, 0.350964,
		-0.586295, 0.682451, 0.436484,
		20.792156, 13.268122, 8.061811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.527468, 12.937856, 8.360044>,  <21.202562, 12.790405, 7.756272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.527468, 12.937856, 8.360044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.147631, 13.052761, 8.410251>,  <20.919729, 13.121704, 8.440374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.147631, 13.052761, 8.410251>,  <21.527468, 12.937856, 8.360044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.147631, 13.052761, 8.410251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028971, -0.479091, 0.877287,
		0.312146, 0.829429, 0.463263,
		-0.949592, 0.287263, 0.125516,
		20.862753, 13.138940, 8.447906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.410526, 13.356050, 9.056444>,  <21.527468, 12.937856, 8.360044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.410526, 13.356050, 9.056444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.068289, 13.186198, 8.938021>,  <20.862947, 13.084287, 8.866966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.068289, 13.186198, 8.938021>,  <21.410526, 13.356050, 9.056444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.068289, 13.186198, 8.938021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061297, -0.484796, 0.872476,
		-0.514008, 0.764632, 0.388760,
		-0.855592, -0.424630, -0.296059,
		20.811611, 13.058809, 8.849203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.003695, 13.467105, 9.673155>,  <21.410526, 13.356050, 9.056444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.003695, 13.467105, 9.673155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.770117, 13.204206, 9.482562>,  <20.629971, 13.046466, 9.368206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.770117, 13.204206, 9.482562>,  <21.003695, 13.467105, 9.673155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.770117, 13.204206, 9.482562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350748, -0.325067, 0.878241,
		-0.732112, 0.679967, -0.040709,
		-0.583942, -0.657249, -0.476483,
		20.594934, 13.007030, 9.339618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.412312, 13.433370, 10.100090>,  <21.003695, 13.467105, 9.673155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.412312, 13.433370, 10.100090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.427700, 13.110955, 9.863845>,  <20.436934, 12.917506, 9.722097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.427700, 13.110955, 9.863845>,  <20.412312, 13.433370, 10.100090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.427700, 13.110955, 9.863845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190061, -0.586164, 0.787584,
		-0.981018, 0.081954, -0.175746,
		0.038470, -0.806037, -0.590614,
		20.439241, 12.869144, 9.686661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.961388, 13.018321, 10.396596>,  <20.412312, 13.433370, 10.100090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.961388, 13.018321, 10.396596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.146952, 12.740651, 10.176449>,  <20.258291, 12.574049, 10.044360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.146952, 12.740651, 10.176449>,  <19.961388, 13.018321, 10.396596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.146952, 12.740651, 10.176449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093396, -0.656130, 0.748847,
		-0.880945, -0.295996, -0.369219,
		0.463911, -0.694176, -0.550369,
		20.286125, 12.532398, 10.011338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.513002, 12.445993, 10.256945>,  <19.961388, 13.018321, 10.396596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.513002, 12.445993, 10.256945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.895298, 12.329059, 10.243688>,  <20.124676, 12.258898, 10.235734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.895298, 12.329059, 10.243688>,  <19.513002, 12.445993, 10.256945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.895298, 12.329059, 10.243688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137619, -0.543772, 0.827872,
		-0.260038, -0.786671, -0.559937,
		0.955741, -0.292336, -0.033141,
		20.182020, 12.241358, 10.233746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.467506, 11.729078, 10.225812>,  <19.513002, 12.445993, 10.256945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.467506, 11.729078, 10.225812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.826780, 11.836902, 10.364723>,  <20.042345, 11.901595, 10.448071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.826780, 11.836902, 10.364723>,  <19.467506, 11.729078, 10.225812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.826780, 11.836902, 10.364723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151831, -0.551139, 0.820483,
		0.412567, -0.789673, -0.454098,
		0.898184, 0.269558, 0.347279,
		20.096235, 11.917768, 10.468907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.685055, 11.075138, 10.401302>,  <19.467506, 11.729078, 10.225812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.685055, 11.075138, 10.401302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.903090, 11.351153, 10.591765>,  <20.033911, 11.516763, 10.706043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.903090, 11.351153, 10.591765>,  <19.685055, 11.075138, 10.401302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.903090, 11.351153, 10.591765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255314, -0.404347, 0.878247,
		0.798558, -0.600291, -0.044228,
		0.545087, 0.690039, 0.476157,
		20.066616, 11.558166, 10.734612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.059839, 10.699784, 10.906566>,  <19.685055, 11.075138, 10.401302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.059839, 10.699784, 10.906566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.115282, 11.076880, 11.027914>,  <20.148548, 11.303137, 11.100723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.115282, 11.076880, 11.027914>,  <20.059839, 10.699784, 10.906566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.115282, 11.076880, 11.027914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253936, -0.329920, 0.909214,
		0.957238, -0.048987, -0.285125,
		0.138608, 0.942737, 0.303372,
		20.156864, 11.359700, 11.118926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.844395, 10.748547, 11.118034>,  <20.059839, 10.699784, 10.906566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.844395, 10.748547, 11.118034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.604502, 11.000764, 11.315107>,  <20.460566, 11.152094, 11.433352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.604502, 11.000764, 11.315107>,  <20.844395, 10.748547, 11.118034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.604502, 11.000764, 11.315107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274146, -0.416535, 0.866800,
		0.751774, 0.654916, 0.076949,
		-0.599733, 0.630542, 0.492683,
		20.424582, 11.189926, 11.462913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.172361, 10.837961, 11.795178>,  <20.844395, 10.748547, 11.118034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.172361, 10.837961, 11.795178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.794697, 10.967656, 11.818587>,  <20.568098, 11.045473, 11.832632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.794697, 10.967656, 11.818587>,  <21.172361, 10.837961, 11.795178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.794697, 10.967656, 11.818587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085594, -0.412904, 0.906744,
		0.318165, 0.851106, 0.417601,
		-0.944164, 0.324238, 0.058522,
		20.511448, 11.064927, 11.836143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.213600, 10.922318, 12.529387>,  <21.172361, 10.837961, 11.795178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.213600, 10.922318, 12.529387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.501541, 11.057955, 12.287122>,  <21.674305, 11.139337, 12.141762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.501541, 11.057955, 12.287122>,  <21.213600, 10.922318, 12.529387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.501541, 11.057955, 12.287122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249013, 0.688321, 0.681327,
		0.647921, -0.641275, 0.411054,
		0.719855, 0.339088, -0.605664,
		21.717497, 11.159682, 12.105422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.734097, 11.118626, 12.897355>,  <21.213600, 10.922318, 12.529387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.734097, 11.118626, 12.897355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.851845, 11.291249, 12.556273>,  <21.922493, 11.394823, 12.351624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.851845, 11.291249, 12.556273>,  <21.734097, 11.118626, 12.897355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.851845, 11.291249, 12.556273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375409, 0.768302, 0.518441,
		0.878872, -0.472725, 0.064152,
		0.294368, 0.431560, -0.852704,
		21.940155, 11.420717, 12.300463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.539776, 11.032446, 12.807282>,  <21.734097, 11.118626, 12.897355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.539776, 11.032446, 12.807282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.387419, 11.353506, 12.623686>,  <22.296005, 11.546143, 12.513528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.387419, 11.353506, 12.623686>,  <22.539776, 11.032446, 12.807282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.387419, 11.353506, 12.623686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542499, 0.595986, 0.592027,
		0.748743, -0.023504, -0.662444,
		-0.380892, 0.802651, -0.458991,
		22.273151, 11.594301, 12.485989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.141624, 11.463626, 12.778790>,  <22.539776, 11.032446, 12.807282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.141624, 11.463626, 12.778790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.817011, 11.691312, 12.726017>,  <22.622242, 11.827924, 12.694353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.817011, 11.691312, 12.726017>,  <23.141624, 11.463626, 12.778790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.817011, 11.691312, 12.726017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391661, 0.697485, 0.600097,
		0.433606, 0.435326, -0.788972,
		-0.811534, 0.569216, -0.131933,
		22.573551, 11.862077, 12.686437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.171171, 12.235364, 12.421744>,  <23.141624, 11.463626, 12.778790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.171171, 12.235364, 12.421744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.879259, 12.280752, 12.691423>,  <22.704111, 12.307985, 12.853231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.879259, 12.280752, 12.691423>,  <23.171171, 12.235364, 12.421744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.879259, 12.280752, 12.691423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580468, 0.623848, 0.523326,
		-0.361215, 0.773264, -0.521139,
		-0.729781, 0.113471, 0.674198,
		22.660324, 12.314794, 12.893682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.868755, 12.880966, 12.330895>,  <23.171171, 12.235364, 12.421744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.868755, 12.880966, 12.330895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.123383, 13.179268, 12.409518>,  <23.276159, 13.358249, 12.456692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.123383, 13.179268, 12.409518>,  <22.868755, 12.880966, 12.330895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.123383, 13.179268, 12.409518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317166, 0.485457, -0.814701,
		-0.702986, 0.456270, 0.545553,
		0.636566, 0.745754, 0.196557,
		23.314352, 13.402994, 12.468485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.503878, 13.508583, 12.268533>,  <22.868755, 12.880966, 12.330895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.503878, 13.508583, 12.268533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.876757, 13.639394, 12.206490>,  <23.100485, 13.717880, 12.169264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.876757, 13.639394, 12.206490>,  <22.503878, 13.508583, 12.268533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.876757, 13.639394, 12.206490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317549, 0.533301, -0.784062,
		-0.173689, 0.780156, 0.600989,
		0.932199, 0.327026, -0.155109,
		23.156416, 13.737502, 12.159957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.555632, 14.230230, 12.360741>,  <22.503878, 13.508583, 12.268533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.555632, 14.230230, 12.360741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.865908, 14.122967, 12.132216>,  <23.052073, 14.058609, 11.995102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.865908, 14.122967, 12.132216>,  <22.555632, 14.230230, 12.360741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.865908, 14.122967, 12.132216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358929, 0.557142, -0.748841,
		0.519109, 0.785928, 0.335920,
		0.775690, -0.268159, -0.571310,
		23.098616, 14.042519, 11.960823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.627264, 14.879097, 11.988821>,  <22.555632, 14.230230, 12.360741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.627264, 14.879097, 11.988821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.848488, 14.607765, 11.795328>,  <22.981222, 14.444966, 11.679233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.848488, 14.607765, 11.795328>,  <22.627264, 14.879097, 11.988821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.848488, 14.607765, 11.795328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278813, 0.396443, -0.874698,
		0.785105, 0.618629, 0.030128,
		0.553058, -0.678330, -0.483731,
		23.014404, 14.404266, 11.650208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.751764, 15.177510, 11.333806>,  <22.627264, 14.879097, 11.988821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.751764, 15.177510, 11.333806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.852381, 14.797350, 11.260630>,  <22.912750, 14.569254, 11.216724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.852381, 14.797350, 11.260630>,  <22.751764, 15.177510, 11.333806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.852381, 14.797350, 11.260630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270461, 0.112463, -0.956140,
		0.929289, 0.289985, -0.228758,
		0.251540, -0.950400, -0.182940,
		22.927843, 14.512230, 11.205748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.079170, 15.288329, 10.692300>,  <22.751764, 15.177510, 11.333806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.079170, 15.288329, 10.692300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.983717, 14.900248, 10.709077>,  <22.926445, 14.667398, 10.719143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.983717, 14.900248, 10.709077>,  <23.079170, 15.288329, 10.692300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.983717, 14.900248, 10.709077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331107, 0.040684, -0.942716,
		0.912921, -0.238849, -0.330949,
		-0.238631, -0.970204, 0.041943,
		22.912128, 14.609186, 10.721660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.473085, 14.984837, 10.146789>,  <23.079170, 15.288329, 10.692300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.473085, 14.984837, 10.146789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.163961, 14.755330, 10.255272>,  <22.978487, 14.617626, 10.320362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.163961, 14.755330, 10.255272>,  <23.473085, 14.984837, 10.146789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.163961, 14.755330, 10.255272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421587, 0.144710, -0.895167,
		0.474370, -0.806133, -0.353726,
		-0.772811, -0.573767, 0.271209,
		22.932117, 14.583200, 10.336635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.272383, 14.603454, 9.539342>,  <23.473085, 14.984837, 10.146789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.272383, 14.603454, 9.539342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.937954, 14.562752, 9.754983>,  <22.737297, 14.538331, 9.884368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.937954, 14.562752, 9.754983>,  <23.272383, 14.603454, 9.539342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.937954, 14.562752, 9.754983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544613, 0.272507, -0.793181,
		-0.066201, -0.956758, -0.283251,
		-0.836070, -0.101753, 0.539103,
		22.687132, 14.532226, 9.916714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.758842, 14.391004, 9.140647>,  <23.272383, 14.603454, 9.539342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.758842, 14.391004, 9.140647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.529604, 14.517359, 9.443110>,  <22.392061, 14.593172, 9.624589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.529604, 14.517359, 9.443110>,  <22.758842, 14.391004, 9.140647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.529604, 14.517359, 9.443110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647140, 0.391649, -0.654080,
		-0.502766, -0.864191, -0.020028,
		-0.573094, 0.315888, 0.756160,
		22.357676, 14.612125, 9.669958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.005318, 14.199839, 9.004811>,  <22.758842, 14.391004, 9.140647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.005318, 14.199839, 9.004811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.992971, 14.493807, 9.275792>,  <21.985563, 14.670188, 9.438380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.992971, 14.493807, 9.275792>,  <22.005318, 14.199839, 9.004811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.992971, 14.493807, 9.275792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678261, 0.482439, -0.554269,
		-0.734172, -0.476598, 0.483576,
		-0.030867, 0.734920, 0.677451,
		21.983711, 14.714283, 9.479028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.237240, 14.316912, 9.215675>,  <22.005318, 14.199839, 9.004811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.237240, 14.316912, 9.215675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.404543, 14.667334, 9.311665>,  <21.504925, 14.877586, 9.369258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.404543, 14.667334, 9.311665>,  <21.237240, 14.316912, 9.215675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.404543, 14.667334, 9.311665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737928, 0.481772, -0.472607,
		-0.529643, 0.020588, 0.847971,
		0.418259, 0.876055, 0.239974,
		21.530020, 14.930150, 9.383657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.671909, 14.757605, 9.464241>,  <21.237240, 14.316912, 9.215675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.671909, 14.757605, 9.464241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.968693, 15.014195, 9.386263>,  <21.146763, 15.168150, 9.339476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.968693, 15.014195, 9.386263>,  <20.671909, 14.757605, 9.464241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.968693, 15.014195, 9.386263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646002, 0.606221, -0.463873,
		-0.179383, 0.470111, 0.864186,
		0.741960, 0.641477, -0.194946,
		21.191280, 15.206638, 9.327779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.417482, 15.468488, 9.495237>,  <20.671909, 14.757605, 9.464241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.417482, 15.468488, 9.495237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.729036, 15.543746, 9.255924>,  <20.915968, 15.588901, 9.112336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.729036, 15.543746, 9.255924>,  <20.417482, 15.468488, 9.495237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.729036, 15.543746, 9.255924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614798, 0.417592, -0.669060,
		0.123957, 0.888942, 0.440927,
		0.778883, 0.188146, -0.598283,
		20.962702, 15.600190, 9.076439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.433249, 16.282133, 9.336118>,  <20.417482, 15.468488, 9.495237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.433249, 16.282133, 9.336118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.652540, 16.095242, 9.058661>,  <20.784115, 15.983107, 8.892187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.652540, 16.095242, 9.058661>,  <20.433249, 16.282133, 9.336118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.652540, 16.095242, 9.058661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452556, 0.531735, -0.715856,
		0.703303, 0.706367, 0.080066,
		0.548231, -0.467230, -0.693642,
		20.817009, 15.955072, 8.850569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.529202, 16.804062, 8.812566>,  <20.433249, 16.282133, 9.336118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.529202, 16.804062, 8.812566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.619001, 16.451832, 8.645624>,  <20.672880, 16.240494, 8.545459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.619001, 16.451832, 8.645624>,  <20.529202, 16.804062, 8.812566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.619001, 16.451832, 8.645624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527192, 0.250448, -0.812000,
		0.819555, 0.402318, -0.408008,
		0.224497, -0.880577, -0.417354,
		20.686350, 16.187658, 8.520418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.652664, 17.055424, 8.053080>,  <20.529202, 16.804062, 8.812566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.652664, 17.055424, 8.053080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.583315, 16.662577, 8.082431>,  <20.541704, 16.426868, 8.100041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.583315, 16.662577, 8.082431>,  <20.652664, 17.055424, 8.053080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.583315, 16.662577, 8.082431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506235, 0.024961, -0.862034,
		0.844788, -0.186602, -0.501510,
		-0.173375, -0.982118, 0.073378,
		20.531301, 16.367941, 8.104445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.940069, 16.779161, 7.440793>,  <20.652664, 17.055424, 8.053080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.940069, 16.779161, 7.440793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.642756, 16.562872, 7.598346>,  <20.464367, 16.433098, 7.692878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.642756, 16.562872, 7.598346>,  <20.940069, 16.779161, 7.440793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.642756, 16.562872, 7.598346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538411, 0.134086, -0.831946,
		0.397040, -0.830444, -0.390797,
		-0.743285, -0.540725, 0.393883,
		20.419769, 16.400654, 7.716511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<18.289808, 19.543379, 16.230101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.071163, 19.239088, 16.370104>,  <17.939976, 19.056513, 16.454105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.071163, 19.239088, 16.370104>,  <18.289808, 19.543379, 16.230101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.071163, 19.239088, 16.370104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117840, -0.483699, -0.867265,
		0.829051, -0.432815, 0.354041,
		-0.546615, -0.760728, 0.350009,
		17.907179, 19.010870, 16.475107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.663107, 18.913507, 16.037325>,  <18.289808, 19.543379, 16.230101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.663107, 18.913507, 16.037325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.273314, 18.833002, 16.077066>,  <18.039436, 18.784698, 16.100910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.273314, 18.833002, 16.077066>,  <18.663107, 18.913507, 16.037325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.273314, 18.833002, 16.077066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034749, -0.572594, -0.819102,
		0.221744, -0.794751, 0.564978,
		-0.974486, -0.201264, 0.099352,
		17.980968, 18.772623, 16.106873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.627125, 18.099823, 16.060928>,  <18.663107, 18.913507, 16.037325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.627125, 18.099823, 16.060928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.281389, 18.268808, 15.951791>,  <18.073948, 18.370199, 15.886309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.281389, 18.268808, 15.951791>,  <18.627125, 18.099823, 16.060928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.281389, 18.268808, 15.951791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044673, -0.604883, -0.795061,
		-0.500922, -0.675013, 0.541696,
		-0.864339, 0.422463, -0.272844,
		18.022087, 18.395548, 15.869938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.361464, 17.589403, 15.735396>,  <18.627125, 18.099823, 16.060928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.361464, 17.589403, 15.735396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.113142, 17.874237, 15.604227>,  <17.964149, 18.045137, 15.525526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.113142, 17.874237, 15.604227>,  <18.361464, 17.589403, 15.735396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.113142, 17.874237, 15.604227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021920, -0.402357, -0.915220,
		-0.783659, -0.575361, 0.234176,
		-0.620805, 0.712087, -0.327923,
		17.926901, 18.087864, 15.505850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.900396, 17.193209, 15.361278>,  <18.361464, 17.589403, 15.735396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.900396, 17.193209, 15.361278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800528, 17.558350, 15.232055>,  <17.740606, 17.777433, 15.154521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800528, 17.558350, 15.232055>,  <17.900396, 17.193209, 15.361278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.800528, 17.558350, 15.232055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314344, -0.391961, -0.864612,
		-0.915889, -0.114317, 0.384811,
		-0.249671, 0.912852, -0.323058,
		17.725626, 17.832205, 15.135138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181217, 17.172514, 15.176740>,  <17.900396, 17.193209, 15.361278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181217, 17.172514, 15.176740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.345247, 17.482819, 14.984892>,  <17.443665, 17.669001, 14.869783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.345247, 17.482819, 14.984892>,  <17.181217, 17.172514, 15.176740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.345247, 17.482819, 14.984892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268456, -0.399906, -0.876360,
		-0.871649, 0.488128, 0.044266,
		0.410074, 0.775761, -0.479619,
		17.468269, 17.715548, 14.841006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.611996, 17.472025, 14.836539>,  <17.181217, 17.172514, 15.176740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.611996, 17.472025, 14.836539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.944521, 17.605473, 14.658723>,  <17.144035, 17.685541, 14.552032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.944521, 17.605473, 14.658723>,  <16.611996, 17.472025, 14.836539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.944521, 17.605473, 14.658723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287180, -0.426956, -0.857459,
		-0.475863, 0.840481, -0.259126,
		0.831313, 0.333618, -0.444542,
		17.193914, 17.705557, 14.525360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.405081, 17.898657, 14.225455>,  <16.611996, 17.472025, 14.836539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.405081, 17.898657, 14.225455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.751303, 17.701883, 14.187905>,  <16.959036, 17.583818, 14.165376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.751303, 17.701883, 14.187905>,  <16.405081, 17.898657, 14.225455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.751303, 17.701883, 14.187905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332605, -0.424518, -0.842116,
		0.374413, 0.760122, -0.531064,
		0.865557, -0.491934, -0.093875,
		17.010969, 17.554304, 14.159743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343805, 17.625074, 13.498974>,  <16.405081, 17.898657, 14.225455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.343805, 17.625074, 13.498974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.673100, 17.432455, 13.619236>,  <16.870676, 17.316883, 13.691393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.673100, 17.432455, 13.619236>,  <16.343805, 17.625074, 13.498974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.673100, 17.432455, 13.619236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017509, -0.507812, -0.861290,
		0.567430, 0.714309, -0.409618,
		0.823236, -0.481549, 0.300655,
		16.920071, 17.287991, 13.709433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.691362, 17.620411, 12.957779>,  <16.343805, 17.625074, 13.498974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.691362, 17.620411, 12.957779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860176, 17.324507, 13.167404>,  <16.961464, 17.146965, 13.293180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860176, 17.324507, 13.167404>,  <16.691362, 17.620411, 12.957779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860176, 17.324507, 13.167404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109455, -0.532260, -0.839475,
		0.899947, 0.411650, -0.143662,
		0.422036, -0.739759, 0.524063,
		16.986786, 17.102579, 13.324623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.370752, 17.397371, 12.586756>,  <16.691362, 17.620411, 12.957779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.370752, 17.397371, 12.586756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.204800, 17.105551, 12.804243>,  <17.105228, 16.930458, 12.934735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.204800, 17.105551, 12.804243>,  <17.370752, 17.397371, 12.586756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.204800, 17.105551, 12.804243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000502, -0.597758, -0.801676,
		0.909876, -0.332327, 0.248365,
		-0.414881, -0.729551, 0.543719,
		17.080336, 16.886686, 12.967359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.703066, 16.794832, 12.302225>,  <17.370752, 17.397371, 12.586756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.703066, 16.794832, 12.302225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.420649, 16.607420, 12.514631>,  <17.251198, 16.494972, 12.642076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.420649, 16.607420, 12.514631>,  <17.703066, 16.794832, 12.302225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.420649, 16.607420, 12.514631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057011, -0.709806, -0.702086,
		0.705869, -0.525978, 0.474443,
		-0.706045, -0.468532, 0.531016,
		17.208836, 16.466860, 12.673936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.891417, 16.078035, 12.441858>,  <17.703066, 16.794832, 12.302225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.891417, 16.078035, 12.441858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.496071, 16.133509, 12.416874>,  <17.258863, 16.166792, 12.401883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.496071, 16.133509, 12.416874>,  <17.891417, 16.078035, 12.441858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.496071, 16.133509, 12.416874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072501, -0.790561, -0.608076,
		-0.133708, -0.596473, 0.791418,
		-0.988365, 0.138684, -0.062460,
		17.199562, 16.175114, 12.398136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.522501, 15.426826, 12.613982>,  <17.891417, 16.078035, 12.441858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.522501, 15.426826, 12.613982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340750, 15.651617, 12.337514>,  <17.231699, 15.786492, 12.171633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340750, 15.651617, 12.337514>,  <17.522501, 15.426826, 12.613982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.340750, 15.651617, 12.337514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038762, -0.762684, -0.645608,
		-0.889965, -0.320142, 0.324764,
		-0.454379, 0.561980, -0.691172,
		17.204435, 15.820211, 12.130162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.540823, 14.863606, 13.085947>,  <17.522501, 15.426826, 12.613982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.540823, 14.863606, 13.085947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.842680, 14.614097, 13.167356>,  <18.023794, 14.464391, 13.216202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.842680, 14.614097, 13.167356>,  <17.540823, 14.863606, 13.085947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.842680, 14.614097, 13.167356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459044, -0.280286, 0.843041,
		-0.468824, -0.729619, -0.497856,
		0.754641, -0.623776, 0.203522,
		18.069073, 14.426964, 13.228414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.293581, 14.217321, 13.229319>,  <17.540823, 14.863606, 13.085947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.293581, 14.217321, 13.229319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.653599, 14.254597, 13.399606>,  <17.869610, 14.276962, 13.501778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.653599, 14.254597, 13.399606>,  <17.293581, 14.217321, 13.229319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.653599, 14.254597, 13.399606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405139, -0.180999, 0.896160,
		0.160566, -0.979058, -0.125153,
		0.900045, 0.093189, 0.425717,
		17.923613, 14.282553, 13.527321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.331110, 13.700770, 13.712755>,  <17.293581, 14.217321, 13.229319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.331110, 13.700770, 13.712755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.603718, 13.971310, 13.824530>,  <17.767282, 14.133634, 13.891594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.603718, 13.971310, 13.824530>,  <17.331110, 13.700770, 13.712755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.603718, 13.971310, 13.824530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239257, -0.154927, 0.958516,
		0.691583, -0.720104, 0.056235,
		0.681519, 0.676348, 0.279435,
		17.808174, 14.174214, 13.908360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.676958, 13.383400, 14.226056>,  <17.331110, 13.700770, 13.712755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.676958, 13.383400, 14.226056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.752388, 13.773985, 14.267932>,  <17.797646, 14.008336, 14.293057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.752388, 13.773985, 14.267932>,  <17.676958, 13.383400, 14.226056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.752388, 13.773985, 14.267932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057983, -0.095345, 0.993754,
		0.980345, -0.193468, 0.038639,
		0.188576, 0.976463, 0.104689,
		17.808960, 14.066924, 14.299338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.106701, 13.419377, 14.845539>,  <17.676958, 13.383400, 14.226056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.106701, 13.419377, 14.845539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.924498, 13.770532, 14.786443>,  <17.815176, 13.981224, 14.750985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.924498, 13.770532, 14.786443>,  <18.106701, 13.419377, 14.845539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.924498, 13.770532, 14.786443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102199, 0.113292, 0.988292,
		0.884345, 0.465275, 0.038113,
		-0.455509, 0.877886, -0.147740,
		17.787846, 14.033897, 14.742121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.452066, 13.862353, 15.363900>,  <18.106701, 13.419377, 14.845539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.452066, 13.862353, 15.363900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.123451, 14.053273, 15.239153>,  <17.926283, 14.167825, 15.164305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.123451, 14.053273, 15.239153>,  <18.452066, 13.862353, 15.363900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.123451, 14.053273, 15.239153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238616, 0.208952, 0.948368,
		0.517820, 0.853537, -0.057771,
		-0.821538, 0.477299, -0.311867,
		17.876989, 14.196463, 15.145593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.423248, 14.346966, 15.838944>,  <18.452066, 13.862353, 15.363900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.423248, 14.346966, 15.838944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056244, 14.370071, 15.681548>,  <17.836040, 14.383935, 15.587111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056244, 14.370071, 15.681548>,  <18.423248, 14.346966, 15.838944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.056244, 14.370071, 15.681548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356633, 0.318407, 0.878311,
		0.176026, 0.946192, -0.271542,
		-0.917512, 0.057765, -0.393491,
		17.780991, 14.387401, 15.563500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.162552, 15.001424, 15.969440>,  <18.423248, 14.346966, 15.838944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.162552, 15.001424, 15.969440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.847904, 14.759832, 15.918159>,  <17.659115, 14.614878, 15.887389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.847904, 14.759832, 15.918159>,  <18.162552, 15.001424, 15.969440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.847904, 14.759832, 15.918159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422769, 0.375544, 0.824763,
		-0.449992, 0.702977, -0.550754,
		-0.786621, -0.603979, -0.128205,
		17.611917, 14.578639, 15.879697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.544621, 15.446454, 16.014641>,  <18.162552, 15.001424, 15.969440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.544621, 15.446454, 16.014641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.397778, 15.081595, 16.087547>,  <17.309671, 14.862680, 16.131292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.397778, 15.081595, 16.087547>,  <17.544621, 15.446454, 16.014641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.397778, 15.081595, 16.087547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616589, 0.385342, 0.686534,
		-0.696455, 0.139647, -0.703882,
		-0.367107, -0.912146, 0.182268,
		17.287645, 14.807952, 16.142227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.820421, 15.471686, 15.979963>,  <17.544621, 15.446454, 16.014641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.820421, 15.471686, 15.979963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.885773, 15.140351, 16.194315>,  <16.924984, 14.941550, 16.322926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.885773, 15.140351, 16.194315>,  <16.820421, 15.471686, 15.979963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.885773, 15.140351, 16.194315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692825, 0.290366, 0.660062,
		-0.702354, -0.479109, -0.526453,
		0.163378, -0.828337, 0.535879,
		16.934786, 14.891850, 16.355078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.131012, 15.247259, 16.306189>,  <16.820421, 15.471686, 15.979963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.131012, 15.247259, 16.306189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.432482, 15.105934, 16.527870>,  <16.613363, 15.021139, 16.660879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.432482, 15.105934, 16.527870>,  <16.131012, 15.247259, 16.306189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.432482, 15.105934, 16.527870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538788, 0.150784, 0.828837,
		-0.376403, -0.923274, -0.076718,
		0.753676, -0.353312, 0.554205,
		16.658585, 14.999941, 16.694132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.826025, 14.797183, 16.830374>,  <16.131012, 15.247259, 16.306189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.826025, 14.797183, 16.830374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.188026, 14.869197, 16.984547>,  <16.405228, 14.912405, 17.077049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.188026, 14.869197, 16.984547>,  <15.826025, 14.797183, 16.830374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.188026, 14.869197, 16.984547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410470, 0.131592, 0.902329,
		0.111714, -0.974822, 0.192983,
		0.905006, 0.180016, 0.385434,
		16.459528, 14.923207, 17.100176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.724986, 14.510170, 17.482525>,  <15.826025, 14.797183, 16.830374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.724986, 14.510170, 17.482525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040749, 14.755409, 17.494843>,  <16.230206, 14.902553, 17.502234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040749, 14.755409, 17.494843>,  <15.724986, 14.510170, 17.482525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.040749, 14.755409, 17.494843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260262, 0.288830, 0.921326,
		0.555970, -0.735314, 0.387570,
		0.789405, 0.613099, 0.030794,
		16.277571, 14.939339, 17.504080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.907100, 14.465786, 18.082281>,  <15.724986, 14.510170, 17.482525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.907100, 14.465786, 18.082281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.131479, 14.784370, 17.991961>,  <16.266108, 14.975521, 17.937769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.131479, 14.784370, 17.991961>,  <15.907100, 14.465786, 18.082281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.131479, 14.784370, 17.991961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021595, 0.258584, 0.965747,
		0.827569, -0.546611, 0.127853,
		0.560949, 0.796461, -0.225801,
		16.299765, 15.023309, 17.924221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.706510, 13.877751, 18.511370>,  <15.907100, 14.465786, 18.082281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.706510, 13.877751, 18.511370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.460982, 13.686184, 18.762403>,  <15.313666, 13.571243, 18.913025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.460982, 13.686184, 18.762403>,  <15.706510, 13.877751, 18.511370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.460982, 13.686184, 18.762403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529212, -0.340275, -0.777269,
		0.585800, -0.809228, -0.044582,
		-0.613818, -0.478918, 0.627586,
		15.276836, 13.542508, 18.950680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.766747, 13.068450, 18.404093>,  <15.706510, 13.877751, 18.511370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.766747, 13.068450, 18.404093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.422146, 13.198156, 18.560383>,  <15.215385, 13.275980, 18.654158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.422146, 13.198156, 18.560383>,  <15.766747, 13.068450, 18.404093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.422146, 13.198156, 18.560383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489310, -0.324670, -0.809423,
		-0.135610, -0.888505, 0.438370,
		-0.861502, 0.324265, 0.390726,
		15.163695, 13.295436, 18.677601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389774, 12.473165, 18.370335>,  <15.766747, 13.068450, 18.404093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389774, 12.473165, 18.370335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.133542, 12.777637, 18.410858>,  <14.979803, 12.960320, 18.435171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.133542, 12.777637, 18.410858>,  <15.389774, 12.473165, 18.370335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.133542, 12.777637, 18.410858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576873, -0.389948, -0.717745,
		-0.506829, -0.518214, 0.688897,
		-0.640579, 0.761180, 0.101307,
		14.941368, 13.005990, 18.441250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.754182, 12.241976, 18.454950>,  <15.389774, 12.473165, 18.370335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.754182, 12.241976, 18.454950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.680263, 12.614818, 18.330353>,  <14.635911, 12.838523, 18.255594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.680263, 12.614818, 18.330353>,  <14.754182, 12.241976, 18.454950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.680263, 12.614818, 18.330353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640314, -0.354642, -0.681342,
		-0.745552, 0.073544, 0.662377,
		-0.184798, 0.932105, -0.311496,
		14.624824, 12.894449, 18.236904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.088767, 12.188988, 18.339233>,  <14.754182, 12.241976, 18.454950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.088767, 12.188988, 18.339233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201213, 12.530970, 18.164865>,  <14.268681, 12.736159, 18.060246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201213, 12.530970, 18.164865>,  <14.088767, 12.188988, 18.339233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.201213, 12.530970, 18.164865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537658, -0.235945, -0.809477,
		-0.794920, 0.461932, 0.393346,
		0.281116, 0.854955, -0.435919,
		14.285547, 12.787457, 18.034090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.537024, 12.583461, 18.235889>,  <14.088767, 12.188988, 18.339233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.537024, 12.583461, 18.235889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.803540, 12.676674, 17.952553>,  <13.963450, 12.732602, 17.782551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.803540, 12.676674, 17.952553>,  <13.537024, 12.583461, 18.235889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.803540, 12.676674, 17.952553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674375, -0.217084, -0.705757,
		-0.318235, 0.947929, 0.012510,
		0.666292, 0.233033, -0.708343,
		14.003428, 12.746584, 17.740049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.982836, 12.686036, 17.729933>,  <13.537024, 12.583461, 18.235889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.982836, 12.686036, 17.729933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.349422, 12.654510, 17.573025>,  <13.569374, 12.635595, 17.478880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.349422, 12.654510, 17.573025>,  <12.982836, 12.686036, 17.729933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.349422, 12.654510, 17.573025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359421, -0.592934, -0.720587,
		-0.175799, 0.801385, -0.571731,
		0.916467, -0.078814, -0.392272,
		13.624363, 12.630866, 17.455343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.946307, 12.930636, 17.022388>,  <12.982836, 12.686036, 17.729933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.946307, 12.930636, 17.022388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.271151, 12.698510, 17.046759>,  <13.466057, 12.559235, 17.061380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.271151, 12.698510, 17.046759>,  <12.946307, 12.930636, 17.022388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.271151, 12.698510, 17.046759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324404, -0.535818, -0.779527,
		0.485017, 0.613296, -0.623399,
		0.812109, -0.580317, 0.060925,
		13.514783, 12.524415, 17.065037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.949365, 12.581529, 16.414684>,  <12.946307, 12.930636, 17.022388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.949365, 12.581529, 16.414684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.250684, 12.368429, 16.568943>,  <13.431475, 12.240570, 16.661499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.250684, 12.368429, 16.568943>,  <12.949365, 12.581529, 16.414684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.250684, 12.368429, 16.568943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202613, -0.745840, -0.634563,
		0.625693, 0.399878, -0.669781,
		0.753297, -0.532748, 0.385646,
		13.476673, 12.208605, 16.684637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.216663, 12.192279, 15.832807>,  <12.949365, 12.581529, 16.414684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.216663, 12.192279, 15.832807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.343857, 11.973154, 16.142332>,  <13.420173, 11.841680, 16.328047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.343857, 11.973154, 16.142332>,  <13.216663, 12.192279, 15.832807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.343857, 11.973154, 16.142332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304320, -0.831964, -0.463923,
		0.897928, -0.087968, -0.431261,
		0.317984, -0.547811, 0.773815,
		13.439252, 11.808811, 16.374477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.669780, 11.688744, 15.547040>,  <13.216663, 12.192279, 15.832807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.669780, 11.688744, 15.547040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.529197, 11.540727, 15.891027>,  <13.444847, 11.451917, 16.097420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.529197, 11.540727, 15.891027>,  <13.669780, 11.688744, 15.547040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.529197, 11.540727, 15.891027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255567, -0.845760, -0.468375,
		0.900646, -0.384394, 0.202678,
		-0.351458, -0.370042, 0.859969,
		13.423759, 11.429714, 16.149017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.948723, 10.975130, 15.650433>,  <13.669780, 11.688744, 15.547040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.948723, 10.975130, 15.650433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.633415, 10.979315, 15.896529>,  <13.444231, 10.981826, 16.044188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.633415, 10.979315, 15.896529>,  <13.948723, 10.975130, 15.650433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.633415, 10.979315, 15.896529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265301, -0.907928, -0.324473,
		0.555201, -0.418996, 0.718467,
		-0.788269, 0.010462, 0.615242,
		13.396935, 10.982453, 16.081102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<17.307405, 15.651217, 23.827055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.635117, 15.432664, 23.757483>,  <17.831743, 15.301532, 23.715738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.635117, 15.432664, 23.757483>,  <17.307405, 15.651217, 23.827055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.635117, 15.432664, 23.757483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323162, -0.189411, -0.927195,
		0.473658, 0.815837, -0.331750,
		0.819277, -0.546382, -0.173931,
		17.880899, 15.268749, 23.705303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.352211, 15.687795, 23.073179>,  <17.307405, 15.651217, 23.827055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.352211, 15.687795, 23.073179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.596994, 15.381139, 23.150919>,  <17.743864, 15.197145, 23.197563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.596994, 15.381139, 23.150919>,  <17.352211, 15.687795, 23.073179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.596994, 15.381139, 23.150919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279693, -0.439633, -0.853519,
		0.739783, 0.467960, -0.483461,
		0.611958, -0.766639, 0.194348,
		17.780582, 15.151147, 23.209223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.730677, 15.598904, 22.443090>,  <17.352211, 15.687795, 23.073179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.730677, 15.598904, 22.443090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.768915, 15.260437, 22.652802>,  <17.791859, 15.057357, 22.778627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.768915, 15.260437, 22.652802>,  <17.730677, 15.598904, 22.443090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.768915, 15.260437, 22.652802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076685, -0.531382, -0.843654,
		0.992462, 0.040446, -0.115686,
		0.095596, -0.846166, 0.524275,
		17.797594, 15.006587, 22.810083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.257792, 15.196106, 22.153828>,  <17.730677, 15.598904, 22.443090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.257792, 15.196106, 22.153828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.998335, 14.946549, 22.328194>,  <17.842661, 14.796815, 22.432814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.998335, 14.946549, 22.328194>,  <18.257792, 15.196106, 22.153828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.998335, 14.946549, 22.328194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203846, -0.409412, -0.889286,
		0.733287, -0.665688, 0.138384,
		-0.648643, -0.623892, 0.435914,
		17.803741, 14.759382, 22.458967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.321749, 14.659817, 21.721315>,  <18.257792, 15.196106, 22.153828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.321749, 14.659817, 21.721315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.011084, 14.568151, 21.956017>,  <17.824684, 14.513152, 22.096838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.011084, 14.568151, 21.956017>,  <18.321749, 14.659817, 21.721315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.011084, 14.568151, 21.956017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457465, -0.435149, -0.775481,
		0.433036, -0.870706, 0.233130,
		-0.776663, -0.229162, 0.586753,
		17.778084, 14.499403, 22.132042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.122492, 13.973081, 21.467215>,  <18.321749, 14.659817, 21.721315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.122492, 13.973081, 21.467215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.803045, 14.098896, 21.672457>,  <17.611378, 14.174385, 21.795603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.803045, 14.098896, 21.672457>,  <18.122492, 13.973081, 21.467215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.803045, 14.098896, 21.672457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597852, -0.316624, -0.736426,
		-0.069171, -0.894883, 0.440907,
		-0.798617, 0.314537, 0.513106,
		17.563459, 14.193257, 21.826389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.716272, 13.321631, 21.520031>,  <18.122492, 13.973081, 21.467215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.716272, 13.321631, 21.520031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.459524, 13.624244, 21.570091>,  <17.305475, 13.805811, 21.600128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.459524, 13.624244, 21.570091>,  <17.716272, 13.321631, 21.520031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.459524, 13.624244, 21.570091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619601, -0.415536, -0.665902,
		-0.451772, -0.504965, 0.735467,
		-0.641870, 0.756532, 0.125149,
		17.266962, 13.851203, 21.607637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.068146, 13.050587, 21.412397>,  <17.716272, 13.321631, 21.520031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.068146, 13.050587, 21.412397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.982489, 13.437787, 21.360065>,  <16.931093, 13.670107, 21.328667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.982489, 13.437787, 21.360065>,  <17.068146, 13.050587, 21.412397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.982489, 13.437787, 21.360065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687743, -0.244527, -0.683532,
		-0.693651, -0.056398, 0.718100,
		-0.214145, 0.968001, -0.130830,
		16.918245, 13.728188, 21.320816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.301277, 13.217552, 21.493423>,  <17.068146, 13.050587, 21.412397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.301277, 13.217552, 21.493423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.450720, 13.511787, 21.267387>,  <16.540386, 13.688329, 21.131765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.450720, 13.511787, 21.267387>,  <16.301277, 13.217552, 21.493423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.450720, 13.511787, 21.267387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813447, -0.032955, -0.580705,
		-0.445782, 0.676628, 0.586049,
		0.373608, 0.735587, -0.565091,
		16.562801, 13.732464, 21.097860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.684772, 13.549392, 21.261026>,  <16.301277, 13.217552, 21.493423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.684772, 13.549392, 21.261026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.979394, 13.650120, 21.009924>,  <16.156166, 13.710557, 20.859262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.979394, 13.650120, 21.009924>,  <15.684772, 13.549392, 21.261026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.979394, 13.650120, 21.009924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623240, -0.107922, -0.774548,
		-0.262795, 0.961738, 0.077455,
		0.736553, 0.251820, -0.627755,
		16.200359, 13.725666, 20.821598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.430046, 14.209749, 20.879776>,  <15.684772, 13.549392, 21.261026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.430046, 14.209749, 20.879776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.718805, 14.073192, 20.639006>,  <15.892061, 13.991257, 20.494543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.718805, 14.073192, 20.639006>,  <15.430046, 14.209749, 20.879776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.718805, 14.073192, 20.639006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610648, 0.094916, -0.786194,
		0.325535, 0.935115, -0.139952,
		0.721898, -0.341395, -0.601925,
		15.935374, 13.970773, 20.458427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.282989, 14.559479, 20.223791>,  <15.430046, 14.209749, 20.879776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.282989, 14.559479, 20.223791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.521210, 14.253051, 20.127083>,  <15.664143, 14.069194, 20.069057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.521210, 14.253051, 20.127083>,  <15.282989, 14.559479, 20.223791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.521210, 14.253051, 20.127083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540448, -0.159423, -0.826136,
		0.594334, 0.622672, -0.508966,
		0.595552, -0.766070, -0.241771,
		15.699876, 14.023230, 20.054552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.442812, 14.635575, 19.544319>,  <15.282989, 14.559479, 20.223791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.442812, 14.635575, 19.544319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.504682, 14.249062, 19.626657>,  <15.541803, 14.017154, 19.676060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.504682, 14.249062, 19.626657>,  <15.442812, 14.635575, 19.544319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.504682, 14.249062, 19.626657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447135, -0.254260, -0.857567,
		0.880992, 0.040603, -0.471387,
		0.154675, -0.966283, 0.205846,
		15.551085, 13.959177, 19.688412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.897783, 14.300424, 19.059668>,  <15.442812, 14.635575, 19.544319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.897783, 14.300424, 19.059668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.647139, 14.026540, 19.208546>,  <15.496752, 13.862209, 19.297873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.647139, 14.026540, 19.208546>,  <15.897783, 14.300424, 19.059668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.647139, 14.026540, 19.208546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401683, -0.125506, -0.907138,
		0.667840, -0.717927, -0.196393,
		-0.626610, -0.684711, 0.372197,
		15.459155, 13.821127, 19.320206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.400324, 14.490333, 18.597187>,  <15.897783, 14.300424, 19.059668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.400324, 14.490333, 18.597187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.376581, 14.857984, 18.441402>,  <16.362335, 15.078574, 18.347933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.376581, 14.857984, 18.441402>,  <16.400324, 14.490333, 18.597187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.376581, 14.857984, 18.441402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070533, 0.393035, 0.916814,
		0.995742, 0.026949, -0.088158,
		-0.059357, 0.919129, -0.389460,
		16.358774, 15.133722, 18.324564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929565, 14.886208, 18.898453>,  <16.400324, 14.490333, 18.597187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.929565, 14.886208, 18.898453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.665791, 15.161821, 18.778206>,  <16.507524, 15.327189, 18.706059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.665791, 15.161821, 18.778206>,  <16.929565, 14.886208, 18.898453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.665791, 15.161821, 18.778206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291011, 0.602684, 0.743024,
		0.693147, 0.402496, -0.597950,
		-0.659439, 0.689035, -0.300618,
		16.467958, 15.368532, 18.688021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247757, 15.539113, 18.818575>,  <16.929565, 14.886208, 18.898453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.247757, 15.539113, 18.818575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.860868, 15.622540, 18.876518>,  <16.628736, 15.672597, 18.911283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.860868, 15.622540, 18.876518>,  <17.247757, 15.539113, 18.818575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860868, 15.622540, 18.876518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249257, 0.670721, 0.698573,
		0.048541, 0.711781, -0.700723,
		-0.967220, 0.208569, 0.144859,
		16.570702, 15.685111, 18.919975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.124397, 16.236679, 18.887991>,  <17.247757, 15.539113, 18.818575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.124397, 16.236679, 18.887991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.790188, 16.130348, 19.080341>,  <16.589663, 16.066549, 19.195751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.790188, 16.130348, 19.080341>,  <17.124397, 16.236679, 18.887991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.790188, 16.130348, 19.080341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213632, 0.649158, 0.730038,
		-0.506227, 0.712692, -0.485597,
		-0.835521, -0.265825, 0.480875,
		16.539532, 16.050600, 19.224604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.831600, 16.860348, 19.130074>,  <17.124397, 16.236679, 18.887991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.831600, 16.860348, 19.130074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.597754, 16.610197, 19.336809>,  <16.457445, 16.460106, 19.460850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.597754, 16.610197, 19.336809>,  <16.831600, 16.860348, 19.130074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.597754, 16.610197, 19.336809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012048, 0.630282, 0.776273,
		-0.811219, 0.460050, -0.360940,
		-0.584619, -0.625379, 0.516839,
		16.422367, 16.422583, 19.491861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332756, 17.332359, 19.490664>,  <16.831600, 16.860348, 19.130074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332756, 17.332359, 19.490664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.332653, 16.983164, 19.685759>,  <16.332592, 16.773647, 19.802816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.332653, 16.983164, 19.685759>,  <16.332756, 17.332359, 19.490664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.332653, 16.983164, 19.685759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187879, 0.479096, 0.857420,
		-0.982192, -0.091415, -0.164139,
		-0.000257, -0.872989, 0.487740,
		16.332577, 16.721268, 19.832081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.832351, 17.460434, 20.039993>,  <16.332756, 17.332359, 19.490664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.832351, 17.460434, 20.039993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.019773, 17.129564, 20.164080>,  <16.132227, 16.931042, 20.238531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.019773, 17.129564, 20.164080>,  <15.832351, 17.460434, 20.039993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.019773, 17.129564, 20.164080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033615, 0.334203, 0.941902,
		-0.882793, -0.451763, 0.128787,
		0.468557, -0.827175, 0.310218,
		16.160341, 16.881413, 20.257145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.563741, 17.173328, 20.711771>,  <15.832351, 17.460434, 20.039993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.563741, 17.173328, 20.711771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.925153, 17.002136, 20.703127>,  <16.142000, 16.899420, 20.697941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.925153, 17.002136, 20.703127>,  <15.563741, 17.173328, 20.711771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.925153, 17.002136, 20.703127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151997, 0.272916, 0.949954,
		-0.400665, -0.861596, 0.311640,
		0.903529, -0.427982, -0.021612,
		16.196211, 16.873741, 20.696644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.598538, 16.751368, 21.349920>,  <15.563741, 17.173328, 20.711771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.598538, 16.751368, 21.349920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.972648, 16.832638, 21.233999>,  <16.197113, 16.881399, 21.164446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.972648, 16.832638, 21.233999>,  <15.598538, 16.751368, 21.349920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.972648, 16.832638, 21.233999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231680, 0.267564, 0.935272,
		0.267564, -0.941876, 0.203174,
		-0.935272, -0.203174, 0.289804,
		16.253229, 16.893591, 21.147058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052778, 16.475519, 21.867908>,  <15.598538, 16.751368, 21.349920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.052778, 16.475519, 21.867908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.261383, 16.746582, 21.660522>,  <16.386547, 16.909220, 21.536091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.261383, 16.746582, 21.660522>,  <16.052778, 16.475519, 21.867908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.261383, 16.746582, 21.660522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380157, 0.359453, 0.852217,
		0.763875, -0.641539, -0.070157,
		0.521513, 0.677658, -0.518463,
		16.417837, 16.949879, 21.504984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.667305, 16.465801, 22.244678>,  <16.052778, 16.475519, 21.867908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.667305, 16.465801, 22.244678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.693687, 16.813404, 22.048525>,  <16.709517, 17.021965, 21.930834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.693687, 16.813404, 22.048525>,  <16.667305, 16.465801, 22.244678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.693687, 16.813404, 22.048525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586014, 0.364034, 0.723925,
		0.807612, -0.335120, -0.485240,
		0.065958, 0.869008, -0.490383,
		16.713474, 17.074106, 21.901409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.379168, 16.602030, 22.294024>,  <16.667305, 16.465801, 22.244678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.379168, 16.602030, 22.294024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.162645, 16.930573, 22.222073>,  <17.032732, 17.127699, 22.178902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.162645, 16.930573, 22.222073>,  <17.379168, 16.602030, 22.294024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.162645, 16.930573, 22.222073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459440, 0.468101, 0.754848,
		0.704202, 0.325962, -0.630752,
		-0.541308, 0.821359, -0.179877,
		17.000254, 17.176981, 22.168110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816145, 17.181143, 22.359402>,  <17.379168, 16.602030, 22.294024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.816145, 17.181143, 22.359402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.439466, 17.303097, 22.416325>,  <17.213459, 17.376270, 22.450478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.439466, 17.303097, 22.416325>,  <17.816145, 17.181143, 22.359402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.439466, 17.303097, 22.416325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239401, 0.309971, 0.920111,
		0.236418, 0.900534, -0.364889,
		-0.941697, 0.304886, 0.142306,
		17.156958, 17.394562, 22.459017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.882517, 17.788061, 22.754662>,  <17.816145, 17.181143, 22.359402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.882517, 17.788061, 22.754662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.496157, 17.702875, 22.813566>,  <17.264341, 17.651764, 22.848909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.496157, 17.702875, 22.813566>,  <17.882517, 17.788061, 22.754662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.496157, 17.702875, 22.813566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109360, 0.179973, 0.977574,
		-0.234692, 0.960341, -0.150546,
		-0.965899, -0.212965, 0.147261,
		17.206387, 17.638985, 22.857744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<12.087849, 18.749136, 23.853418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.435419, 18.635029, 23.691633>,  <12.643961, 18.566565, 23.594563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.435419, 18.635029, 23.691633>,  <12.087849, 18.749136, 23.853418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.435419, 18.635029, 23.691633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362941, 0.188364, -0.912575,
		0.336513, 0.939756, 0.060139,
		0.868926, -0.285266, -0.404463,
		12.696096, 18.549448, 23.570293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.190788, 19.202293, 23.202787>,  <12.087849, 18.749136, 23.853418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.190788, 19.202293, 23.202787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.459705, 18.909264, 23.160158>,  <12.621056, 18.733446, 23.134581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.459705, 18.909264, 23.160158>,  <12.190788, 19.202293, 23.202787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.459705, 18.909264, 23.160158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127154, 0.027553, -0.991500,
		0.729282, 0.680131, -0.074626,
		0.672294, -0.732573, -0.106575,
		12.661393, 18.689491, 23.128185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.735476, 19.341829, 22.647581>,  <12.190788, 19.202293, 23.202787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.735476, 19.341829, 22.647581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.716123, 18.942476, 22.659504>,  <12.704511, 18.702864, 22.666656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.716123, 18.942476, 22.659504>,  <12.735476, 19.341829, 22.647581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.716123, 18.942476, 22.659504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128827, -0.023353, -0.991392,
		0.990486, -0.051806, -0.127488,
		-0.048383, -0.998384, 0.029805,
		12.701608, 18.642962, 22.668446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.161492, 19.095470, 22.049917>,  <12.735476, 19.341829, 22.647581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.161492, 19.095470, 22.049917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.957667, 18.766737, 22.151846>,  <12.835372, 18.569496, 22.213003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.957667, 18.766737, 22.151846>,  <13.161492, 19.095470, 22.049917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.957667, 18.766737, 22.151846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098241, -0.238650, -0.966124,
		0.854807, -0.517335, 0.040869,
		-0.509563, -0.821834, 0.254824,
		12.804798, 18.520187, 22.228292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.558998, 18.618917, 21.705984>,  <13.161492, 19.095470, 22.049917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.558998, 18.618917, 21.705984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.195843, 18.460749, 21.761669>,  <12.977949, 18.365849, 21.795080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.195843, 18.460749, 21.761669>,  <13.558998, 18.618917, 21.705984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.195843, 18.460749, 21.761669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131965, -0.584776, -0.800389,
		0.397898, -0.708293, 0.583093,
		-0.907889, -0.395421, 0.139211,
		12.923476, 18.342123, 21.803432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.678160, 17.825722, 21.787882>,  <13.558998, 18.618917, 21.705984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.678160, 17.825722, 21.787882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.305452, 17.912609, 21.671522>,  <13.081828, 17.964741, 21.601706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.305452, 17.912609, 21.671522>,  <13.678160, 17.825722, 21.787882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.305452, 17.912609, 21.671522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078373, -0.662026, -0.745372,
		-0.354490, -0.717314, 0.599832,
		-0.931770, 0.217217, -0.290900,
		13.025922, 17.977774, 21.584251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.356590, 17.161039, 21.764143>,  <13.678160, 17.825722, 21.787882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.356590, 17.161039, 21.764143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.162762, 17.440392, 21.553448>,  <13.046465, 17.608004, 21.427031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.162762, 17.440392, 21.553448>,  <13.356590, 17.161039, 21.764143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.162762, 17.440392, 21.553448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095045, -0.556557, -0.825355,
		-0.869573, -0.450007, 0.203314,
		-0.484571, 0.698382, -0.526738,
		13.017390, 17.649906, 21.395426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.062065, 16.807985, 21.339163>,  <13.356590, 17.161039, 21.764143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.062065, 16.807985, 21.339163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.023669, 17.150362, 21.135929>,  <13.000632, 17.355787, 21.013988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.023669, 17.150362, 21.135929>,  <13.062065, 16.807985, 21.339163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.023669, 17.150362, 21.135929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088337, -0.501104, -0.860866,
		-0.991455, -0.127517, -0.027511,
		-0.095989, 0.855941, -0.508086,
		12.994872, 17.407145, 20.983503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.505026, 16.675982, 20.864470>,  <13.062065, 16.807985, 21.339163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.505026, 16.675982, 20.864470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.653400, 17.013891, 20.710190>,  <12.742425, 17.216637, 20.617622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.653400, 17.013891, 20.710190>,  <12.505026, 16.675982, 20.864470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.653400, 17.013891, 20.710190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205563, -0.330334, -0.921208,
		-0.905622, 0.420994, 0.051121,
		0.370936, 0.844774, -0.385698,
		12.764681, 17.267323, 20.594481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.195551, 16.646439, 20.285969>,  <12.505026, 16.675982, 20.864470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.195551, 16.646439, 20.285969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.473043, 16.925936, 20.216116>,  <12.639539, 17.093634, 20.174204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.473043, 16.925936, 20.216116>,  <12.195551, 16.646439, 20.285969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.473043, 16.925936, 20.216116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079473, -0.166724, -0.982796,
		-0.715837, 0.695674, -0.060130,
		0.693730, 0.698743, -0.174634,
		12.681163, 17.135559, 20.163725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.882429, 17.083456, 19.697121>,  <12.195551, 16.646439, 20.285969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.882429, 17.083456, 19.697121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.280335, 17.123625, 19.704679>,  <12.519079, 17.147726, 19.709215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.280335, 17.123625, 19.704679>,  <11.882429, 17.083456, 19.697121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.280335, 17.123625, 19.704679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046004, -0.274990, -0.960346,
		-0.091244, 0.956188, -0.278170,
		0.994765, 0.100423, 0.018898,
		12.578765, 17.153751, 19.710348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.023377, 17.549538, 19.137384>,  <11.882429, 17.083456, 19.697121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.023377, 17.549538, 19.137384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.379735, 17.371201, 19.172094>,  <12.593550, 17.264198, 19.192921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.379735, 17.371201, 19.172094>,  <12.023377, 17.549538, 19.137384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.379735, 17.371201, 19.172094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024930, -0.142756, -0.989444,
		0.453526, 0.883653, -0.116065,
		0.890894, -0.445845, 0.086773,
		12.647003, 17.237448, 19.198126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.470277, 17.880405, 18.598179>,  <12.023377, 17.549538, 19.137384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.470277, 17.880405, 18.598179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.623122, 17.515541, 18.657448>,  <12.714829, 17.296623, 18.693008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.623122, 17.515541, 18.657448>,  <12.470277, 17.880405, 18.598179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.623122, 17.515541, 18.657448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122929, -0.209086, -0.970140,
		0.915903, 0.352488, -0.192025,
		0.382112, -0.912160, 0.148171,
		12.737756, 17.241894, 18.701899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.859447, 17.630075, 18.026302>,  <12.470277, 17.880405, 18.598179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.859447, 17.630075, 18.026302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.790552, 17.280632, 18.208355>,  <12.749216, 17.070967, 18.317587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.790552, 17.280632, 18.208355>,  <12.859447, 17.630075, 18.026302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.790552, 17.280632, 18.208355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303369, -0.392536, -0.868264,
		0.937178, -0.287618, -0.197417,
		-0.172235, -0.873608, 0.455130,
		12.738882, 17.018549, 18.344894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.596663, 17.578674, 18.212368>,  <12.859447, 17.630075, 18.026302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.596663, 17.578674, 18.212368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.850242, 17.859261, 18.082104>,  <14.002389, 18.027613, 18.003946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.850242, 17.859261, 18.082104>,  <13.596663, 17.578674, 18.212368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.850242, 17.859261, 18.082104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106040, 0.338271, 0.935055,
		0.766071, -0.627310, 0.140062,
		0.633948, 0.701467, -0.325659,
		14.040426, 18.069700, 17.984406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.172005, 17.567131, 18.561405>,  <13.596663, 17.578674, 18.212368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.172005, 17.567131, 18.561405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.219737, 17.932739, 18.406317>,  <14.248377, 18.152103, 18.313263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.219737, 17.932739, 18.406317>,  <14.172005, 17.567131, 18.561405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.219737, 17.932739, 18.406317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363505, 0.323177, 0.873740,
		0.923918, -0.245203, -0.293686,
		0.119331, 0.914020, -0.387721,
		14.255536, 18.206945, 18.290001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.803437, 17.717325, 18.690584>,  <14.172005, 17.567131, 18.561405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.803437, 17.717325, 18.690584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.578915, 18.046875, 18.659172>,  <14.444201, 18.244604, 18.640326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.578915, 18.046875, 18.659172>,  <14.803437, 17.717325, 18.690584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.578915, 18.046875, 18.659172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443810, 0.379736, 0.811685,
		0.698546, 0.420753, -0.578792,
		-0.561307, 0.823874, -0.078529,
		14.410522, 18.294037, 18.635612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.271412, 18.216135, 18.983803>,  <14.803437, 17.717325, 18.690584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.271412, 18.216135, 18.983803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.925054, 18.416214, 18.985937>,  <14.717238, 18.536261, 18.987217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.925054, 18.416214, 18.985937>,  <15.271412, 18.216135, 18.983803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.925054, 18.416214, 18.985937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317913, 0.542047, 0.777892,
		0.386208, 0.675269, -0.628375,
		-0.865895, 0.500197, 0.005334,
		14.665285, 18.566273, 18.987537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.560211, 18.920271, 19.106909>,  <15.271412, 18.216135, 18.983803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.560211, 18.920271, 19.106909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.168883, 18.917486, 19.189703>,  <14.934087, 18.915815, 19.239380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.168883, 18.917486, 19.189703>,  <15.560211, 18.920271, 19.106909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.168883, 18.917486, 19.189703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182573, 0.442797, 0.877837,
		-0.097765, 0.896595, -0.431926,
		-0.978319, -0.006963, 0.206985,
		14.875387, 18.915398, 19.251799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.346747, 19.686808, 19.327866>,  <15.560211, 18.920271, 19.106909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.346747, 19.686808, 19.327866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.103578, 19.399176, 19.462538>,  <14.957676, 19.226597, 19.543341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.103578, 19.399176, 19.462538>,  <15.346747, 19.686808, 19.327866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.103578, 19.399176, 19.462538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147381, 0.314470, 0.937757,
		-0.780197, 0.619705, -0.085195,
		-0.607924, -0.719079, 0.336681,
		14.921201, 19.183453, 19.563541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.820091, 20.019093, 19.637514>,  <15.346747, 19.686808, 19.327866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.820091, 20.019093, 19.637514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.814496, 19.661915, 19.817493>,  <14.811139, 19.447609, 19.925482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.814496, 19.661915, 19.817493>,  <14.820091, 20.019093, 19.637514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.814496, 19.661915, 19.817493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011266, 0.449824, 0.893046,
		-0.999839, 0.017562, 0.003767,
		-0.013989, -0.892944, 0.449949,
		14.810299, 19.394032, 19.952478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.454117, 20.137480, 20.239281>,  <14.820091, 20.019093, 19.637514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.454117, 20.137480, 20.239281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.620959, 19.781828, 20.314613>,  <14.721065, 19.568436, 20.359812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.620959, 19.781828, 20.314613>,  <14.454117, 20.137480, 20.239281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.620959, 19.781828, 20.314613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059806, 0.233618, 0.970487,
		-0.906888, -0.393534, 0.150619,
		0.417107, -0.889131, 0.188329,
		14.746091, 19.515089, 20.371113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.006070, 19.903172, 20.699701>,  <14.454117, 20.137480, 20.239281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.006070, 19.903172, 20.699701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.350978, 19.703690, 20.734997>,  <14.557922, 19.584000, 20.756174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.350978, 19.703690, 20.734997>,  <14.006070, 19.903172, 20.699701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.350978, 19.703690, 20.734997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002497, 0.178416, 0.983952,
		-0.506445, -0.848211, 0.155087,
		0.862269, -0.498705, 0.088240,
		14.609658, 19.554079, 20.761469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.912986, 19.418070, 21.207209>,  <14.006070, 19.903172, 20.699701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.912986, 19.418070, 21.207209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.307279, 19.476562, 21.173861>,  <14.543854, 19.511658, 21.153852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.307279, 19.476562, 21.173861>,  <13.912986, 19.418070, 21.207209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.307279, 19.476562, 21.173861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062443, 0.142268, 0.987857,
		0.156314, -0.978967, 0.131107,
		0.985731, 0.146229, -0.083368,
		14.602998, 19.520433, 21.148849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.246447, 19.102240, 21.806976>,  <13.912986, 19.418070, 21.207209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.246447, 19.102240, 21.806976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.535014, 19.348118, 21.679413>,  <14.708155, 19.495646, 21.602875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.535014, 19.348118, 21.679413>,  <14.246447, 19.102240, 21.806976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.535014, 19.348118, 21.679413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167710, 0.291728, 0.941684,
		0.671884, -0.732834, 0.107367,
		0.721419, 0.614695, -0.318911,
		14.751440, 19.532526, 21.583740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.846709, 18.964561, 22.108210>,  <14.246447, 19.102240, 21.806976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.846709, 18.964561, 22.108210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.899626, 19.349081, 22.011539>,  <14.931376, 19.579792, 21.953537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.899626, 19.349081, 22.011539>,  <14.846709, 18.964561, 22.108210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.899626, 19.349081, 22.011539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354186, 0.181875, 0.917318,
		0.925771, -0.206950, -0.316418,
		0.132291, 0.961297, -0.241674,
		14.939313, 19.637470, 21.939037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.548496, 19.118597, 22.231750>,  <14.846709, 18.964561, 22.108210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.548496, 19.118597, 22.231750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.365772, 19.474138, 22.245991>,  <15.256138, 19.687462, 22.254534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.365772, 19.474138, 22.245991>,  <15.548496, 19.118597, 22.231750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.365772, 19.474138, 22.245991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515764, 0.232037, 0.824710,
		0.724785, 0.395096, -0.564434,
		-0.456809, 0.888852, 0.035600,
		15.228729, 19.740793, 22.256670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.078171, 19.529150, 22.259649>,  <15.548496, 19.118597, 22.231750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.078171, 19.529150, 22.259649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.769331, 19.754137, 22.377964>,  <15.584026, 19.889130, 22.448954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.769331, 19.754137, 22.377964>,  <16.078171, 19.529150, 22.259649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.769331, 19.754137, 22.377964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489944, 0.230418, 0.840752,
		0.404741, 0.794064, -0.453483,
		-0.772101, 0.562468, 0.295787,
		15.537701, 19.922878, 22.466700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.815969, 19.969038, 22.093622>,  <16.078171, 19.529150, 22.259649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.815969, 19.969038, 22.093622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.165396, 20.145065, 22.010462>,  <17.375051, 20.250681, 21.960566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.165396, 20.145065, 22.010462>,  <16.815969, 19.969038, 22.093622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.165396, 20.145065, 22.010462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077753, -0.295491, -0.952176,
		-0.480455, 0.847953, -0.223915,
		0.873566, 0.440068, -0.207901,
		17.427465, 20.277086, 21.948092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.648666, 20.338415, 21.578569>,  <16.815969, 19.969038, 22.093622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.648666, 20.338415, 21.578569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.043886, 20.277639, 21.568155>,  <17.281017, 20.241175, 21.561907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.043886, 20.277639, 21.568155>,  <16.648666, 20.338415, 21.578569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.043886, 20.277639, 21.568155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065183, -0.258752, -0.963742,
		0.139693, 0.953920, -0.265563,
		0.988047, -0.151938, -0.026033,
		17.340300, 20.232058, 21.560345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.837263, 20.716873, 20.956045>,  <16.648666, 20.338415, 21.578569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.837263, 20.716873, 20.956045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.148949, 20.476431, 21.027033>,  <17.335960, 20.332165, 21.069626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.148949, 20.476431, 21.027033>,  <16.837263, 20.716873, 20.956045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.148949, 20.476431, 21.027033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023730, -0.254659, -0.966740,
		0.626307, 0.757510, -0.184170,
		0.779216, -0.601105, 0.177470,
		17.382713, 20.296099, 21.080275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.400494, 20.835316, 20.448318>,  <16.837263, 20.716873, 20.956045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.400494, 20.835316, 20.448318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.475510, 20.468481, 20.589048>,  <17.520519, 20.248381, 20.673487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.475510, 20.468481, 20.589048>,  <17.400494, 20.835316, 20.448318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475510, 20.468481, 20.589048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298956, -0.287894, -0.909804,
		0.935657, 0.275804, 0.220177,
		0.187539, -0.917088, 0.351823,
		17.531771, 20.193356, 20.694595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.994848, 20.722324, 20.071934>,  <17.400494, 20.835316, 20.448318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.994848, 20.722324, 20.071934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.840738, 20.370499, 20.183596>,  <17.748272, 20.159403, 20.250593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.840738, 20.370499, 20.183596>,  <17.994848, 20.722324, 20.071934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.840738, 20.370499, 20.183596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013453, -0.307830, -0.951346,
		0.922705, -0.362772, 0.130431,
		-0.385273, -0.879567, 0.279156,
		17.725157, 20.106628, 20.267342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.406029, 20.144945, 19.834038>,  <17.994848, 20.722324, 20.071934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.406029, 20.144945, 19.834038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.046379, 19.982027, 19.898144>,  <17.830589, 19.884275, 19.936607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.046379, 19.982027, 19.898144>,  <18.406029, 20.144945, 19.834038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.046379, 19.982027, 19.898144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017431, -0.332549, -0.942925,
		0.437347, -0.850600, 0.291903,
		-0.899124, -0.407297, 0.160266,
		17.776642, 19.859838, 19.946224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.299263, 19.617565, 19.437174>,  <18.406029, 20.144945, 19.834038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.299263, 19.617565, 19.437174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.922075, 19.640564, 19.568321>,  <17.695763, 19.654364, 19.647011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.922075, 19.640564, 19.568321>,  <18.299263, 19.617565, 19.437174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.922075, 19.640564, 19.568321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315807, -0.465868, -0.826579,
		0.105217, -0.882984, 0.457459,
		-0.942971, 0.057498, 0.327870,
		17.639183, 19.657814, 19.666681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.112955, 18.924974, 19.319500>,  <18.299263, 19.617565, 19.437174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.112955, 18.924974, 19.319500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.789087, 19.159548, 19.328709>,  <17.594767, 19.300291, 19.334234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.789087, 19.159548, 19.328709>,  <18.112955, 18.924974, 19.319500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.789087, 19.159548, 19.328709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318777, -0.406514, -0.856229,
		-0.492762, -0.700602, 0.516084,
		-0.809671, 0.586432, 0.023021,
		17.546186, 19.335478, 19.335615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.448292, 18.448803, 19.125013>,  <18.112955, 18.924974, 19.319500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.448292, 18.448803, 19.125013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.455307, 18.841646, 19.050009>,  <17.459517, 19.077353, 19.005007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.455307, 18.841646, 19.050009>,  <17.448292, 18.448803, 19.125013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.455307, 18.841646, 19.050009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208764, -0.179808, -0.961294,
		-0.977809, 0.056004, 0.201875,
		0.017538, 0.982106, -0.187509,
		17.460567, 19.136278, 18.993755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.923033, 18.531500, 18.736259>,  <17.448292, 18.448803, 19.125013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.923033, 18.531500, 18.736259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.157097, 18.842365, 18.643650>,  <17.297535, 19.028885, 18.588085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.157097, 18.842365, 18.643650>,  <16.923033, 18.531500, 18.736259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.157097, 18.842365, 18.643650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247123, -0.101025, -0.963703,
		-0.772347, 0.621134, 0.132940,
		0.585159, 0.777166, -0.231523,
		17.332645, 19.075516, 18.574194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.501534, 19.003963, 18.323114>,  <16.923033, 18.531500, 18.736259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.501534, 19.003963, 18.323114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.891962, 19.057890, 18.254871>,  <17.126219, 19.090246, 18.213924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.891962, 19.057890, 18.254871>,  <16.501534, 19.003963, 18.323114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.891962, 19.057890, 18.254871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162854, -0.066682, -0.984394,
		-0.144090, 0.988624, -0.043131,
		0.976072, 0.134817, -0.170610,
		17.184784, 19.098335, 18.203688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.552286, 19.355633, 17.639736>,  <16.501534, 19.003963, 18.323114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.552286, 19.355633, 17.639736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.934175, 19.256517, 17.705591>,  <17.163309, 19.197048, 17.745104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.934175, 19.256517, 17.705591>,  <16.552286, 19.355633, 17.639736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.934175, 19.256517, 17.705591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127215, -0.160217, -0.978850,
		0.268923, 0.955475, -0.121441,
		0.954723, -0.247786, 0.164637,
		17.220592, 19.182182, 17.754982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.859381, 19.738163, 17.177872>,  <16.552286, 19.355633, 17.639736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.859381, 19.738163, 17.177872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.129379, 19.454891, 17.260685>,  <17.291378, 19.284927, 17.310373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.129379, 19.454891, 17.260685>,  <16.859381, 19.738163, 17.177872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.129379, 19.454891, 17.260685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231726, -0.062922, -0.970744,
		0.700490, 0.703221, 0.121632,
		0.674994, -0.708182, 0.207031,
		17.331877, 19.242437, 17.322794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.436232, 19.888947, 16.633585>,  <16.859381, 19.738163, 17.177872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.436232, 19.888947, 16.633585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.453743, 19.514427, 16.772970>,  <17.464251, 19.289715, 16.856602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.453743, 19.514427, 16.772970>,  <17.436232, 19.888947, 16.633585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.453743, 19.514427, 16.772970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266620, -0.325198, -0.907282,
		0.962807, 0.132629, 0.235398,
		0.043781, -0.936299, 0.348465,
		17.466877, 19.233538, 16.877510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<2.712926, 20.032187, 4.048770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.818130, 19.923395, 4.419036>,  <2.881253, 19.858120, 4.641195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.818130, 19.923395, 4.419036>,  <2.712926, 20.032187, 4.048770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.818130, 19.923395, 4.419036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567901, 0.731976, 0.376429,
		-0.779945, -0.624690, 0.038059,
		0.263010, -0.271980, 0.925663,
		2.897033, 19.841801, 4.696735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.119919, 20.090254, 4.327694>,  <2.712926, 20.032187, 4.048770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.119919, 20.090254, 4.327694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.406939, 20.120222, 4.604681>,  <2.579151, 20.138203, 4.770872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.406939, 20.120222, 4.604681>,  <2.119919, 20.090254, 4.327694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.406939, 20.120222, 4.604681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537933, 0.691148, 0.482641,
		-0.442437, -0.718819, 0.536235,
		0.717550, 0.074920, 0.692466,
		2.622204, 20.142698, 4.812420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.760712, 20.294083, 4.887910>,  <2.119919, 20.090254, 4.327694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.760712, 20.294083, 4.887910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.141630, 20.410711, 4.923953>,  <2.370181, 20.480688, 4.945578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.141630, 20.410711, 4.923953>,  <1.760712, 20.294083, 4.887910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.141630, 20.410711, 4.923953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299416, 0.835554, 0.460651,
		0.059024, -0.465655, 0.882996,
		0.952295, 0.291573, 0.090107,
		2.427319, 20.498184, 4.950984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.932249, 20.452589, 5.595472>,  <1.760712, 20.294083, 4.887910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.932249, 20.452589, 5.595472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.176571, 20.691093, 5.387092>,  <2.323165, 20.834196, 5.262064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.176571, 20.691093, 5.387092>,  <1.932249, 20.452589, 5.595472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.176571, 20.691093, 5.387092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221200, 0.760255, 0.610806,
		0.760255, -0.257849, 0.596260,
		-0.610806, -0.596260, 0.520951,
		2.359813, 20.869972, 5.230806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.863104, 20.733402, 6.226142>,  <1.932249, 20.452589, 5.595472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.863104, 20.733402, 6.226142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.022799, 20.382830, 6.333826>,  <2.118616, 20.172485, 6.398437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.022799, 20.382830, 6.333826>,  <1.863104, 20.733402, 6.226142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.022799, 20.382830, 6.333826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803665, 0.475851, 0.357336,
		-0.441285, 0.073693, 0.894336,
		0.399237, -0.876433, 0.269211,
		2.142570, 20.119900, 6.414589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.321554, 21.311142, 6.643695>,  <1.863104, 20.733402, 6.226142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.321554, 21.311142, 6.643695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.544741, 21.483055, 6.927655>,  <2.678654, 21.586203, 7.098032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.544741, 21.483055, 6.927655>,  <2.321554, 21.311142, 6.643695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.544741, 21.483055, 6.927655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084802, -0.821436, 0.563960,
		0.825518, -0.374873, -0.421889,
		0.557968, 0.429782, 0.709901,
		2.712132, 21.611990, 7.140625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.708058, 20.811117, 6.818309>,  <2.321554, 21.311142, 6.643695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.708058, 20.811117, 6.818309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.681952, 21.074829, 7.117933>,  <2.666288, 21.233057, 7.297707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.681952, 21.074829, 7.117933>,  <2.708058, 20.811117, 6.818309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.681952, 21.074829, 7.117933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241505, -0.738779, 0.629191,
		0.968202, -0.139837, 0.207436,
		-0.065265, 0.659281, 0.749059,
		2.662372, 21.272614, 7.342650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.895723, 20.404608, 7.352494>,  <2.708058, 20.811117, 6.818309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.895723, 20.404608, 7.352494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.760010, 20.742529, 7.517997>,  <2.678581, 20.945282, 7.617299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.760010, 20.742529, 7.517997>,  <2.895723, 20.404608, 7.352494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.760010, 20.742529, 7.517997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292719, -0.512826, 0.807047,
		0.893981, 0.152704, 0.421284,
		-0.339284, 0.844803, 0.413757,
		2.658225, 20.995970, 7.642124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.329318, 20.563393, 7.908516>,  <2.895723, 20.404608, 7.352494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.329318, 20.563393, 7.908516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.968153, 20.718920, 7.981801>,  <2.751453, 20.812237, 8.025771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.968153, 20.718920, 7.981801>,  <3.329318, 20.563393, 7.908516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.968153, 20.718920, 7.981801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080358, -0.571438, 0.816701,
		0.422242, 0.722688, 0.547205,
		-0.902914, 0.388818, 0.183212,
		2.697278, 20.835566, 8.036764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.587160, 20.617983, 8.556258>,  <3.329318, 20.563393, 7.908516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.587160, 20.617983, 8.556258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.655715, 20.904200, 8.827146>,  <3.696847, 21.075930, 8.989677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.655715, 20.904200, 8.827146>,  <3.587160, 20.617983, 8.556258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.655715, 20.904200, 8.827146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285720, -0.693946, 0.660911,
		0.942863, 0.080224, -0.323378,
		0.171386, 0.715544, 0.677218,
		3.707131, 21.118862, 9.030311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.262410, 20.579142, 8.932883>,  <3.587160, 20.617983, 8.556258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.262410, 20.579142, 8.932883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.992401, 20.752377, 9.171806>,  <3.830395, 20.856318, 9.315160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.992401, 20.752377, 9.171806>,  <4.262410, 20.579142, 8.932883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.992401, 20.752377, 9.171806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078660, -0.762724, 0.641923,
		0.733591, 0.480298, 0.480790,
		-0.675024, 0.433090, 0.597308,
		3.789894, 20.882303, 9.350999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.502393, 20.446003, 9.652891>,  <4.262410, 20.579142, 8.932883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.502393, 20.446003, 9.652891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.107182, 20.507195, 9.644888>,  <3.870056, 20.543909, 9.640086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.107182, 20.507195, 9.644888>,  <4.502393, 20.446003, 9.652891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.107182, 20.507195, 9.644888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137183, -0.811761, 0.567649,
		0.070596, 0.563597, 0.823028,
		-0.988027, 0.152979, -0.020009,
		3.810774, 20.553089, 9.638885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.262184, 20.380192, 10.339997>,  <4.502393, 20.446003, 9.652891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.262184, 20.380192, 10.339997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.931105, 20.343765, 10.118503>,  <3.732458, 20.321909, 9.985606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.931105, 20.343765, 10.118503>,  <4.262184, 20.380192, 10.339997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.931105, 20.343765, 10.118503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211868, -0.863007, 0.458618,
		-0.519644, 0.496916, 0.695015,
		-0.827697, -0.091066, -0.553737,
		3.682796, 20.316444, 9.952381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.741074, 20.314384, 10.784753>,  <4.262184, 20.380192, 10.339997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.741074, 20.314384, 10.784753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.593702, 20.138906, 10.456897>,  <3.505279, 20.033621, 10.260183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.593702, 20.138906, 10.456897>,  <3.741074, 20.314384, 10.784753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.593702, 20.138906, 10.456897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229187, -0.811586, 0.537402,
		-0.900962, 0.385845, 0.198469,
		-0.368429, -0.438693, -0.819639,
		3.483173, 20.007299, 10.211005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.067707, 19.976587, 10.930028>,  <3.741074, 20.314384, 10.784753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.067707, 19.976587, 10.930028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.228063, 19.772093, 10.625943>,  <3.324277, 19.649397, 10.443492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.228063, 19.772093, 10.625943>,  <3.067707, 19.976587, 10.930028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.228063, 19.772093, 10.625943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140441, -0.854299, 0.500449,
		-0.905297, -0.093860, -0.414279,
		0.400890, -0.511237, -0.760213,
		3.348330, 19.618721, 10.397880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.862072, 19.309404, 10.956985>,  <3.067707, 19.976587, 10.930028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.862072, 19.309404, 10.956985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.130161, 19.216515, 10.675027>,  <3.291014, 19.160782, 10.505853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.130161, 19.216515, 10.675027>,  <2.862072, 19.309404, 10.956985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.130161, 19.216515, 10.675027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052172, -0.932694, 0.356876,
		-0.740325, -0.275962, -0.612996,
		0.670222, -0.232223, -0.704894,
		3.331228, 19.146847, 10.463559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.595869, 18.715158, 10.593500>,  <2.862072, 19.309404, 10.956985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.595869, 18.715158, 10.593500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.988516, 18.711535, 10.517241>,  <3.224104, 18.709360, 10.471485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.988516, 18.711535, 10.517241>,  <2.595869, 18.715158, 10.593500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.988516, 18.711535, 10.517241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056011, -0.941220, 0.333118,
		-0.182460, -0.337673, -0.923409,
		0.981617, -0.009060, -0.190649,
		3.283001, 18.708817, 10.460046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.758047, 18.013477, 10.473098>,  <2.595869, 18.715158, 10.593500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.758047, 18.013477, 10.473098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.116897, 18.165344, 10.563446>,  <3.332207, 18.256464, 10.617655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.116897, 18.165344, 10.563446>,  <2.758047, 18.013477, 10.473098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.116897, 18.165344, 10.563446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243178, -0.851252, 0.465011,
		0.368823, -0.362246, -0.856007,
		0.897125, 0.379669, 0.225871,
		3.386034, 18.279245, 10.631207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.309666, 17.584408, 10.151786>,  <2.758047, 18.013477, 10.473098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.309666, 17.584408, 10.151786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.475357, 17.773664, 10.462798>,  <3.574772, 17.887218, 10.649405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.475357, 17.773664, 10.462798>,  <3.309666, 17.584408, 10.151786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.475357, 17.773664, 10.462798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340736, -0.872758, 0.349561,
		0.843987, 0.120135, -0.522737,
		0.414228, 0.473140, 0.777530,
		3.599626, 17.915607, 10.696057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.756820, 17.113155, 10.342941>,  <3.309666, 17.584408, 10.151786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.756820, 17.113155, 10.342941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.762035, 17.376177, 10.644259>,  <3.765164, 17.533989, 10.825050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.762035, 17.376177, 10.644259>,  <3.756820, 17.113155, 10.342941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.762035, 17.376177, 10.644259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314705, -0.717772, 0.621099,
		0.949100, 0.228968, -0.216294,
		0.013038, 0.657554, 0.753295,
		3.765947, 17.573442, 10.870248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.448908, 17.038458, 10.654323>,  <3.756820, 17.113155, 10.342941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.448908, 17.038458, 10.654323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.192023, 17.179525, 10.926554>,  <4.037892, 17.264166, 11.089892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.192023, 17.179525, 10.926554>,  <4.448908, 17.038458, 10.654323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.192023, 17.179525, 10.926554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248555, -0.744088, 0.620124,
		0.725109, 0.567413, 0.390205,
		-0.642213, 0.352670, 0.680578,
		3.999359, 17.285326, 11.130727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.866608, 17.016211, 11.264348>,  <4.448908, 17.038458, 10.654323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.866608, 17.016211, 11.264348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.488997, 17.044748, 11.393169>,  <4.262429, 17.061871, 11.470463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.488997, 17.044748, 11.393169>,  <4.866608, 17.016211, 11.264348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.488997, 17.044748, 11.393169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213488, -0.612130, 0.761393,
		0.251459, 0.787532, 0.562638,
		-0.944029, 0.071343, 0.322054,
		4.205788, 17.066151, 11.489785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.953152, 16.946678, 11.883446>,  <4.866608, 17.016211, 11.264348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.953152, 16.946678, 11.883446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.562687, 16.861702, 11.865664>,  <4.328408, 16.810717, 11.854995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.562687, 16.861702, 11.865664>,  <4.953152, 16.946678, 11.883446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.562687, 16.861702, 11.865664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141275, -0.777418, 0.612913,
		-0.164767, 0.592022, 0.788899,
		-0.976162, -0.212440, -0.044454,
		4.269839, 16.797970, 11.852327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.654624, 17.061605, 12.604481>,  <4.953152, 16.946678, 11.883446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.654624, 17.061605, 12.604481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.389481, 16.827536, 12.417639>,  <4.230394, 16.687094, 12.305533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.389481, 16.827536, 12.417639>,  <4.654624, 17.061605, 12.604481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.389481, 16.827536, 12.417639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016856, -0.635356, 0.772036,
		-0.748554, 0.503878, 0.431015,
		-0.662860, -0.585176, -0.467105,
		4.190623, 16.651983, 12.277508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.884765, 17.093853, 12.924805>,  <4.654624, 17.061605, 12.604481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.884765, 17.093853, 12.924805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.944171, 16.737215, 12.753688>,  <3.979815, 16.523233, 12.651018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.944171, 16.737215, 12.753688>,  <3.884765, 17.093853, 12.924805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.944171, 16.737215, 12.753688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102778, -0.444162, 0.890032,
		-0.983555, -0.088216, -0.157601,
		0.148515, -0.891593, -0.427791,
		3.988726, 16.469738, 12.625351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.471189, 16.692234, 13.359291>,  <3.884765, 17.093853, 12.924805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.471189, 16.692234, 13.359291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.683032, 16.401651, 13.184121>,  <3.810137, 16.227303, 13.079020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.683032, 16.401651, 13.184121>,  <3.471189, 16.692234, 13.359291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.683032, 16.401651, 13.184121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200845, -0.608986, 0.767331,
		-0.824123, -0.318429, -0.468428,
		0.529606, -0.726457, -0.437924,
		3.841913, 16.183714, 13.052744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.195377, 16.001368, 13.669415>,  <3.471189, 16.692234, 13.359291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.195377, 16.001368, 13.669415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.517716, 15.894126, 13.458237>,  <3.711120, 15.829781, 13.331530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.517716, 15.894126, 13.458237>,  <3.195377, 16.001368, 13.669415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.517716, 15.894126, 13.458237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096238, -0.820458, 0.563548,
		-0.584248, -0.504943, -0.635363,
		0.805849, -0.268106, -0.527946,
		3.759471, 15.813694, 13.299853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.049936, 15.245156, 13.333241>,  <3.195377, 16.001368, 13.669415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.049936, 15.245156, 13.333241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.437192, 15.337874, 13.371135>,  <3.669546, 15.393505, 13.393871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.437192, 15.337874, 13.371135>,  <3.049936, 15.245156, 13.333241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.437192, 15.337874, 13.371135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133288, -0.797304, 0.588677,
		0.211986, -0.557295, -0.802798,
		0.968140, 0.231795, 0.094737,
		3.727635, 15.407413, 13.399556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.512162, 14.625345, 13.172163>,  <3.049936, 15.245156, 13.333241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.512162, 14.625345, 13.172163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.730980, 14.855790, 13.415091>,  <3.862271, 14.994057, 13.560847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.730980, 14.855790, 13.415091>,  <3.512162, 14.625345, 13.172163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.730980, 14.855790, 13.415091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100405, -0.765421, 0.635648,
		0.831060, -0.286750, -0.476564,
		0.547045, 0.576111, 0.607320,
		3.895094, 15.028624, 13.597286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.032920, 14.211904, 13.290213>,  <3.512162, 14.625345, 13.172163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.032920, 14.211904, 13.290213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.036221, 14.491610, 13.576138>,  <4.038201, 14.659433, 13.747694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.036221, 14.491610, 13.576138>,  <4.032920, 14.211904, 13.290213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.036221, 14.491610, 13.576138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129416, -0.709574, 0.692645,
		0.991556, 0.086793, -0.096352,
		0.008252, 0.699265, 0.714814,
		4.038696, 14.701389, 13.790583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.658228, 14.146886, 13.672257>,  <4.032920, 14.211904, 13.290213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.658228, 14.146886, 13.672257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.389199, 14.330637, 13.904332>,  <4.227782, 14.440887, 14.043577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.389199, 14.330637, 13.904332>,  <4.658228, 14.146886, 13.672257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.389199, 14.330637, 13.904332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147847, -0.684788, 0.713588,
		0.725112, 0.565718, 0.392652,
		-0.672573, 0.459378, 0.580187,
		4.187428, 14.468451, 14.078388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.366400, 14.156798, 13.514339>,  <4.658228, 14.146886, 13.672257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.366400, 14.156798, 13.514339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.719519, 14.036084, 13.370343>,  <5.931391, 13.963655, 13.283946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.719519, 14.036084, 13.370343>,  <5.366400, 14.156798, 13.514339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.719519, 14.036084, 13.370343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037259, 0.808908, -0.586753,
		0.468273, 0.504572, 0.725347,
		0.882798, -0.301786, -0.359990,
		5.984359, 13.945548, 13.262346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.808860, 14.759530, 13.552148>,  <5.366400, 14.156798, 13.514339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.808860, 14.759530, 13.552148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.911930, 14.516608, 13.251539>,  <5.973772, 14.370855, 13.071174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.911930, 14.516608, 13.251539>,  <5.808860, 14.759530, 13.552148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.911930, 14.516608, 13.251539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117834, 0.791732, -0.599395,
		0.959020, 0.065894, 0.275571,
		0.257675, -0.607303, -0.751522,
		5.989233, 14.334417, 13.026083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.320106, 15.176058, 13.318194>,  <5.808860, 14.759530, 13.552148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.320106, 15.176058, 13.318194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.254908, 14.889061, 13.047303>,  <6.215789, 14.716863, 12.884768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.254908, 14.889061, 13.047303>,  <6.320106, 15.176058, 13.318194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.254908, 14.889061, 13.047303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196369, 0.649083, -0.734935,
		0.966888, -0.252776, 0.035096,
		-0.162994, -0.717492, -0.677228,
		6.206009, 14.673814, 12.844134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.950288, 15.125549, 12.862054>,  <6.320106, 15.176058, 13.318194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.950288, 15.125549, 12.862054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.637992, 14.965588, 12.670003>,  <6.450615, 14.869611, 12.554772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.637992, 14.965588, 12.670003>,  <6.950288, 15.125549, 12.862054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.637992, 14.965588, 12.670003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123814, 0.654136, -0.746174,
		0.612464, -0.642016, -0.461198,
		-0.780742, -0.399902, -0.480126,
		6.403770, 14.845616, 12.525965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.261148, 14.855204, 12.219771>,  <6.950288, 15.125549, 12.862054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.261148, 14.855204, 12.219771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.867998, 14.915893, 12.177939>,  <6.632108, 14.952306, 12.152840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.867998, 14.915893, 12.177939>,  <7.261148, 14.855204, 12.219771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.867998, 14.915893, 12.177939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170407, 0.532371, -0.829182,
		-0.070129, -0.832804, -0.549109,
		-0.982875, 0.151722, -0.104581,
		6.573135, 14.961409, 12.146565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.167557, 14.874838, 11.472754>,  <7.261148, 14.855204, 12.219771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.167557, 14.874838, 11.472754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.828050, 15.037910, 11.607447>,  <6.624345, 15.135753, 11.688262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.828050, 15.037910, 11.607447>,  <7.167557, 14.874838, 11.472754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.828050, 15.037910, 11.607447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089236, 0.517254, -0.851167,
		-0.521180, -0.752492, -0.402649,
		-0.848769, 0.407680, 0.336732,
		6.573419, 15.160213, 11.708467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.585380, 14.693088, 10.899494>,  <7.167557, 14.874838, 11.472754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.585380, 14.693088, 10.899494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.469036, 15.012511, 11.110285>,  <6.399229, 15.204165, 11.236759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.469036, 15.012511, 11.110285>,  <6.585380, 14.693088, 10.899494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.469036, 15.012511, 11.110285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200653, 0.487629, -0.849681,
		-0.935489, -0.352878, 0.018401,
		-0.290861, 0.798559, 0.526977,
		6.381777, 15.252079, 11.268378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.079222, 14.978771, 10.447784>,  <6.585380, 14.693088, 10.899494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.079222, 14.978771, 10.447784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.130454, 15.267963, 10.719341>,  <6.161193, 15.441479, 10.882275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.130454, 15.267963, 10.719341>,  <6.079222, 14.978771, 10.447784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.130454, 15.267963, 10.719341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152600, 0.690744, -0.706814,
		-0.979953, -0.013070, 0.198798,
		0.128081, 0.722982, 0.678891,
		6.168878, 15.484858, 10.923009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.532016, 15.409985, 10.434685>,  <6.079222, 14.978771, 10.447784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.532016, 15.409985, 10.434685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.858624, 15.598977, 10.567384>,  <6.054589, 15.712373, 10.647003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.858624, 15.598977, 10.567384>,  <5.532016, 15.409985, 10.434685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.858624, 15.598977, 10.567384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176731, 0.751617, -0.635482,
		-0.549602, 0.460253, 0.697212,
		0.816519, 0.472482, 0.331749,
		6.103580, 15.740722, 10.666908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.301974, 16.017271, 10.461369>,  <5.532016, 15.409985, 10.434685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.301974, 16.017271, 10.461369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.694361, 16.093613, 10.475686>,  <5.929792, 16.139418, 10.484277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.694361, 16.093613, 10.475686>,  <5.301974, 16.017271, 10.461369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.694361, 16.093613, 10.475686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148660, 0.856719, -0.493895,
		-0.124927, 0.479173, 0.868784,
		0.980966, 0.190854, 0.035793,
		5.988650, 16.150869, 10.486424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.363268, 16.717913, 10.695596>,  <5.301974, 16.017271, 10.461369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.363268, 16.717913, 10.695596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.706117, 16.619970, 10.514317>,  <5.911826, 16.561205, 10.405549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.706117, 16.619970, 10.514317>,  <5.363268, 16.717913, 10.695596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.706117, 16.619970, 10.514317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098837, 0.785280, -0.611202,
		0.505544, 0.568666, 0.648879,
		0.857121, -0.244856, -0.453199,
		5.963253, 16.546513, 10.378357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.419300, 17.351053, 10.411060>,  <5.363268, 16.717913, 10.695596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.419300, 17.351053, 10.411060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.679095, 17.093437, 10.249380>,  <5.834971, 16.938868, 10.152372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.679095, 17.093437, 10.249380>,  <5.419300, 17.351053, 10.411060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.679095, 17.093437, 10.249380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117243, 0.610048, -0.783642,
		0.751279, 0.461576, 0.471727,
		0.649487, -0.644041, -0.404200,
		5.873941, 16.900225, 10.128120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.134862, 17.691378, 10.307775>,  <5.419300, 17.351053, 10.411060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.134862, 17.691378, 10.307775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.070934, 17.395573, 10.046217>,  <6.032577, 17.218090, 9.889282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.070934, 17.395573, 10.046217>,  <6.134862, 17.691378, 10.307775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.070934, 17.395573, 10.046217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099507, 0.646966, -0.755998,
		0.982118, -0.185891, -0.029811,
		-0.159820, -0.739513, -0.653894,
		6.022988, 17.173719, 9.850049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.537337, 17.911604, 9.769616>,  <6.134862, 17.691378, 10.307775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.537337, 17.911604, 9.769616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.303093, 17.632553, 9.604510>,  <6.162547, 17.465122, 9.505446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.303093, 17.632553, 9.604510>,  <6.537337, 17.911604, 9.769616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.303093, 17.632553, 9.604510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078157, 0.555436, -0.827878,
		0.806816, -0.452554, -0.379793,
		-0.585611, -0.697629, -0.412765,
		6.127410, 17.423264, 9.480681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.823636, 17.697132, 9.130155>,  <6.537337, 17.911604, 9.769616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.823636, 17.697132, 9.130155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.436843, 17.597460, 9.108769>,  <6.204768, 17.537657, 9.095939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.436843, 17.597460, 9.108769>,  <6.823636, 17.697132, 9.130155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.436843, 17.597460, 9.108769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042879, 0.365862, -0.929681,
		0.251217, -0.896691, -0.364466,
		-0.966981, -0.249180, -0.053462,
		6.146749, 17.522705, 9.092731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.748899, 17.485277, 8.448040>,  <6.823636, 17.697132, 9.130155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.748899, 17.485277, 8.448040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.372395, 17.551302, 8.565875>,  <6.146492, 17.590918, 8.636576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.372395, 17.551302, 8.565875>,  <6.748899, 17.485277, 8.448040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.372395, 17.551302, 8.565875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165232, 0.535680, -0.828097,
		-0.294493, -0.828131, -0.476942,
		-0.941261, 0.165063, 0.294587,
		6.090017, 17.600821, 8.654251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.368000, 17.454695, 7.870688>,  <6.748899, 17.485277, 8.448040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.368000, 17.454695, 7.870688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.159910, 17.654451, 8.147809>,  <6.035056, 17.774305, 8.314081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.159910, 17.654451, 8.147809>,  <6.368000, 17.454695, 7.870688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.159910, 17.654451, 8.147809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235655, 0.695782, -0.678494,
		-0.820873, -0.516232, -0.244279,
		-0.520225, 0.499392, 0.692801,
		6.003843, 17.804270, 8.355649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.748379, 17.662725, 7.561766>,  <6.368000, 17.454695, 7.870688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.748379, 17.662725, 7.561766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.743822, 17.902903, 7.881600>,  <5.741088, 18.047009, 8.073501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.743822, 17.902903, 7.881600>,  <5.748379, 17.662725, 7.561766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.743822, 17.902903, 7.881600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154079, 0.789033, -0.594716,
		-0.987993, -0.129975, 0.083527,
		-0.011392, 0.600445, 0.799585,
		5.740405, 18.083036, 8.121476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.159647, 18.130636, 7.514756>,  <5.748379, 17.662725, 7.561766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.159647, 18.130636, 7.514756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.428079, 18.321491, 7.741734>,  <5.589138, 18.436005, 7.877921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.428079, 18.321491, 7.741734>,  <5.159647, 18.130636, 7.514756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.428079, 18.321491, 7.741734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158376, 0.839977, -0.518995,
		-0.724273, 0.258417, 0.639257,
		0.671079, 0.477137, 0.567445,
		5.629403, 18.464632, 7.911968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.880704, 18.725807, 7.561759>,  <5.159647, 18.130636, 7.514756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.880704, 18.725807, 7.561759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.266643, 18.785698, 7.648158>,  <5.498206, 18.821632, 7.699997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.266643, 18.785698, 7.648158>,  <4.880704, 18.725807, 7.561759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.266643, 18.785698, 7.648158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027292, 0.874493, -0.484270,
		-0.261396, 0.461351, 0.847837,
		0.964846, 0.149725, 0.215998,
		5.556096, 18.830616, 7.712957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.999387, 19.414175, 7.907414>,  <4.880704, 18.725807, 7.561759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.999387, 19.414175, 7.907414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.346279, 19.333351, 7.725390>,  <5.554415, 19.284857, 7.616175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.346279, 19.333351, 7.725390>,  <4.999387, 19.414175, 7.907414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.346279, 19.333351, 7.725390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041950, 0.881050, -0.471159,
		0.496135, 0.427694, 0.755598,
		0.867231, -0.202062, -0.455061,
		5.606449, 19.272732, 7.588871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.560856, 18.526930, 22.866405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.321499, 18.245960, 23.020561>,  <17.177885, 18.077377, 23.113054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.321499, 18.245960, 23.020561>,  <17.560856, 18.526930, 22.866405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.321499, 18.245960, 23.020561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025757, 0.463898, 0.885514,
		-0.800788, 0.539812, -0.259501,
		-0.598393, -0.702425, 0.385388,
		17.141981, 18.035233, 23.136177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.847345, 18.805548, 23.235605>,  <17.560856, 18.526930, 22.866405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.847345, 18.805548, 23.235605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.941338, 18.459442, 23.412739>,  <16.997732, 18.251778, 23.519018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.941338, 18.459442, 23.412739>,  <16.847345, 18.805548, 23.235605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.941338, 18.459442, 23.412739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057373, 0.442448, 0.894957,
		-0.970305, -0.235704, 0.054324,
		0.234980, -0.865265, 0.442833,
		17.011831, 18.199863, 23.545589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.619778, 18.837458, 23.877247>,  <16.847345, 18.805548, 23.235605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.619778, 18.837458, 23.877247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.884796, 18.538639, 23.898996>,  <17.043808, 18.359348, 23.912046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.884796, 18.538639, 23.898996>,  <16.619778, 18.837458, 23.877247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.884796, 18.538639, 23.898996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255207, 0.293397, 0.921296,
		-0.704204, -0.596524, 0.385041,
		0.662545, -0.747046, 0.054374,
		17.083559, 18.314526, 23.915308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.592669, 18.590496, 24.575943>,  <16.619778, 18.837458, 23.877247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.592669, 18.590496, 24.575943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.939487, 18.434977, 24.451323>,  <17.147579, 18.341665, 24.376551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.939487, 18.434977, 24.451323>,  <16.592669, 18.590496, 24.575943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.939487, 18.434977, 24.451323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384299, 0.123926, 0.914853,
		-0.317085, -0.912950, 0.256865,
		0.867048, -0.388799, -0.311550,
		17.199602, 18.318336, 24.357857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.798466, 18.216215, 25.097178>,  <16.592669, 18.590496, 24.575943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.798466, 18.216215, 25.097178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.136757, 18.302376, 24.901896>,  <17.339731, 18.354073, 24.784727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.136757, 18.302376, 24.901896>,  <16.798466, 18.216215, 25.097178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.136757, 18.302376, 24.901896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477858, 0.101435, 0.872561,
		0.237474, -0.971242, -0.017146,
		0.845729, 0.215404, -0.488205,
		17.390476, 18.366997, 24.755434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.448524, 17.960733, 25.576380>,  <16.798466, 18.216215, 25.097178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.448524, 17.960733, 25.576380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.593843, 18.223513, 25.312128>,  <17.681036, 18.381180, 25.153576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.593843, 18.223513, 25.312128>,  <17.448524, 17.960733, 25.576380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.593843, 18.223513, 25.312128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611615, 0.366727, 0.701027,
		0.702809, -0.658735, -0.268567,
		0.363300, 0.656947, -0.660631,
		17.702833, 18.420597, 25.113939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.124096, 18.010601, 25.782267>,  <17.448524, 17.960733, 25.576380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.124096, 18.010601, 25.782267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.084465, 18.329985, 25.544729>,  <18.060686, 18.521614, 25.402206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.084465, 18.329985, 25.544729>,  <18.124096, 18.010601, 25.782267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.084465, 18.329985, 25.544729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706814, 0.476537, 0.522806,
		0.700426, -0.367939, -0.611575,
		-0.099077, 0.798457, -0.593843,
		18.054743, 18.569521, 25.366577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.788748, 18.162361, 25.500275>,  <18.124096, 18.010601, 25.782267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.788748, 18.162361, 25.500275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.547321, 18.481279, 25.502333>,  <18.402466, 18.672630, 25.503567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.547321, 18.481279, 25.502333>,  <18.788748, 18.162361, 25.500275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.547321, 18.481279, 25.502333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669163, 0.503036, 0.546969,
		0.433508, 0.333574, -0.837137,
		-0.603565, 0.797297, 0.005145,
		18.366251, 18.720469, 25.503876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.275766, 18.641361, 25.384779>,  <18.788748, 18.162361, 25.500275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.275766, 18.641361, 25.384779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.952627, 18.826523, 25.530712>,  <18.758743, 18.937620, 25.618273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.952627, 18.826523, 25.530712>,  <19.275766, 18.641361, 25.384779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.952627, 18.826523, 25.530712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571856, 0.465729, 0.675335,
		0.142701, 0.754200, -0.640952,
		-0.807847, 0.462903, 0.364833,
		18.710274, 18.965393, 25.640162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.440897, 19.384613, 25.357643>,  <19.275766, 18.641361, 25.384779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.440897, 19.384613, 25.357643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.144777, 19.399788, 25.626125>,  <18.967106, 19.408894, 25.787214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.144777, 19.399788, 25.626125>,  <19.440897, 19.384613, 25.357643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.144777, 19.399788, 25.626125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611987, 0.451274, 0.649479,
		-0.278259, 0.891579, -0.357295,
		-0.740300, 0.037936, 0.671206,
		18.922688, 19.411169, 25.827488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.353968, 19.963314, 25.630590>,  <19.440897, 19.384613, 25.357643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.353968, 19.963314, 25.630590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.174791, 19.760088, 25.924860>,  <19.067286, 19.638153, 26.101421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.174791, 19.760088, 25.924860>,  <19.353968, 19.963314, 25.630590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.174791, 19.760088, 25.924860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569902, 0.471751, 0.672802,
		-0.688882, 0.720640, 0.078229,
		-0.447943, -0.508064, 0.735675,
		19.040409, 19.607668, 26.145563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.184650, 20.483782, 26.218161>,  <19.353968, 19.963314, 25.630590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.184650, 20.483782, 26.218161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.187801, 20.127703, 26.400364>,  <19.189692, 19.914055, 26.509686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.187801, 20.127703, 26.400364>,  <19.184650, 20.483782, 26.218161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.187801, 20.127703, 26.400364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422505, 0.415828, 0.805342,
		-0.906326, 0.186112, 0.379388,
		0.007876, -0.890196, 0.455510,
		19.190165, 19.860643, 26.537016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.163094, 20.725693, 26.764603>,  <19.184650, 20.483782, 26.218161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.163094, 20.725693, 26.764603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.317219, 20.360149, 26.815825>,  <19.409695, 20.140823, 26.846558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.317219, 20.360149, 26.815825>,  <19.163094, 20.725693, 26.764603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.317219, 20.360149, 26.815825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416125, 0.295934, 0.859804,
		-0.823634, -0.278008, 0.494306,
		0.385315, -0.913857, 0.128055,
		19.432814, 20.085993, 26.854240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.939590, 20.368818, 27.331230>,  <19.163094, 20.725693, 26.764603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.939590, 20.368818, 27.331230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.316820, 20.272535, 27.239431>,  <19.543158, 20.214766, 27.184353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.316820, 20.272535, 27.239431>,  <18.939590, 20.368818, 27.331230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.316820, 20.272535, 27.239431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318426, 0.454358, 0.831964,
		-0.095985, -0.857683, 0.505141,
		0.943075, -0.240706, -0.229497,
		19.599743, 20.200323, 27.170582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.824446, 21.094450, 27.361971>,  <18.939590, 20.368818, 27.331230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.824446, 21.094450, 27.361971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.541330, 21.376930, 27.354895>,  <18.371460, 21.546419, 27.350649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.541330, 21.376930, 27.354895>,  <18.824446, 21.094450, 27.361971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.541330, 21.376930, 27.354895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287439, -0.310783, -0.905976,
		-0.645300, -0.636155, 0.422958,
		-0.707790, 0.706202, -0.017693,
		18.328993, 21.588791, 27.349586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.143469, 20.778875, 27.153120>,  <18.824446, 21.094450, 27.361971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.143469, 20.778875, 27.153120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.137575, 21.173058, 27.085402>,  <18.134039, 21.409567, 27.044771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.137575, 21.173058, 27.085402>,  <18.143469, 20.778875, 27.153120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.137575, 21.173058, 27.085402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081953, -0.169935, -0.982041,
		-0.996527, -0.000596, 0.083265,
		-0.014735, 0.985455, -0.169296,
		18.133154, 21.468695, 27.034613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.597870, 20.944918, 26.663868>,  <18.143469, 20.778875, 27.153120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.597870, 20.944918, 26.663868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.851284, 21.253546, 26.640852>,  <18.003332, 21.438723, 26.627043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.851284, 21.253546, 26.640852>,  <17.597870, 20.944918, 26.663868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.851284, 21.253546, 26.640852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238295, 0.123827, -0.963266,
		-0.736102, 0.623977, 0.262310,
		0.633538, 0.771569, -0.057541,
		18.041346, 21.485016, 26.623590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251373, 21.282280, 26.194132>,  <17.597870, 20.944918, 26.663868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.251373, 21.282280, 26.194132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.620613, 21.436049, 26.189993>,  <17.842157, 21.528309, 26.187510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.620613, 21.436049, 26.189993>,  <17.251373, 21.282280, 26.194132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.620613, 21.436049, 26.189993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038560, 0.065751, -0.997091,
		-0.382621, 0.920814, 0.075518,
		0.923100, 0.384420, -0.010349,
		17.897543, 21.551374, 26.186888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.124025, 21.897444, 25.875044>,  <17.251373, 21.282280, 26.194132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.124025, 21.897444, 25.875044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.503723, 21.776112, 25.841766>,  <17.731543, 21.703312, 25.821800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.503723, 21.776112, 25.841766>,  <17.124025, 21.897444, 25.875044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.503723, 21.776112, 25.841766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083149, 0.013081, -0.996451,
		0.303344, 0.952795, -0.012804,
		0.949246, -0.303333, -0.083193,
		17.788498, 21.685112, 25.816809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.406998, 22.215967, 25.348560>,  <17.124025, 21.897444, 25.875044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.406998, 22.215967, 25.348560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.668997, 21.915279, 25.379271>,  <17.826197, 21.734867, 25.397697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.668997, 21.915279, 25.379271>,  <17.406998, 22.215967, 25.348560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.668997, 21.915279, 25.379271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118686, 0.002005, -0.992930,
		0.746251, 0.659480, 0.090532,
		0.654999, -0.751719, 0.076775,
		17.865496, 21.689764, 25.402304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.726482, 22.331781, 24.829777>,  <17.406998, 22.215967, 25.348560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.726482, 22.331781, 24.829777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.891510, 21.976055, 24.908670>,  <17.990526, 21.762619, 24.956007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.891510, 21.976055, 24.908670>,  <17.726482, 22.331781, 24.829777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.891510, 21.976055, 24.908670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125730, -0.158853, -0.979264,
		0.902208, 0.428812, 0.046275,
		0.412569, -0.889318, 0.197233,
		18.015282, 21.709259, 24.967840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.317488, 22.326708, 24.359032>,  <17.726482, 22.331781, 24.829777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.317488, 22.326708, 24.359032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.241577, 21.942545, 24.440624>,  <18.196032, 21.712048, 24.489580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.241577, 21.942545, 24.440624>,  <18.317488, 22.326708, 24.359032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.241577, 21.942545, 24.440624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078046, -0.221854, -0.971952,
		0.978721, -0.168532, 0.117058,
		-0.189775, -0.960405, 0.203980,
		18.184645, 21.654423, 24.501818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.717388, 21.991053, 23.903812>,  <18.317488, 22.326708, 24.359032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.717388, 21.991053, 23.903812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.435783, 21.726822, 24.008121>,  <18.266821, 21.568283, 24.070707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.435783, 21.726822, 24.008121>,  <18.717388, 21.991053, 23.903812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.435783, 21.726822, 24.008121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041169, -0.404535, -0.913596,
		0.708993, -0.632447, 0.311993,
		-0.704013, -0.660578, 0.260775,
		18.224579, 21.528648, 24.086353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.915609, 21.291630, 23.674816>,  <18.717388, 21.991053, 23.903812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.915609, 21.291630, 23.674816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.518223, 21.273254, 23.716600>,  <18.279791, 21.262230, 23.741671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.518223, 21.273254, 23.716600>,  <18.915609, 21.291630, 23.674816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.518223, 21.273254, 23.716600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070537, -0.472369, -0.878574,
		0.089703, -0.880203, 0.466043,
		-0.993468, -0.045937, 0.104459,
		18.220182, 21.259474, 23.747938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.796223, 20.674452, 23.321238>,  <18.915609, 21.291630, 23.674816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.796223, 20.674452, 23.321238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.437243, 20.847713, 23.354614>,  <18.221855, 20.951670, 23.374640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.437243, 20.847713, 23.354614>,  <18.796223, 20.674452, 23.321238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.437243, 20.847713, 23.354614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304345, -0.471088, -0.827919,
		-0.319306, -0.768412, 0.554605,
		-0.897451, 0.433151, 0.083441,
		18.168007, 20.977659, 23.379646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.452486, 20.134588, 23.241709>,  <18.796223, 20.674452, 23.321238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.452486, 20.134588, 23.241709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.211071, 20.440969, 23.153112>,  <18.066221, 20.624798, 23.099955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.211071, 20.440969, 23.153112>,  <18.452486, 20.134588, 23.241709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.211071, 20.440969, 23.153112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225629, -0.430502, -0.873933,
		-0.764744, -0.477477, 0.432645,
		-0.603538, 0.765953, -0.221491,
		18.030010, 20.670755, 23.086664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.746124, 19.939051, 23.112900>,  <18.452486, 20.134588, 23.241709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.746124, 19.939051, 23.112900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.766106, 20.287792, 22.918016>,  <17.778095, 20.497038, 22.801086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.766106, 20.287792, 22.918016>,  <17.746124, 19.939051, 23.112900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.766106, 20.287792, 22.918016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241507, -0.462796, -0.852932,
		-0.969112, 0.160271, 0.187441,
		0.049953, 0.871856, -0.487208,
		17.781092, 20.549349, 22.771854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160542, 19.939249, 22.742258>,  <17.746124, 19.939051, 23.112900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160542, 19.939249, 22.742258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.380955, 20.204903, 22.540152>,  <17.513203, 20.364294, 22.418888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.380955, 20.204903, 22.540152>,  <17.160542, 19.939249, 22.742258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.380955, 20.204903, 22.540152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008802, -0.600822, -0.799335,
		-0.834437, 0.444907, -0.325227,
		0.551033, 0.664132, -0.505264,
		17.546265, 20.404142, 22.388573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.446304, 20.096987, 22.677628>,  <17.160542, 19.939249, 22.742258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.446304, 20.096987, 22.677628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.062536, 20.123320, 22.787302>,  <15.832275, 20.139118, 22.853107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.062536, 20.123320, 22.787302>,  <16.446304, 20.096987, 22.677628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.062536, 20.123320, 22.787302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281855, 0.252657, 0.925593,
		-0.008342, 0.965314, -0.260959,
		-0.959421, 0.065831, 0.274187,
		15.774710, 20.143068, 22.869558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.398310, 20.686789, 23.148863>,  <16.446304, 20.096987, 22.677628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.398310, 20.686789, 23.148863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.055653, 20.493195, 23.220331>,  <15.850059, 20.377039, 23.263212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.055653, 20.493195, 23.220331>,  <16.398310, 20.686789, 23.148863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.055653, 20.493195, 23.220331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046074, 0.273171, 0.960862,
		-0.513849, 0.831347, -0.211711,
		-0.856642, -0.483984, 0.178672,
		15.798660, 20.348000, 23.273933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.006926, 21.040474, 23.620007>,  <16.398310, 20.686789, 23.148863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.006926, 21.040474, 23.620007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.873867, 20.667339, 23.675383>,  <15.794032, 20.443459, 23.708609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.873867, 20.667339, 23.675383>,  <16.006926, 21.040474, 23.620007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.873867, 20.667339, 23.675383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136969, 0.193034, 0.971585,
		-0.933052, 0.304231, -0.191981,
		-0.332646, -0.932835, 0.138440,
		15.774074, 20.387489, 23.716915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.416955, 21.134251, 23.927124>,  <16.006926, 21.040474, 23.620007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.416955, 21.134251, 23.927124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.530197, 20.763039, 24.023966>,  <15.598143, 20.540312, 24.082071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.530197, 20.763039, 24.023966>,  <15.416955, 21.134251, 23.927124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.530197, 20.763039, 24.023966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100569, 0.222314, 0.969774,
		-0.953801, -0.298897, -0.030393,
		0.283106, -0.928029, 0.242104,
		15.615129, 20.484631, 24.096598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.875505, 20.892700, 24.389454>,  <15.416955, 21.134251, 23.927124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.875505, 20.892700, 24.389454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.185912, 20.647566, 24.449093>,  <15.372156, 20.500484, 24.484877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.185912, 20.647566, 24.449093>,  <14.875505, 20.892700, 24.389454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.185912, 20.647566, 24.449093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072310, 0.148388, 0.986282,
		-0.626555, -0.776151, 0.070837,
		0.776015, -0.612838, 0.149097,
		15.418716, 20.463715, 24.493822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.674536, 20.385717, 24.884924>,  <14.875505, 20.892700, 24.389454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.674536, 20.385717, 24.884924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.073498, 20.363121, 24.902767>,  <15.312875, 20.349564, 24.913473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.073498, 20.363121, 24.902767>,  <14.674536, 20.385717, 24.884924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.073498, 20.363121, 24.902767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047146, -0.044421, 0.997900,
		-0.054413, -0.997413, -0.046970,
		0.997405, -0.056513, 0.044607,
		15.372720, 20.346174, 24.916149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.861649, 19.974699, 25.431833>,  <14.674536, 20.385717, 24.884924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.861649, 19.974699, 25.431833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.215836, 20.156570, 25.393433>,  <15.428348, 20.265694, 25.370392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.215836, 20.156570, 25.393433>,  <14.861649, 19.974699, 25.431833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.215836, 20.156570, 25.393433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140341, -0.064704, 0.987987,
		0.443003, -0.888303, -0.121103,
		0.885468, 0.454677, -0.096002,
		15.481476, 20.292973, 25.364632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.858122, 19.158834, 25.494810>,  <14.861649, 19.974699, 25.431833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.858122, 19.158834, 25.494810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.704342, 18.832903, 25.668364>,  <14.612074, 18.637344, 25.772495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.704342, 18.832903, 25.668364>,  <14.858122, 19.158834, 25.494810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.704342, 18.832903, 25.668364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486896, -0.220339, -0.845212,
		0.784303, -0.536198, -0.312027,
		-0.384449, -0.814827, 0.433885,
		14.589007, 18.588455, 25.798529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.799759, 18.746170, 24.989555>,  <14.858122, 19.158834, 25.494810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.799759, 18.746170, 24.989555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.555804, 18.550253, 25.238758>,  <14.409431, 18.432703, 25.388279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.555804, 18.550253, 25.238758>,  <14.799759, 18.746170, 24.989555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.555804, 18.550253, 25.238758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671452, -0.098197, -0.734513,
		0.420939, -0.866290, -0.268985,
		-0.609888, -0.489795, 0.623007,
		14.372838, 18.403315, 25.425661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592388, 18.201000, 24.570459>,  <14.799759, 18.746170, 24.989555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.592388, 18.201000, 24.570459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.320427, 18.256178, 24.858543>,  <14.157250, 18.289284, 25.031393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.320427, 18.256178, 24.858543>,  <14.592388, 18.201000, 24.570459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.320427, 18.256178, 24.858543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732670, -0.168535, -0.659386,
		0.030424, -0.975996, 0.215653,
		-0.679904, 0.137942, 0.720211,
		14.116456, 18.297562, 25.074606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.179119, 17.784008, 24.336571>,  <14.592388, 18.201000, 24.570459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.179119, 17.784008, 24.336571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.976128, 18.018137, 24.589510>,  <13.854333, 18.158615, 24.741274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.976128, 18.018137, 24.589510>,  <14.179119, 17.784008, 24.336571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.976128, 18.018137, 24.589510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758953, 0.043843, -0.649668,
		-0.407990, -0.809614, 0.421983,
		-0.507480, 0.585323, 0.632347,
		13.823884, 18.193733, 24.779215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.536465, 17.480537, 24.427015>,  <14.179119, 17.784008, 24.336571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.536465, 17.480537, 24.427015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.474750, 17.867188, 24.508821>,  <13.437720, 18.099178, 24.557905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.474750, 17.867188, 24.508821>,  <13.536465, 17.480537, 24.427015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.474750, 17.867188, 24.508821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675499, 0.047861, -0.735806,
		-0.721039, -0.251676, 0.645571,
		-0.154287, 0.966627, 0.204516,
		13.428463, 18.157175, 24.570177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.775644, 17.653589, 24.502295>,  <13.536465, 17.480537, 24.427015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.775644, 17.653589, 24.502295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.962086, 17.984524, 24.376909>,  <13.073951, 18.183084, 24.301678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.962086, 17.984524, 24.376909>,  <12.775644, 17.653589, 24.502295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.962086, 17.984524, 24.376909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686390, 0.114604, -0.718147,
		-0.558226, 0.549890, 0.621293,
		0.466105, 0.827338, -0.313464,
		13.101917, 18.232725, 24.282869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.199022, 18.044546, 24.173061>,  <12.775644, 17.653589, 24.502295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.199022, 18.044546, 24.173061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.548412, 18.196611, 24.051394>,  <12.758046, 18.287849, 23.978392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.548412, 18.196611, 24.051394>,  <12.199022, 18.044546, 24.173061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.548412, 18.196611, 24.051394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429336, 0.306820, -0.849430,
		-0.229595, 0.872547, 0.431216,
		0.873474, 0.380161, -0.304172,
		12.810454, 18.310659, 23.960142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<22.483624, 14.995052, 25.522505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.740677, 15.273808, 25.649862>,  <22.894909, 15.441060, 25.726276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.740677, 15.273808, 25.649862>,  <22.483624, 14.995052, 25.522505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.740677, 15.273808, 25.649862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697786, 0.360725, 0.618847,
		0.316412, -0.619863, 0.718090,
		0.642633, 0.696885, 0.318394,
		22.933466, 15.482874, 25.745380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.967270, 15.494264, 25.337545>,  <22.483624, 14.995052, 25.522505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.967270, 15.494264, 25.337545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.777929, 15.347287, 25.657778>,  <21.664326, 15.259102, 25.849916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.777929, 15.347287, 25.657778>,  <21.967270, 15.494264, 25.337545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.777929, 15.347287, 25.657778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841528, 0.079966, 0.534262,
		-0.260328, 0.926603, 0.271359,
		-0.473350, -0.367440, 0.800580,
		21.635925, 15.237055, 25.897951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.489603, 15.789820, 24.839720>,  <21.967270, 15.494264, 25.337545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.489603, 15.789820, 24.839720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.104582, 15.696383, 24.784697>,  <20.873569, 15.640320, 24.751682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.104582, 15.696383, 24.784697>,  <21.489603, 15.789820, 24.839720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.104582, 15.696383, 24.784697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190933, 0.944399, -0.267686,
		0.192438, -0.231399, -0.953636,
		-0.962555, -0.233594, -0.137557,
		20.815815, 15.626305, 24.743429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.165989, 15.938321, 24.118858>,  <21.489603, 15.789820, 24.839720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.165989, 15.938321, 24.118858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.956799, 15.991371, 24.455645>,  <20.831285, 16.023201, 24.657717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.956799, 15.991371, 24.455645>,  <21.165989, 15.938321, 24.118858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.956799, 15.991371, 24.455645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015049, 0.989103, -0.146453,
		-0.852215, -0.063921, -0.519272,
		-0.522975, 0.132624, 0.841967,
		20.799906, 16.031158, 24.708235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.389984, 16.257061, 24.059065>,  <21.165989, 15.938321, 24.118858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.389984, 16.257061, 24.059065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.569849, 16.368277, 24.398594>,  <20.677769, 16.435007, 24.602310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.569849, 16.368277, 24.398594>,  <20.389984, 16.257061, 24.059065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.569849, 16.368277, 24.398594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051791, 0.940601, -0.335541,
		-0.891696, 0.194841, 0.408552,
		0.449662, 0.278041, 0.848821,
		20.704748, 16.451689, 24.653240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.091991, 16.852924, 24.449007>,  <20.389984, 16.257061, 24.059065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.091991, 16.852924, 24.449007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.486818, 16.833937, 24.510252>,  <20.723715, 16.822544, 24.546999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.486818, 16.833937, 24.510252>,  <20.091991, 16.852924, 24.449007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.486818, 16.833937, 24.510252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121405, 0.845093, -0.520652,
		-0.104682, 0.532508, 0.839927,
		0.987068, -0.047468, 0.153115,
		20.782938, 16.819696, 24.556187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.711372, 16.615564, 25.010433>,  <20.091991, 16.852924, 24.449007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.711372, 16.615564, 25.010433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.416296, 16.465534, 25.234978>,  <19.239250, 16.375517, 25.369705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.416296, 16.465534, 25.234978>,  <19.711372, 16.615564, 25.010433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.416296, 16.465534, 25.234978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293012, -0.571222, -0.766714,
		0.608238, -0.730085, 0.311485,
		-0.737693, -0.375076, 0.561362,
		19.194988, 16.353012, 25.403387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.694019, 15.783377, 25.055733>,  <19.711372, 16.615564, 25.010433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.694019, 15.783377, 25.055733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.327038, 15.927003, 25.124260>,  <19.106850, 16.013180, 25.165377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.327038, 15.927003, 25.124260>,  <19.694019, 15.783377, 25.055733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.327038, 15.927003, 25.124260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388492, -0.715755, -0.580318,
		-0.085749, -0.598971, 0.796166,
		-0.917454, 0.359066, 0.171320,
		19.051802, 16.034723, 25.175655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.245638, 15.170426, 25.220463>,  <19.694019, 15.783377, 25.055733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.245638, 15.170426, 25.220463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.009745, 15.460442, 25.078175>,  <18.868210, 15.634451, 24.992802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.009745, 15.460442, 25.078175>,  <19.245638, 15.170426, 25.220463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.009745, 15.460442, 25.078175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382207, -0.638580, -0.667931,
		-0.711432, -0.257941, 0.653705,
		-0.589730, 0.725039, -0.355720,
		18.832825, 15.677953, 24.971458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.547260, 14.856713, 25.133095>,  <19.245638, 15.170426, 25.220463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.547260, 14.856713, 25.133095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.556190, 15.191380, 24.914192>,  <18.561548, 15.392179, 24.782850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.556190, 15.191380, 24.914192>,  <18.547260, 14.856713, 25.133095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.556190, 15.191380, 24.914192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424595, -0.487640, -0.762841,
		-0.905108, 0.249392, 0.344358,
		0.022323, 0.836667, -0.547258,
		18.562887, 15.442380, 24.750015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.911705, 14.838818, 24.769457>,  <18.547260, 14.856713, 25.133095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.911705, 14.838818, 24.769457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.125397, 15.097328, 24.551493>,  <18.253611, 15.252435, 24.420713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.125397, 15.097328, 24.551493>,  <17.911705, 14.838818, 24.769457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.125397, 15.097328, 24.551493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489536, -0.288999, -0.822699,
		-0.689170, 0.706262, 0.161984,
		0.534227, 0.646277, -0.544911,
		18.285666, 15.291211, 24.388020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.397011, 15.174973, 24.381712>,  <17.911705, 14.838818, 24.769457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.397011, 15.174973, 24.381712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.752995, 15.221998, 24.205460>,  <17.966585, 15.250214, 24.099709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.752995, 15.221998, 24.205460>,  <17.397011, 15.174973, 24.381712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.752995, 15.221998, 24.205460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419364, -0.168678, -0.892010,
		-0.179192, 0.978635, -0.100814,
		0.889957, 0.117563, -0.440630,
		18.019981, 15.257267, 24.073271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.803946, 14.704179, 24.392452>,  <17.397011, 15.174973, 24.381712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.803946, 14.704179, 24.392452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.525965, 14.486522, 24.580473>,  <16.359177, 14.355927, 24.693285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.525965, 14.486522, 24.580473>,  <16.803946, 14.704179, 24.392452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.525965, 14.486522, 24.580473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049841, 0.615684, 0.786415,
		-0.717327, 0.569949, -0.400750,
		-0.694952, -0.544143, 0.470054,
		16.317480, 14.323278, 24.721489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.354605, 15.207734, 24.792376>,  <16.803946, 14.704179, 24.392452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.354605, 15.207734, 24.792376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.281553, 14.874582, 25.001358>,  <16.237722, 14.674691, 25.126747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.281553, 14.874582, 25.001358>,  <16.354605, 15.207734, 24.792376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.281553, 14.874582, 25.001358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047290, 0.523335, 0.850814,
		-0.982044, 0.180090, -0.056190,
		-0.182630, -0.832879, 0.522455,
		16.226765, 14.624719, 25.158094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696424, 15.340255, 25.141874>,  <16.354605, 15.207734, 24.792376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.696424, 15.340255, 25.141874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.883414, 15.039653, 25.328081>,  <15.995608, 14.859292, 25.439806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.883414, 15.039653, 25.328081>,  <15.696424, 15.340255, 25.141874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.883414, 15.039653, 25.328081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013095, 0.520657, 0.853666,
		-0.883909, -0.405163, 0.233553,
		0.467475, -0.751504, 0.465519,
		16.023657, 14.814201, 25.467737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.286915, 15.088364, 25.727785>,  <15.696424, 15.340255, 25.141874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.286915, 15.088364, 25.727785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.647705, 14.956572, 25.839413>,  <15.864180, 14.877496, 25.906389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.647705, 14.956572, 25.839413>,  <15.286915, 15.088364, 25.727785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.647705, 14.956572, 25.839413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021601, 0.611077, 0.791276,
		-0.431244, -0.719741, 0.544060,
		0.901977, -0.329482, 0.279071,
		15.918298, 14.857727, 25.923134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.318754, 14.983607, 26.443810>,  <15.286915, 15.088364, 25.727785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.318754, 14.983607, 26.443810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.697706, 15.050374, 26.334549>,  <15.925077, 15.090434, 26.268993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.697706, 15.050374, 26.334549>,  <15.318754, 14.983607, 26.443810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.697706, 15.050374, 26.334549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101918, 0.651610, 0.751676,
		0.303455, -0.739962, 0.600310,
		0.947380, 0.166917, -0.273149,
		15.981920, 15.100450, 26.252604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.667090, 15.018517, 27.133938>,  <15.318754, 14.983607, 26.443810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.667090, 15.018517, 27.133938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.930541, 15.151629, 26.863985>,  <16.088612, 15.231498, 26.702013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.930541, 15.151629, 26.863985>,  <15.667090, 15.018517, 27.133938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.930541, 15.151629, 26.863985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485937, 0.496683, 0.719146,
		0.574524, -0.801599, 0.165415,
		0.658625, 0.332785, -0.674882,
		16.128130, 15.251465, 26.661520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.277088, 14.976324, 27.373932>,  <15.667090, 15.018517, 27.133938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.277088, 14.976324, 27.373932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.347099, 15.264280, 27.105268>,  <16.389105, 15.437054, 26.944071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.347099, 15.264280, 27.105268>,  <16.277088, 14.976324, 27.373932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.347099, 15.264280, 27.105268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470887, 0.537901, 0.699234,
		0.864657, -0.438659, -0.244840,
		0.175025, 0.719890, -0.671659,
		16.399607, 15.480247, 26.903770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726152, 15.277992, 27.690737>,  <16.277088, 14.976324, 27.373932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.726152, 15.277992, 27.690737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.691658, 15.542119, 27.392328>,  <16.670961, 15.700595, 27.213284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.691658, 15.542119, 27.392328>,  <16.726152, 15.277992, 27.690737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.691658, 15.542119, 27.392328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350787, 0.720982, 0.597606,
		0.932476, -0.210160, -0.293804,
		-0.086235, 0.660317, -0.746020,
		16.665787, 15.740214, 27.168522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399023, 15.514291, 27.537054>,  <16.726152, 15.277992, 27.690737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.399023, 15.514291, 27.537054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.140383, 15.795264, 27.418060>,  <16.985199, 15.963848, 27.346664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.140383, 15.795264, 27.418060>,  <17.399023, 15.514291, 27.537054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.140383, 15.795264, 27.418060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438202, 0.661238, 0.608886,
		0.624410, 0.263346, -0.735364,
		-0.646599, 0.702433, -0.297485,
		16.946404, 16.005995, 27.328815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751104, 16.068342, 27.548695>,  <17.399023, 15.514291, 27.537054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751104, 16.068342, 27.548695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.378021, 16.212025, 27.561497>,  <17.154171, 16.298235, 27.569178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.378021, 16.212025, 27.561497>,  <17.751104, 16.068342, 27.548695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.378021, 16.212025, 27.561497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324333, 0.796717, 0.509951,
		0.157679, 0.486017, -0.859608,
		-0.932709, 0.359208, 0.032006,
		17.098209, 16.319786, 27.571098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.795429, 16.802729, 27.412605>,  <17.751104, 16.068342, 27.548695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.795429, 16.802729, 27.412605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.462080, 16.756067, 27.628708>,  <17.262070, 16.728071, 27.758369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.462080, 16.756067, 27.628708>,  <17.795429, 16.802729, 27.412605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.462080, 16.756067, 27.628708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154034, 0.889730, 0.429713,
		-0.530810, 0.441330, -0.723511,
		-0.833375, -0.116651, 0.540258,
		17.212067, 16.721071, 27.790785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.579916, 17.471304, 27.541054>,  <17.795429, 16.802729, 27.412605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.579916, 17.471304, 27.541054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.385069, 17.254135, 27.814680>,  <17.268160, 17.123833, 27.978857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.385069, 17.254135, 27.814680>,  <17.579916, 17.471304, 27.541054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.385069, 17.254135, 27.814680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285284, 0.641391, 0.712202,
		-0.825426, 0.542081, -0.157547,
		-0.487120, -0.542924, 0.684067,
		17.238934, 17.091257, 28.019899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.262871, 17.915775, 27.922224>,  <17.579916, 17.471304, 27.541054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.262871, 17.915775, 27.922224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.286541, 17.587099, 28.148966>,  <17.300743, 17.389894, 28.285011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.286541, 17.587099, 28.148966>,  <17.262871, 17.915775, 27.922224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.286541, 17.587099, 28.148966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295452, 0.556826, 0.776307,
		-0.953523, 0.121540, 0.275720,
		0.059176, -0.821689, 0.566856,
		17.304295, 17.340591, 28.319023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.906170, 18.062061, 28.571886>,  <17.262871, 17.915775, 27.922224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.906170, 18.062061, 28.571886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.170235, 17.768198, 28.634445>,  <17.328674, 17.591881, 28.671982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.170235, 17.768198, 28.634445>,  <16.906170, 18.062061, 28.571886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.170235, 17.768198, 28.634445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420250, 0.533844, 0.733758,
		-0.622554, -0.418674, 0.661165,
		0.660164, -0.734658, 0.156399,
		17.368284, 17.547800, 28.681364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256409, 18.034769, 28.074171>,  <16.906170, 18.062061, 28.571886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.256409, 18.034769, 28.074171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.019632, 18.324930, 28.214684>,  <15.877566, 18.499027, 28.298992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.019632, 18.324930, 28.214684>,  <16.256409, 18.034769, 28.074171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.019632, 18.324930, 28.214684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515087, -0.005252, -0.857122,
		-0.619912, -0.688307, 0.376753,
		-0.591941, 0.725401, 0.351283,
		15.842050, 18.542551, 28.320068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.589327, 17.735737, 27.993721>,  <16.256409, 18.034769, 28.074171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.589327, 17.735737, 27.993721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.555751, 18.134308, 27.989946>,  <15.535605, 18.373449, 27.987680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.555751, 18.134308, 27.989946>,  <15.589327, 17.735737, 27.993721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.555751, 18.134308, 27.989946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660630, -0.062738, -0.748086,
		-0.746005, -0.056558, 0.663535,
		-0.083939, 0.996426, -0.009439,
		15.530569, 18.433235, 27.987114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.912676, 18.019249, 28.080397>,  <15.589327, 17.735737, 27.993721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.912676, 18.019249, 28.080397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.115175, 18.293787, 27.871536>,  <15.236675, 18.458509, 27.746220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.115175, 18.293787, 27.871536>,  <14.912676, 18.019249, 28.080397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.115175, 18.293787, 27.871536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625646, -0.124408, -0.770123,
		-0.593530, 0.716556, 0.366428,
		0.506250, 0.686345, -0.522151,
		15.267050, 18.499691, 27.714891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.463235, 18.393309, 27.738310>,  <14.912676, 18.019249, 28.080397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.463235, 18.393309, 27.738310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.798366, 18.474283, 27.535503>,  <14.999444, 18.522867, 27.413820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.798366, 18.474283, 27.535503>,  <14.463235, 18.393309, 27.738310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.798366, 18.474283, 27.535503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533632, 0.107614, -0.838842,
		-0.115249, 0.973365, 0.198187,
		0.837827, 0.202434, -0.507017,
		15.049714, 18.535013, 27.383398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.293975, 18.825336, 27.287815>,  <14.463235, 18.393309, 27.738310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.293975, 18.825336, 27.287815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.630057, 18.688444, 27.119562>,  <14.831707, 18.606310, 27.018610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.630057, 18.688444, 27.119562>,  <14.293975, 18.825336, 27.287815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.630057, 18.688444, 27.119562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411379, 0.103112, -0.905613,
		0.353300, 0.933942, -0.054151,
		0.840207, -0.342230, -0.420633,
		14.882119, 18.585775, 26.993372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.421220, 19.296392, 26.771786>,  <14.293975, 18.825336, 27.287815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.421220, 19.296392, 26.771786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.611474, 18.956490, 26.680847>,  <14.725626, 18.752548, 26.626284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.611474, 18.956490, 26.680847>,  <14.421220, 19.296392, 26.771786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.611474, 18.956490, 26.680847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441029, -0.006744, -0.897467,
		0.761095, 0.527134, -0.377974,
		0.475634, -0.849756, -0.227348,
		14.754165, 18.701563, 26.612642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.689928, 19.429327, 26.169062>,  <14.421220, 19.296392, 26.771786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.689928, 19.429327, 26.169062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.704387, 19.029684, 26.177773>,  <14.713062, 18.789898, 26.182999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.704387, 19.029684, 26.177773>,  <14.689928, 19.429327, 26.169062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.704387, 19.029684, 26.177773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414544, -0.034820, -0.909363,
		0.909311, 0.023843, -0.415434,
		0.036147, -0.999109, 0.021778,
		14.715231, 18.729952, 26.184305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.280871, 19.647480, 25.911953>,  <14.689928, 19.429327, 26.169062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.280871, 19.647480, 25.911953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.465990, 19.992311, 25.829353>,  <15.577062, 20.199209, 25.779795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.465990, 19.992311, 25.829353>,  <15.280871, 19.647480, 25.911953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.465990, 19.992311, 25.829353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037118, 0.213897, 0.976151,
		0.885687, -0.459425, 0.066992,
		0.462798, 0.862077, -0.206498,
		15.604830, 20.250935, 25.767405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040800, 19.643124, 26.227577>,  <15.280871, 19.647480, 25.911953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.040800, 19.643124, 26.227577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.892778, 20.014404, 26.212072>,  <15.803966, 20.237173, 26.202768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.892778, 20.014404, 26.212072>,  <16.040800, 19.643124, 26.227577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.892778, 20.014404, 26.212072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273834, 0.148854, 0.950188,
		0.887736, 0.341007, -0.309257,
		-0.370055, 0.928201, -0.038764,
		15.781762, 20.292864, 26.200443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.516916, 20.086248, 26.674208>,  <16.040800, 19.643124, 26.227577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.516916, 20.086248, 26.674208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.203833, 20.328602, 26.617262>,  <16.015982, 20.474014, 26.583096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.203833, 20.328602, 26.617262>,  <16.516916, 20.086248, 26.674208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.203833, 20.328602, 26.617262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203872, 0.465709, 0.861134,
		0.588049, 0.644994, -0.488038,
		-0.782710, 0.605886, -0.142363,
		15.969020, 20.510368, 26.574553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.770172, 20.657309, 26.856981>,  <16.516916, 20.086248, 26.674208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.770172, 20.657309, 26.856981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.376648, 20.722769, 26.886194>,  <16.140533, 20.762045, 26.903721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.376648, 20.722769, 26.886194>,  <16.770172, 20.657309, 26.856981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.376648, 20.722769, 26.886194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153164, 0.556292, 0.816749,
		0.093035, 0.814713, -0.572352,
		-0.983811, 0.163650, 0.073030,
		16.081505, 20.771864, 26.908104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.552931, 21.376358, 26.773169>,  <16.770172, 20.657309, 26.856981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.552931, 21.376358, 26.773169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.229967, 21.241726, 26.966995>,  <16.036190, 21.160946, 27.083292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.229967, 21.241726, 26.966995>,  <16.552931, 21.376358, 26.773169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229967, 21.241726, 26.966995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005015, 0.825196, 0.564824,
		-0.589973, 0.453613, -0.667957,
		-0.807407, -0.336580, 0.484569,
		15.987745, 21.140751, 27.112366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.122160, 21.928923, 26.937410>,  <16.552931, 21.376358, 26.773169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.122160, 21.928923, 26.937410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.982013, 21.664736, 27.203051>,  <15.897924, 21.506224, 27.362434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.982013, 21.664736, 27.203051>,  <16.122160, 21.928923, 26.937410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.982013, 21.664736, 27.203051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308574, 0.750857, 0.583949,
		-0.884322, -0.000327, -0.466878,
		-0.350368, -0.660465, 0.664100,
		15.876903, 21.466597, 27.402281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.510192, 22.151859, 27.092587>,  <16.122160, 21.928923, 26.937410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.510192, 22.151859, 27.092587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.596845, 21.895720, 27.387346>,  <15.648836, 21.742035, 27.564201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.596845, 21.895720, 27.387346>,  <15.510192, 22.151859, 27.092587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.596845, 21.895720, 27.387346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268989, 0.686455, 0.675592,
		-0.938464, -0.344573, -0.023539,
		0.216633, -0.640351, 0.736899,
		15.661835, 21.703615, 27.608416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.195189, 22.424135, 27.669722>,  <15.510192, 22.151859, 27.092587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.195189, 22.424135, 27.669722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.438259, 22.163033, 27.850668>,  <15.584102, 22.006371, 27.959236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.438259, 22.163033, 27.850668>,  <15.195189, 22.424135, 27.669722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.438259, 22.163033, 27.850668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205560, 0.679465, 0.704324,
		-0.767122, -0.335011, 0.547075,
		0.607675, -0.652758, 0.452368,
		15.620562, 21.967205, 27.986378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.930666, 22.395334, 28.403908>,  <15.195189, 22.424135, 27.669722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.930666, 22.395334, 28.403908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.306691, 22.260883, 28.380930>,  <15.532307, 22.180212, 28.367144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.306691, 22.260883, 28.380930>,  <14.930666, 22.395334, 28.403908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.306691, 22.260883, 28.380930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297271, 0.725267, 0.620981,
		-0.167066, -0.600838, 0.781718,
		0.940063, -0.336127, -0.057444,
		15.588710, 22.160046, 28.363697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.988212, 16.858345, 13.002281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.360250, 16.777365, 13.124877>,  <14.583473, 16.728777, 13.198434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.360250, 16.777365, 13.124877>,  <13.988212, 16.858345, 13.002281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.360250, 16.777365, 13.124877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295327, 0.083979, 0.951698,
		-0.218411, -0.975685, 0.018319,
		0.930096, -0.202451, 0.306488,
		14.639279, 16.716629, 13.216824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.918303, 16.232491, 13.517636>,  <13.988212, 16.858345, 13.002281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.918303, 16.232491, 13.517636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.237349, 16.470871, 13.554841>,  <14.428776, 16.613899, 13.577164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.237349, 16.470871, 13.554841>,  <13.918303, 16.232491, 13.517636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.237349, 16.470871, 13.554841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222181, 0.146931, 0.963871,
		0.560755, -0.789463, 0.249603,
		0.797615, 0.595953, 0.093011,
		14.476633, 16.649656, 13.582745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.176136, 16.093513, 14.182788>,  <13.918303, 16.232491, 13.517636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.176136, 16.093513, 14.182788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.367012, 16.435589, 14.101855>,  <14.481538, 16.640835, 14.053296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.367012, 16.435589, 14.101855>,  <14.176136, 16.093513, 14.182788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.367012, 16.435589, 14.101855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090161, 0.276664, 0.956728,
		0.874163, -0.438299, 0.209127,
		0.477191, 0.855191, -0.202332,
		14.510169, 16.692146, 14.041156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.647942, 16.091684, 14.626743>,  <14.176136, 16.093513, 14.182788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.647942, 16.091684, 14.626743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.639283, 16.479897, 14.530741>,  <14.634089, 16.712824, 14.473140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.639283, 16.479897, 14.530741>,  <14.647942, 16.091684, 14.626743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.639283, 16.479897, 14.530741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034509, 0.240644, 0.970000,
		0.999170, 0.012715, -0.038701,
		-0.021646, 0.970530, -0.240006,
		14.632790, 16.771055, 14.458739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.066089, 16.388721, 15.181160>,  <14.647942, 16.091684, 14.626743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.066089, 16.388721, 15.181160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.853717, 16.687460, 15.020992>,  <14.726294, 16.866703, 14.924891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.853717, 16.687460, 15.020992>,  <15.066089, 16.388721, 15.181160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.853717, 16.687460, 15.020992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116234, 0.403869, 0.907403,
		0.839407, 0.528308, -0.127617,
		-0.530929, 0.746847, -0.400418,
		14.694438, 16.911514, 14.900867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.351078, 16.900349, 15.601890>,  <15.066089, 16.388721, 15.181160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.351078, 16.900349, 15.601890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.019373, 17.058523, 15.443927>,  <14.820350, 17.153429, 15.349150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.019373, 17.058523, 15.443927>,  <15.351078, 16.900349, 15.601890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.019373, 17.058523, 15.443927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161121, 0.507458, 0.846479,
		0.535128, 0.765582, -0.357103,
		-0.829264, 0.395437, -0.394906,
		14.770594, 17.177155, 15.325455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.397118, 17.659575, 15.690111>,  <15.351078, 16.900349, 15.601890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.397118, 17.659575, 15.690111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.010990, 17.567133, 15.641530>,  <14.779314, 17.511667, 15.612381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.010990, 17.567133, 15.641530>,  <15.397118, 17.659575, 15.690111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.010990, 17.567133, 15.641530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210278, 0.412517, 0.886348,
		-0.154737, 0.881147, -0.446807,
		-0.965318, -0.231104, -0.121454,
		14.721395, 17.497801, 15.605094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.021053, 18.216972, 15.848651>,  <15.397118, 17.659575, 15.690111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.021053, 18.216972, 15.848651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.776047, 17.902630, 15.882710>,  <14.629043, 17.714024, 15.903146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.776047, 17.902630, 15.882710>,  <15.021053, 18.216972, 15.848651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.776047, 17.902630, 15.882710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308417, 0.336780, 0.889639,
		-0.727807, 0.518658, -0.448655,
		-0.612517, -0.785858, 0.085148,
		14.592292, 17.666872, 15.908255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.419919, 18.600275, 16.079634>,  <15.021053, 18.216972, 15.848651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.419919, 18.600275, 16.079634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.372025, 18.212444, 16.165031>,  <14.343289, 17.979746, 16.216270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.372025, 18.212444, 16.165031>,  <14.419919, 18.600275, 16.079634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.372025, 18.212444, 16.165031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258640, 0.238080, 0.936175,
		-0.958524, 0.056874, -0.279279,
		-0.119735, -0.969579, 0.213495,
		14.336105, 17.921570, 16.229080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.748426, 18.615639, 16.385853>,  <14.419919, 18.600275, 16.079634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.748426, 18.615639, 16.385853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948259, 18.290852, 16.506603>,  <14.068159, 18.095980, 16.579054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948259, 18.290852, 16.506603>,  <13.748426, 18.615639, 16.385853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.948259, 18.290852, 16.506603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140745, 0.267770, 0.953148,
		-0.854757, -0.518662, 0.019493,
		0.499581, -0.811966, 0.301877,
		14.098134, 18.047262, 16.597166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.326384, 18.208244, 16.921995>,  <13.748426, 18.615639, 16.385853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.326384, 18.208244, 16.921995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.713301, 18.120893, 16.973614>,  <13.945451, 18.068483, 17.004585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.713301, 18.120893, 16.973614>,  <13.326384, 18.208244, 16.921995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.713301, 18.120893, 16.973614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053060, 0.323295, 0.944809,
		-0.248047, -0.920756, 0.301134,
		0.967294, -0.218379, 0.129047,
		14.003489, 18.055380, 17.012327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.323576, 17.746580, 17.418249>,  <13.326384, 18.208244, 16.921995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.323576, 17.746580, 17.418249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.694323, 17.896669, 17.422728>,  <13.916771, 17.986723, 17.425415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.694323, 17.896669, 17.422728>,  <13.323576, 17.746580, 17.418249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.694323, 17.896669, 17.422728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160052, 0.368030, 0.915935,
		0.339559, -0.850742, 0.401170,
		0.926867, 0.375222, 0.011195,
		13.972383, 18.009237, 17.426086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.034276, 17.122623, 17.549345>,  <13.323576, 17.746580, 17.418249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.034276, 17.122623, 17.549345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.822072, 16.902977, 17.807657>,  <12.694750, 16.771189, 17.962645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.822072, 16.902977, 17.807657>,  <13.034276, 17.122623, 17.549345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.822072, 16.902977, 17.807657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396654, -0.512465, -0.761607,
		0.749149, -0.660192, 0.054060,
		-0.530510, -0.549114, 0.645781,
		12.662919, 16.738243, 18.001392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.164446, 16.347609, 17.432068>,  <13.034276, 17.122623, 17.549345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.164446, 16.347609, 17.432068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.828817, 16.357771, 17.649439>,  <12.627440, 16.363869, 17.779861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.828817, 16.357771, 17.649439>,  <13.164446, 16.347609, 17.432068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.828817, 16.357771, 17.649439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360794, -0.773617, -0.520908,
		0.407171, -0.633144, 0.658285,
		-0.839070, 0.025406, 0.543429,
		12.577096, 16.365393, 17.812468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.927450, 15.672894, 17.584679>,  <13.164446, 16.347609, 17.432068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.927450, 15.672894, 17.584679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.600194, 15.885624, 17.672140>,  <12.403840, 16.013262, 17.724617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.600194, 15.885624, 17.672140>,  <12.927450, 15.672894, 17.584679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.600194, 15.885624, 17.672140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573324, -0.725275, -0.381150,
		-0.044121, -0.437193, 0.898285,
		-0.818140, 0.531825, 0.218653,
		12.354752, 16.045172, 17.737736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.414698, 15.284109, 18.021576>,  <12.927450, 15.672894, 17.584679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.414698, 15.284109, 18.021576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.178218, 15.546641, 17.834082>,  <12.036330, 15.704161, 17.721584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.178218, 15.546641, 17.834082>,  <12.414698, 15.284109, 18.021576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.178218, 15.546641, 17.834082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551989, -0.753009, -0.358170,
		-0.588040, 0.046988, 0.807466,
		-0.591199, 0.656331, -0.468736,
		12.000858, 15.743541, 17.693460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.791031, 15.135409, 18.219265>,  <12.414698, 15.284109, 18.021576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.791031, 15.135409, 18.219265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.746444, 15.344452, 17.881163>,  <11.719691, 15.469877, 17.678301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.746444, 15.344452, 17.881163>,  <11.791031, 15.135409, 18.219265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.746444, 15.344452, 17.881163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760351, -0.592515, -0.266070,
		-0.639877, 0.613033, 0.463409,
		-0.111467, 0.522605, -0.845257,
		11.713003, 15.501233, 17.627586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.081598, 15.060633, 18.123234>,  <11.791031, 15.135409, 18.219265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.081598, 15.060633, 18.123234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.231804, 15.174999, 17.770588>,  <11.321927, 15.243619, 17.559000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.231804, 15.174999, 17.770588>,  <11.081598, 15.060633, 18.123234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.231804, 15.174999, 17.770588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786867, -0.404272, -0.466268,
		-0.489725, 0.868802, 0.073169,
		0.375514, 0.285917, -0.881613,
		11.344458, 15.260775, 17.506104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.509704, 15.234444, 17.679943>,  <11.081598, 15.060633, 18.123234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.509704, 15.234444, 17.679943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.818597, 15.186405, 17.430389>,  <11.003933, 15.157582, 17.280657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.818597, 15.186405, 17.430389>,  <10.509704, 15.234444, 17.679943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.818597, 15.186405, 17.430389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537106, -0.647932, -0.540094,
		-0.339372, 0.752171, -0.564859,
		0.772233, -0.120096, -0.623886,
		11.050266, 15.150376, 17.243223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.158059, 15.310661, 17.074089>,  <10.509704, 15.234444, 17.679943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.158059, 15.310661, 17.074089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.507470, 15.122775, 17.022991>,  <10.717116, 15.010043, 16.992332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.507470, 15.122775, 17.022991>,  <10.158059, 15.310661, 17.074089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.507470, 15.122775, 17.022991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462400, -0.718695, -0.519292,
		0.152110, 0.512684, -0.844995,
		0.873527, -0.469716, -0.127745,
		10.769528, 14.981860, 16.984667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.186992, 15.207480, 16.387676>,  <10.158059, 15.310661, 17.074089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.186992, 15.207480, 16.387676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.447399, 14.927069, 16.504112>,  <10.603643, 14.758821, 16.573975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.447399, 14.927069, 16.504112>,  <10.186992, 15.207480, 16.387676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.447399, 14.927069, 16.504112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458557, -0.668819, -0.585155,
		0.604897, 0.247466, -0.756876,
		0.651019, -0.701029, 0.291090,
		10.642705, 14.716760, 16.591438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.587593, 14.933485, 15.794345>,  <10.186992, 15.207480, 16.387676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.587593, 14.933485, 15.794345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.596755, 14.651181, 16.077578>,  <10.602252, 14.481799, 16.247517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.596755, 14.651181, 16.077578>,  <10.587593, 14.933485, 15.794345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.596755, 14.651181, 16.077578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449538, -0.639896, -0.623257,
		0.892968, -0.304034, -0.331922,
		0.022904, -0.705760, 0.708081,
		10.603626, 14.439453, 16.290003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.786488, 14.309812, 15.464729>,  <10.587593, 14.933485, 15.794345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.786488, 14.309812, 15.464729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.616691, 14.194551, 15.808072>,  <10.514812, 14.125396, 16.014078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.616691, 14.194551, 15.808072>,  <10.786488, 14.309812, 15.464729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.616691, 14.194551, 15.808072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352293, -0.820743, -0.449746,
		0.834084, -0.493306, 0.246886,
		-0.424492, -0.288150, 0.858357,
		10.489343, 14.108107, 16.065578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.855413, 13.599186, 15.481548>,  <10.786488, 14.309812, 15.464729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.855413, 13.599186, 15.481548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.557059, 13.669866, 15.738432>,  <10.378047, 13.712274, 15.892562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.557059, 13.669866, 15.738432>,  <10.855413, 13.599186, 15.481548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.557059, 13.669866, 15.738432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510405, -0.771103, -0.380639,
		0.427950, -0.611700, 0.665343,
		-0.745885, 0.176700, 0.642209,
		10.333294, 13.722876, 15.931094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.721247, 12.889928, 15.811402>,  <10.855413, 13.599186, 15.481548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.721247, 12.889928, 15.811402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.390505, 13.112618, 15.843320>,  <10.192060, 13.246233, 15.862471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.390505, 13.112618, 15.843320>,  <10.721247, 12.889928, 15.811402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.390505, 13.112618, 15.843320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556730, -0.790098, -0.256507,
		-0.079760, -0.256518, 0.963243,
		-0.826855, 0.556725, 0.079793,
		10.142448, 13.279636, 15.867258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.357031, 12.514518, 16.225193>,  <10.721247, 12.889928, 15.811402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.357031, 12.514518, 16.225193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.081396, 12.755311, 16.063810>,  <9.916016, 12.899787, 15.966981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.081396, 12.755311, 16.063810>,  <10.357031, 12.514518, 16.225193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.081396, 12.755311, 16.063810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654339, -0.756127, -0.010604,
		-0.311447, 0.256689, 0.914938,
		-0.689087, 0.601983, -0.403455,
		9.874670, 12.935905, 15.942774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.022943, 11.964746, 16.685318>,  <10.357031, 12.514518, 16.225193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.022943, 11.964746, 16.685318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.134871, 11.633060, 16.491779>,  <10.202026, 11.434050, 16.375656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.134871, 11.633060, 16.491779>,  <10.022943, 11.964746, 16.685318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.134871, 11.633060, 16.491779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527114, -0.288526, 0.799314,
		-0.802405, -0.478703, 0.356356,
		0.279816, -0.829214, -0.483846,
		10.218816, 11.384296, 16.346626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.096028, 11.457850, 17.143160>,  <10.022943, 11.964746, 16.685318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.096028, 11.457850, 17.143160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.288445, 11.257157, 16.855587>,  <10.403896, 11.136742, 16.683044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.288445, 11.257157, 16.855587>,  <10.096028, 11.457850, 17.143160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.288445, 11.257157, 16.855587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424642, -0.584084, 0.691755,
		-0.766992, -0.638053, -0.067913,
		0.481043, -0.501732, -0.718931,
		10.432758, 11.106638, 16.639908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.851171, 10.698625, 17.174120>,  <10.096028, 11.457850, 17.143160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.851171, 10.698625, 17.174120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.222139, 10.802094, 17.066061>,  <10.444720, 10.864177, 17.001226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.222139, 10.802094, 17.066061>,  <9.851171, 10.698625, 17.174120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.222139, 10.802094, 17.066061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369701, -0.524538, 0.766930,
		0.056684, -0.811139, -0.582100,
		0.927420, 0.258676, -0.270146,
		10.500365, 10.879697, 16.985018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.256675, 10.054675, 17.311871>,  <9.851171, 10.698625, 17.174120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.256675, 10.054675, 17.311871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.516435, 10.355836, 17.269131>,  <10.672291, 10.536532, 17.243486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.516435, 10.355836, 17.269131>,  <10.256675, 10.054675, 17.311871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.516435, 10.355836, 17.269131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595544, -0.416159, 0.687124,
		0.472870, -0.509853, -0.718641,
		0.649400, 0.752903, -0.106851,
		10.711255, 10.581707, 17.237076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.905544, 9.775908, 17.494831>,  <10.256675, 10.054675, 17.311871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.905544, 9.775908, 17.494831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.970232, 10.170603, 17.500435>,  <11.009045, 10.407420, 17.503798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.970232, 10.170603, 17.500435>,  <10.905544, 9.775908, 17.494831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.970232, 10.170603, 17.500435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714853, -0.126923, 0.687660,
		0.680318, -0.101191, -0.725898,
		0.161718, 0.986738, 0.014011,
		11.018747, 10.466624, 17.504639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.662368, 9.889802, 17.345900>,  <10.905544, 9.775908, 17.494831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.662368, 9.889802, 17.345900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.516351, 10.194086, 17.560585>,  <11.428741, 10.376657, 17.689396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.516351, 10.194086, 17.560585>,  <11.662368, 9.889802, 17.345900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.516351, 10.194086, 17.560585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776658, -0.069063, 0.626125,
		0.513367, 0.645407, -0.565601,
		-0.365043, 0.760711, 0.536715,
		11.406838, 10.422299, 17.721600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.201069, 10.093967, 17.731409>,  <11.662368, 9.889802, 17.345900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.201069, 10.093967, 17.731409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.940921, 10.350802, 17.893763>,  <11.784832, 10.504904, 17.991175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.940921, 10.350802, 17.893763>,  <12.201069, 10.093967, 17.731409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.940921, 10.350802, 17.893763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610389, 0.123691, 0.782385,
		0.452155, 0.756588, -0.472368,
		-0.650370, 0.642087, 0.405885,
		11.745810, 10.543428, 18.015528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.585020, 10.723104, 17.750994>,  <12.201069, 10.093967, 17.731409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.585020, 10.723104, 17.750994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.290271, 10.688433, 18.019175>,  <12.113421, 10.667629, 18.180082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.290271, 10.688433, 18.019175>,  <12.585020, 10.723104, 17.750994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.290271, 10.688433, 18.019175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618931, 0.312415, 0.720640,
		-0.271924, 0.945983, -0.176561,
		-0.736873, -0.086680, 0.670451,
		12.069209, 10.662429, 18.220310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.900010, 11.215558, 18.118805>,  <12.585020, 10.723104, 17.750994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.900010, 11.215558, 18.118805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.630514, 11.016629, 18.337435>,  <12.468817, 10.897272, 18.468613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.630514, 11.016629, 18.337435>,  <12.900010, 11.215558, 18.118805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.630514, 11.016629, 18.337435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398961, 0.377791, 0.835526,
		-0.622017, 0.780990, -0.056121,
		-0.673740, -0.497321, 0.546576,
		12.428392, 10.867433, 18.501408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.450378, 11.705167, 18.513330>,  <12.900010, 11.215558, 18.118805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.450378, 11.705167, 18.513330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431518, 11.354321, 18.704514>,  <12.420201, 11.143813, 18.819223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431518, 11.354321, 18.704514>,  <12.450378, 11.705167, 18.513330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.431518, 11.354321, 18.704514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430257, 0.413995, 0.802177,
		-0.901474, 0.243470, 0.357864,
		-0.047152, -0.877115, 0.477960,
		12.417372, 11.091186, 18.847902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.249670, 11.869652, 19.158569>,  <12.450378, 11.705167, 18.513330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.249670, 11.869652, 19.158569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.358036, 11.495491, 19.249454>,  <12.423056, 11.270994, 19.303986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.358036, 11.495491, 19.249454>,  <12.249670, 11.869652, 19.158569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.358036, 11.495491, 19.249454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417542, 0.326872, 0.847829,
		-0.867331, -0.134818, 0.479125,
		0.270916, -0.935403, 0.227214,
		12.439311, 11.214870, 19.317619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.004170, 11.650105, 19.919422>,  <12.249670, 11.869652, 19.158569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.004170, 11.650105, 19.919422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.315478, 11.431923, 19.794989>,  <12.502263, 11.301013, 19.720329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.315478, 11.431923, 19.794989>,  <12.004170, 11.650105, 19.919422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.315478, 11.431923, 19.794989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477657, 0.192684, 0.857156,
		-0.407601, -0.815690, 0.410502,
		0.778271, -0.545457, -0.311082,
		12.548960, 11.268286, 19.701664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.232356, 11.173223, 20.532331>,  <12.004170, 11.650105, 19.919422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.232356, 11.173223, 20.532331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.537245, 11.194264, 20.274261>,  <12.720178, 11.206889, 20.119419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.537245, 11.194264, 20.274261>,  <12.232356, 11.173223, 20.532331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.537245, 11.194264, 20.274261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641226, 0.075042, 0.763674,
		0.088595, -0.995791, 0.023461,
		0.762220, 0.052613, -0.645176,
		12.765911, 11.210045, 20.080709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.686491, 10.900868, 20.898479>,  <12.232356, 11.173223, 20.532331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.686491, 10.900868, 20.898479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.882550, 11.096462, 20.609856>,  <13.000186, 11.213819, 20.436682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.882550, 11.096462, 20.609856>,  <12.686491, 10.900868, 20.898479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.882550, 11.096462, 20.609856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658302, 0.334917, 0.674144,
		0.571308, -0.805435, -0.157740,
		0.490149, 0.488984, -0.721560,
		13.029594, 11.243157, 20.393387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.420363, 10.752060, 21.029095>,  <12.686491, 10.900868, 20.898479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.420363, 10.752060, 21.029095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.443062, 11.078545, 20.799110>,  <13.456681, 11.274435, 20.661119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.443062, 11.078545, 20.799110>,  <13.420363, 10.752060, 21.029095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.443062, 11.078545, 20.799110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695559, 0.380810, 0.609246,
		0.716224, -0.434491, -0.546114,
		0.056746, 0.816211, -0.574960,
		13.460086, 11.323408, 20.626623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.185098, 10.929533, 21.053448>,  <13.420363, 10.752060, 21.029095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.185098, 10.929533, 21.053448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.016407, 11.283340, 20.973677>,  <13.915193, 11.495625, 20.925814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.016407, 11.283340, 20.973677>,  <14.185098, 10.929533, 21.053448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.016407, 11.283340, 20.973677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639286, 0.446032, 0.626393,
		0.643008, 0.136676, -0.753565,
		-0.421727, 0.884520, -0.199427,
		13.889889, 11.548697, 20.913849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.725287, 11.447215, 21.108013>,  <14.185098, 10.929533, 21.053448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.725287, 11.447215, 21.108013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.394477, 11.672080, 21.107481>,  <14.195991, 11.806999, 21.107162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.394477, 11.672080, 21.107481>,  <14.725287, 11.447215, 21.108013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.394477, 11.672080, 21.107481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397146, 0.585936, 0.706367,
		0.397872, 0.583655, -0.707845,
		-0.827027, 0.562161, -0.001331,
		14.146369, 11.840729, 21.107082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.906001, 12.200065, 20.866215>,  <14.725287, 11.447215, 21.108013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.906001, 12.200065, 20.866215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.580515, 12.196945, 21.098700>,  <14.385223, 12.195074, 21.238190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.580515, 12.196945, 21.098700>,  <14.906001, 12.200065, 20.866215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.580515, 12.196945, 21.098700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451801, 0.620620, 0.640863,
		-0.365709, 0.784072, -0.501485,
		-0.813716, -0.007798, 0.581211,
		14.336400, 12.194606, 21.273064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.737356, 12.860623, 21.030809>,  <14.906001, 12.200065, 20.866215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.737356, 12.860623, 21.030809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.552820, 12.673147, 21.332138>,  <14.442099, 12.560661, 21.512936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.552820, 12.673147, 21.332138>,  <14.737356, 12.860623, 21.030809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.552820, 12.673147, 21.332138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462660, 0.597404, 0.655022,
		-0.757041, 0.650720, -0.058763,
		-0.461341, -0.468691, 0.753321,
		14.414418, 12.532539, 21.558134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.752079, 13.399710, 21.528254>,  <14.737356, 12.860623, 21.030809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.752079, 13.399710, 21.528254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.638381, 13.081315, 21.742023>,  <14.570162, 12.890278, 21.870285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.638381, 13.081315, 21.742023>,  <14.752079, 13.399710, 21.528254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.638381, 13.081315, 21.742023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370050, 0.423139, 0.827053,
		-0.884459, 0.432849, 0.174279,
		-0.284245, -0.795987, 0.534425,
		14.553107, 12.842519, 21.902351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.412424, 13.699777, 22.104643>,  <14.752079, 13.399710, 21.528254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.412424, 13.699777, 22.104643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.509485, 13.327353, 22.213638>,  <14.567722, 13.103900, 22.279036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.509485, 13.327353, 22.213638>,  <14.412424, 13.699777, 22.104643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.509485, 13.327353, 22.213638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392642, 0.351106, 0.850033,
		-0.887103, -0.099274, 0.450770,
		0.242654, -0.931058, 0.272488,
		14.582281, 13.048036, 22.295385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.147703, 13.693050, 22.745977>,  <14.412424, 13.699777, 22.104643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.147703, 13.693050, 22.745977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.439735, 13.420913, 22.720320>,  <14.614955, 13.257630, 22.704926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.439735, 13.420913, 22.720320>,  <14.147703, 13.693050, 22.745977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.439735, 13.420913, 22.720320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396349, 0.345109, 0.850769,
		-0.556678, -0.646553, 0.521611,
		0.730080, -0.680344, -0.064146,
		14.658759, 13.216809, 22.701077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.340407, 13.452234, 23.457214>,  <14.147703, 13.693050, 22.745977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.340407, 13.452234, 23.457214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.652781, 13.365806, 23.222794>,  <14.840206, 13.313949, 23.082142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.652781, 13.365806, 23.222794>,  <14.340407, 13.452234, 23.457214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.652781, 13.365806, 23.222794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617785, 0.128843, 0.775719,
		-0.092102, -0.967839, 0.234104,
		0.780934, -0.216071, -0.586050,
		14.887062, 13.300984, 23.046978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.804453, 12.993695, 23.826004>,  <14.340407, 13.452234, 23.457214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.804453, 12.993695, 23.826004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.067644, 13.123205, 23.554052>,  <15.225558, 13.200911, 23.390881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.067644, 13.123205, 23.554052>,  <14.804453, 12.993695, 23.826004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.067644, 13.123205, 23.554052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603241, 0.313785, 0.733239,
		0.450740, -0.892586, 0.011149,
		0.657977, 0.323774, -0.679879,
		15.265038, 13.220337, 23.350088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407122, 12.635385, 23.905682>,  <14.804453, 12.993695, 23.826004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.407122, 12.635385, 23.905682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.472081, 12.994946, 23.742905>,  <15.511057, 13.210682, 23.645239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.472081, 12.994946, 23.742905>,  <15.407122, 12.635385, 23.905682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.472081, 12.994946, 23.742905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622437, 0.226684, 0.749124,
		0.765637, -0.374952, -0.522697,
		0.162399, 0.898902, -0.406942,
		15.520801, 13.264616, 23.620823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.072485, 12.810937, 24.069206>,  <15.407122, 12.635385, 23.905682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.072485, 12.810937, 24.069206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.953727, 13.171077, 23.941946>,  <15.882471, 13.387161, 23.865589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.953727, 13.171077, 23.941946>,  <16.072485, 12.810937, 24.069206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.953727, 13.171077, 23.941946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496714, 0.430165, 0.753813,
		0.815553, 0.065775, -0.574932,
		-0.296898, 0.900351, -0.318151,
		15.864657, 13.441182, 23.846500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.694376, 13.205495, 24.132149>,  <16.072485, 12.810937, 24.069206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.694376, 13.205495, 24.132149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.382614, 13.456083, 24.128902>,  <16.195557, 13.606437, 24.126955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.382614, 13.456083, 24.128902>,  <16.694376, 13.205495, 24.132149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.382614, 13.456083, 24.128902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414455, 0.525259, 0.743189,
		0.469850, 0.575880, -0.669032,
		-0.779402, 0.626471, -0.008117,
		16.148794, 13.644025, 24.126467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.972816, 13.871094, 24.191555>,  <16.694376, 13.205495, 24.132149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.972816, 13.871094, 24.191555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.595770, 13.888709, 24.323940>,  <16.369543, 13.899279, 24.403372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.595770, 13.888709, 24.323940>,  <16.972816, 13.871094, 24.191555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.595770, 13.888709, 24.323940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296890, 0.564056, 0.770518,
		-0.152749, 0.824562, -0.544762,
		-0.942616, 0.044038, 0.330963,
		16.312984, 13.901920, 24.423229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
