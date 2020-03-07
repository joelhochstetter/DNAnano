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
	<1.335890, 2.807977, 0.978689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.513479, 2.542633, 1.219634>,  <1.620033, 2.383426, 1.364201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.513479, 2.542633, 1.219634>,  <1.335890, 2.807977, 0.978689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.513479, 2.542633, 1.219634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765161, -0.630499, -0.130383,
		0.466280, -0.403018, -0.787502,
		0.443972, -0.663361, 0.602363,
		1.646671, 2.343625, 1.400343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.197956, 2.223046, 0.595749>,  <1.335890, 2.807977, 0.978689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.197956, 2.223046, 0.595749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.247736, 2.161148, 0.987782>,  <1.277604, 2.124009, 1.223003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.247736, 2.161148, 0.987782>,  <1.197956, 2.223046, 0.595749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.247736, 2.161148, 0.987782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883116, -0.467588, 0.038309,
		0.452348, -0.870296, -0.194849,
		0.124449, -0.154745, 0.980085,
		1.285071, 2.114724, 1.281808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.320381, 1.592445, 0.840806>,  <1.197956, 2.223046, 0.595749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.320381, 1.592445, 0.840806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.118706, 1.804249, 1.113690>,  <0.997701, 1.931331, 1.277421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.118706, 1.804249, 1.113690>,  <1.320381, 1.592445, 0.840806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.118706, 1.804249, 1.113690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758805, -0.648800, -0.057216,
		0.412323, -0.546513, 0.728912,
		-0.504188, 0.529510, 0.682212,
		0.967449, 1.963102, 1.318354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.049689, 1.026741, 1.391868>,  <1.320381, 1.592445, 0.840806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.049689, 1.026741, 1.391868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.845507, 1.364819, 1.328520>,  <0.722997, 1.567665, 1.290511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.845507, 1.364819, 1.328520>,  <1.049689, 1.026741, 1.391868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.845507, 1.364819, 1.328520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835095, -0.531169, -0.143098,
		-0.205067, 0.059209, 0.976956,
		-0.510455, 0.845195, -0.158370,
		0.692370, 1.618377, 1.281009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.497561, 1.111818, 1.756177>,  <1.049689, 1.026741, 1.391868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.497561, 1.111818, 1.756177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.482904, 1.254669, 1.382842>,  <0.474111, 1.340380, 1.158841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.482904, 1.254669, 1.382842>,  <0.497561, 1.111818, 1.756177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.482904, 1.254669, 1.382842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824744, -0.538214, -0.173562,
		-0.564319, 0.763404, 0.314259,
		-0.036641, 0.357127, -0.933337,
		0.471912, 1.361807, 1.102841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.279080, 1.252289, 1.682328>,  <0.497561, 1.111818, 1.756177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.279080, 1.252289, 1.682328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.111467, 1.189648, 1.324582>,  <-0.010900, 1.152063, 1.109935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.111467, 1.189648, 1.324582>,  <-0.279080, 1.252289, 1.682328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.111467, 1.189648, 1.324582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638425, -0.751219, -0.167580,
		-0.645621, 0.641206, -0.414764,
		0.419031, -0.156603, -0.894365,
		0.014242, 1.142667, 1.056273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.838722, 1.236131, 1.190376>,  <-0.279080, 1.252289, 1.682328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.838722, 1.236131, 1.190376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.523392, 1.016174, 1.079987>,  <-0.334193, 0.884200, 1.013753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.523392, 1.016174, 1.079987>,  <-0.838722, 1.236131, 1.190376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.523392, 1.016174, 1.079987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583489, -0.810463, -0.051865,
		-0.195146, 0.201914, -0.959765,
		0.788326, -0.549891, -0.275973,
		-0.286894, 0.851207, 0.997195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.958621, 0.745767, 0.648443>,  <-0.838722, 1.236131, 1.190376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.958621, 0.745767, 0.648443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.695770, 0.605633, 0.915411>,  <-0.538060, 0.521552, 1.075592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.695770, 0.605633, 0.915411>,  <-0.958621, 0.745767, 0.648443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.695770, 0.605633, 0.915411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518121, -0.853030, 0.062367,
		0.547480, -0.386787, -0.742066,
		0.657128, -0.350335, 0.667419,
		-0.498632, 0.500532, 1.115637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.113358, -0.267371, 3.082451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.076693, -0.042747, 2.753513>,  <2.054693, 0.092026, 2.556150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.076693, -0.042747, 2.753513>,  <2.113358, -0.267371, 3.082451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.076693, -0.042747, 2.753513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814255, 0.433114, 0.386525,
		0.573225, 0.705029, 0.417550,
		-0.091664, 0.561558, -0.822345,
		2.049193, 0.125720, 2.506809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.894473, 0.410894, 3.276332>,  <2.113358, -0.267371, 3.082451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.894473, 0.410894, 3.276332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.782125, 0.378323, 2.893818>,  <1.714717, 0.358780, 2.664309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.782125, 0.378323, 2.893818>,  <1.894473, 0.410894, 3.276332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.782125, 0.378323, 2.893818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853568, 0.476737, 0.210104,
		0.438788, 0.875266, -0.203406,
		-0.280868, -0.081429, -0.956286,
		1.697865, 0.353894, 2.606932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.764595, 1.143870, 2.957463>,  <1.894473, 0.410894, 3.276332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.764595, 1.143870, 2.957463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.560551, 0.841328, 2.793652>,  <1.438124, 0.659802, 2.695365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.560551, 0.841328, 2.793652>,  <1.764595, 1.143870, 2.957463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.560551, 0.841328, 2.793652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857887, 0.481626, 0.179074,
		0.061795, 0.442675, -0.894550,
		-0.510110, -0.756357, -0.409527,
		1.407518, 0.614421, 2.670794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.207151, 1.505115, 2.660336>,  <1.764595, 1.143870, 2.957463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.207151, 1.505115, 2.660336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.120035, 1.115925, 2.691029>,  <1.067765, 0.882411, 2.709444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.120035, 1.115925, 2.691029>,  <1.207151, 1.505115, 2.660336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.120035, 1.115925, 2.691029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965546, 0.226266, 0.128546,
		-0.142434, -0.046093, -0.988730,
		-0.217791, -0.972975, 0.076732,
		1.054698, 0.824032, 2.714048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.473435, 1.417889, 2.429798>,  <1.207151, 1.505115, 2.660336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.473435, 1.417889, 2.429798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.594110, 1.099815, 2.640194>,  <0.666516, 0.908971, 2.766432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.594110, 1.099815, 2.640194>,  <0.473435, 1.417889, 2.429798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.594110, 1.099815, 2.640194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883589, -0.025966, 0.467542,
		-0.358125, -0.605811, -0.710450,
		0.301690, -0.795185, 0.525990,
		0.684617, 0.861260, 2.797991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.045438, 1.292887, 2.946412>,  <0.473435, 1.417889, 2.429798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.045438, 1.292887, 2.946412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.181889, 0.922588, 3.011684>,  <0.263759, 0.700409, 3.050848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.181889, 0.922588, 3.011684>,  <0.045438, 1.292887, 2.946412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.181889, 0.922588, 3.011684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793924, -0.190788, 0.577308,
		-0.503307, -0.326487, -0.800055,
		0.341125, -0.925746, 0.163181,
		0.284226, 0.644865, 3.060639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.674029, 0.885739, 3.037974>,  <0.045438, 1.292887, 2.946412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.674029, 0.885739, 3.037974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.371468, 0.681190, 3.201118>,  <-0.189931, 0.558461, 3.299005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.371468, 0.681190, 3.201118>,  <-0.674029, 0.885739, 3.037974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.371468, 0.681190, 3.201118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538344, -0.132519, 0.832241,
		-0.371535, -0.849080, -0.375532,
		0.756404, -0.511372, 0.407861,
		-0.144546, 0.527779, 3.323476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.869630, 0.238477, 3.216303>,  <-0.674029, 0.885739, 3.037974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.869630, 0.238477, 3.216303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.568298, 0.352814, 3.453213>,  <-0.387499, 0.421416, 3.595359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.568298, 0.352814, 3.453213>,  <-0.869630, 0.238477, 3.216303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.568298, 0.352814, 3.453213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525700, -0.279380, 0.803484,
		0.395140, -0.916647, -0.060197,
		0.753329, 0.285843, 0.592275,
		-0.342300, 0.438566, 3.630896>
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
