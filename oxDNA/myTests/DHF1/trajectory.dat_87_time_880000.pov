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
	<0.659073, 0.123190, 3.791512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.842423, 0.326321, 3.499758>,  <0.952434, 0.448199, 3.324705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.842423, 0.326321, 3.499758>,  <0.659073, 0.123190, 3.791512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.842423, 0.326321, 3.499758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802166, 0.589732, -0.093520,
		0.382650, 0.627956, 0.677681,
		0.458376, 0.507827, -0.729385,
		0.979936, 0.478669, 3.280942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.640453, 0.794083, 3.984704>,  <0.659073, 0.123190, 3.791512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.640453, 0.794083, 3.984704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.696697, 0.773525, 3.589212>,  <0.730444, 0.761191, 3.351917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.696697, 0.773525, 3.589212>,  <0.640453, 0.794083, 3.984704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.696697, 0.773525, 3.589212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817059, 0.557970, -0.145201,
		0.559144, 0.828268, 0.036465,
		0.140611, -0.051394, -0.988730,
		0.738881, 0.758107, 3.292593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.706650, 1.502849, 3.747910>,  <0.640453, 0.794083, 3.984704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.706650, 1.502849, 3.747910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.537763, 1.260685, 3.478033>,  <0.436430, 1.115386, 3.316107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.537763, 1.260685, 3.478033>,  <0.706650, 1.502849, 3.747910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.537763, 1.260685, 3.478033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648332, 0.721867, -0.242019,
		0.633558, 0.335239, -0.697294,
		-0.422220, -0.605411, -0.674691,
		0.411097, 1.079062, 3.275626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.621405, 1.883443, 3.128688>,  <0.706650, 1.502849, 3.747910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.621405, 1.883443, 3.128688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.340103, 1.599083, 3.131647>,  <0.171322, 1.428467, 3.133422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.340103, 1.599083, 3.131647>,  <0.621405, 1.883443, 3.128688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.340103, 1.599083, 3.131647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697036, 0.687419, -0.203949,
		0.139902, -0.148584, -0.978953,
		-0.703255, -0.710899, 0.007397,
		0.129127, 1.385813, 3.133866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.333436, 1.782471, 2.439460>,  <0.621405, 1.883443, 3.128688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.333436, 1.782471, 2.439460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.067066, 1.697254, 2.725441>,  <-0.092756, 1.646124, 2.897029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.067066, 1.697254, 2.725441>,  <0.333436, 1.782471, 2.439460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.067066, 1.697254, 2.725441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662292, 0.609949, -0.435123,
		-0.343385, -0.763266, -0.547277,
		-0.665926, -0.213042, 0.714952,
		-0.132711, 1.633341, 2.939927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.252685, 1.738425, 2.058088>,  <0.333436, 1.782471, 2.439460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.252685, 1.738425, 2.058088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.362254, 1.817429, 2.434589>,  <-0.427996, 1.864831, 2.660490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.362254, 1.817429, 2.434589>,  <-0.252685, 1.738425, 2.058088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.362254, 1.817429, 2.434589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694548, 0.636348, -0.335656,
		-0.665259, -0.745689, -0.037131,
		-0.273923, 0.197509, 0.941253,
		-0.444431, 1.876681, 2.716965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.908769, 1.537285, 2.277662>,  <-0.252685, 1.738425, 2.058088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.908769, 1.537285, 2.277662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.822927, 1.877865, 2.469069>,  <-0.771423, 2.082213, 2.583912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.822927, 1.877865, 2.469069>,  <-0.908769, 1.537285, 2.277662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.822927, 1.877865, 2.469069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842136, 0.409470, -0.350914,
		-0.494724, -0.327668, 0.804911,
		0.214604, 0.851451, 0.478516,
		-0.758546, 2.133300, 2.612623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.367380, 1.717470, 2.789346>,  <-0.908769, 1.537285, 2.277662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.367380, 1.717470, 2.789346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.263437, 2.077652, 2.649828>,  <-1.201072, 2.293761, 2.566117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.263437, 2.077652, 2.649828>,  <-1.367380, 1.717470, 2.789346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.263437, 2.077652, 2.649828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964944, 0.228352, -0.129376,
		-0.036850, 0.370186, 0.928226,
		0.259856, 0.900454, -0.348794,
		-1.185480, 2.347788, 2.545190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.488620, 2.224101, 1.537339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.333195, 2.516121, 1.762211>,  <3.239939, 2.691333, 1.897134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.333195, 2.516121, 1.762211>,  <3.488620, 2.224101, 1.537339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.333195, 2.516121, 1.762211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906968, 0.195390, 0.373139,
		0.162565, 0.654867, -0.738053,
		-0.388564, 0.730049, 0.562180,
		3.216625, 2.735136, 1.930865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.785351, 2.835980, 1.453900>,  <3.488620, 2.224101, 1.537339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.785351, 2.835980, 1.453900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.664917, 2.837692, 1.835335>,  <3.592657, 2.838720, 2.064196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.664917, 2.837692, 1.835335>,  <3.785351, 2.835980, 1.453900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.664917, 2.837692, 1.835335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946342, 0.124462, 0.298238,
		-0.117408, 0.992215, -0.041524,
		-0.301085, 0.004281, 0.953588,
		3.574592, 2.838976, 2.121411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.245438, 3.350085, 1.855238>,  <3.785351, 2.835980, 1.453900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.245438, 3.350085, 1.855238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.089809, 3.045471, 2.062580>,  <3.996433, 2.862703, 2.186985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.089809, 3.045471, 2.062580>,  <4.245438, 3.350085, 1.855238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.089809, 3.045471, 2.062580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836212, -0.055882, 0.545552,
		-0.386489, 0.645712, 0.658545,
		-0.389070, -0.761533, 0.518355,
		3.973088, 2.817011, 2.218086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.446212, 2.880881, 2.305169>,  <4.245438, 3.350085, 1.855238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.446212, 2.880881, 2.305169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.095184, 2.905937, 2.495304>,  <3.884567, 2.920971, 2.609385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.095184, 2.905937, 2.495304>,  <4.446212, 2.880881, 2.305169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.095184, 2.905937, 2.495304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308330, -0.685488, 0.659575,
		0.367155, 0.725384, 0.582249,
		-0.877570, 0.062642, 0.475338,
		3.831913, 2.924730, 2.637906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.525876, 3.187423, 3.019146>,  <4.446212, 2.880881, 2.305169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.525876, 3.187423, 3.019146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.246544, 2.911919, 2.941231>,  <4.078945, 2.746616, 2.894481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.246544, 2.911919, 2.941231>,  <4.525876, 3.187423, 3.019146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.246544, 2.911919, 2.941231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524260, -0.677459, 0.515947,
		-0.487325, 0.258182, 0.834180,
		-0.698331, -0.688761, -0.194789,
		4.037045, 2.705290, 2.882794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.426179, 2.904803, 3.655255>,  <4.525876, 3.187423, 3.019146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.426179, 2.904803, 3.655255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.317070, 2.637711, 3.378204>,  <4.251605, 2.477455, 3.211974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.317070, 2.637711, 3.378204>,  <4.426179, 2.904803, 3.655255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.317070, 2.637711, 3.378204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567838, -0.692895, 0.444362,
		-0.776631, -0.272090, 0.568165,
		-0.272772, -0.667731, -0.692626,
		4.235239, 2.437391, 3.170416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.158375, 2.153285, 3.947205>,  <4.426179, 2.904803, 3.655255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.158375, 2.153285, 3.947205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.305584, 2.083130, 3.581955>,  <4.393909, 2.041037, 3.362805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.305584, 2.083130, 3.581955>,  <4.158375, 2.153285, 3.947205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.305584, 2.083130, 3.581955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419878, -0.844871, 0.331504,
		-0.829615, -0.505402, -0.237291,
		0.368024, -0.175387, -0.913126,
		4.415990, 2.030513, 3.308017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.999777, 1.448428, 3.786496>,  <4.158375, 2.153285, 3.947205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.999777, 1.448428, 3.786496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.300201, 1.544937, 3.540668>,  <4.480456, 1.602843, 3.393172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.300201, 1.544937, 3.540668>,  <3.999777, 1.448428, 3.786496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.300201, 1.544937, 3.540668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528243, -0.777991, 0.340132,
		-0.396063, -0.580101, -0.711770,
		0.751061, 0.241273, -0.614568,
		4.525520, 1.617319, 3.356298>
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
