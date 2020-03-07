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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.567539, 52.767868, 50.224274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307163, 52.924160, 49.963932>,  <36.150936, 53.017933, 49.807728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307163, 52.924160, 49.963932>,  <36.567539, 52.767868, 50.224274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307163, 52.924160, 49.963932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380383, 0.574086, 0.725075,
		0.656951, 0.719555, -0.225071,
		-0.650941, 0.390725, -0.650853,
		36.111881, 53.041378, 49.768677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237434, 52.754257, 50.564560>,  <36.567539, 52.767868, 50.224274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237434, 52.754257, 50.564560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214520, 52.859085, 50.179222>,  <37.200771, 52.921982, 49.948017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214520, 52.859085, 50.179222>,  <37.237434, 52.754257, 50.564560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214520, 52.859085, 50.179222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362891, -0.893464, -0.264635,
		-0.930069, -0.364752, -0.043915,
		-0.057290, 0.262065, -0.963348,
		37.197334, 52.937706, 49.890217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940731, 52.962040, 50.770462>,  <37.237434, 52.754257, 50.564560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940731, 52.962040, 50.770462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862991, 53.298637, 50.568821>,  <37.816349, 53.500595, 50.447838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862991, 53.298637, 50.568821>,  <37.940731, 52.962040, 50.770462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862991, 53.298637, 50.568821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662678, 0.491532, 0.565026,
		0.723247, -0.224243, -0.653168,
		-0.194350, 0.841493, -0.504100,
		37.804688, 53.551086, 50.417591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565239, 53.311863, 50.692047>,  <37.940731, 52.962040, 50.770462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565239, 53.311863, 50.692047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261951, 53.572304, 50.678425>,  <38.079979, 53.728569, 50.670250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261951, 53.572304, 50.678425>,  <38.565239, 53.311863, 50.692047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261951, 53.572304, 50.678425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563312, 0.680498, 0.468616,
		0.328296, 0.336129, -0.882745,
		-0.758222, 0.651106, -0.034059,
		38.034485, 53.767635, 50.668205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843498, 54.053932, 50.463760>,  <38.565239, 53.311863, 50.692047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843498, 54.053932, 50.463760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517948, 54.069847, 50.695633>,  <38.322620, 54.079395, 50.834755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517948, 54.069847, 50.695633>,  <38.843498, 54.053932, 50.463760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517948, 54.069847, 50.695633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365586, 0.810493, 0.457655,
		-0.451620, 0.584396, -0.674181,
		-0.813871, 0.039785, 0.579682,
		38.273788, 54.081783, 50.869537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545959, 54.733917, 50.395126>,  <38.843498, 54.053932, 50.463760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545959, 54.733917, 50.395126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484180, 54.562477, 50.751205>,  <38.447113, 54.459614, 50.964851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484180, 54.562477, 50.751205>,  <38.545959, 54.733917, 50.395126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484180, 54.562477, 50.751205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561581, 0.703219, 0.436015,
		-0.812879, 0.567259, 0.132083,
		-0.154450, -0.428603, 0.890194,
		38.437847, 54.433895, 51.018265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371765, 54.893040, 50.410885>,  <38.545959, 54.733917, 50.395126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371765, 54.893040, 50.410885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373096, 54.502815, 50.498768>,  <39.373898, 54.268681, 50.551498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373096, 54.502815, 50.498768>,  <39.371765, 54.893040, 50.410885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373096, 54.502815, 50.498768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483249, -0.190782, -0.854443,
		0.875477, 0.109021, 0.470803,
		0.003332, -0.975560, 0.219710,
		39.374096, 54.210148, 50.564682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082546, 55.164753, 50.144012>,  <39.371765, 54.893040, 50.410885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082546, 55.164753, 50.144012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851334, 54.866810, 50.010708>,  <39.712605, 54.688042, 49.930725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851334, 54.866810, 50.010708>,  <40.082546, 55.164753, 50.144012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851334, 54.866810, 50.010708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048671, 0.376203, -0.925258,
		0.814562, -0.551048, -0.181204,
		-0.578031, -0.744861, -0.333260,
		39.677925, 54.643353, 49.910728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743176, 55.789387, 50.096706>,  <40.082546, 55.164753, 50.144012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743176, 55.789387, 50.096706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549664, 55.963882, 50.400192>,  <40.433556, 56.068581, 50.582283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549664, 55.963882, 50.400192>,  <40.743176, 55.789387, 50.096706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549664, 55.963882, 50.400192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866923, 0.119999, 0.483782,
		0.119999, 0.891793, -0.436240,
		-0.483782, 0.436240, 0.758716,
		40.404530, 56.094753, 50.627808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087955, 56.378056, 50.343987>,  <40.743176, 55.789387, 50.096706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087955, 56.378056, 50.343987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911819, 56.225224, 50.668976>,  <40.806137, 56.133526, 50.863972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911819, 56.225224, 50.668976>,  <41.087955, 56.378056, 50.343987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911819, 56.225224, 50.668976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886351, -0.040735, 0.461218,
		-0.143125, 0.923232, 0.356591,
		-0.440338, -0.382077, 0.812478,
		40.779716, 56.110600, 50.912720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584320, 56.642868, 50.876591>,  <41.087955, 56.378056, 50.343987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584320, 56.642868, 50.876591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383930, 56.319023, 50.998932>,  <41.263695, 56.124718, 51.072338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383930, 56.319023, 50.998932>,  <41.584320, 56.642868, 50.876591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383930, 56.319023, 50.998932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855051, -0.408368, 0.319568,
		-0.133824, 0.421620, 0.896843,
		-0.500979, -0.809612, 0.305857,
		41.233635, 56.076138, 51.090691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552662, 56.467194, 51.606251>,  <41.584320, 56.642868, 50.876591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552662, 56.467194, 51.606251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553024, 56.156776, 51.353981>,  <41.553242, 55.970528, 51.202618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553024, 56.156776, 51.353981>,  <41.552662, 56.467194, 51.606251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553024, 56.156776, 51.353981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844322, -0.337344, 0.416316,
		-0.535835, -0.532874, 0.654924,
		0.000909, -0.776044, -0.630679,
		41.553295, 55.923962, 51.164776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530430, 55.910648, 52.018642>,  <41.552662, 56.467194, 51.606251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530430, 55.910648, 52.018642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738998, 55.820351, 51.689484>,  <41.864140, 55.766174, 51.491989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738998, 55.820351, 51.689484>,  <41.530430, 55.910648, 52.018642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738998, 55.820351, 51.689484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597416, -0.592003, 0.540950,
		-0.609276, -0.773674, -0.173815,
		0.521417, -0.225748, -0.822899,
		41.895424, 55.752628, 51.442616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707603, 55.182384, 51.967972>,  <41.530430, 55.910648, 52.018642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707603, 55.182384, 51.967972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970062, 55.355560, 51.720734>,  <42.127537, 55.459465, 51.572392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970062, 55.355560, 51.720734>,  <41.707603, 55.182384, 51.967972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970062, 55.355560, 51.720734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701592, -0.651627, 0.288357,
		-0.277928, -0.622855, -0.731306,
		0.656144, 0.432936, -0.618095,
		42.166904, 55.485439, 51.535305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989235, 54.651527, 51.646965>,  <41.707603, 55.182384, 51.967972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989235, 54.651527, 51.646965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236664, 54.965664, 51.637177>,  <42.385120, 55.154148, 51.631306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236664, 54.965664, 51.637177>,  <41.989235, 54.651527, 51.646965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236664, 54.965664, 51.637177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717712, -0.552083, 0.424374,
		0.319772, -0.280068, -0.905156,
		0.618575, 0.785345, -0.024468,
		42.422237, 55.201267, 51.629837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673500, 54.404007, 51.404575>,  <41.989235, 54.651527, 51.646965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673500, 54.404007, 51.404575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734585, 54.727394, 51.631927>,  <42.771236, 54.921425, 51.768337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734585, 54.727394, 51.631927>,  <42.673500, 54.404007, 51.404575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734585, 54.727394, 51.631927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766488, -0.459938, 0.448278,
		0.623839, 0.367199, -0.689920,
		0.152713, 0.808469, 0.568381,
		42.780399, 54.969936, 51.802441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348713, 54.449314, 51.366974>,  <42.673500, 54.404007, 51.404575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348713, 54.449314, 51.366974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238281, 54.647713, 51.696281>,  <43.172024, 54.766750, 51.893864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238281, 54.647713, 51.696281>,  <43.348713, 54.449314, 51.366974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238281, 54.647713, 51.696281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782238, -0.381750, 0.492311,
		0.558467, 0.779906, -0.282597,
		-0.276075, 0.495998, 0.823267,
		43.155460, 54.796513, 51.943260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849068, 54.918636, 51.547649>,  <43.348713, 54.449314, 51.366974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849068, 54.918636, 51.547649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639820, 54.831360, 51.877190>,  <43.514271, 54.778996, 52.074913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639820, 54.831360, 51.877190>,  <43.849068, 54.918636, 51.547649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639820, 54.831360, 51.877190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852245, -0.128724, 0.507058,
		-0.004587, 0.967379, 0.253291,
		-0.523122, -0.218192, 0.823854,
		43.482883, 54.765903, 52.124348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988140, 55.492767, 52.066101>,  <43.849068, 54.918636, 51.547649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988140, 55.492767, 52.066101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914890, 55.120834, 52.193771>,  <43.870941, 54.897675, 52.270374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914890, 55.120834, 52.193771>,  <43.988140, 55.492767, 52.066101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914890, 55.120834, 52.193771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874633, -0.005856, 0.484750,
		-0.448867, 0.367933, 0.814336,
		-0.183124, -0.929834, 0.319178,
		43.859955, 54.841885, 52.289524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938923, 55.370335, 52.782375>,  <43.988140, 55.492767, 52.066101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938923, 55.370335, 52.782375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.074268, 55.038780, 52.604179>,  <44.155476, 54.839848, 52.497261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.074268, 55.038780, 52.604179>,  <43.938923, 55.370335, 52.782375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.074268, 55.038780, 52.604179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853272, 0.070633, 0.516660,
		-0.396787, -0.554939, 0.731165,
		0.338360, -0.828887, -0.445488,
		44.175777, 54.790115, 52.470531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331314, 55.106796, 53.329243>,  <43.938923, 55.370335, 52.782375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331314, 55.106796, 53.329243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.454548, 54.939465, 52.987465>,  <44.528488, 54.839066, 52.782398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.454548, 54.939465, 52.987465>,  <44.331314, 55.106796, 53.329243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454548, 54.939465, 52.987465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862786, -0.255567, 0.436218,
		-0.400853, -0.871598, 0.282194,
		0.308088, -0.418333, -0.854447,
		44.546974, 54.813965, 52.731133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626888, 54.499752, 53.537811>,  <44.331314, 55.106796, 53.329243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626888, 54.499752, 53.537811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785202, 54.609474, 53.187244>,  <44.880192, 54.675308, 52.976902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785202, 54.609474, 53.187244>,  <44.626888, 54.499752, 53.537811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785202, 54.609474, 53.187244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918328, -0.113053, 0.379331,
		0.004970, -0.954975, -0.296645,
		0.395788, 0.274302, -0.876419,
		44.903938, 54.691765, 52.924320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145535, 53.939175, 53.193134>,  <44.626888, 54.499752, 53.537811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145535, 53.939175, 53.193134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237228, 54.327530, 53.220905>,  <45.292244, 54.560543, 53.237568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237228, 54.327530, 53.220905>,  <45.145535, 53.939175, 53.193134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237228, 54.327530, 53.220905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810288, -0.229866, 0.539068,
		0.539336, -0.067317, -0.839396,
		0.229237, 0.970891, 0.069429,
		45.306000, 54.618797, 53.241734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888062, 54.088963, 53.043407>,  <45.145535, 53.939175, 53.193134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888062, 54.088963, 53.043407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760311, 54.350815, 53.317474>,  <45.683662, 54.507927, 53.481915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760311, 54.350815, 53.317474>,  <45.888062, 54.088963, 53.043407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.760311, 54.350815, 53.317474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796333, -0.206524, 0.568508,
		0.513667, 0.727192, -0.455345,
		-0.319375, 0.654630, 0.685171,
		45.664497, 54.547203, 53.523026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.411201, 54.531082, 53.237576>,  <45.888062, 54.088963, 53.043407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.411201, 54.531082, 53.237576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.149319, 54.467941, 53.533264>,  <45.992191, 54.430058, 53.710678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.149319, 54.467941, 53.533264>,  <46.411201, 54.531082, 53.237576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.149319, 54.467941, 53.533264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728437, -0.392899, 0.561258,
		0.201844, 0.905933, 0.372216,
		-0.654705, -0.157850, 0.739219,
		45.952908, 54.420586, 53.755032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.737770, 54.798267, 53.806206>,  <46.411201, 54.531082, 53.237576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.737770, 54.798267, 53.806206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.473064, 54.518906, 53.915237>,  <46.314243, 54.351288, 53.980656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.473064, 54.518906, 53.915237>,  <46.737770, 54.798267, 53.806206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.473064, 54.518906, 53.915237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696192, -0.437547, 0.569095,
		-0.278192, 0.566375, 0.775776,
		-0.661760, -0.698407, 0.272583,
		46.274536, 54.309383, 53.997013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.874653, 54.886250, 54.610382>,  <46.737770, 54.798267, 53.806206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.874653, 54.886250, 54.610382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683048, 54.539719, 54.553780>,  <46.568085, 54.331802, 54.519817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683048, 54.539719, 54.553780>,  <46.874653, 54.886250, 54.610382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.683048, 54.539719, 54.553780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762657, -0.490555, 0.421558,
		-0.434625, 0.094009, 0.895692,
		-0.479016, -0.866325, -0.141511,
		46.539345, 54.279819, 54.511326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.704346, 54.671059, 55.312679>,  <46.874653, 54.886250, 54.610382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.704346, 54.671059, 55.312679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789986, 54.404400, 55.027092>,  <46.841370, 54.244404, 54.855740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789986, 54.404400, 55.027092>,  <46.704346, 54.671059, 55.312679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.789986, 54.404400, 55.027092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779252, -0.324166, 0.536361,
		-0.589005, -0.671193, 0.450080,
		0.214101, -0.666645, -0.713964,
		46.854218, 54.204407, 54.812904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.623184, 53.859486, 55.531708>,  <46.704346, 54.671059, 55.312679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.623184, 53.859486, 55.531708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.927750, 53.987991, 55.306480>,  <47.110489, 54.065094, 55.171345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.927750, 53.987991, 55.306480>,  <46.623184, 53.859486, 55.531708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.927750, 53.987991, 55.306480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647044, -0.430023, 0.629614,
		-0.039856, -0.843722, -0.535298,
		0.761410, 0.321268, -0.563065,
		47.156174, 54.084370, 55.137562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.072395, 53.324478, 55.322277>,  <46.623184, 53.859486, 55.531708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.072395, 53.324478, 55.322277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280815, 53.665840, 55.328110>,  <47.405865, 53.870659, 55.331612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280815, 53.665840, 55.328110>,  <47.072395, 53.324478, 55.322277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.280815, 53.665840, 55.328110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758051, -0.470546, 0.451603,
		0.392263, -0.224249, -0.892100,
		0.521046, 0.853404, 0.014586,
		47.437130, 53.921860, 55.332485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.775265, 53.277969, 54.996548>,  <47.072395, 53.324478, 55.322277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.775265, 53.277969, 54.996548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782623, 53.584801, 55.253067>,  <47.787037, 53.768898, 55.406979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782623, 53.584801, 55.253067>,  <47.775265, 53.277969, 54.996548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.782623, 53.584801, 55.253067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915894, -0.270171, 0.296892,
		0.400998, 0.581897, -0.707528,
		0.018393, 0.767074, 0.641295,
		47.788143, 53.814922, 55.445454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.248009, 53.821438, 54.743961>,  <47.775265, 53.277969, 54.996548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.248009, 53.821438, 54.743961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.203884, 53.760925, 55.136887>,  <48.177410, 53.724617, 55.372643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.203884, 53.760925, 55.136887>,  <48.248009, 53.821438, 54.743961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.203884, 53.760925, 55.136887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976839, -0.198831, 0.079071,
		0.183352, 0.968287, 0.169710,
		-0.110307, -0.151282, 0.982317,
		48.170792, 53.715542, 55.431583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.790928, 54.180790, 55.167294>,  <48.248009, 53.821438, 54.743961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.790928, 54.180790, 55.167294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.684917, 53.862392, 55.384972>,  <48.621311, 53.671352, 55.515579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.684917, 53.862392, 55.384972>,  <48.790928, 54.180790, 55.167294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.684917, 53.862392, 55.384972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953007, -0.130331, 0.273482,
		-0.146764, 0.591106, 0.793129,
		-0.265026, -0.795995, 0.544200,
		48.605408, 53.623592, 55.548233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.279522, 54.098625, 55.758766>,  <48.790928, 54.180790, 55.167294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.279522, 54.098625, 55.758766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.089371, 53.749058, 55.718201>,  <48.975281, 53.539318, 55.693863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.089371, 53.749058, 55.718201>,  <49.279522, 54.098625, 55.758766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.089371, 53.749058, 55.718201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863047, -0.485601, 0.139073,
		-0.170785, -0.021413, 0.985076,
		-0.475376, -0.873918, -0.101414,
		48.946758, 53.486881, 55.687775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.851368, 54.128433, 55.256187>,  <49.279522, 54.098625, 55.758766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.851368, 54.128433, 55.256187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.881214, 54.163727, 54.858868>,  <49.899120, 54.184902, 54.620476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.881214, 54.163727, 54.858868>,  <49.851368, 54.128433, 55.256187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.881214, 54.163727, 54.858868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393698, -0.917771, -0.051950,
		-0.916206, -0.387185, -0.103216,
		0.074614, 0.088233, -0.993301,
		49.903599, 54.190197, 54.560879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.562050, 54.483906, 55.164120>,  <49.851368, 54.128433, 55.256187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.562050, 54.483906, 55.164120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.868500, 54.532356, 55.416588>,  <51.052368, 54.561428, 55.568069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.868500, 54.532356, 55.416588>,  <50.562050, 54.483906, 55.164120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.868500, 54.532356, 55.416588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527292, -0.679946, -0.509546,
		0.367442, 0.723188, -0.584795,
		0.766126, 0.121129, 0.631172,
		51.098339, 54.568695, 55.605938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.224033, 54.737701, 54.840687>,  <50.562050, 54.483906, 55.164120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.224033, 54.737701, 54.840687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.257095, 54.485199, 55.149147>,  <51.276932, 54.333698, 55.334225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.257095, 54.485199, 55.149147>,  <51.224033, 54.737701, 54.840687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.257095, 54.485199, 55.149147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540659, -0.621625, -0.566807,
		0.837172, 0.463781, 0.289916,
		0.082655, -0.631260, 0.771154,
		51.281891, 54.295822, 55.380493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.939667, 54.526718, 54.900230>,  <51.224033, 54.737701, 54.840687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.939667, 54.526718, 54.900230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.708382, 54.249043, 55.071701>,  <51.569611, 54.082436, 55.174583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.708382, 54.249043, 55.071701>,  <51.939667, 54.526718, 54.900230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.708382, 54.249043, 55.071701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558807, -0.719787, -0.411876,
		0.594478, 0.001396, 0.804111,
		-0.578213, -0.694194, 0.428678,
		51.534916, 54.040783, 55.200306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.368511, 55.077858, 55.293774>,  <51.939667, 54.526718, 54.900230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.368511, 55.077858, 55.293774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.500732, 54.779922, 55.525620>,  <52.580063, 54.601162, 55.664726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.500732, 54.779922, 55.525620>,  <52.368511, 55.077858, 55.293774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.500732, 54.779922, 55.525620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931831, 0.355012, -0.075208,
		-0.149754, 0.564966, 0.811410,
		0.330551, -0.744835, 0.579618,
		52.599899, 54.556473, 55.699505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.877960, 55.308838, 55.882893>,  <52.368511, 55.077858, 55.293774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.877960, 55.308838, 55.882893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.945457, 54.945396, 55.730072>,  <52.985954, 54.727333, 55.638382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.945457, 54.945396, 55.730072>,  <52.877960, 55.308838, 55.882893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.945457, 54.945396, 55.730072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958080, 0.242250, -0.152962,
		0.231534, -0.340223, 0.911395,
		0.168745, -0.908605, -0.382050,
		52.996082, 54.672813, 55.615456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.449287, 55.023495, 56.289783>,  <52.877960, 55.308838, 55.882893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.449287, 55.023495, 56.289783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.463547, 54.882648, 55.915672>,  <53.472103, 54.798141, 55.691204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.463547, 54.882648, 55.915672>,  <53.449287, 55.023495, 56.289783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.463547, 54.882648, 55.915672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984503, 0.173175, -0.027668,
		0.171709, -0.919798, 0.352829,
		0.035652, -0.352112, -0.935279,
		53.474243, 54.777016, 55.635090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.106823, 55.148167, 56.297394>,  <53.449287, 55.023495, 56.289783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.106823, 55.148167, 56.297394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.023605, 55.002148, 55.934418>,  <53.973675, 54.914536, 55.716633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.023605, 55.002148, 55.934418>,  <54.106823, 55.148167, 56.297394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.023605, 55.002148, 55.934418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965690, 0.070769, -0.249871,
		0.155434, -0.928295, 0.337800,
		-0.208048, -0.365049, -0.907445,
		53.961189, 54.892632, 55.662186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.618248, 54.646591, 56.217934>,  <54.106823, 55.148167, 56.297394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.618248, 54.646591, 56.217934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.492233, 54.783470, 55.863838>,  <54.416622, 54.865597, 55.651382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.492233, 54.783470, 55.863838>,  <54.618248, 54.646591, 56.217934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.492233, 54.783470, 55.863838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930448, -0.072544, -0.359172,
		-0.187127, -0.936823, -0.295544,
		-0.315041, 0.342199, -0.885239,
		54.397720, 54.886131, 55.598267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.775883, 54.342739, 55.554768>,  <54.618248, 54.646591, 56.217934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.775883, 54.342739, 55.554768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.744453, 54.693565, 55.365204>,  <54.725597, 54.904060, 55.251465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.744453, 54.693565, 55.365204>,  <54.775883, 54.342739, 55.554768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.744453, 54.693565, 55.365204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917407, -0.122415, -0.378653,
		-0.390116, -0.464515, -0.795006,
		-0.078569, 0.877063, -0.473906,
		54.720882, 54.956684, 55.223034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.690216, 54.344330, 54.781521>,  <54.775883, 54.342739, 55.554768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.690216, 54.344330, 54.781521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.874535, 54.631153, 54.990707>,  <54.985126, 54.803246, 55.116219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.874535, 54.631153, 54.990707>,  <54.690216, 54.344330, 54.781521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.874535, 54.631153, 54.990707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887480, -0.367882, -0.277564,
		-0.006638, 0.592025, -0.805892,
		0.460799, 0.717056, 0.522968,
		55.012775, 54.846272, 55.147598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.238472, 54.716972, 54.388657>,  <54.690216, 54.344330, 54.781521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.238472, 54.716972, 54.388657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.327080, 54.684227, 54.777344>,  <55.380245, 54.664581, 55.010555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.327080, 54.684227, 54.777344>,  <55.238472, 54.716972, 54.388657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.327080, 54.684227, 54.777344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808609, -0.541546, -0.229954,
		0.545053, 0.836676, -0.053768,
		0.221515, -0.081860, 0.971715,
		55.393536, 54.659668, 55.068859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.958893, 54.858326, 54.471161>,  <55.238472, 54.716972, 54.388657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.958893, 54.858326, 54.471161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.845688, 54.630539, 54.779865>,  <55.777767, 54.493866, 54.965088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.845688, 54.630539, 54.779865>,  <55.958893, 54.858326, 54.471161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.845688, 54.630539, 54.779865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834280, -0.543125, -0.094826,
		0.473162, 0.617025, 0.628807,
		-0.283011, -0.569469, 0.771758,
		55.760784, 54.459698, 55.011391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.472527, 55.024158, 55.035946>,  <55.958893, 54.858326, 54.471161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.472527, 55.024158, 55.035946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.294800, 54.666348, 55.055534>,  <56.188164, 54.451660, 55.067287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.294800, 54.666348, 55.055534>,  <56.472527, 55.024158, 55.035946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.294800, 54.666348, 55.055534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895779, -0.444387, 0.010047,
		0.012773, 0.048328, 0.998750,
		-0.444317, -0.894531, 0.048967,
		56.161507, 54.397987, 55.070225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.755642, 54.508652, 54.578522>,  <56.472527, 55.024158, 55.035946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.755642, 54.508652, 54.578522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.130356, 54.369198, 54.566605>,  <57.355183, 54.285526, 54.559452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.130356, 54.369198, 54.566605>,  <56.755642, 54.508652, 54.578522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.130356, 54.369198, 54.566605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158023, 0.497514, -0.852941,
		0.312187, 0.794315, 0.521156,
		0.936786, -0.348632, -0.029797,
		57.411392, 54.264606, 54.557667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.320248, 54.667835, 53.888351>,  <56.755642, 54.508652, 54.578522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.320248, 54.667835, 53.888351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.116341, 54.471329, 53.605850>,  <55.993996, 54.353424, 53.436348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.116341, 54.471329, 53.605850>,  <56.320248, 54.667835, 53.888351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.116341, 54.471329, 53.605850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800324, 0.030380, -0.598797,
		0.315624, -0.870480, 0.377684,
		-0.509767, -0.491265, -0.706255,
		55.963409, 54.323948, 53.393974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.644260, 54.049282, 53.848270>,  <56.320248, 54.667835, 53.888351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.644260, 54.049282, 53.848270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.478683, 54.199871, 53.516747>,  <56.379337, 54.290222, 53.317833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.478683, 54.199871, 53.516747>,  <56.644260, 54.049282, 53.848270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.478683, 54.199871, 53.516747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902838, 0.053406, -0.426652,
		-0.116359, -0.924888, -0.361999,
		-0.413939, 0.376471, -0.828809,
		56.354504, 54.312813, 53.268105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.753086, 53.528305, 53.273537>,  <56.644260, 54.049282, 53.848270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.753086, 53.528305, 53.273537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.752213, 53.915764, 53.174156>,  <56.751690, 54.148239, 53.114529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.752213, 53.915764, 53.174156>,  <56.753086, 53.528305, 53.273537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.752213, 53.915764, 53.174156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923199, -0.093531, -0.372768,
		-0.384317, -0.230179, -0.894046,
		-0.002183, 0.968643, -0.248446,
		56.751556, 54.206356, 53.099621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.874866, 53.692432, 52.569290>,  <56.753086, 53.528305, 53.273537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.874866, 53.692432, 52.569290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.993675, 53.980110, 52.820541>,  <57.064960, 54.152718, 52.971291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.993675, 53.980110, 52.820541>,  <56.874866, 53.692432, 52.569290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.993675, 53.980110, 52.820541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926715, -0.058553, -0.371174,
		-0.230166, 0.692342, -0.683876,
		0.297023, 0.719190, 0.628127,
		57.082783, 54.195866, 53.008980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.373909, 54.217735, 52.134140>,  <56.874866, 53.692432, 52.569290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.373909, 54.217735, 52.134140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.494736, 54.212143, 52.515411>,  <57.567234, 54.208786, 52.744175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.494736, 54.212143, 52.515411>,  <57.373909, 54.217735, 52.134140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.494736, 54.212143, 52.515411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952031, -0.046860, -0.302393,
		0.048893, 0.998804, -0.000845,
		0.302071, -0.013980, 0.953183,
		57.585358, 54.207951, 52.801365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.968140, 54.678909, 52.263531>,  <57.373909, 54.217735, 52.134140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.968140, 54.678909, 52.263531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.940590, 54.364948, 52.509842>,  <57.924061, 54.176571, 52.657631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.940590, 54.364948, 52.509842>,  <57.968140, 54.678909, 52.263531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.940590, 54.364948, 52.509842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955107, -0.230159, -0.186539,
		0.288142, 0.575288, 0.765518,
		-0.068878, -0.784901, 0.615781,
		57.919926, 54.129478, 52.694576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.723553, 55.266399, 52.704300>,  <57.968140, 54.678909, 52.263531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.723553, 55.266399, 52.704300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.726265, 54.986050, 52.989601>,  <57.727890, 54.817841, 53.160782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.726265, 54.986050, 52.989601>,  <57.723553, 55.266399, 52.704300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.726265, 54.986050, 52.989601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789251, 0.441730, 0.426565,
		-0.614034, 0.560045, 0.556159,
		0.006777, -0.700874, 0.713253,
		57.728298, 54.775787, 53.203575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.761013, 55.528610, 53.426254>,  <57.723553, 55.266399, 52.704300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.761013, 55.528610, 53.426254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.900948, 55.154213, 53.441887>,  <57.984909, 54.929573, 53.451267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.900948, 55.154213, 53.441887>,  <57.761013, 55.528610, 53.426254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.900948, 55.154213, 53.441887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751365, 0.305254, 0.585039,
		-0.559524, -0.175301, 0.810063,
		0.349833, -0.935996, 0.039082,
		58.005898, 54.873413, 53.453613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.205627, 55.443703, 54.013718>,  <57.761013, 55.528610, 53.426254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.205627, 55.443703, 54.013718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.306053, 55.084232, 53.869858>,  <58.366310, 54.868549, 53.783543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.306053, 55.084232, 53.869858>,  <58.205627, 55.443703, 54.013718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.306053, 55.084232, 53.869858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850773, 0.027655, 0.524805,
		-0.461682, -0.437743, 0.771512,
		0.251066, -0.898675, -0.359653,
		58.381374, 54.814629, 53.761963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.359821, 54.901844, 54.609669>,  <58.205627, 55.443703, 54.013718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.359821, 54.901844, 54.609669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.575439, 54.817898, 54.283382>,  <58.704811, 54.767529, 54.087612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.575439, 54.817898, 54.283382>,  <58.359821, 54.901844, 54.609669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.575439, 54.817898, 54.283382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815728, -0.111160, 0.567654,
		-0.209805, -0.971391, 0.111272,
		0.539045, -0.209864, -0.815713,
		58.737152, 54.754940, 54.038670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.777954, 54.324619, 54.645775>,  <58.359821, 54.901844, 54.609669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.777954, 54.324619, 54.645775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.967697, 54.521797, 54.354023>,  <59.081543, 54.640106, 54.178974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.967697, 54.521797, 54.354023>,  <58.777954, 54.324619, 54.645775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.967697, 54.521797, 54.354023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878200, -0.207343, 0.431015,
		0.061237, -0.844992, -0.531261,
		0.474357, 0.492948, -0.729375,
		59.110004, 54.669682, 54.135212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.495110, 54.112389, 54.740932>,  <58.777954, 54.324619, 54.645775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.495110, 54.112389, 54.740932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.562531, 54.412270, 54.484955>,  <59.602982, 54.592197, 54.331367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.562531, 54.412270, 54.484955>,  <59.495110, 54.112389, 54.740932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.562531, 54.412270, 54.484955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980777, -0.062795, 0.184752,
		0.098324, -0.658786, -0.745877,
		0.168549, 0.749705, -0.639948,
		59.613094, 54.637180, 54.292969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.064789, 53.943665, 54.256523>,  <59.495110, 54.112389, 54.740932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.064789, 53.943665, 54.256523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.027153, 54.338318, 54.309753>,  <60.004570, 54.575108, 54.341690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.027153, 54.338318, 54.309753>,  <60.064789, 53.943665, 54.256523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.027153, 54.338318, 54.309753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885670, 0.021905, 0.463797,
		0.454681, 0.161501, -0.875890,
		-0.094091, 0.986629, 0.133077,
		59.998924, 54.634308, 54.349678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.677753, 54.284149, 53.997856>,  <60.064789, 53.943665, 54.256523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.677753, 54.284149, 53.997856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.496544, 54.504013, 54.278610>,  <60.387817, 54.635933, 54.447060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.496544, 54.504013, 54.278610>,  <60.677753, 54.284149, 53.997856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.496544, 54.504013, 54.278610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870139, 0.101326, 0.482278,
		0.193971, 0.829218, -0.524187,
		-0.453027, 0.549663, 0.701880,
		60.360634, 54.668911, 54.489174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.832817, 53.587410, 53.618565>,  <60.677753, 54.284149, 53.997856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.832817, 53.587410, 53.618565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.089798, 53.288750, 53.549545>,  <61.243988, 53.109554, 53.508133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.089798, 53.288750, 53.549545>,  <60.832817, 53.587410, 53.618565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.089798, 53.288750, 53.549545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435029, -0.169979, -0.884226,
		0.630876, 0.643137, -0.434016,
		0.642453, -0.746647, -0.172547,
		61.282536, 53.064754, 53.497780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.577198, 53.554077, 53.863190>,  <60.832817, 53.587410, 53.618565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.577198, 53.554077, 53.863190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.611992, 53.871017, 54.104721>,  <61.632870, 54.061184, 54.249641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.611992, 53.871017, 54.104721>,  <61.577198, 53.554077, 53.863190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.611992, 53.871017, 54.104721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100107, -0.610011, 0.786044,
		0.991167, -0.007928, -0.132383,
		0.086987, 0.792353, 0.603830,
		61.638088, 54.108723, 54.285870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.236137, 53.489296, 54.339172>,  <61.577198, 53.554077, 53.863190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.236137, 53.489296, 54.339172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.928970, 53.704075, 54.478882>,  <61.744671, 53.832943, 54.562706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.928970, 53.704075, 54.478882>,  <62.236137, 53.489296, 54.339172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.928970, 53.704075, 54.478882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018660, -0.526289, 0.850101,
		0.640279, 0.659324, 0.394126,
		-0.767915, 0.536948, 0.349275,
		61.698597, 53.865158, 54.583664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.019436, 53.525429, 54.240879>,  <62.236137, 53.489296, 54.339172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.019436, 53.525429, 54.240879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.333939, 53.308384, 54.122643>,  <63.522640, 53.178158, 54.051701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.333939, 53.308384, 54.122643>,  <63.019436, 53.525429, 54.240879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.333939, 53.308384, 54.122643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563143, 0.432396, 0.704205,
		-0.254296, -0.720146, 0.645541,
		0.786259, -0.542608, -0.295588,
		63.569817, 53.145603, 54.033966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.230377, 52.984665, 54.733467>,  <63.019436, 53.525429, 54.240879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.230377, 52.984665, 54.733467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.520592, 53.152218, 54.515057>,  <63.694721, 53.252750, 54.384010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.520592, 53.152218, 54.515057>,  <63.230377, 52.984665, 54.733467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.520592, 53.152218, 54.515057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402358, 0.385490, 0.830364,
		0.558310, -0.822153, 0.111146,
		0.725533, 0.418880, -0.546024,
		63.738251, 53.277882, 54.351250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.966919, 52.726238, 54.852634>,  <63.230377, 52.984665, 54.733467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.966919, 52.726238, 54.852634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.949501, 53.114021, 54.756092>,  <63.939049, 53.346691, 54.698166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.949501, 53.114021, 54.756092>,  <63.966919, 52.726238, 54.852634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.949501, 53.114021, 54.756092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290458, 0.243440, 0.925404,
		0.955896, -0.029805, -0.292188,
		-0.043548, 0.969458, -0.241360,
		63.936436, 53.404858, 54.683685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.606476, 52.980152, 54.976315>,  <63.966919, 52.726238, 54.852634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.606476, 52.980152, 54.976315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.326035, 53.257629, 55.042351>,  <64.157768, 53.424114, 55.081974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.326035, 53.257629, 55.042351>,  <64.606476, 52.980152, 54.976315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.326035, 53.257629, 55.042351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572835, 0.410041, 0.709737,
		0.424645, 0.592164, -0.684849,
		-0.701097, 0.693692, 0.165090,
		64.115707, 53.465736, 55.091877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.821915, 53.687050, 55.081276>,  <64.606476, 52.980152, 54.976315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.821915, 53.687050, 55.081276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.502487, 53.601357, 55.306267>,  <64.310829, 53.549942, 55.441261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.502487, 53.601357, 55.306267>,  <64.821915, 53.687050, 55.081276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.502487, 53.601357, 55.306267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405754, 0.498636, 0.765981,
		-0.444570, 0.839921, -0.311273,
		-0.798575, -0.214232, 0.562479,
		64.262917, 53.537086, 55.475010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.302696, 54.266796, 55.364059>,  <64.821915, 53.687050, 55.081276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.302696, 54.266796, 55.364059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.267677, 53.957588, 55.615387>,  <64.246666, 53.772064, 55.766182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.267677, 53.957588, 55.615387>,  <64.302696, 54.266796, 55.364059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.267677, 53.957588, 55.615387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141066, 0.614762, 0.775995,
		-0.986122, 0.156568, 0.055227,
		-0.087544, -0.773017, 0.628316,
		64.241417, 53.725685, 55.803883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.857811, 54.500568, 55.931503>,  <64.302696, 54.266796, 55.364059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.857811, 54.500568, 55.931503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.068382, 54.185173, 56.058723>,  <64.194725, 53.995937, 56.135056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.068382, 54.185173, 56.058723>,  <63.857811, 54.500568, 55.931503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.068382, 54.185173, 56.058723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169986, 0.464136, 0.869300,
		-0.833052, -0.403562, 0.378367,
		0.526430, -0.788490, 0.318049,
		64.226311, 53.948627, 56.154137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.595627, 54.372185, 56.591835>,  <63.857811, 54.500568, 55.931503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.595627, 54.372185, 56.591835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.968163, 54.228916, 56.565559>,  <64.191689, 54.142956, 56.549793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.968163, 54.228916, 56.565559>,  <63.595627, 54.372185, 56.591835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.968163, 54.228916, 56.565559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256555, 0.517404, 0.816378,
		-0.258414, -0.777180, 0.573771,
		0.931344, -0.358168, -0.065685,
		64.247566, 54.121468, 56.545853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.856533, 54.040253, 57.227196>,  <63.595627, 54.372185, 56.591835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.856533, 54.040253, 57.227196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.145416, 54.202560, 57.003136>,  <64.318748, 54.299946, 56.868702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.145416, 54.202560, 57.003136>,  <63.856533, 54.040253, 57.227196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.145416, 54.202560, 57.003136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188864, 0.663375, 0.724061,
		0.665428, -0.628693, 0.402430,
		0.722174, 0.405806, -0.560166,
		64.362076, 54.324291, 56.835091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.558762, 53.959461, 57.478329>,  <63.856533, 54.040253, 57.227196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.558762, 53.959461, 57.478329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.623886, 54.268585, 57.232971>,  <64.662964, 54.454060, 57.085754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.623886, 54.268585, 57.232971>,  <64.558762, 53.959461, 57.478329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.623886, 54.268585, 57.232971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530043, 0.455855, 0.715018,
		0.832193, -0.441542, -0.335402,
		0.162815, 0.772811, -0.613396,
		64.672729, 54.500427, 57.048954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.244698, 54.019489, 57.207359>,  <64.558762, 53.959461, 57.478329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.244698, 54.019489, 57.207359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.108177, 54.392971, 57.250648>,  <65.026260, 54.617058, 57.276623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.108177, 54.392971, 57.250648>,  <65.244698, 54.019489, 57.207359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.108177, 54.392971, 57.250648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765859, 0.209490, 0.607926,
		0.544950, 0.290370, -0.786584,
		-0.341305, 0.933702, 0.108221,
		65.005783, 54.673080, 57.283115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.858749, 54.372940, 57.319595>,  <65.244698, 54.019489, 57.207359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.858749, 54.372940, 57.319595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.572945, 54.643024, 57.392860>,  <65.401459, 54.805077, 57.436821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.572945, 54.643024, 57.392860>,  <65.858749, 54.372940, 57.319595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.572945, 54.643024, 57.392860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625765, 0.499724, 0.598910,
		0.312860, 0.542551, -0.779588,
		-0.714518, 0.675214, 0.183165,
		65.358589, 54.845589, 57.447811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.998741, 55.019073, 57.147133>,  <65.858749, 54.372940, 57.319595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.998741, 55.019073, 57.147133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.755890, 55.082123, 57.458656>,  <65.610176, 55.119953, 57.645573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.755890, 55.082123, 57.458656>,  <65.998741, 55.019073, 57.147133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.755890, 55.082123, 57.458656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716334, 0.532750, 0.450604,
		-0.343889, 0.831465, -0.436356,
		-0.607130, 0.157619, 0.778813,
		65.573753, 55.129410, 57.692299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.089233, 55.677116, 57.385777>,  <65.998741, 55.019073, 57.147133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.089233, 55.677116, 57.385777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.976669, 55.412468, 57.663788>,  <65.909134, 55.253681, 57.830597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.976669, 55.412468, 57.663788>,  <66.089233, 55.677116, 57.385777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.976669, 55.412468, 57.663788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678288, 0.375192, 0.631788,
		-0.678773, 0.649223, 0.343185,
		-0.281411, -0.661619, 0.695031,
		65.892242, 55.213982, 57.872295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.336449, 55.944775, 57.972897>,  <66.089233, 55.677116, 57.385777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.336449, 55.944775, 57.972897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.240685, 55.582794, 58.113602>,  <66.183228, 55.365604, 58.198025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.240685, 55.582794, 58.113602>,  <66.336449, 55.944775, 57.972897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.240685, 55.582794, 58.113602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764313, 0.047761, 0.643075,
		-0.598754, 0.422820, 0.680233,
		-0.239416, -0.904954, 0.351764,
		66.168861, 55.311310, 58.219131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.268288, 55.907181, 58.691494>,  <66.336449, 55.944775, 57.972897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.268288, 55.907181, 58.691494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.381607, 55.546089, 58.561989>,  <66.449600, 55.329433, 58.484287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.381607, 55.546089, 58.561989>,  <66.268288, 55.907181, 58.691494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.381607, 55.546089, 58.561989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855477, 0.085291, 0.510769,
		-0.433471, -0.421672, 0.796427,
		0.283305, -0.902728, -0.323760,
		66.466599, 55.275272, 58.464859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.532928, 55.571987, 59.215767>,  <66.268288, 55.907181, 58.691494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.532928, 55.571987, 59.215767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.706047, 55.418442, 58.889496>,  <66.809921, 55.326313, 58.693733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.706047, 55.418442, 58.889496>,  <66.532928, 55.571987, 59.215767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.706047, 55.418442, 58.889496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901197, 0.207223, 0.380660,
		0.022905, -0.899836, 0.435626,
		0.432804, -0.383866, -0.815676,
		66.835892, 55.303284, 58.644794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.127129, 55.287357, 59.495686>,  <66.532928, 55.571987, 59.215767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.127129, 55.287357, 59.495686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.170486, 55.429054, 59.124146>,  <67.196503, 55.514072, 58.901222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.170486, 55.429054, 59.124146>,  <67.127129, 55.287357, 59.495686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.170486, 55.429054, 59.124146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861604, 0.432590, 0.265526,
		0.495872, -0.829082, -0.258329,
		0.108393, 0.354245, -0.928850,
		67.203003, 55.535328, 58.845490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.771713, 55.071899, 59.254826>,  <67.127129, 55.287357, 59.495686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.771713, 55.071899, 59.254826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.700104, 55.371696, 58.999886>,  <67.657135, 55.551575, 58.846920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.700104, 55.371696, 58.999886>,  <67.771713, 55.071899, 59.254826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.700104, 55.371696, 58.999886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781678, 0.501740, 0.370455,
		0.597436, -0.431884, -0.675682,
		-0.179023, 0.749489, -0.637352,
		67.646400, 55.596542, 58.808681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.343658, 55.330688, 58.743618>,  <67.771713, 55.071899, 59.254826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.343658, 55.330688, 58.743618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.100914, 55.626541, 58.860016>,  <67.955269, 55.804050, 58.929855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.100914, 55.626541, 58.860016>,  <68.343658, 55.330688, 58.743618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.100914, 55.626541, 58.860016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789024, 0.516502, 0.332666,
		0.095752, 0.431479, -0.897027,
		-0.606855, 0.739629, 0.290991,
		67.918861, 55.848431, 58.947311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.556122, 55.993530, 58.397057>,  <68.343658, 55.330688, 58.743618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.556122, 55.993530, 58.397057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.352676, 56.103703, 58.723358>,  <68.230614, 56.169804, 58.919140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.352676, 56.103703, 58.723358>,  <68.556122, 55.993530, 58.397057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.352676, 56.103703, 58.723358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841260, 0.360670, 0.402738,
		-0.183294, 0.891099, -0.415145,
		-0.508610, 0.275426, 0.815755,
		68.200096, 56.186329, 58.968086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.608025, 56.798935, 58.478748>,  <68.556122, 55.993530, 58.397057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.608025, 56.798935, 58.478748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.573395, 56.560020, 58.797684>,  <68.552620, 56.416672, 58.989044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.573395, 56.560020, 58.797684>,  <68.608025, 56.798935, 58.478748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.573395, 56.560020, 58.797684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781606, 0.455544, 0.426112,
		-0.617735, 0.660096, 0.427407,
		-0.086572, -0.597288, 0.797341,
		68.547424, 56.380833, 59.036884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.580627, 57.254196, 58.973751>,  <68.608025, 56.798935, 58.478748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.580627, 57.254196, 58.973751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.702751, 56.894131, 59.098007>,  <68.776024, 56.678093, 59.172562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.702751, 56.894131, 59.098007>,  <68.580627, 57.254196, 58.973751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.702751, 56.894131, 59.098007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904868, 0.375867, 0.199847,
		-0.296653, 0.220072, 0.929282,
		0.305306, -0.900162, 0.310638,
		68.794342, 56.624081, 59.191200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.823654, 57.312393, 59.601170>,  <68.580627, 57.254196, 58.973751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.823654, 57.312393, 59.601170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.032600, 57.029770, 59.410210>,  <69.157967, 56.860195, 59.295635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.032600, 57.029770, 59.410210>,  <68.823654, 57.312393, 59.601170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.032600, 57.029770, 59.410210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849787, 0.384899, 0.360159,
		-0.070725, -0.593819, 0.801484,
		0.522360, -0.706563, -0.477398,
		69.189308, 56.817802, 59.266991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.171394, 56.827827, 60.073593>,  <68.823654, 57.312393, 59.601170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.171394, 56.827827, 60.073593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.409523, 56.806553, 59.752907>,  <69.552399, 56.793789, 59.560493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.409523, 56.806553, 59.752907>,  <69.171394, 56.827827, 60.073593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.409523, 56.806553, 59.752907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783477, 0.259690, 0.564557,
		0.178174, -0.964226, 0.196269,
		0.595330, -0.053183, -0.801720,
		69.588120, 56.790600, 59.512390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.735474, 56.476334, 60.358143>,  <69.171394, 56.827827, 60.073593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.735474, 56.476334, 60.358143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.802628, 56.723183, 60.050644>,  <69.842918, 56.871292, 59.866146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.802628, 56.723183, 60.050644>,  <69.735474, 56.476334, 60.358143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.802628, 56.723183, 60.050644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802395, 0.367475, 0.470240,
		0.572690, -0.695788, -0.433480,
		0.167894, 0.617124, -0.768746,
		69.852997, 56.908321, 59.820019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.488541, 56.444263, 60.240074>,  <69.735474, 56.476334, 60.358143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.488541, 56.444263, 60.240074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.328339, 56.801636, 60.158707>,  <70.232216, 57.016060, 60.109886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.328339, 56.801636, 60.158707>,  <70.488541, 56.444263, 60.240074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.328339, 56.801636, 60.158707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694469, 0.440797, 0.568693,
		0.597755, 0.086491, -0.796999,
		-0.400501, 0.893430, -0.203423,
		70.208191, 57.069664, 60.097679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.011284, 56.921062, 59.947403>,  <70.488541, 56.444263, 60.240074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.011284, 56.921062, 59.947403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.729080, 57.124847, 60.144463>,  <70.559761, 57.247116, 60.262699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.729080, 57.124847, 60.144463>,  <71.011284, 56.921062, 59.947403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.729080, 57.124847, 60.144463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699041, 0.614636, 0.365465,
		-0.116612, 0.602223, -0.789765,
		-0.705509, 0.509460, 0.492653,
		70.517426, 57.277687, 60.292259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.804924, 57.719830, 59.865200>,  <71.011284, 56.921062, 59.947403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.804924, 57.719830, 59.865200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.748276, 57.602272, 60.243317>,  <70.714287, 57.531738, 60.470184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.748276, 57.602272, 60.243317>,  <70.804924, 57.719830, 59.865200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.748276, 57.602272, 60.243317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843185, 0.464483, 0.270732,
		-0.518636, 0.835395, 0.182022,
		-0.141622, -0.293889, 0.945290,
		70.705788, 57.514107, 60.526905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.788437, 58.183903, 60.383953>,  <70.804924, 57.719830, 59.865200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.788437, 58.183903, 60.383953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.938766, 57.875595, 60.589737>,  <71.028961, 57.690609, 60.713207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.938766, 57.875595, 60.589737>,  <70.788437, 58.183903, 60.383953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.938766, 57.875595, 60.589737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846164, 0.511780, 0.148617,
		-0.377839, 0.379463, 0.844538,
		0.375823, -0.770772, 0.514459,
		71.051514, 57.644363, 60.744076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.954300, 58.341995, 61.148861>,  <70.788437, 58.183903, 60.383953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.954300, 58.341995, 61.148861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.206223, 58.067547, 61.003212>,  <71.357376, 57.902878, 60.915825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.206223, 58.067547, 61.003212>,  <70.954300, 58.341995, 61.148861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.206223, 58.067547, 61.003212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758560, 0.644154, 0.098248,
		0.167139, -0.338084, 0.926156,
		0.629803, -0.686123, -0.364120,
		71.395164, 57.861710, 60.893974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.592621, 58.143017, 61.554527>,  <70.954300, 58.341995, 61.148861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.592621, 58.143017, 61.554527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.648582, 58.128197, 61.158737>,  <71.682159, 58.119305, 60.921265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.648582, 58.128197, 61.158737>,  <71.592621, 58.143017, 61.554527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.648582, 58.128197, 61.158737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808033, 0.581837, 0.092458,
		0.572285, -0.812461, 0.111339,
		0.139900, -0.037053, -0.989472,
		71.690552, 58.117081, 60.861897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.164162, 58.451183, 61.462440>,  <71.592621, 58.143017, 61.554527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.164162, 58.451183, 61.462440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.085098, 58.429153, 61.070953>,  <72.037659, 58.415936, 60.836060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.085098, 58.429153, 61.070953>,  <72.164162, 58.451183, 61.462440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.085098, 58.429153, 61.070953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717673, 0.671973, -0.182753,
		0.667739, -0.738526, -0.093301,
		-0.197663, -0.055072, -0.978722,
		72.025803, 58.412632, 60.777336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.827011, 58.417393, 61.149296>,  <72.164162, 58.451183, 61.462440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.827011, 58.417393, 61.149296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.849838, 58.220787, 60.801697>,  <72.863533, 58.102825, 60.593136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.849838, 58.220787, 60.801697>,  <72.827011, 58.417393, 61.149296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.849838, 58.220787, 60.801697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047546, 0.868090, -0.494124,
		0.997237, 0.069518, 0.026175,
		0.057073, -0.491514, -0.868997,
		72.866959, 58.073334, 60.540997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
