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
	<24.721378, 35.021454, 34.955864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403107, 34.802330, 34.852482>,  <24.212143, 34.670856, 34.790455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403107, 34.802330, 34.852482>,  <24.721378, 35.021454, 34.955864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.403107, 34.802330, 34.852482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160874, 0.220238, -0.962089,
		0.583962, -0.807094, -0.087111,
		-0.795681, -0.547809, -0.258451,
		24.164402, 34.637989, 34.774948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.458363, 35.083210, 34.922794>,  <24.721378, 35.021454, 34.955864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.458363, 35.083210, 34.922794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832029, 35.007351, 35.043701>,  <26.056229, 34.961834, 35.116245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832029, 35.007351, 35.043701>,  <25.458363, 35.083210, 34.922794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832029, 35.007351, 35.043701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241798, -0.959379, 0.145348,
		0.262422, -0.208866, -0.942077,
		0.934167, -0.189650, 0.302265,
		26.112280, 34.950455, 35.134380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714022, 34.318413, 34.612911>,  <25.458363, 35.083210, 34.922794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714022, 34.318413, 34.612911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918434, 34.434620, 34.936501>,  <26.041082, 34.504345, 35.130653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918434, 34.434620, 34.936501>,  <25.714022, 34.318413, 34.612911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918434, 34.434620, 34.936501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081388, -0.953277, 0.290928,
		0.855700, -0.082832, -0.510799,
		0.511031, 0.290520, 0.808978,
		26.071743, 34.521774, 35.179195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396339, 33.980179, 34.571060>,  <25.714022, 34.318413, 34.612911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396339, 33.980179, 34.571060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353994, 34.082249, 34.955494>,  <26.328588, 34.143490, 35.186153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353994, 34.082249, 34.955494>,  <26.396339, 33.980179, 34.571060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353994, 34.082249, 34.955494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447044, -0.851119, 0.275223,
		0.888226, 0.458781, -0.023975,
		-0.105861, 0.255178, 0.961081,
		26.322235, 34.158802, 35.243820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006397, 33.773689, 34.932549>,  <26.396339, 33.980179, 34.571060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006397, 33.773689, 34.932549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728315, 33.805115, 35.218349>,  <26.561466, 33.823971, 35.389832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728315, 33.805115, 35.218349>,  <27.006397, 33.773689, 34.932549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728315, 33.805115, 35.218349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179794, -0.943407, 0.278670,
		0.695961, 0.322197, 0.641738,
		-0.695207, 0.078563, 0.714504,
		26.519753, 33.828682, 35.432701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303667, 33.448170, 35.589642>,  <27.006397, 33.773689, 34.932549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303667, 33.448170, 35.589642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904486, 33.436390, 35.566929>,  <26.664978, 33.429321, 35.553303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904486, 33.436390, 35.566929>,  <27.303667, 33.448170, 35.589642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904486, 33.436390, 35.566929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007775, -0.936964, 0.349339,
		-0.063491, 0.348182, 0.935274,
		-0.997952, -0.029452, -0.056781,
		26.605101, 33.427555, 35.549896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003132, 33.177135, 36.246944>,  <27.303667, 33.448170, 35.589642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003132, 33.177135, 36.246944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733946, 33.116901, 35.957272>,  <26.572433, 33.080761, 35.783466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733946, 33.116901, 35.957272>,  <27.003132, 33.177135, 36.246944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733946, 33.116901, 35.957272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145982, -0.932760, 0.329619,
		-0.725126, 0.327540, 0.605731,
		-0.672965, -0.150590, -0.724183,
		26.532057, 33.071724, 35.740017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314999, 33.033337, 36.489670>,  <27.003132, 33.177135, 36.246944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314999, 33.033337, 36.489670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351318, 32.827465, 36.148643>,  <26.373110, 32.703941, 35.944027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351318, 32.827465, 36.148643>,  <26.314999, 33.033337, 36.489670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351318, 32.827465, 36.148643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286467, -0.833413, 0.472609,
		-0.953778, 0.201318, -0.223112,
		0.090800, -0.514678, -0.852562,
		26.378559, 32.673061, 35.892876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.702032, 32.552284, 36.513630>,  <26.314999, 33.033337, 36.489670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.702032, 32.552284, 36.513630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944567, 32.396053, 36.236557>,  <26.090088, 32.302315, 36.070312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944567, 32.396053, 36.236557>,  <25.702032, 32.552284, 36.513630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944567, 32.396053, 36.236557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325291, -0.916678, 0.232137,
		-0.725633, 0.084570, -0.682865,
		0.606335, -0.390576, -0.692682,
		26.126467, 32.278881, 36.028751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.378395, 32.132477, 35.935158>,  <25.702032, 32.552284, 36.513630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.378395, 32.132477, 35.935158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749569, 31.990604, 35.981010>,  <25.972273, 31.905481, 36.008522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749569, 31.990604, 35.981010>,  <25.378395, 32.132477, 35.935158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749569, 31.990604, 35.981010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359570, -0.932796, 0.024530,
		0.098229, -0.063981, -0.993105,
		0.927933, -0.354681, 0.114634,
		26.027948, 31.884199, 36.015400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425589, 31.430588, 35.593342>,  <25.378395, 32.132477, 35.935158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425589, 31.430588, 35.593342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733913, 31.450274, 35.847408>,  <25.918907, 31.462084, 35.999847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733913, 31.450274, 35.847408>,  <25.425589, 31.430588, 35.593342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733913, 31.450274, 35.847408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201037, -0.927277, 0.315818,
		0.604513, -0.371127, -0.704861,
		0.770810, 0.049213, 0.635162,
		25.965157, 31.465036, 36.037956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770586, 30.804794, 35.598557>,  <25.425589, 31.430588, 35.593342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.770586, 30.804794, 35.598557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781540, 31.018526, 35.936489>,  <25.788113, 31.146765, 36.139248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781540, 31.018526, 35.936489>,  <25.770586, 30.804794, 35.598557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781540, 31.018526, 35.936489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513508, -0.717593, 0.470500,
		0.857648, -0.446711, 0.254733,
		0.027383, 0.534331, 0.844832,
		25.789755, 31.178825, 36.189938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008665, 30.461748, 36.209160>,  <25.770586, 30.804794, 35.598557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008665, 30.461748, 36.209160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798851, 30.756191, 36.380280>,  <25.672962, 30.932858, 36.482952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798851, 30.756191, 36.380280>,  <26.008665, 30.461748, 36.209160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798851, 30.756191, 36.380280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556570, -0.676705, 0.481975,
		0.644278, 0.014713, 0.764650,
		-0.524534, 0.736107, 0.427797,
		25.641491, 30.977024, 36.508617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781929, 30.291798, 36.843853>,  <26.008665, 30.461748, 36.209160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781929, 30.291798, 36.843853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519621, 30.593685, 36.836185>,  <25.362236, 30.774817, 36.831585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519621, 30.593685, 36.836185>,  <25.781929, 30.291798, 36.843853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519621, 30.593685, 36.836185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626344, -0.529703, 0.571934,
		0.421497, 0.387061, 0.820076,
		-0.655770, 0.754718, -0.019165,
		25.322889, 30.820101, 36.830437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851173, 31.049013, 37.018234>,  <25.781929, 30.291798, 36.843853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851173, 31.049013, 37.018234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103443, 30.829956, 36.798294>,  <26.254805, 30.698523, 36.666328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103443, 30.829956, 36.798294>,  <25.851173, 31.049013, 37.018234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103443, 30.829956, 36.798294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326629, 0.830034, -0.452059,
		0.703963, 0.105503, 0.702357,
		0.630674, -0.547643, -0.549853,
		26.292645, 30.665663, 36.633339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405676, 31.517319, 37.089760>,  <25.851173, 31.049013, 37.018234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405676, 31.517319, 37.089760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430401, 31.277102, 36.770882>,  <26.445236, 31.132971, 36.579556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430401, 31.277102, 36.770882>,  <26.405676, 31.517319, 37.089760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430401, 31.277102, 36.770882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146675, 0.795520, -0.587906,
		0.987252, -0.080589, 0.137258,
		0.061813, -0.600543, -0.797199,
		26.448944, 31.096939, 36.531723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053991, 31.491171, 36.713867>,  <26.405676, 31.517319, 37.089760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053991, 31.491171, 36.713867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731316, 31.452478, 36.480663>,  <26.537710, 31.429264, 36.340740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731316, 31.452478, 36.480663>,  <27.053991, 31.491171, 36.713867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731316, 31.452478, 36.480663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337934, 0.733814, -0.589336,
		0.484826, -0.672429, -0.559271,
		-0.806687, -0.096729, -0.583009,
		26.489309, 31.423460, 36.305759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274971, 31.517393, 35.968861>,  <27.053991, 31.491171, 36.713867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274971, 31.517393, 35.968861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889740, 31.623869, 35.984985>,  <26.658602, 31.687754, 35.994659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889740, 31.623869, 35.984985>,  <27.274971, 31.517393, 35.968861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889740, 31.623869, 35.984985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193192, 0.787591, -0.585131,
		-0.187505, -0.555738, -0.809936,
		-0.963078, 0.266188, 0.040313,
		26.600817, 31.703726, 35.997078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090273, 31.682610, 35.314495>,  <27.274971, 31.517393, 35.968861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090273, 31.682610, 35.314495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810535, 31.866531, 35.533401>,  <26.642693, 31.976885, 35.664745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810535, 31.866531, 35.533401>,  <27.090273, 31.682610, 35.314495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810535, 31.866531, 35.533401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060162, 0.800784, -0.595924,
		-0.712250, -0.383830, -0.587685,
		-0.699343, 0.459804, 0.547267,
		26.600733, 32.004471, 35.697582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758753, 31.883219, 34.783001>,  <27.090273, 31.682610, 35.314495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758753, 31.883219, 34.783001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635466, 32.120377, 35.080585>,  <26.561493, 32.262672, 35.259136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635466, 32.120377, 35.080585>,  <26.758753, 31.883219, 34.783001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635466, 32.120377, 35.080585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031932, 0.788040, -0.614796,
		-0.950781, -0.165734, -0.261818,
		-0.308216, 0.592896, 0.743960,
		26.543001, 32.298244, 35.303772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.212822, 32.427292, 34.694988>,  <26.758753, 31.883219, 34.783001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.212822, 32.427292, 34.694988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205627, 32.533352, 35.080605>,  <26.201311, 32.596989, 35.311974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205627, 32.533352, 35.080605>,  <26.212822, 32.427292, 34.694988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205627, 32.533352, 35.080605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114787, 0.957272, -0.265433,
		-0.993227, -0.115433, 0.013220,
		-0.017984, 0.265153, 0.964039,
		26.200232, 32.612896, 35.369816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.544033, 32.698063, 34.856728>,  <26.212822, 32.427292, 34.694988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.544033, 32.698063, 34.856728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813154, 32.845802, 35.113140>,  <25.974627, 32.934448, 35.266987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813154, 32.845802, 35.113140>,  <25.544033, 32.698063, 34.856728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813154, 32.845802, 35.113140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237942, 0.928455, -0.285227,
		-0.700515, 0.039374, 0.712551,
		0.672802, 0.369351, 0.641028,
		26.014996, 32.956608, 35.305447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.284769, 33.299267, 35.291870>,  <25.544033, 32.698063, 34.856728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.284769, 33.299267, 35.291870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680988, 33.333965, 35.334366>,  <25.918720, 33.354786, 35.359863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680988, 33.333965, 35.334366>,  <25.284769, 33.299267, 35.291870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680988, 33.333965, 35.334366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074223, 0.990396, -0.116652,
		-0.115339, 0.107664, 0.987474,
		0.990549, 0.086747, 0.106241,
		25.978153, 33.359989, 35.366238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.411308, 33.520435, 36.022255>,  <25.284769, 33.299267, 35.291870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.411308, 33.520435, 36.022255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801785, 33.525143, 35.935616>,  <26.036070, 33.527969, 35.883633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801785, 33.525143, 35.935616>,  <25.411308, 33.520435, 36.022255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801785, 33.525143, 35.935616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020920, 0.998981, -0.039995,
		0.215908, 0.043573, 0.975441,
		0.976190, 0.011771, -0.216599,
		26.094641, 33.528675, 35.870636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688684, 34.032520, 36.450161>,  <25.411308, 33.520435, 36.022255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688684, 34.032520, 36.450161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963823, 33.970108, 36.166607>,  <26.128906, 33.932663, 35.996475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963823, 33.970108, 36.166607>,  <25.688684, 34.032520, 36.450161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963823, 33.970108, 36.166607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029346, 0.981803, -0.187623,
		0.725261, 0.108253, 0.679910,
		0.687848, -0.156028, -0.708886,
		26.170177, 33.923298, 35.953941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094547, 34.508713, 36.468952>,  <25.688684, 34.032520, 36.450161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094547, 34.508713, 36.468952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205870, 34.395710, 36.101749>,  <26.272663, 34.327908, 35.881428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205870, 34.395710, 36.101749>,  <26.094547, 34.508713, 36.468952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205870, 34.395710, 36.101749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115970, 0.938890, -0.324093,
		0.953466, 0.196659, 0.228536,
		0.278306, -0.282508, -0.918006,
		26.289362, 34.310959, 35.826347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725029, 34.852791, 36.310333>,  <26.094547, 34.508713, 36.468952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725029, 34.852791, 36.310333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503939, 34.765274, 35.988682>,  <26.371284, 34.712765, 35.795692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503939, 34.765274, 35.988682>,  <26.725029, 34.852791, 36.310333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503939, 34.765274, 35.988682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007130, 0.966127, -0.257970,
		0.833331, -0.136854, -0.535565,
		-0.552728, -0.218793, -0.804128,
		26.338120, 34.699635, 35.747444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160622, 34.932751, 35.734966>,  <26.725029, 34.852791, 36.310333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160622, 34.932751, 35.734966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537115, 34.857742, 35.622597>,  <27.763012, 34.812737, 35.555176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537115, 34.857742, 35.622597>,  <27.160622, 34.932751, 35.734966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537115, 34.857742, 35.622597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000404, 0.831098, -0.556126,
		0.337757, 0.523557, 0.782181,
		0.941233, -0.187520, -0.280921,
		27.819485, 34.801487, 35.538322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242426, 35.464443, 35.173027>,  <27.160622, 34.932751, 35.734966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242426, 35.464443, 35.173027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620155, 35.336960, 35.205719>,  <27.846792, 35.260471, 35.225334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620155, 35.336960, 35.205719>,  <27.242426, 35.464443, 35.173027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620155, 35.336960, 35.205719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315274, 0.805452, -0.501846,
		0.094109, 0.499673, 0.861087,
		0.944323, -0.318707, 0.081734,
		27.903452, 35.241348, 35.230240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624781, 36.044231, 35.396988>,  <27.242426, 35.464443, 35.173027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624781, 36.044231, 35.396988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876383, 35.790997, 35.216522>,  <28.027344, 35.639053, 35.108242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876383, 35.790997, 35.216522>,  <27.624781, 36.044231, 35.396988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876383, 35.790997, 35.216522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334525, 0.744296, -0.578029,
		0.701746, 0.212656, 0.679949,
		0.629004, -0.633089, -0.451168,
		28.065084, 35.601070, 35.081173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344297, 36.342930, 35.349064>,  <27.624781, 36.044231, 35.396988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344297, 36.342930, 35.349064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324959, 36.082829, 35.045792>,  <28.313356, 35.926769, 34.863831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324959, 36.082829, 35.045792>,  <28.344297, 36.342930, 35.349064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324959, 36.082829, 35.045792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335858, 0.704283, -0.625447,
		0.940671, -0.284878, 0.184344,
		-0.048346, -0.650253, -0.758177,
		28.310455, 35.887753, 34.818336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888439, 36.478821, 34.898952>,  <28.344297, 36.342930, 35.349064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888439, 36.478821, 34.898952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644894, 36.269474, 34.660500>,  <28.498766, 36.143864, 34.517429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644894, 36.269474, 34.660500>,  <28.888439, 36.478821, 34.898952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644894, 36.269474, 34.660500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055148, 0.721734, -0.689970,
		0.791357, -0.452972, -0.410573,
		-0.608861, -0.523371, -0.596130,
		28.462234, 36.112461, 34.481659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217054, 36.498787, 34.243465>,  <28.888439, 36.478821, 34.898952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217054, 36.498787, 34.243465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828396, 36.418373, 34.193687>,  <28.595200, 36.370125, 34.163822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828396, 36.418373, 34.193687>,  <29.217054, 36.498787, 34.243465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828396, 36.418373, 34.193687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041641, 0.663619, -0.746911,
		0.232737, -0.720552, -0.653175,
		-0.971648, -0.201032, -0.124445,
		28.536901, 36.358063, 34.156353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085621, 36.188644, 33.540089>,  <29.217054, 36.498787, 34.243465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085621, 36.188644, 33.540089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735600, 36.331242, 33.671047>,  <28.525587, 36.416801, 33.749622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735600, 36.331242, 33.671047>,  <29.085621, 36.188644, 33.540089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735600, 36.331242, 33.671047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073697, 0.570398, -0.818056,
		-0.478379, -0.739972, -0.472857,
		-0.875055, 0.356493, 0.327400,
		28.473083, 36.438190, 33.769268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679178, 36.525116, 33.005890>,  <29.085621, 36.188644, 33.540089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679178, 36.525116, 33.005890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694769, 36.167458, 32.827457>,  <28.704123, 35.952862, 32.720398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694769, 36.167458, 32.827457>,  <28.679178, 36.525116, 33.005890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694769, 36.167458, 32.827457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986248, 0.106177, -0.126653,
		0.160609, -0.435007, 0.885987,
		0.038977, -0.894145, -0.446078,
		28.706463, 35.899216, 32.693634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054247, 36.092709, 32.692024>,  <28.679178, 36.525116, 33.005890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054247, 36.092709, 32.692024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921299, 36.337257, 32.979286>,  <27.841530, 36.483986, 33.151646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921299, 36.337257, 32.979286>,  <28.054247, 36.092709, 32.692024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921299, 36.337257, 32.979286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140161, 0.785008, -0.603420,
		-0.932676, -0.099901, -0.346605,
		-0.332370, 0.611377, 0.718156,
		27.821589, 36.520672, 33.194733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529528, 36.549305, 32.476578>,  <28.054247, 36.092709, 32.692024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529528, 36.549305, 32.476578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679220, 36.774082, 32.771648>,  <27.769035, 36.908947, 32.948692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679220, 36.774082, 32.771648>,  <27.529528, 36.549305, 32.476578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679220, 36.774082, 32.771648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052829, 0.781273, -0.621950,
		-0.925830, 0.271724, 0.262690,
		0.374231, 0.561942, 0.737681,
		27.791489, 36.942665, 32.992954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000170, 37.046394, 32.511833>,  <27.529528, 36.549305, 32.476578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000170, 37.046394, 32.511833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337162, 37.183922, 32.677734>,  <27.539356, 37.266438, 32.777275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337162, 37.183922, 32.677734>,  <27.000170, 37.046394, 32.511833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337162, 37.183922, 32.677734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006588, 0.763236, -0.646086,
		-0.538688, 0.547046, 0.640746,
		0.842479, 0.343818, 0.414750,
		27.589907, 37.287067, 32.802158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998236, 37.863510, 32.624943>,  <27.000170, 37.046394, 32.511833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998236, 37.863510, 32.624943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363777, 37.706688, 32.582668>,  <27.583101, 37.612595, 32.557304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363777, 37.706688, 32.582668>,  <26.998236, 37.863510, 32.624943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363777, 37.706688, 32.582668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233457, 0.720272, -0.653227,
		0.332225, 0.572278, 0.749749,
		0.913851, -0.392053, -0.105690,
		27.637932, 37.589073, 32.550961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515545, 38.033291, 32.179802>,  <26.998236, 37.863510, 32.624943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515545, 38.033291, 32.179802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859844, 37.839973, 32.115871>,  <28.066423, 37.723984, 32.077515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859844, 37.839973, 32.115871>,  <27.515545, 38.033291, 32.179802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859844, 37.839973, 32.115871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157759, 0.551788, -0.818927,
		0.483969, 0.679676, 0.551194,
		0.860747, -0.483291, -0.159823,
		28.118069, 37.694984, 32.067924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003223, 38.585365, 31.996550>,  <27.515545, 38.033291, 32.179802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003223, 38.585365, 31.996550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072195, 38.220650, 31.847466>,  <28.113579, 38.001820, 31.758015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072195, 38.220650, 31.847466>,  <28.003223, 38.585365, 31.996550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072195, 38.220650, 31.847466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112302, 0.394106, -0.912178,
		0.978599, 0.115431, 0.170352,
		0.172431, -0.911787, -0.372709,
		28.123924, 37.947113, 31.735653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607346, 38.108089, 32.101154>,  <28.003223, 38.585365, 31.996550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607346, 38.108089, 32.101154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288361, 38.144554, 32.339729>,  <28.096970, 38.166431, 32.482876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288361, 38.144554, 32.339729>,  <28.607346, 38.108089, 32.101154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288361, 38.144554, 32.339729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330348, -0.761231, 0.558031,
		0.504899, 0.642042, 0.576939,
		-0.797463, 0.091159, 0.596442,
		28.049122, 38.171902, 32.518661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835308, 37.846153, 32.702625>,  <28.607346, 38.108089, 32.101154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835308, 37.846153, 32.702625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440475, 37.817348, 32.759872>,  <28.203575, 37.800064, 32.794220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440475, 37.817348, 32.759872>,  <28.835308, 37.846153, 32.702625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440475, 37.817348, 32.759872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151127, -0.715086, 0.682504,
		0.053194, 0.695317, 0.716732,
		-0.987082, -0.072012, 0.143120,
		28.144350, 37.795746, 32.802807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783426, 37.607410, 33.286747>,  <28.835308, 37.846153, 32.702625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783426, 37.607410, 33.286747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408230, 37.524609, 33.175522>,  <28.183111, 37.474926, 33.108788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408230, 37.524609, 33.175522>,  <28.783426, 37.607410, 33.286747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408230, 37.524609, 33.175522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091110, -0.626711, 0.773907,
		-0.334466, 0.751253, 0.568991,
		-0.937993, -0.207005, -0.278061,
		28.126831, 37.462505, 33.092102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370085, 37.637901, 33.887508>,  <28.783426, 37.607410, 33.286747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370085, 37.637901, 33.887508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212835, 37.407806, 33.600578>,  <28.118486, 37.269749, 33.428421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212835, 37.407806, 33.600578>,  <28.370085, 37.637901, 33.887508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212835, 37.407806, 33.600578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012953, -0.776596, 0.629866,
		-0.919394, 0.256907, 0.297847,
		-0.393124, -0.575237, -0.717326,
		28.094898, 37.235237, 33.385380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720486, 37.291843, 34.145855>,  <28.370085, 37.637901, 33.887508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720486, 37.291843, 34.145855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874392, 37.065723, 33.853992>,  <27.966736, 36.930054, 33.678875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874392, 37.065723, 33.853992>,  <27.720486, 37.291843, 34.145855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874392, 37.065723, 33.853992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028638, -0.797443, 0.602714,
		-0.922571, -0.211007, -0.323016,
		0.384764, -0.565297, -0.729655,
		27.989820, 36.896133, 33.635098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266165, 36.784138, 34.172176>,  <27.720486, 37.291843, 34.145855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266165, 36.784138, 34.172176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615520, 36.657669, 34.024002>,  <27.825134, 36.581787, 33.935097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615520, 36.657669, 34.024002>,  <27.266165, 36.784138, 34.172176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615520, 36.657669, 34.024002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009335, -0.771344, 0.636350,
		-0.486929, -0.552324, -0.676637,
		0.873392, -0.316174, -0.370434,
		27.877539, 36.562817, 33.912872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178328, 36.083408, 33.978546>,  <27.266165, 36.784138, 34.172176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178328, 36.083408, 33.978546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573393, 36.143196, 33.997231>,  <27.810432, 36.179070, 34.008442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573393, 36.143196, 33.997231>,  <27.178328, 36.083408, 33.978546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573393, 36.143196, 33.997231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099260, -0.828233, 0.551523,
		0.121123, -0.540082, -0.832851,
		0.987662, 0.149471, 0.046709,
		27.869692, 36.188038, 34.011242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585978, 35.452805, 33.769558>,  <27.178328, 36.083408, 33.978546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585978, 35.452805, 33.769558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851112, 35.649101, 33.995770>,  <28.010193, 35.766880, 34.131496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851112, 35.649101, 33.995770>,  <27.585978, 35.452805, 33.769558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851112, 35.649101, 33.995770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179691, -0.837467, 0.516101,
		0.726883, -0.240470, -0.643285,
		0.662837, 0.490737, 0.565530,
		28.049963, 35.796322, 34.165428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215689, 35.136787, 33.894703>,  <27.585978, 35.452805, 33.769558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215689, 35.136787, 33.894703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182604, 35.368130, 34.219334>,  <28.162754, 35.506935, 34.414112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182604, 35.368130, 34.219334>,  <28.215689, 35.136787, 33.894703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182604, 35.368130, 34.219334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208597, -0.786282, 0.581591,
		0.974498, 0.217397, -0.055609,
		-0.082711, 0.578359, 0.811579,
		28.157791, 35.541637, 34.462807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783102, 34.822258, 34.357658>,  <28.215689, 35.136787, 33.894703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783102, 34.822258, 34.357658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538651, 35.035591, 34.591610>,  <28.391979, 35.163589, 34.731979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538651, 35.035591, 34.591610>,  <28.783102, 34.822258, 34.357658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538651, 35.035591, 34.591610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096556, -0.683169, 0.723849,
		0.785621, 0.498837, 0.366007,
		-0.611128, 0.533330, 0.584877,
		28.355312, 35.195591, 34.767075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045410, 35.443836, 34.162319>,  <28.783102, 34.822258, 34.357658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045410, 35.443836, 34.162319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226883, 35.467319, 34.518009>,  <29.335768, 35.481411, 34.731422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226883, 35.467319, 34.518009>,  <29.045410, 35.443836, 34.162319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226883, 35.467319, 34.518009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409600, -0.899922, -0.149562,
		0.791454, 0.432081, -0.432327,
		0.453683, 0.058710, 0.889227,
		29.362988, 35.484932, 34.784779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749266, 35.267017, 34.051178>,  <29.045410, 35.443836, 34.162319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749266, 35.267017, 34.051178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663937, 35.185036, 34.433277>,  <29.612740, 35.135849, 34.662537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663937, 35.185036, 34.433277>,  <29.749266, 35.267017, 34.051178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663937, 35.185036, 34.433277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403677, -0.908873, -0.104854,
		0.889685, 0.363242, 0.276616,
		-0.213321, -0.204950, 0.955243,
		29.599939, 35.123550, 34.719849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353069, 35.152523, 34.512520>,  <29.749266, 35.267017, 34.051178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353069, 35.152523, 34.512520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042046, 34.932259, 34.633957>,  <29.855431, 34.800098, 34.706821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042046, 34.932259, 34.633957>,  <30.353069, 35.152523, 34.512520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042046, 34.932259, 34.633957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498056, -0.834066, -0.237222,
		0.383849, -0.033246, 0.922797,
		-0.777561, -0.550662, 0.303597,
		29.808777, 34.767059, 34.725037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437702, 35.570488, 35.135059>,  <30.353069, 35.152523, 34.512520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437702, 35.570488, 35.135059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741871, 35.759331, 35.313438>,  <30.924372, 35.872639, 35.420467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741871, 35.759331, 35.313438>,  <30.437702, 35.570488, 35.135059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741871, 35.759331, 35.313438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576643, 0.174975, 0.798039,
		0.298737, -0.863997, 0.405297,
		0.760420, 0.472115, 0.445946,
		30.969997, 35.900963, 35.447224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528240, 35.372425, 35.812069>,  <30.437702, 35.570488, 35.135059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528240, 35.372425, 35.812069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725914, 35.719517, 35.833366>,  <30.844519, 35.927773, 35.846146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725914, 35.719517, 35.833366>,  <30.528240, 35.372425, 35.812069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725914, 35.719517, 35.833366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518917, 0.245285, 0.818877,
		0.697501, -0.432305, 0.571494,
		0.494184, 0.867726, 0.053244,
		30.874168, 35.979836, 35.849339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602179, 35.494259, 36.592697>,  <30.528240, 35.372425, 35.812069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602179, 35.494259, 36.592697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655233, 35.839165, 36.397182>,  <30.687067, 36.046108, 36.279873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655233, 35.839165, 36.397182>,  <30.602179, 35.494259, 36.592697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655233, 35.839165, 36.397182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538132, 0.476778, 0.695051,
		0.832359, 0.170842, 0.527249,
		0.132637, 0.862262, -0.488786,
		30.695024, 36.097843, 36.250546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902777, 36.034737, 37.056374>,  <30.602179, 35.494259, 36.592697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902777, 36.034737, 37.056374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688978, 36.188530, 36.755314>,  <30.560699, 36.280804, 36.574677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688978, 36.188530, 36.755314>,  <30.902777, 36.034737, 37.056374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688978, 36.188530, 36.755314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506976, 0.566674, 0.649504,
		0.676230, 0.728736, -0.107963,
		-0.534497, 0.384480, -0.752654,
		30.528629, 36.303875, 36.529518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868824, 36.751713, 37.159451>,  <30.902777, 36.034737, 37.056374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868824, 36.751713, 37.159451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537613, 36.650951, 36.959084>,  <30.338886, 36.590496, 36.838863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537613, 36.650951, 36.959084>,  <30.868824, 36.751713, 37.159451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537613, 36.650951, 36.959084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559252, 0.434897, 0.705763,
		0.040064, 0.864529, -0.500983,
		-0.828029, -0.251900, -0.500914,
		30.289204, 36.575382, 36.808811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354469, 37.310314, 37.062599>,  <30.868824, 36.751713, 37.159451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354469, 37.310314, 37.062599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209757, 36.939377, 37.100864>,  <30.122929, 36.716816, 37.123825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209757, 36.939377, 37.100864>,  <30.354469, 37.310314, 37.062599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209757, 36.939377, 37.100864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561868, 0.298778, 0.771386,
		-0.743920, 0.225323, -0.629136,
		-0.361783, -0.927341, 0.095666,
		30.101221, 36.661175, 37.129562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559387, 37.104694, 36.968460>,  <30.354469, 37.310314, 37.062599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559387, 37.104694, 36.968460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739092, 36.884983, 37.250301>,  <29.846914, 36.753159, 37.419407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739092, 36.884983, 37.250301>,  <29.559387, 37.104694, 36.968460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739092, 36.884983, 37.250301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760591, 0.178590, 0.624186,
		-0.468684, -0.816335, -0.337539,
		0.449263, -0.549275, 0.704599,
		29.873871, 36.720200, 37.461681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683914, 36.888447, 36.314934>,  <29.559387, 37.104694, 36.968460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683914, 36.888447, 36.314934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048191, 36.898724, 36.479847>,  <30.266758, 36.904888, 36.578796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048191, 36.898724, 36.479847>,  <29.683914, 36.888447, 36.314934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048191, 36.898724, 36.479847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386838, -0.403119, -0.829368,
		0.144890, 0.914787, -0.377057,
		0.910694, 0.025693, 0.412282,
		30.321400, 36.906433, 36.603531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202547, 37.218700, 35.904480>,  <29.683914, 36.888447, 36.314934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202547, 37.218700, 35.904480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409199, 36.966034, 36.135681>,  <30.533190, 36.814434, 36.274403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409199, 36.966034, 36.135681>,  <30.202547, 37.218700, 35.904480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409199, 36.966034, 36.135681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474455, -0.350748, -0.807384,
		0.712732, 0.691355, 0.118491,
		0.516629, -0.631667, 0.578006,
		30.564188, 36.776535, 36.309082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941254, 37.289295, 35.761559>,  <30.202547, 37.218700, 35.904480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941254, 37.289295, 35.761559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886803, 36.927208, 35.922585>,  <30.854132, 36.709957, 36.019199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886803, 36.927208, 35.922585>,  <30.941254, 37.289295, 35.761559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886803, 36.927208, 35.922585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597544, -0.399129, -0.695440,
		0.790197, 0.145881, 0.595238,
		-0.136125, -0.905215, 0.402561,
		30.845964, 36.655643, 36.043354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556589, 37.081348, 35.887291>,  <30.941254, 37.289295, 35.761559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556589, 37.081348, 35.887291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354895, 36.736572, 35.866100>,  <31.233879, 36.529705, 35.853386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354895, 36.736572, 35.866100>,  <31.556589, 37.081348, 35.887291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354895, 36.736572, 35.866100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667464, -0.350073, -0.657222,
		0.547940, -0.366754, 0.751833,
		-0.504235, -0.861940, -0.052976,
		31.203625, 36.477989, 35.850208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029583, 36.598167, 35.809246>,  <31.556589, 37.081348, 35.887291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029583, 36.598167, 35.809246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690445, 36.412563, 35.706604>,  <31.486961, 36.301201, 35.645020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690445, 36.412563, 35.706604>,  <32.029583, 36.598167, 35.809246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690445, 36.412563, 35.706604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473449, -0.444588, -0.760387,
		0.238742, -0.766184, 0.596628,
		-0.847849, -0.464009, -0.256607,
		31.436090, 36.273361, 35.629623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040592, 35.813614, 35.868664>,  <32.029583, 36.598167, 35.809246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040592, 35.813614, 35.868664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835726, 35.979149, 35.567616>,  <31.712807, 36.078468, 35.386986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835726, 35.979149, 35.567616>,  <32.040592, 35.813614, 35.868664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835726, 35.979149, 35.567616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522289, -0.545575, -0.655410,
		-0.681840, -0.728759, 0.063281,
		-0.512161, 0.413834, -0.752618,
		31.682077, 36.103298, 35.341831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933893, 35.239025, 35.274075>,  <32.040592, 35.813614, 35.868664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933893, 35.239025, 35.274075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886145, 35.598705, 35.105701>,  <31.857496, 35.814514, 35.004677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886145, 35.598705, 35.105701>,  <31.933893, 35.239025, 35.274075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886145, 35.598705, 35.105701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517954, -0.305301, -0.799072,
		-0.847039, -0.313411, -0.429301,
		-0.119372, 0.899203, -0.420934,
		31.850332, 35.868465, 34.979420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647448, 35.198280, 34.676044>,  <31.933893, 35.239025, 35.274075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647448, 35.198280, 34.676044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829325, 35.551395, 34.628815>,  <31.938450, 35.763264, 34.600475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829325, 35.551395, 34.628815>,  <31.647448, 35.198280, 34.676044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829325, 35.551395, 34.628815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239150, -0.248718, -0.938587,
		-0.857941, 0.398529, -0.324209,
		0.454691, 0.882788, -0.118077,
		31.965733, 35.816231, 34.593391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466284, 35.414806, 34.057972>,  <31.647448, 35.198280, 34.676044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466284, 35.414806, 34.057972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799255, 35.623291, 34.133236>,  <31.999039, 35.748383, 34.178394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799255, 35.623291, 34.133236>,  <31.466284, 35.414806, 34.057972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799255, 35.623291, 34.133236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396008, -0.322037, -0.859924,
		-0.387607, 0.790337, -0.474476,
		0.832429, 0.521209, 0.188156,
		32.048985, 35.779655, 34.189682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566216, 35.686958, 33.406384>,  <31.466284, 35.414806, 34.057972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566216, 35.686958, 33.406384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913021, 35.736038, 33.599560>,  <32.121105, 35.765488, 33.715466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913021, 35.736038, 33.599560>,  <31.566216, 35.686958, 33.406384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913021, 35.736038, 33.599560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486191, 0.003902, -0.873844,
		-0.109107, 0.992436, -0.056273,
		0.867015, 0.122702, 0.482939,
		32.173126, 35.772850, 33.744442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930395, 36.271660, 33.098709>,  <31.566216, 35.686958, 33.406384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930395, 36.271660, 33.098709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203087, 36.044056, 33.282654>,  <32.366703, 35.907494, 33.393021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203087, 36.044056, 33.282654>,  <31.930395, 36.271660, 33.098709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203087, 36.044056, 33.282654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619926, 0.115498, -0.776113,
		0.388506, 0.814177, 0.431484,
		0.681729, -0.569013, 0.459858,
		32.407604, 35.873352, 33.420612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468857, 36.638435, 33.153442>,  <31.930395, 36.271660, 33.098709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468857, 36.638435, 33.153442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600437, 36.261265, 33.174137>,  <32.679386, 36.034962, 33.186554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600437, 36.261265, 33.174137>,  <32.468857, 36.638435, 33.153442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600437, 36.261265, 33.174137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625946, 0.176691, -0.759586,
		0.707095, 0.282250, 0.648346,
		0.328950, -0.942929, 0.051736,
		32.699123, 35.978386, 33.189659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189865, 36.691845, 32.969173>,  <32.468857, 36.638435, 33.153442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189865, 36.691845, 32.969173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075821, 36.311581, 32.920261>,  <33.007397, 36.083420, 32.890915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075821, 36.311581, 32.920261>,  <33.189865, 36.691845, 32.969173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075821, 36.311581, 32.920261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578272, -0.068861, -0.812933,
		0.764405, -0.302483, 0.569375,
		-0.285106, -0.950664, -0.122280,
		32.990288, 36.026382, 32.883579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859585, 36.351509, 32.825588>,  <33.189865, 36.691845, 32.969173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859585, 36.351509, 32.825588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571098, 36.111988, 32.686283>,  <33.398006, 35.968277, 32.602699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571098, 36.111988, 32.686283>,  <33.859585, 36.351509, 32.825588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571098, 36.111988, 32.686283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510292, -0.119271, -0.851691,
		0.468458, -0.791966, 0.391584,
		-0.721214, -0.598803, -0.348260,
		33.354733, 35.932346, 32.581806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117359, 35.719604, 32.531464>,  <33.859585, 36.351509, 32.825588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117359, 35.719604, 32.531464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757153, 35.759789, 32.362236>,  <33.541031, 35.783897, 32.260700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757153, 35.759789, 32.362236>,  <34.117359, 35.719604, 32.531464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757153, 35.759789, 32.362236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428215, 0.035844, -0.902966,
		-0.075548, -0.994295, -0.075297,
		-0.900513, 0.100461, -0.423064,
		33.487000, 35.789925, 32.235317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297474, 35.374863, 31.896498>,  <34.117359, 35.719604, 32.531464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297474, 35.374863, 31.896498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937363, 35.529011, 31.815525>,  <33.721294, 35.621502, 31.766941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937363, 35.529011, 31.815525>,  <34.297474, 35.374863, 31.896498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937363, 35.529011, 31.815525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211113, -0.020150, -0.977254,
		-0.380687, -0.922540, -0.063217,
		-0.900282, 0.385374, -0.202431,
		33.667278, 35.644623, 31.754795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978580, 34.956284, 31.317371>,  <34.297474, 35.374863, 31.896498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978580, 34.956284, 31.317371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827118, 35.326244, 31.331099>,  <33.736240, 35.548222, 31.339334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827118, 35.326244, 31.331099>,  <33.978580, 34.956284, 31.317371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827118, 35.326244, 31.331099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123979, 0.087435, -0.988425,
		-0.917195, -0.370020, -0.147776,
		-0.378657, 0.924900, 0.034320,
		33.713520, 35.603714, 31.341394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530449, 34.935085, 30.730183>,  <33.978580, 34.956284, 31.317371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530449, 34.935085, 30.730183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616093, 35.316967, 30.812838>,  <33.667480, 35.546097, 30.862431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616093, 35.316967, 30.812838>,  <33.530449, 34.935085, 30.730183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616093, 35.316967, 30.812838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128611, 0.182149, -0.974823,
		-0.968305, 0.235299, -0.083785,
		0.214114, 0.954702, 0.206638,
		33.680328, 35.603378, 30.874828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089901, 35.429924, 30.376532>,  <33.530449, 34.935085, 30.730183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089901, 35.429924, 30.376532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418221, 35.642643, 30.459942>,  <33.615211, 35.770275, 30.509989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418221, 35.642643, 30.459942>,  <33.089901, 35.429924, 30.376532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418221, 35.642643, 30.459942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070147, 0.268453, -0.960735,
		-0.566892, 0.803199, 0.183043,
		0.820800, 0.531794, 0.208526,
		33.664459, 35.802181, 30.522499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152302, 35.921089, 29.913486>,  <33.089901, 35.429924, 30.376532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152302, 35.921089, 29.913486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513706, 35.970894, 30.077520>,  <33.730549, 36.000778, 30.175940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513706, 35.970894, 30.077520>,  <33.152302, 35.921089, 29.913486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513706, 35.970894, 30.077520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375135, 0.232921, -0.897230,
		-0.207234, 0.964492, 0.163737,
		0.903509, 0.124513, 0.410084,
		33.784760, 36.008247, 30.200546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362835, 36.643192, 29.887691>,  <33.152302, 35.921089, 29.913486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362835, 36.643192, 29.887691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683239, 36.403873, 29.879427>,  <33.875481, 36.260281, 29.874468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683239, 36.403873, 29.879427>,  <33.362835, 36.643192, 29.887691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683239, 36.403873, 29.879427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310162, 0.444273, -0.840488,
		0.512045, 0.666827, 0.541435,
		0.801005, -0.598300, -0.020663,
		33.923542, 36.224384, 29.873228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797466, 37.061684, 29.460842>,  <33.362835, 36.643192, 29.887691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797466, 37.061684, 29.460842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968590, 36.700382, 29.447441>,  <34.071262, 36.483601, 29.439400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968590, 36.700382, 29.447441>,  <33.797466, 37.061684, 29.460842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968590, 36.700382, 29.447441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345649, 0.197732, -0.917294,
		0.835170, 0.380843, 0.396799,
		0.427805, -0.903250, -0.033502,
		34.096931, 36.429409, 29.437391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607727, 37.063599, 29.384165>,  <33.797466, 37.061684, 29.460842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607727, 37.063599, 29.384165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451176, 36.721394, 29.248562>,  <34.357246, 36.516071, 29.167200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451176, 36.721394, 29.248562>,  <34.607727, 37.063599, 29.384165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451176, 36.721394, 29.248562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574588, 0.060569, -0.816199,
		0.718800, -0.514230, 0.467860,
		-0.391376, -0.855511, -0.339008,
		34.333763, 36.464741, 29.146860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113411, 36.867630, 28.953735>,  <34.607727, 37.063599, 29.384165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113411, 36.867630, 28.953735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787567, 36.657856, 28.854633>,  <34.592060, 36.531994, 28.795172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787567, 36.657856, 28.854633>,  <35.113411, 36.867630, 28.953735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787567, 36.657856, 28.854633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271544, 0.032618, -0.961873,
		0.512519, -0.850827, 0.115836,
		-0.814609, -0.524433, -0.247754,
		34.543186, 36.500526, 28.780308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321339, 36.400227, 28.415546>,  <35.113411, 36.867630, 28.953735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321339, 36.400227, 28.415546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926083, 36.401577, 28.354139>,  <34.688931, 36.402386, 28.317295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926083, 36.401577, 28.354139>,  <35.321339, 36.400227, 28.415546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926083, 36.401577, 28.354139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153371, 0.070512, -0.985650,
		0.007496, -0.997505, -0.070194,
		-0.988140, 0.003377, -0.153517,
		34.629639, 36.402588, 28.308084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203575, 35.968922, 27.886333>,  <35.321339, 36.400227, 28.415546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203575, 35.968922, 27.886333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870983, 36.191139, 27.886143>,  <34.671429, 36.324471, 27.886028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870983, 36.191139, 27.886143>,  <35.203575, 35.968922, 27.886333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870983, 36.191139, 27.886143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116515, 0.173551, -0.977908,
		-0.543192, -0.813171, -0.209034,
		-0.831484, 0.555548, -0.000475,
		34.621536, 36.357803, 27.886000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839642, 35.777557, 27.323790>,  <35.203575, 35.968922, 27.886333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839642, 35.777557, 27.323790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667889, 36.128571, 27.409170>,  <34.564835, 36.339180, 27.460400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667889, 36.128571, 27.409170>,  <34.839642, 35.777557, 27.323790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667889, 36.128571, 27.409170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005739, 0.233694, -0.972293,
		-0.903104, -0.418712, -0.095308,
		-0.429384, 0.877535, 0.213453,
		34.539074, 36.391830, 27.473206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262543, 35.845261, 26.864100>,  <34.839642, 35.777557, 27.323790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262543, 35.845261, 26.864100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353611, 36.217754, 26.977919>,  <34.408253, 36.441250, 27.046209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353611, 36.217754, 26.977919>,  <34.262543, 35.845261, 26.864100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353611, 36.217754, 26.977919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026126, 0.297958, -0.954221,
		-0.973388, 0.209813, 0.092166,
		0.227669, 0.931236, 0.284547,
		34.421913, 36.497124, 27.063282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943626, 36.250103, 26.365002>,  <34.262543, 35.845261, 26.864100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943626, 36.250103, 26.365002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141514, 36.561642, 26.519218>,  <34.260246, 36.748566, 26.611750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141514, 36.561642, 26.519218>,  <33.943626, 36.250103, 26.365002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141514, 36.561642, 26.519218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033466, 0.460382, -0.887090,
		-0.868408, 0.425959, 0.253825,
		0.494720, 0.778850, 0.385544,
		34.289928, 36.795296, 26.634882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662243, 36.916767, 26.031193>,  <33.943626, 36.250103, 26.365002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662243, 36.916767, 26.031193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033310, 36.960484, 26.174015>,  <34.255951, 36.986713, 26.259708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033310, 36.960484, 26.174015>,  <33.662243, 36.916767, 26.031193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033310, 36.960484, 26.174015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282460, 0.420040, -0.862428,
		-0.244232, 0.900901, 0.358787,
		0.927667, 0.109290, 0.357056,
		34.311611, 36.993271, 26.281132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840080, 37.598610, 25.857792>,  <33.662243, 36.916767, 26.031193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840080, 37.598610, 25.857792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178844, 37.397381, 25.926678>,  <34.382103, 37.276642, 25.968008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178844, 37.397381, 25.926678>,  <33.840080, 37.598610, 25.857792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178844, 37.397381, 25.926678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381118, 0.348453, -0.856346,
		0.370800, 0.790881, 0.486840,
		0.846910, -0.503077, 0.172213,
		34.432919, 37.246456, 25.978342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341522, 38.071873, 25.857178>,  <33.840080, 37.598610, 25.857792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341522, 38.071873, 25.857178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496304, 37.714092, 25.767538>,  <34.589172, 37.499424, 25.713755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496304, 37.714092, 25.767538>,  <34.341522, 38.071873, 25.857178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496304, 37.714092, 25.767538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245991, 0.334357, -0.909777,
		0.888682, 0.296914, 0.349408,
		0.386952, -0.894454, -0.224099,
		34.612389, 37.445755, 25.700308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820724, 38.227951, 25.388371>,  <34.341522, 38.071873, 25.857178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820724, 38.227951, 25.388371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837833, 37.831097, 25.341322>,  <34.848099, 37.592983, 25.313093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837833, 37.831097, 25.341322>,  <34.820724, 38.227951, 25.388371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837833, 37.831097, 25.341322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391685, 0.124956, -0.911575,
		0.919105, -0.007077, 0.393950,
		0.042776, -0.992137, -0.117620,
		34.850666, 37.533455, 25.306036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506260, 38.056499, 25.210085>,  <34.820724, 38.227951, 25.388371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506260, 38.056499, 25.210085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272388, 37.758980, 25.080519>,  <35.132065, 37.580467, 25.002779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272388, 37.758980, 25.080519>,  <35.506260, 38.056499, 25.210085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272388, 37.758980, 25.080519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432634, 0.051890, -0.900075,
		0.686280, -0.666390, 0.291452,
		-0.584678, -0.743796, -0.323914,
		35.096985, 37.535843, 24.983345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894478, 37.631161, 24.834381>,  <35.506260, 38.056499, 25.210085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894478, 37.631161, 24.834381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547501, 37.496910, 24.687469>,  <35.339314, 37.416359, 24.599321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547501, 37.496910, 24.687469>,  <35.894478, 37.631161, 24.834381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547501, 37.496910, 24.687469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380831, 0.027134, -0.924246,
		0.320167, -0.941605, 0.104280,
		-0.867445, -0.335626, -0.367280,
		35.287266, 37.396221, 24.577286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069298, 37.177364, 24.326281>,  <35.894478, 37.631161, 24.834381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069298, 37.177364, 24.326281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689827, 37.272911, 24.243385>,  <35.462143, 37.330238, 24.193647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689827, 37.272911, 24.243385>,  <36.069298, 37.177364, 24.326281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689827, 37.272911, 24.243385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276340, 0.307552, -0.910521,
		-0.153756, -0.921062, -0.357777,
		-0.948681, 0.238866, -0.207239,
		35.405224, 37.344570, 24.181213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918987, 36.822659, 23.796793>,  <36.069298, 37.177364, 24.326281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918987, 36.822659, 23.796793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658253, 37.125916, 23.804045>,  <35.501812, 37.307869, 23.808395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658253, 37.125916, 23.804045>,  <35.918987, 36.822659, 23.796793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658253, 37.125916, 23.804045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171466, 0.170628, -0.970302,
		-0.738720, -0.629371, -0.241217,
		-0.651838, 0.758141, 0.018130,
		35.462700, 37.353359, 23.809484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448605, 36.678020, 23.171568>,  <35.918987, 36.822659, 23.796793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448605, 36.678020, 23.171568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435787, 37.065018, 23.271908>,  <35.428097, 37.297218, 23.332111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435787, 37.065018, 23.271908>,  <35.448605, 36.678020, 23.171568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435787, 37.065018, 23.271908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076630, 0.252617, -0.964527,
		-0.996544, -0.011689, -0.082235,
		-0.032048, 0.967496, 0.250848,
		35.426174, 37.355267, 23.347162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000507, 37.074120, 22.718796>,  <35.448605, 36.678020, 23.171568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000507, 37.074120, 22.718796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253269, 37.352272, 22.855698>,  <35.404926, 37.519165, 22.937840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253269, 37.352272, 22.855698>,  <35.000507, 37.074120, 22.718796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253269, 37.352272, 22.855698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198113, 0.282004, -0.938736,
		-0.749297, 0.660998, 0.040435,
		0.631906, 0.695382, 0.342257,
		35.442841, 37.560886, 22.958374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086525, 37.558891, 22.196531>,  <35.000507, 37.074120, 22.718796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086525, 37.558891, 22.196531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373314, 37.709988, 22.430883>,  <35.545387, 37.800644, 22.571495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373314, 37.709988, 22.430883>,  <35.086525, 37.558891, 22.196531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373314, 37.709988, 22.430883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383443, 0.488189, -0.783992,
		-0.582165, 0.786756, 0.205179,
		0.716977, 0.377738, 0.585882,
		35.588406, 37.823311, 22.606647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075794, 38.252384, 21.976282>,  <35.086525, 37.558891, 22.196531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075794, 38.252384, 21.976282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429729, 38.200500, 22.155275>,  <35.642090, 38.169369, 22.262671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429729, 38.200500, 22.155275>,  <35.075794, 38.252384, 21.976282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429729, 38.200500, 22.155275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442724, 0.533255, -0.720857,
		-0.145119, 0.835951, 0.529269,
		0.884837, -0.129710, 0.447481,
		35.695179, 38.161587, 22.289520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437000, 38.924458, 21.932583>,  <35.075794, 38.252384, 21.976282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437000, 38.924458, 21.932583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717979, 38.645874, 21.991240>,  <35.886566, 38.478722, 22.026434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717979, 38.645874, 21.991240>,  <35.437000, 38.924458, 21.932583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717979, 38.645874, 21.991240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540058, 0.387383, -0.747176,
		0.463574, 0.604049, 0.648247,
		0.702451, -0.696462, 0.146641,
		35.928715, 38.436935, 22.035233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920403, 39.276497, 21.591938>,  <35.437000, 38.924458, 21.932583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920403, 39.276497, 21.591938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037762, 38.896011, 21.630131>,  <36.108177, 38.667721, 21.653046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037762, 38.896011, 21.630131>,  <35.920403, 39.276497, 21.591938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037762, 38.896011, 21.630131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587992, 0.100802, -0.802561,
		0.753780, 0.291611, 0.588879,
		0.293395, -0.951211, 0.095482,
		36.125782, 38.610649, 21.658775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644611, 39.313046, 21.673159>,  <35.920403, 39.276497, 21.591938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644611, 39.313046, 21.673159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532055, 38.956757, 21.530371>,  <36.464520, 38.742981, 21.444698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532055, 38.956757, 21.530371>,  <36.644611, 39.313046, 21.673159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532055, 38.956757, 21.530371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649731, 0.096900, -0.753963,
		0.706164, -0.444092, 0.551466,
		-0.281392, -0.890726, -0.356968,
		36.447636, 38.689537, 21.423281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334652, 38.987129, 21.550985>,  <36.644611, 39.313046, 21.673159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334652, 38.987129, 21.550985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055035, 38.804504, 21.330845>,  <36.887264, 38.694931, 21.198761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055035, 38.804504, 21.330845>,  <37.334652, 38.987129, 21.550985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055035, 38.804504, 21.330845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522000, 0.200200, -0.829118,
		0.488725, -0.866874, 0.098377,
		-0.699045, -0.456563, -0.550351,
		36.845322, 38.667534, 21.165739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778416, 38.721592, 21.048115>,  <37.334652, 38.987129, 21.550985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778416, 38.721592, 21.048115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405415, 38.721500, 20.903652>,  <37.181614, 38.721443, 20.816975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405415, 38.721500, 20.903652>,  <37.778416, 38.721592, 21.048115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405415, 38.721500, 20.903652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349927, 0.246854, -0.903667,
		0.089364, -0.969052, -0.230111,
		-0.932505, -0.000233, -0.361158,
		37.125664, 38.721432, 20.795305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898651, 38.332748, 20.358650>,  <37.778416, 38.721592, 21.048115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898651, 38.332748, 20.358650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559155, 38.543961, 20.347166>,  <37.355457, 38.670689, 20.340275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559155, 38.543961, 20.347166>,  <37.898651, 38.332748, 20.358650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559155, 38.543961, 20.347166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236218, 0.329994, -0.913950,
		-0.473123, -0.782485, -0.404809,
		-0.848737, 0.528035, -0.028710,
		37.304535, 38.702370, 20.338552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578068, 38.214542, 19.709215>,  <37.898651, 38.332748, 20.358650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578068, 38.214542, 19.709215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416939, 38.566010, 19.811724>,  <37.320263, 38.776890, 19.873228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416939, 38.566010, 19.811724>,  <37.578068, 38.214542, 19.709215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416939, 38.566010, 19.811724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076759, 0.311437, -0.947161,
		-0.912054, -0.361867, -0.192900,
		-0.402822, 0.878669, 0.256271,
		37.296093, 38.829609, 19.888605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998158, 38.328339, 19.329115>,  <37.578068, 38.214542, 19.709215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998158, 38.328339, 19.329115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107170, 38.704296, 19.411417>,  <37.172577, 38.929871, 19.460798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107170, 38.704296, 19.411417>,  <36.998158, 38.328339, 19.329115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107170, 38.704296, 19.411417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025249, 0.220764, -0.975000,
		-0.961816, 0.260521, 0.083896,
		0.272530, 0.939889, 0.205756,
		37.188931, 38.986263, 19.473145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470356, 38.917713, 19.144331>,  <36.998158, 38.328339, 19.329115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470356, 38.917713, 19.144331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836342, 39.078987, 19.137707>,  <37.055935, 39.175751, 19.133732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836342, 39.078987, 19.137707>,  <36.470356, 38.917713, 19.144331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836342, 39.078987, 19.137707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169357, 0.346424, -0.922664,
		-0.366271, 0.847012, 0.385249,
		0.914967, 0.403189, -0.016563,
		37.110832, 39.199944, 19.132738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325775, 39.529640, 18.834623>,  <36.470356, 38.917713, 19.144331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325775, 39.529640, 18.834623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720921, 39.483860, 18.792639>,  <36.958008, 39.456390, 18.767448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720921, 39.483860, 18.792639>,  <36.325775, 39.529640, 18.834623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720921, 39.483860, 18.792639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077684, 0.221039, -0.972166,
		0.134469, 0.968526, 0.209466,
		0.987868, -0.114454, -0.104962,
		37.017281, 39.449524, 18.761150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669601, 40.123142, 18.454130>,  <36.325775, 39.529640, 18.834623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669601, 40.123142, 18.454130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905449, 39.802376, 18.415579>,  <37.046955, 39.609917, 18.392448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905449, 39.802376, 18.415579>,  <36.669601, 40.123142, 18.454130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905449, 39.802376, 18.415579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119818, 0.204849, -0.971432,
		0.798748, 0.561222, 0.216866,
		0.589614, -0.801914, -0.096378,
		37.082333, 39.561802, 18.386665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364624, 40.192310, 18.301565>,  <36.669601, 40.123142, 18.454130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364624, 40.192310, 18.301565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237560, 39.855484, 18.127199>,  <37.161320, 39.653389, 18.022579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237560, 39.855484, 18.127199>,  <37.364624, 40.192310, 18.301565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237560, 39.855484, 18.127199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307159, 0.343553, -0.887482,
		0.897075, -0.415814, 0.149513,
		-0.317662, -0.842062, -0.435915,
		37.142262, 39.602867, 17.996426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889919, 40.035976, 17.736443>,  <37.364624, 40.192310, 18.301565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889919, 40.035976, 17.736443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588264, 39.821922, 17.584177>,  <37.407272, 39.693489, 17.492817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588264, 39.821922, 17.584177>,  <37.889919, 40.035976, 17.736443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588264, 39.821922, 17.584177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508083, -0.108181, -0.854487,
		0.416088, -0.837809, 0.353478,
		-0.754137, -0.535137, -0.380664,
		37.362022, 39.661381, 17.469978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453533, 40.708424, 17.793919>,  <37.889919, 40.035976, 17.736443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453533, 40.708424, 17.793919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697262, 40.992348, 17.652555>,  <37.843498, 41.162701, 17.567738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697262, 40.992348, 17.652555>,  <37.453533, 40.708424, 17.793919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697262, 40.992348, 17.652555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130782, 0.529563, 0.838128,
		0.782062, -0.464472, 0.415505,
		0.609324, 0.709809, -0.353407,
		37.880058, 41.205292, 17.546534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827023, 40.870419, 18.371237>,  <37.453533, 40.708424, 17.793919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827023, 40.870419, 18.371237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886356, 41.191513, 18.140200>,  <37.921955, 41.384171, 18.001577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886356, 41.191513, 18.140200>,  <37.827023, 40.870419, 18.371237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886356, 41.191513, 18.140200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059535, 0.590243, 0.805027,
		0.987144, -0.085024, 0.135343,
		0.148332, 0.802735, -0.577593,
		37.930855, 41.432335, 17.966921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408451, 41.283955, 18.637207>,  <37.827023, 40.870419, 18.371237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408451, 41.283955, 18.637207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130543, 41.496803, 18.443657>,  <37.963799, 41.624512, 18.327526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130543, 41.496803, 18.443657>,  <38.408451, 41.283955, 18.637207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130543, 41.496803, 18.443657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248554, 0.453678, 0.855802,
		0.674915, 0.714858, -0.182943,
		-0.694774, 0.532122, -0.483875,
		37.922112, 41.656441, 18.298494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503399, 42.008862, 18.751888>,  <38.408451, 41.283955, 18.637207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503399, 42.008862, 18.751888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121437, 41.895004, 18.718086>,  <37.892262, 41.826691, 18.697805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121437, 41.895004, 18.718086>,  <38.503399, 42.008862, 18.751888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121437, 41.895004, 18.718086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122024, 0.116736, 0.985638,
		-0.270692, 0.951499, -0.146205,
		-0.954901, -0.284644, -0.084506,
		37.834969, 41.809612, 18.692734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021053, 42.566242, 19.016230>,  <38.503399, 42.008862, 18.751888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021053, 42.566242, 19.016230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877625, 42.193256, 19.033829>,  <37.791569, 41.969463, 19.044388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877625, 42.193256, 19.033829>,  <38.021053, 42.566242, 19.016230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877625, 42.193256, 19.033829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183883, 0.116762, 0.975988,
		-0.915213, 0.341869, -0.213332,
		-0.358569, -0.932466, 0.043998,
		37.770054, 41.913517, 19.047028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550034, 42.665691, 19.636124>,  <38.021053, 42.566242, 19.016230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550034, 42.665691, 19.636124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551853, 42.269943, 19.577982>,  <37.552944, 42.032494, 19.543097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551853, 42.269943, 19.577982>,  <37.550034, 42.665691, 19.636124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551853, 42.269943, 19.577982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317631, -0.139256, 0.937933,
		-0.948204, 0.041906, -0.314887,
		0.004545, -0.989369, -0.145354,
		37.553215, 41.973133, 19.534376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932018, 42.441727, 19.893808>,  <37.550034, 42.665691, 19.636124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932018, 42.441727, 19.893808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159729, 42.113144, 19.907312>,  <37.296356, 41.915997, 19.915415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159729, 42.113144, 19.907312>,  <36.932018, 42.441727, 19.893808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159729, 42.113144, 19.907312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333549, -0.193230, 0.922717,
		-0.751445, -0.536542, -0.383996,
		0.569277, -0.821452, 0.033761,
		37.330513, 41.866707, 19.917440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484592, 42.046638, 20.184233>,  <36.932018, 42.441727, 19.893808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484592, 42.046638, 20.184233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843304, 41.872261, 20.214527>,  <37.058533, 41.767635, 20.232704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843304, 41.872261, 20.214527>,  <36.484592, 42.046638, 20.184233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843304, 41.872261, 20.214527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196928, -0.239957, 0.950600,
		-0.396237, -0.867394, -0.301038,
		0.896781, -0.435946, 0.075734,
		37.112339, 41.741478, 20.237247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467239, 41.284000, 20.282375>,  <36.484592, 42.046638, 20.184233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467239, 41.284000, 20.282375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821003, 41.374672, 20.445559>,  <37.033260, 41.429077, 20.543468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821003, 41.374672, 20.445559>,  <36.467239, 41.284000, 20.282375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821003, 41.374672, 20.445559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296764, -0.401493, 0.866449,
		0.360202, -0.887366, -0.287815,
		0.884413, 0.226683, 0.407957,
		37.086327, 41.442677, 20.567945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565826, 40.763702, 20.753244>,  <36.467239, 41.284000, 20.282375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565826, 40.763702, 20.753244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856396, 41.004108, 20.886566>,  <37.030735, 41.148354, 20.966558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856396, 41.004108, 20.886566>,  <36.565826, 40.763702, 20.753244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856396, 41.004108, 20.886566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218961, -0.257309, 0.941195,
		0.651439, -0.756682, -0.055314,
		0.726418, 0.601019, 0.333305,
		37.074322, 41.184414, 20.986557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826908, 40.427036, 21.274145>,  <36.565826, 40.763702, 20.753244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826908, 40.427036, 21.274145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937454, 40.808044, 21.325247>,  <37.003784, 41.036652, 21.355907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937454, 40.808044, 21.325247>,  <36.826908, 40.427036, 21.274145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937454, 40.808044, 21.325247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122606, -0.096902, 0.987713,
		0.953199, -0.288636, 0.090005,
		0.276368, 0.952523, 0.127755,
		37.020363, 41.093800, 21.363573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346714, 40.411510, 21.732784>,  <36.826908, 40.427036, 21.274145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346714, 40.411510, 21.732784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187901, 40.778370, 21.746634>,  <37.092613, 40.998486, 21.754942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187901, 40.778370, 21.746634>,  <37.346714, 40.411510, 21.732784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187901, 40.778370, 21.746634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153071, -0.103363, 0.982795,
		0.904950, 0.384902, 0.181428,
		-0.397033, 0.917151, 0.034621,
		37.068790, 41.053516, 21.757019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642845, 40.856869, 22.258400>,  <37.346714, 40.411510, 21.732784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642845, 40.856869, 22.258400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270641, 40.993130, 22.204586>,  <37.047318, 41.074886, 22.172298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270641, 40.993130, 22.204586>,  <37.642845, 40.856869, 22.258400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270641, 40.993130, 22.204586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125131, 0.049538, 0.990903,
		0.344222, 0.938882, -0.003469,
		-0.930513, 0.340656, -0.134535,
		36.991489, 41.095325, 22.164225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665649, 41.317661, 22.741209>,  <37.642845, 40.856869, 22.258400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665649, 41.317661, 22.741209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286980, 41.234451, 22.642790>,  <37.059780, 41.184525, 22.583738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286980, 41.234451, 22.642790>,  <37.665649, 41.317661, 22.741209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286980, 41.234451, 22.642790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256053, 0.022190, 0.966408,
		-0.195577, 0.977872, -0.074272,
		-0.946671, -0.208025, -0.246047,
		37.002979, 41.172043, 22.568975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241447, 41.704498, 23.234503>,  <37.665649, 41.317661, 22.741209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241447, 41.704498, 23.234503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004395, 41.428753, 23.067856>,  <36.862164, 41.263306, 22.967867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004395, 41.428753, 23.067856>,  <37.241447, 41.704498, 23.234503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004395, 41.428753, 23.067856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425776, -0.170955, 0.888532,
		-0.683741, 0.703959, -0.192199,
		-0.592633, -0.689360, -0.416617,
		36.826603, 41.221947, 22.942871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666492, 41.884449, 23.482561>,  <37.241447, 41.704498, 23.234503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666492, 41.884449, 23.482561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593727, 41.508919, 23.365595>,  <36.550068, 41.283600, 23.295414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593727, 41.508919, 23.365595>,  <36.666492, 41.884449, 23.482561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593727, 41.508919, 23.365595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339892, -0.219014, 0.914607,
		-0.922703, 0.265770, -0.279258,
		-0.181914, -0.938829, -0.292418,
		36.539154, 41.227272, 23.277870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022984, 41.746719, 23.724882>,  <36.666492, 41.884449, 23.482561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022984, 41.746719, 23.724882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153164, 41.370098, 23.690092>,  <36.231274, 41.144127, 23.669218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153164, 41.370098, 23.690092>,  <36.022984, 41.746719, 23.724882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153164, 41.370098, 23.690092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355661, -0.207124, 0.911375,
		-0.876120, -0.265674, -0.402281,
		0.325450, -0.941550, -0.086976,
		36.250797, 41.087631, 23.664000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434845, 41.369095, 24.055601>,  <36.022984, 41.746719, 23.724882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434845, 41.369095, 24.055601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726868, 41.097198, 24.027418>,  <35.902081, 40.934059, 24.010508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726868, 41.097198, 24.027418>,  <35.434845, 41.369095, 24.055601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726868, 41.097198, 24.027418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274795, -0.386400, 0.880445,
		-0.625700, -0.623416, -0.468884,
		0.730060, -0.679741, -0.070459,
		35.945885, 40.893276, 24.006281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097763, 40.703449, 24.196922>,  <35.434845, 41.369095, 24.055601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097763, 40.703449, 24.196922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490112, 40.645073, 24.248457>,  <35.725521, 40.610046, 24.279377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490112, 40.645073, 24.248457>,  <35.097763, 40.703449, 24.196922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490112, 40.645073, 24.248457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159158, -0.220111, 0.962403,
		-0.112092, -0.964497, -0.239127,
		0.980869, -0.145936, 0.128835,
		35.784374, 40.601292, 24.287107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191193, 39.992470, 24.425262>,  <35.097763, 40.703449, 24.196922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191193, 39.992470, 24.425262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512062, 40.199860, 24.543720>,  <35.704582, 40.324295, 24.614796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512062, 40.199860, 24.543720>,  <35.191193, 39.992470, 24.425262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512062, 40.199860, 24.543720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130169, -0.332195, 0.934186,
		0.582732, -0.787926, -0.198987,
		0.802171, 0.518478, 0.296144,
		35.752712, 40.355404, 24.632563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619236, 39.487206, 24.823568>,  <35.191193, 39.992470, 24.425262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619236, 39.487206, 24.823568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715626, 39.862728, 24.922016>,  <35.773460, 40.088043, 24.981085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715626, 39.862728, 24.922016>,  <35.619236, 39.487206, 24.823568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715626, 39.862728, 24.922016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010058, -0.255997, 0.966625,
		0.970479, -0.230457, -0.071132,
		0.240975, 0.938805, 0.246122,
		35.787918, 40.144371, 24.995853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959152, 39.432938, 25.465651>,  <35.619236, 39.487206, 24.823568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959152, 39.432938, 25.465651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903255, 39.828495, 25.485893>,  <35.869717, 40.065830, 25.498039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903255, 39.828495, 25.485893>,  <35.959152, 39.432938, 25.465651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903255, 39.828495, 25.485893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228153, -0.081891, 0.970175,
		0.963545, 0.124025, 0.237062,
		-0.139739, 0.988894, 0.050609,
		35.861332, 40.125164, 25.501076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271702, 39.660755, 26.185701>,  <35.959152, 39.432938, 25.465651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271702, 39.660755, 26.185701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990761, 39.921455, 26.071215>,  <35.822197, 40.077877, 26.002523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990761, 39.921455, 26.071215>,  <36.271702, 39.660755, 26.185701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990761, 39.921455, 26.071215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326259, 0.062616, 0.943204,
		0.632658, 0.755842, 0.168662,
		-0.702352, 0.651753, -0.286215,
		35.780056, 40.116982, 25.985350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379822, 40.270981, 26.614172>,  <36.271702, 39.660755, 26.185701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379822, 40.270981, 26.614172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013107, 40.223507, 26.461634>,  <35.793079, 40.195023, 26.370111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013107, 40.223507, 26.461634>,  <36.379822, 40.270981, 26.614172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013107, 40.223507, 26.461634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382881, -0.010483, 0.923738,
		-0.113632, 0.992877, -0.035832,
		-0.916782, -0.118685, -0.381345,
		35.738071, 40.187901, 26.347231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958164, 40.633121, 27.083603>,  <36.379822, 40.270981, 26.614172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958164, 40.633121, 27.083603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680443, 40.419727, 26.890385>,  <35.513809, 40.291691, 26.774454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680443, 40.419727, 26.890385>,  <35.958164, 40.633121, 27.083603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680443, 40.419727, 26.890385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605148, 0.069473, 0.793076,
		-0.389537, 0.842951, -0.371073,
		-0.694303, -0.533487, -0.483048,
		35.472153, 40.259682, 26.745470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326290, 40.876503, 27.325706>,  <35.958164, 40.633121, 27.083603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326290, 40.876503, 27.325706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234936, 40.513279, 27.185272>,  <35.180122, 40.295345, 27.101011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234936, 40.513279, 27.185272>,  <35.326290, 40.876503, 27.325706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234936, 40.513279, 27.185272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477564, -0.209757, 0.853191,
		-0.848393, 0.362526, -0.385751,
		-0.228390, -0.908062, -0.351085,
		35.166420, 40.240860, 27.079947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639515, 40.785809, 27.427530>,  <35.326290, 40.876503, 27.325706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639515, 40.785809, 27.427530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756298, 40.407032, 27.373758>,  <34.826366, 40.179768, 27.341496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756298, 40.407032, 27.373758>,  <34.639515, 40.785809, 27.427530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756298, 40.407032, 27.373758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616270, -0.293738, 0.730704,
		-0.731418, -0.130489, -0.669328,
		0.291956, -0.946938, -0.134429,
		34.843884, 40.122952, 27.333429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926384, 40.433258, 27.332945>,  <34.639515, 40.785809, 27.427530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926384, 40.433258, 27.332945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223644, 40.183662, 27.429579>,  <34.402000, 40.033905, 27.487558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223644, 40.183662, 27.429579>,  <33.926384, 40.433258, 27.332945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223644, 40.183662, 27.429579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559129, -0.380765, 0.736474,
		-0.367564, -0.682389, -0.631856,
		0.743150, -0.623990, 0.241588,
		34.446590, 39.996464, 27.502054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662659, 39.718388, 27.420973>,  <33.926384, 40.433258, 27.332945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662659, 39.718388, 27.420973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000835, 39.718941, 27.634598>,  <34.203743, 39.719273, 27.762774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000835, 39.718941, 27.634598>,  <33.662659, 39.718388, 27.420973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000835, 39.718941, 27.634598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472730, -0.463363, 0.749547,
		0.248499, -0.886167, -0.391095,
		0.845443, 0.001379, 0.534064,
		34.254467, 39.719353, 27.794817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695465, 39.095512, 27.634476>,  <33.662659, 39.718388, 27.420973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695465, 39.095512, 27.634476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960354, 39.263241, 27.882872>,  <34.119286, 39.363880, 28.031910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960354, 39.263241, 27.882872>,  <33.695465, 39.095512, 27.634476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960354, 39.263241, 27.882872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338953, -0.571476, 0.747346,
		0.668262, -0.705395, -0.236313,
		0.662222, 0.419323, 0.620992,
		34.159019, 39.389038, 28.069170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954418, 38.606583, 28.082087>,  <33.695465, 39.095512, 27.634476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954418, 38.606583, 28.082087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028217, 38.923336, 28.314941>,  <34.072498, 39.113388, 28.454655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028217, 38.923336, 28.314941>,  <33.954418, 38.606583, 28.082087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028217, 38.923336, 28.314941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404185, -0.478768, 0.779369,
		0.895876, -0.379084, 0.231734,
		0.184500, 0.791882, 0.582137,
		34.083569, 39.160900, 28.489582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205284, 38.329529, 28.652298>,  <33.954418, 38.606583, 28.082087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205284, 38.329529, 28.652298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059780, 38.678181, 28.783720>,  <33.972477, 38.887371, 28.862574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059780, 38.678181, 28.783720>,  <34.205284, 38.329529, 28.652298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059780, 38.678181, 28.783720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281175, -0.439012, 0.853352,
		0.888044, 0.218030, 0.404773,
		-0.363756, 0.871626, 0.328557,
		33.950653, 38.939667, 28.882288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425262, 38.528584, 29.330883>,  <34.205284, 38.329529, 28.652298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425262, 38.528584, 29.330883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121693, 38.784863, 29.284325>,  <33.939552, 38.938629, 29.256390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121693, 38.784863, 29.284325>,  <34.425262, 38.528584, 29.330883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121693, 38.784863, 29.284325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336768, -0.233179, 0.912258,
		0.557336, 0.731532, 0.392730,
		-0.758923, 0.640693, -0.116398,
		33.894016, 38.977070, 29.249405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455986, 38.867958, 29.936817>,  <34.425262, 38.528584, 29.330883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455986, 38.867958, 29.936817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091614, 38.909527, 29.777117>,  <33.872990, 38.934467, 29.681295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091614, 38.909527, 29.777117>,  <34.455986, 38.867958, 29.936817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091614, 38.909527, 29.777117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411802, -0.170530, 0.895175,
		0.024946, 0.979857, 0.198137,
		-0.910932, 0.103924, -0.399253,
		33.818333, 38.940704, 29.657341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182098, 39.264568, 30.351505>,  <34.455986, 38.867958, 29.936817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182098, 39.264568, 30.351505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863358, 39.067661, 30.211391>,  <33.672112, 38.949516, 30.127323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863358, 39.067661, 30.211391>,  <34.182098, 39.264568, 30.351505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863358, 39.067661, 30.211391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271248, -0.226573, 0.935462,
		-0.539861, 0.840440, 0.047019,
		-0.796853, -0.492266, -0.350285,
		33.624302, 38.919983, 30.106306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711960, 39.531174, 30.837769>,  <34.182098, 39.264568, 30.351505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711960, 39.531174, 30.837769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536877, 39.214981, 30.666399>,  <33.431828, 39.025265, 30.563578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536877, 39.214981, 30.666399>,  <33.711960, 39.531174, 30.837769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536877, 39.214981, 30.666399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465006, -0.208797, 0.860333,
		-0.769532, 0.575796, -0.276187,
		-0.437709, -0.790483, -0.428425,
		33.405563, 38.977837, 30.537872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953281, 39.591087, 30.863590>,  <33.711960, 39.531174, 30.837769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953281, 39.591087, 30.863590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024055, 39.199291, 30.825043>,  <33.066521, 38.964214, 30.801914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024055, 39.199291, 30.825043>,  <32.953281, 39.591087, 30.863590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024055, 39.199291, 30.825043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600021, -0.184966, 0.778307,
		-0.780171, -0.079890, -0.620444,
		0.176940, -0.979492, -0.096369,
		33.077137, 38.905445, 30.796131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358147, 39.357502, 31.042557>,  <32.953281, 39.591087, 30.863590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358147, 39.357502, 31.042557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581646, 39.025932, 31.053011>,  <32.715744, 38.826992, 31.059284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581646, 39.025932, 31.053011>,  <32.358147, 39.357502, 31.042557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581646, 39.025932, 31.053011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523445, -0.328042, 0.786380,
		-0.643276, -0.453070, -0.617190,
		0.558749, -0.828924, 0.026136,
		32.749271, 38.777256, 31.060852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910919, 38.903576, 31.121338>,  <32.358147, 39.357502, 31.042557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910919, 38.903576, 31.121338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262505, 38.766418, 31.253912>,  <32.473454, 38.684124, 31.333456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262505, 38.766418, 31.253912>,  <31.910919, 38.903576, 31.121338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262505, 38.766418, 31.253912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452438, -0.379890, 0.806835,
		-0.150753, -0.859131, -0.489048,
		0.878962, -0.342896, 0.331434,
		32.526192, 38.663551, 31.353342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673666, 38.277561, 31.476759>,  <31.910919, 38.903576, 31.121338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673666, 38.277561, 31.476759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036304, 38.346527, 31.630829>,  <32.253887, 38.387909, 31.723270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036304, 38.346527, 31.630829>,  <31.673666, 38.277561, 31.476759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036304, 38.346527, 31.630829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330559, -0.277238, 0.902147,
		0.262331, -0.945204, -0.194348,
		0.906594, 0.172418, 0.385174,
		32.308281, 38.398251, 31.746382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827925, 37.676250, 31.975327>,  <31.673666, 38.277561, 31.476759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827925, 37.676250, 31.975327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097931, 37.944912, 32.097466>,  <32.259933, 38.106110, 32.170750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097931, 37.944912, 32.097466>,  <31.827925, 37.676250, 31.975327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097931, 37.944912, 32.097466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046329, -0.374459, 0.926085,
		0.736346, -0.639270, -0.221649,
		0.675017, 0.671650, 0.305349,
		32.300438, 38.146408, 32.189072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271351, 37.304806, 32.501575>,  <31.827925, 37.676250, 31.975327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271351, 37.304806, 32.501575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293152, 37.699429, 32.563187>,  <32.306232, 37.936203, 32.600155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293152, 37.699429, 32.563187>,  <32.271351, 37.304806, 32.501575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293152, 37.699429, 32.563187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062094, -0.157310, 0.985595,
		0.996581, -0.044153, -0.069834,
		0.054503, 0.986562, 0.154031,
		32.309502, 37.995396, 32.609394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884499, 37.382050, 32.835861>,  <32.271351, 37.304806, 32.501575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884499, 37.382050, 32.835861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647392, 37.694607, 32.913887>,  <32.505131, 37.882141, 32.960701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647392, 37.694607, 32.913887>,  <32.884499, 37.382050, 32.835861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647392, 37.694607, 32.913887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098354, -0.170156, 0.980497,
		0.799349, 0.600387, 0.024008,
		-0.592762, 0.781398, 0.195065,
		32.469563, 37.929028, 32.972408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247013, 37.722057, 33.373608>,  <32.884499, 37.382050, 32.835861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247013, 37.722057, 33.373608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878262, 37.875542, 33.395168>,  <32.657009, 37.967632, 33.408104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878262, 37.875542, 33.395168>,  <33.247013, 37.722057, 33.373608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878262, 37.875542, 33.395168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059918, 0.003740, 0.998196,
		0.382817, 0.923446, -0.026439,
		-0.921879, 0.383711, 0.053900,
		32.601696, 37.990654, 33.411339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814449, 38.136936, 33.490936>,  <33.247013, 37.722057, 33.373608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814449, 38.136936, 33.490936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213802, 38.152782, 33.507275>,  <34.453415, 38.162289, 33.517078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213802, 38.152782, 33.507275>,  <33.814449, 38.136936, 33.490936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213802, 38.152782, 33.507275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018446, 0.453798, -0.890913,
		-0.053827, 0.890224, 0.452332,
		0.998380, 0.039612, 0.040848,
		34.513317, 38.164665, 33.519527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009556, 38.851833, 33.224670>,  <33.814449, 38.136936, 33.490936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009556, 38.851833, 33.224670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364086, 38.666664, 33.220043>,  <34.576805, 38.555565, 33.217266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364086, 38.666664, 33.220043>,  <34.009556, 38.851833, 33.224670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364086, 38.666664, 33.220043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251533, 0.502279, -0.827313,
		0.388791, 0.730358, 0.561622,
		0.886325, -0.462918, -0.011572,
		34.629982, 38.527790, 33.216572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389034, 39.371460, 33.111286>,  <34.009556, 38.851833, 33.224670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389034, 39.371460, 33.111286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613152, 39.052380, 33.022068>,  <34.747620, 38.860931, 32.968536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613152, 39.052380, 33.022068>,  <34.389034, 39.371460, 33.111286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613152, 39.052380, 33.022068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416947, 0.504294, -0.756203,
		0.715704, 0.330695, 0.615150,
		0.560289, -0.797702, -0.223043,
		34.781239, 38.813068, 32.955154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087852, 39.554207, 33.091824>,  <34.389034, 39.371460, 33.111286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087852, 39.554207, 33.091824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042213, 39.229454, 32.862797>,  <35.014832, 39.034603, 32.725380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042213, 39.229454, 32.862797>,  <35.087852, 39.554207, 33.091824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042213, 39.229454, 32.862797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491996, 0.454517, -0.742532,
		0.863089, -0.366420, 0.347583,
		-0.114096, -0.811881, -0.572566,
		35.007984, 38.985889, 32.691029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719330, 39.464813, 32.870594>,  <35.087852, 39.554207, 33.091824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719330, 39.464813, 32.870594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506580, 39.256371, 32.603592>,  <35.378929, 39.131306, 32.443390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506580, 39.256371, 32.603592>,  <35.719330, 39.464813, 32.870594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506580, 39.256371, 32.603592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655407, 0.245829, -0.714149,
		0.536237, -0.817325, 0.210784,
		-0.531875, -0.521103, -0.667503,
		35.347019, 39.100040, 32.403339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196812, 39.066311, 32.533226>,  <35.719330, 39.464813, 32.870594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196812, 39.066311, 32.533226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879128, 39.093792, 32.291725>,  <35.688519, 39.110279, 32.146824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879128, 39.093792, 32.291725>,  <36.196812, 39.066311, 32.533226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879128, 39.093792, 32.291725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604687, 0.187326, -0.774120,
		0.059914, -0.979892, -0.190319,
		-0.794206, 0.068703, -0.603752,
		35.640865, 39.114403, 32.110600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381813, 38.787212, 31.896070>,  <36.196812, 39.066311, 32.533226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381813, 38.787212, 31.896070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043598, 38.960552, 31.771311>,  <35.840672, 39.064556, 31.696455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043598, 38.960552, 31.771311>,  <36.381813, 38.787212, 31.896070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043598, 38.960552, 31.771311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390641, 0.103886, -0.914663,
		-0.363964, -0.895220, -0.257122,
		-0.845535, 0.433347, -0.311898,
		35.789936, 39.090557, 31.677742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215427, 38.503555, 31.210920>,  <36.381813, 38.787212, 31.896070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215427, 38.503555, 31.210920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038006, 38.861954, 31.219500>,  <35.931553, 39.076992, 31.224648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038006, 38.861954, 31.219500>,  <36.215427, 38.503555, 31.210920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038006, 38.861954, 31.219500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287605, 0.164959, -0.943436,
		-0.848850, -0.412293, -0.330860,
		-0.443551, 0.895993, 0.021447,
		35.904942, 39.130753, 31.225933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068802, 38.676991, 30.507980>,  <36.215427, 38.503555, 31.210920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068802, 38.676991, 30.507980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022186, 39.038349, 30.673048>,  <35.994217, 39.255165, 30.772089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022186, 39.038349, 30.673048>,  <36.068802, 38.676991, 30.507980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022186, 39.038349, 30.673048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459287, 0.417424, -0.784100,
		-0.880610, 0.098153, -0.463565,
		-0.116541, 0.903395, 0.412668,
		35.987225, 39.309368, 30.796848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820660, 39.153255, 30.003094>,  <36.068802, 38.676991, 30.507980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820660, 39.153255, 30.003094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012112, 39.369209, 30.280058>,  <36.126984, 39.498783, 30.446238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012112, 39.369209, 30.280058>,  <35.820660, 39.153255, 30.003094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012112, 39.369209, 30.280058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523184, 0.457949, -0.718722,
		-0.705118, 0.706261, -0.063272,
		0.478630, 0.539887, 0.692413,
		36.155701, 39.531174, 30.487782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670681, 39.937222, 29.791071>,  <35.820660, 39.153255, 30.003094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670681, 39.937222, 29.791071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995022, 39.937683, 30.025171>,  <36.189625, 39.937958, 30.165630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995022, 39.937683, 30.025171>,  <35.670681, 39.937222, 29.791071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995022, 39.937683, 30.025171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499760, 0.519031, -0.693431,
		-0.304561, 0.854754, 0.420283,
		0.810853, 0.001152, 0.585249,
		36.238277, 39.938030, 30.200747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872040, 40.605453, 29.591402>,  <35.670681, 39.937222, 29.791071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872040, 40.605453, 29.591402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175526, 40.419762, 29.774199>,  <36.357616, 40.308346, 29.883877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175526, 40.419762, 29.774199>,  <35.872040, 40.605453, 29.591402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175526, 40.419762, 29.774199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646377, 0.449331, -0.616683,
		0.080943, 0.763276, 0.640983,
		0.758713, -0.464233, 0.456993,
		36.403141, 40.280491, 29.911297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318993, 41.076229, 29.794922>,  <35.872040, 40.605453, 29.591402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318993, 41.076229, 29.794922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533905, 40.739559, 29.773338>,  <36.662853, 40.537556, 29.760389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533905, 40.739559, 29.773338>,  <36.318993, 41.076229, 29.794922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533905, 40.739559, 29.773338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649631, 0.453790, -0.609962,
		0.537877, 0.292667, 0.790591,
		0.537278, -0.841677, -0.053958,
		36.695087, 40.487057, 29.757151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984402, 41.300983, 29.847469>,  <36.318993, 41.076229, 29.794922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984402, 41.300983, 29.847469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004116, 40.935192, 29.686823>,  <37.015945, 40.715717, 29.590435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004116, 40.935192, 29.686823>,  <36.984402, 41.300983, 29.847469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004116, 40.935192, 29.686823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557335, 0.358862, -0.748730,
		0.828824, -0.186932, 0.527359,
		0.049288, -0.914480, -0.401617,
		37.018902, 40.660847, 29.566338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731716, 41.214489, 29.566803>,  <36.984402, 41.300983, 29.847469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731716, 41.214489, 29.566803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495953, 40.947433, 29.384874>,  <37.354496, 40.787201, 29.275717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495953, 40.947433, 29.384874>,  <37.731716, 41.214489, 29.566803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495953, 40.947433, 29.384874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564737, 0.062055, -0.822935,
		0.577645, -0.741897, 0.340463,
		-0.589405, -0.667636, -0.454822,
		37.319130, 40.747143, 29.248428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184006, 40.936264, 29.000374>,  <37.731716, 41.214489, 29.566803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184006, 40.936264, 29.000374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825771, 40.797279, 28.889238>,  <37.610832, 40.713890, 28.822557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825771, 40.797279, 28.889238>,  <38.184006, 40.936264, 29.000374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825771, 40.797279, 28.889238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322071, -0.075543, -0.943697,
		0.306911, -0.934646, 0.179563,
		-0.895587, -0.347463, -0.277837,
		37.557095, 40.693039, 28.805887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298340, 40.424271, 28.437399>,  <38.184006, 40.936264, 29.000374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298340, 40.424271, 28.437399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914478, 40.516861, 28.373547>,  <37.684162, 40.572414, 28.335236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914478, 40.516861, 28.373547>,  <38.298340, 40.424271, 28.437399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914478, 40.516861, 28.373547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123401, -0.163406, -0.978811,
		-0.252656, -0.959019, 0.128249,
		-0.959655, 0.231476, -0.159630,
		37.626583, 40.586304, 28.325657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174355, 40.015778, 27.988117>,  <38.298340, 40.424271, 28.437399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174355, 40.015778, 27.988117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905308, 40.305683, 27.928379>,  <37.743881, 40.479626, 27.892536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905308, 40.305683, 27.928379>,  <38.174355, 40.015778, 27.988117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905308, 40.305683, 27.928379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113417, -0.098469, -0.988656,
		-0.731248, -0.681924, -0.015969,
		-0.672616, 0.724764, -0.149347,
		37.703522, 40.523113, 27.883575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870819, 39.780766, 27.357122>,  <38.174355, 40.015778, 27.988117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870819, 39.780766, 27.357122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795280, 40.172779, 27.382011>,  <37.749958, 40.407986, 27.396946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795280, 40.172779, 27.382011>,  <37.870819, 39.780766, 27.357122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795280, 40.172779, 27.382011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029027, 0.068907, -0.997201,
		-0.981578, -0.186508, -0.041460,
		-0.188843, 0.980034, 0.062224,
		37.738628, 40.466789, 27.400679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508392, 39.887230, 26.769638>,  <37.870819, 39.780766, 27.357122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508392, 39.887230, 26.769638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624084, 40.250645, 26.890240>,  <37.693501, 40.468693, 26.962601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624084, 40.250645, 26.890240>,  <37.508392, 39.887230, 26.769638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624084, 40.250645, 26.890240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153126, 0.266999, -0.951454,
		-0.944934, 0.321353, -0.061898,
		0.289226, 0.908539, 0.301504,
		37.710854, 40.523205, 26.980690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155136, 40.357910, 26.301056>,  <37.508392, 39.887230, 26.769638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155136, 40.357910, 26.301056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471886, 40.544064, 26.459223>,  <37.661934, 40.655758, 26.554123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471886, 40.544064, 26.459223>,  <37.155136, 40.357910, 26.301056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471886, 40.544064, 26.459223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311686, 0.248815, -0.917030,
		-0.525160, 0.849415, 0.051974,
		0.791870, 0.465388, 0.395418,
		37.709446, 40.683681, 26.577848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085335, 41.089157, 26.074625>,  <37.155136, 40.357910, 26.301056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085335, 41.089157, 26.074625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457062, 40.962460, 26.150562>,  <37.680099, 40.886440, 26.196125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457062, 40.962460, 26.150562>,  <37.085335, 41.089157, 26.074625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457062, 40.962460, 26.150562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286265, 0.293169, -0.912198,
		0.233276, 0.902068, 0.363120,
		0.929319, -0.316743, 0.189842,
		37.735859, 40.867435, 26.207514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472378, 41.578072, 25.751600>,  <37.085335, 41.089157, 26.074625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472378, 41.578072, 25.751600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769260, 41.314880, 25.802517>,  <37.947388, 41.156967, 25.833067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769260, 41.314880, 25.802517>,  <37.472378, 41.578072, 25.751600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769260, 41.314880, 25.802517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371504, 0.245857, -0.895287,
		0.557780, 0.711775, 0.426917,
		0.742203, -0.657975, 0.127293,
		37.991920, 41.117489, 25.840704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904747, 41.884159, 25.276077>,  <37.472378, 41.578072, 25.751600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904747, 41.884159, 25.276077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066296, 41.528156, 25.360714>,  <38.163223, 41.314552, 25.411495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066296, 41.528156, 25.360714>,  <37.904747, 41.884159, 25.276077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066296, 41.528156, 25.360714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425743, -0.021861, -0.904580,
		0.809711, 0.455416, 0.370087,
		0.403870, -0.890010, 0.211591,
		38.187458, 41.261154, 25.424191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518646, 41.904808, 24.858068>,  <37.904747, 41.884159, 25.276077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518646, 41.904808, 24.858068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457039, 41.523758, 24.962971>,  <38.420074, 41.295128, 25.025911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457039, 41.523758, 24.962971>,  <38.518646, 41.904808, 24.858068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457039, 41.523758, 24.962971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395599, -0.302673, -0.867116,
		0.905417, -0.029803, 0.423476,
		-0.154017, -0.952628, 0.262256,
		38.410835, 41.237968, 25.041647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167305, 41.618668, 24.808029>,  <38.518646, 41.904808, 24.858068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167305, 41.618668, 24.808029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883446, 41.342037, 24.754190>,  <38.713131, 41.176060, 24.721888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883446, 41.342037, 24.754190>,  <39.167305, 41.618668, 24.808029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883446, 41.342037, 24.754190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404500, -0.243506, -0.881524,
		0.576869, -0.680017, 0.452548,
		-0.709649, -0.691579, -0.134596,
		38.670551, 41.134563, 24.713812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477425, 41.024269, 24.504009>,  <39.167305, 41.618668, 24.808029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477425, 41.024269, 24.504009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093140, 40.927711, 24.449223>,  <38.862568, 40.869778, 24.416351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093140, 40.927711, 24.449223>,  <39.477425, 41.024269, 24.504009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093140, 40.927711, 24.449223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240470, -0.477570, -0.845045,
		0.138575, -0.844782, 0.516855,
		-0.960714, -0.241390, -0.136966,
		38.804924, 40.855293, 24.408133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504555, 40.285900, 24.258177>,  <39.477425, 41.024269, 24.504009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504555, 40.285900, 24.258177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152378, 40.437504, 24.144217>,  <38.941071, 40.528465, 24.075840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152378, 40.437504, 24.144217>,  <39.504555, 40.285900, 24.258177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152378, 40.437504, 24.144217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156756, -0.334409, -0.929300,
		-0.447486, -0.862858, 0.235017,
		-0.880445, 0.379008, -0.284902,
		38.888245, 40.551205, 24.058746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012753, 39.639378, 23.990801>,  <39.504555, 40.285900, 24.258177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012753, 39.639378, 23.990801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878662, 39.961277, 23.794840>,  <38.798206, 40.154415, 23.677263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878662, 39.961277, 23.794840>,  <39.012753, 39.639378, 23.990801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878662, 39.961277, 23.794840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051412, -0.534840, -0.843388,
		-0.940733, -0.257541, 0.220667,
		-0.335228, 0.804748, -0.489901,
		38.778095, 40.202702, 23.647869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429142, 39.393200, 23.493452>,  <39.012753, 39.639378, 23.990801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429142, 39.393200, 23.493452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558350, 39.748367, 23.362450>,  <38.635876, 39.961468, 23.283848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558350, 39.748367, 23.362450>,  <38.429142, 39.393200, 23.493452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558350, 39.748367, 23.362450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076789, -0.320327, -0.944190,
		-0.943271, 0.330143, -0.035290,
		0.323022, 0.887917, -0.327507,
		38.655254, 40.014744, 23.264198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976723, 39.554691, 22.881304>,  <38.429142, 39.393200, 23.493452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976723, 39.554691, 22.881304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303745, 39.782497, 22.847265>,  <38.499962, 39.919182, 22.826843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303745, 39.782497, 22.847265>,  <37.976723, 39.554691, 22.881304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303745, 39.782497, 22.847265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115184, -0.306526, -0.944867,
		-0.564204, 0.762685, -0.316203,
		0.817561, 0.569520, -0.085094,
		38.549015, 39.953354, 22.821737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890636, 39.875816, 22.233786>,  <37.976723, 39.554691, 22.881304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890636, 39.875816, 22.233786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278156, 39.934235, 22.313890>,  <38.510666, 39.969284, 22.361954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278156, 39.934235, 22.313890>,  <37.890636, 39.875816, 22.233786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278156, 39.934235, 22.313890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236955, -0.308737, -0.921159,
		-0.072702, 0.939869, -0.333709,
		0.968797, 0.146044, 0.200261,
		38.568794, 39.978046, 22.373968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270699, 40.223553, 21.632742>,  <37.890636, 39.875816, 22.233786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270699, 40.223553, 21.632742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574001, 40.052601, 21.829674>,  <38.755981, 39.950027, 21.947834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574001, 40.052601, 21.829674>,  <38.270699, 40.223553, 21.632742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574001, 40.052601, 21.829674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387962, -0.311108, -0.867582,
		0.523959, 0.848855, -0.070091,
		0.758257, -0.427384, 0.492331,
		38.801479, 39.924385, 21.977373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881916, 40.406044, 21.219910>,  <38.270699, 40.223553, 21.632742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881916, 40.406044, 21.219910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995892, 40.091949, 21.439806>,  <39.064278, 39.903492, 21.571743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995892, 40.091949, 21.439806>,  <38.881916, 40.406044, 21.219910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995892, 40.091949, 21.439806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425358, -0.410373, -0.806637,
		0.859000, 0.463679, 0.217076,
		0.284938, -0.785236, 0.549740,
		39.081371, 39.856380, 21.604729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548790, 40.215614, 21.001856>,  <38.881916, 40.406044, 21.219910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548790, 40.215614, 21.001856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407814, 39.889984, 21.186497>,  <39.323231, 39.694607, 21.297281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407814, 39.889984, 21.186497>,  <39.548790, 40.215614, 21.001856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407814, 39.889984, 21.186497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389281, -0.576080, -0.718743,
		0.851028, -0.073618, 0.519934,
		-0.352436, -0.814071, 0.461602,
		39.302082, 39.645763, 21.324978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116360, 39.884922, 21.073608>,  <39.548790, 40.215614, 21.001856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116360, 39.884922, 21.073608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827297, 39.608467, 21.069746>,  <39.653858, 39.442593, 21.067429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827297, 39.608467, 21.069746>,  <40.116360, 39.884922, 21.073608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827297, 39.608467, 21.069746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495818, -0.508595, -0.703914,
		0.481591, -0.513477, 0.710219,
		-0.722657, -0.691139, -0.009656,
		39.610500, 39.401127, 21.066849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539238, 39.237263, 21.039429>,  <40.116360, 39.884922, 21.073608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539238, 39.237263, 21.039429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162102, 39.169891, 20.924408>,  <39.935822, 39.129467, 20.855396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162102, 39.169891, 20.924408>,  <40.539238, 39.237263, 21.039429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162102, 39.169891, 20.924408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333216, -0.488135, -0.806655,
		-0.004499, -0.856362, 0.516356,
		-0.942840, -0.168429, -0.287550,
		39.879250, 39.119362, 20.838142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301987, 38.499168, 20.996012>,  <40.539238, 39.237263, 21.039429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301987, 38.499168, 20.996012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079563, 38.720600, 20.748028>,  <39.946110, 38.853458, 20.599237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079563, 38.720600, 20.748028>,  <40.301987, 38.499168, 20.996012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079563, 38.720600, 20.748028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165099, -0.657478, -0.735163,
		-0.814578, -0.511151, 0.274204,
		-0.556062, 0.553577, -0.619958,
		39.912743, 38.886673, 20.562040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922771, 38.365906, 20.599770>,  <40.301987, 38.499168, 20.996012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922771, 38.365906, 20.599770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289021, 38.205097, 20.598516>,  <41.508770, 38.108612, 20.597765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289021, 38.205097, 20.598516>,  <40.922771, 38.365906, 20.599770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289021, 38.205097, 20.598516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125846, 0.279208, 0.951949,
		-0.381826, -0.872023, 0.306242,
		0.915627, -0.402018, -0.003132,
		41.563709, 38.084492, 20.597576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024303, 37.884640, 21.233583>,  <40.922771, 38.365906, 20.599770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024303, 37.884640, 21.233583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392834, 37.984715, 21.114548>,  <41.613953, 38.044758, 21.043125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392834, 37.984715, 21.114548>,  <41.024303, 37.884640, 21.233583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392834, 37.984715, 21.114548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265559, 0.154087, 0.951702,
		0.283958, -0.955858, 0.075525,
		0.921329, 0.250187, -0.297590,
		41.669231, 38.059769, 21.025270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399818, 37.650566, 21.737465>,  <41.024303, 37.884640, 21.233583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399818, 37.650566, 21.737465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620831, 37.936749, 21.566425>,  <41.753437, 38.108456, 21.463802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620831, 37.936749, 21.566425>,  <41.399818, 37.650566, 21.737465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620831, 37.936749, 21.566425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343833, 0.271686, 0.898869,
		0.759270, -0.643674, -0.095881,
		0.552529, 0.715451, -0.427600,
		41.786591, 38.151382, 21.438145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016472, 37.514542, 22.058908>,  <41.399818, 37.650566, 21.737465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016472, 37.514542, 22.058908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014702, 37.891705, 21.925697>,  <42.013641, 38.118004, 21.845770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014702, 37.891705, 21.925697>,  <42.016472, 37.514542, 22.058908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014702, 37.891705, 21.925697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204061, 0.326877, 0.922773,
		0.978948, -0.063876, -0.193857,
		-0.004424, 0.942906, -0.333030,
		42.013374, 38.174576, 21.825788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721798, 37.849579, 22.289307>,  <42.016472, 37.514542, 22.058908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721798, 37.849579, 22.289307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470203, 38.153503, 22.223499>,  <42.319248, 38.335857, 22.184015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470203, 38.153503, 22.223499>,  <42.721798, 37.849579, 22.289307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470203, 38.153503, 22.223499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203576, 0.365214, 0.908391,
		0.750288, 0.537874, -0.384394,
		-0.628987, 0.759809, -0.164518,
		42.281506, 38.381447, 22.174145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036228, 38.509510, 22.663170>,  <42.721798, 37.849579, 22.289307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036228, 38.509510, 22.663170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651169, 38.601727, 22.606373>,  <42.420135, 38.657059, 22.572294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651169, 38.601727, 22.606373>,  <43.036228, 38.509510, 22.663170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651169, 38.601727, 22.606373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047552, 0.372316, 0.926887,
		0.266556, 0.899016, -0.347446,
		-0.962646, 0.230545, -0.141993,
		42.362373, 38.670891, 22.563774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968750, 39.234940, 22.780678>,  <43.036228, 38.509510, 22.663170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968750, 39.234940, 22.780678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599678, 39.088001, 22.827528>,  <42.378235, 38.999840, 22.855639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599678, 39.088001, 22.827528>,  <42.968750, 39.234940, 22.780678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599678, 39.088001, 22.827528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041611, 0.396875, 0.916929,
		-0.383311, 0.841160, -0.381475,
		-0.922682, -0.367342, 0.117125,
		42.322872, 38.977798, 22.862665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601383, 39.786942, 23.129780>,  <42.968750, 39.234940, 22.780678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601383, 39.786942, 23.129780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363014, 39.474289, 23.203447>,  <42.219994, 39.286697, 23.247648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363014, 39.474289, 23.203447>,  <42.601383, 39.786942, 23.129780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363014, 39.474289, 23.203447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235371, 0.389280, 0.890540,
		-0.767772, 0.487347, -0.415957,
		-0.595926, -0.781635, 0.184171,
		42.184238, 39.239799, 23.258699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950790, 40.090874, 23.380259>,  <42.601383, 39.786942, 23.129780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950790, 40.090874, 23.380259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943542, 39.707493, 23.494135>,  <41.939194, 39.477467, 23.562460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943542, 39.707493, 23.494135>,  <41.950790, 40.090874, 23.380259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943542, 39.707493, 23.494135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383319, 0.269637, 0.883381,
		-0.923438, -0.093122, -0.372277,
		-0.018117, -0.958449, 0.284689,
		41.938107, 39.419960, 23.579542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403061, 40.138035, 23.808369>,  <41.950790, 40.090874, 23.380259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403061, 40.138035, 23.808369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545521, 39.778046, 23.908936>,  <41.630997, 39.562054, 23.969276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545521, 39.778046, 23.908936>,  <41.403061, 40.138035, 23.808369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545521, 39.778046, 23.908936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521110, 0.032045, 0.852888,
		-0.775631, -0.434771, -0.457571,
		0.356148, -0.899970, 0.251418,
		41.652367, 39.508053, 23.984362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695648, 39.771671, 23.954185>,  <41.403061, 40.138035, 23.808369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695648, 39.771671, 23.954185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012924, 39.636230, 24.156649>,  <41.203289, 39.554966, 24.278126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012924, 39.636230, 24.156649>,  <40.695648, 39.771671, 23.954185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012924, 39.636230, 24.156649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534184, 0.012205, 0.845280,
		-0.292392, -0.940850, -0.171195,
		0.793192, -0.338603, 0.506156,
		41.250881, 39.534649, 24.308495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464252, 39.141132, 24.354263>,  <40.695648, 39.771671, 23.954185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464252, 39.141132, 24.354263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793583, 39.280960, 24.533119>,  <40.991180, 39.364857, 24.640432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793583, 39.280960, 24.533119>,  <40.464252, 39.141132, 24.354263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793583, 39.280960, 24.533119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474229, -0.009144, 0.880354,
		0.311835, -0.936865, 0.158249,
		0.823326, 0.349571, 0.447140,
		41.040581, 39.385830, 24.667261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526958, 38.714893, 24.951149>,  <40.464252, 39.141132, 24.354263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526958, 38.714893, 24.951149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754414, 39.029995, 25.045885>,  <40.890884, 39.219055, 25.102726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754414, 39.029995, 25.045885>,  <40.526958, 38.714893, 24.951149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754414, 39.029995, 25.045885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347951, -0.030550, 0.937015,
		0.745377, -0.615227, 0.256729,
		0.568633, 0.787758, 0.236840,
		40.925003, 39.266323, 25.116938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870899, 38.485439, 25.539589>,  <40.526958, 38.714893, 24.951149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870899, 38.485439, 25.539589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903786, 38.884048, 25.534096>,  <40.923515, 39.123215, 25.530800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903786, 38.884048, 25.534096>,  <40.870899, 38.485439, 25.539589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903786, 38.884048, 25.534096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321910, 0.039594, 0.945942,
		0.943194, -0.073349, 0.324045,
		0.082214, 0.996520, -0.013733,
		40.928452, 39.183006, 25.529976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053082, 38.559700, 26.177893>,  <40.870899, 38.485439, 25.539589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053082, 38.559700, 26.177893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984180, 38.932789, 26.051172>,  <40.942841, 39.156643, 25.975140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984180, 38.932789, 26.051172>,  <41.053082, 38.559700, 26.177893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984180, 38.932789, 26.051172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274591, 0.263396, 0.924783,
		0.946006, 0.246289, 0.210745,
		-0.172254, 0.932719, -0.316803,
		40.932503, 39.212605, 25.956131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471832, 39.014572, 26.586126>,  <41.053082, 38.559700, 26.177893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471832, 39.014572, 26.586126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137569, 39.196285, 26.462643>,  <40.937012, 39.305313, 26.388552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137569, 39.196285, 26.462643>,  <41.471832, 39.014572, 26.586126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137569, 39.196285, 26.462643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269278, 0.151019, 0.951148,
		0.478711, 0.877964, -0.003872,
		-0.835658, 0.454282, -0.308711,
		40.886871, 39.332569, 26.370029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325520, 39.525974, 27.055458>,  <41.471832, 39.014572, 26.586126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325520, 39.525974, 27.055458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968655, 39.491177, 26.878157>,  <40.754536, 39.470299, 26.771776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968655, 39.491177, 26.878157>,  <41.325520, 39.525974, 27.055458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968655, 39.491177, 26.878157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451672, 0.158871, 0.877925,
		-0.005952, 0.983459, -0.181031,
		-0.892164, -0.086993, -0.443256,
		40.701004, 39.465080, 26.745180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909546, 40.033367, 27.318783>,  <41.325520, 39.525974, 27.055458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909546, 40.033367, 27.318783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640614, 39.761467, 27.201542>,  <40.479256, 39.598328, 27.131197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640614, 39.761467, 27.201542>,  <40.909546, 40.033367, 27.318783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640614, 39.761467, 27.201542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435565, 0.043118, 0.899124,
		-0.598542, 0.732175, -0.325065,
		-0.672332, -0.679751, -0.293102,
		40.438915, 39.557541, 27.113611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191994, 40.273174, 27.436869>,  <40.909546, 40.033367, 27.318783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191994, 40.273174, 27.436869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111267, 39.885628, 27.379492>,  <40.062832, 39.653099, 27.345066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111267, 39.885628, 27.379492>,  <40.191994, 40.273174, 27.436869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111267, 39.885628, 27.379492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564332, -0.004673, 0.825535,
		-0.800500, 0.247554, -0.545817,
		-0.201813, -0.968863, -0.143444,
		40.050724, 39.594971, 27.336458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440758, 40.272545, 27.347586>,  <40.191994, 40.273174, 27.436869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440758, 40.272545, 27.347586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589314, 39.918350, 27.459284>,  <39.678448, 39.705833, 27.526302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589314, 39.918350, 27.459284>,  <39.440758, 40.272545, 27.347586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589314, 39.918350, 27.459284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590135, 0.007069, 0.807274,
		-0.716808, -0.464603, -0.519934,
		0.371386, -0.885491, 0.279246,
		39.700729, 39.652702, 27.543058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799446, 39.784771, 27.453787>,  <39.440758, 40.272545, 27.347586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799446, 39.784771, 27.453787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087391, 39.601837, 27.662643>,  <39.260159, 39.492077, 27.787958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087391, 39.601837, 27.662643>,  <38.799446, 39.784771, 27.453787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087391, 39.601837, 27.662643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632809, -0.123320, 0.764425,
		-0.285212, -0.880700, -0.378183,
		0.719866, -0.457341, 0.522143,
		39.303352, 39.464634, 27.819286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461796, 39.170498, 27.784140>,  <38.799446, 39.784771, 27.453787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461796, 39.170498, 27.784140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802994, 39.238964, 27.981359>,  <39.007713, 39.280045, 28.099691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802994, 39.238964, 27.981359>,  <38.461796, 39.170498, 27.784140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802994, 39.238964, 27.981359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503630, 0.022083, 0.863637,
		0.136942, -0.984994, 0.105044,
		0.852997, 0.171171, 0.493049,
		39.058891, 39.290314, 28.129274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416134, 38.708401, 28.436237>,  <38.461796, 39.170498, 27.784140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416134, 38.708401, 28.436237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687550, 38.989159, 28.522886>,  <38.850399, 39.157612, 28.574875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687550, 38.989159, 28.522886>,  <38.416134, 38.708401, 28.436237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687550, 38.989159, 28.522886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223014, -0.084135, 0.971178,
		0.699890, -0.707294, 0.099443,
		0.678541, 0.701895, 0.216622,
		38.891113, 39.199726, 28.587873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760994, 38.428257, 29.007498>,  <38.416134, 38.708401, 28.436237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760994, 38.428257, 29.007498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856747, 38.814850, 29.044609>,  <38.914200, 39.046806, 29.066875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856747, 38.814850, 29.044609>,  <38.760994, 38.428257, 29.007498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856747, 38.814850, 29.044609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156116, -0.055999, 0.986150,
		0.958292, -0.250554, 0.137478,
		0.239385, 0.966482, 0.092778,
		38.928562, 39.104794, 29.072443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366932, 38.436935, 29.401726>,  <38.760994, 38.428257, 29.007498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366932, 38.436935, 29.401726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173748, 38.785297, 29.438105>,  <39.057838, 38.994316, 29.459932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173748, 38.785297, 29.438105>,  <39.366932, 38.436935, 29.401726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173748, 38.785297, 29.438105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067230, -0.140437, 0.987804,
		0.873058, 0.470954, 0.126377,
		-0.482959, 0.870907, 0.090947,
		39.028862, 39.046570, 29.465389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687859, 38.714336, 29.937065>,  <39.366932, 38.436935, 29.401726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687859, 38.714336, 29.937065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369293, 38.955589, 29.919382>,  <39.178154, 39.100342, 29.908773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369293, 38.955589, 29.919382>,  <39.687859, 38.714336, 29.937065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369293, 38.955589, 29.919382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107633, -0.069433, 0.991763,
		0.595098, 0.794611, 0.120215,
		-0.796413, 0.603136, -0.044207,
		39.130371, 39.136532, 29.906120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888081, 39.169258, 30.429926>,  <39.687859, 38.714336, 29.937065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888081, 39.169258, 30.429926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491776, 39.179588, 30.376661>,  <39.253994, 39.185787, 30.344704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491776, 39.179588, 30.376661>,  <39.888081, 39.169258, 30.429926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491776, 39.179588, 30.376661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134255, -0.046767, 0.989843,
		0.019338, 0.998572, 0.049803,
		-0.990758, 0.025828, -0.133159,
		39.194550, 39.187336, 30.336714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518936, 39.815983, 30.850397>,  <39.888081, 39.169258, 30.429926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518936, 39.815983, 30.850397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291721, 39.491402, 30.795433>,  <39.155392, 39.296654, 30.762455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291721, 39.491402, 30.795433>,  <39.518936, 39.815983, 30.850397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291721, 39.491402, 30.795433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115573, -0.086660, 0.989512,
		-0.814847, 0.577962, -0.044555,
		-0.568038, -0.811450, -0.137411,
		39.121311, 39.247967, 30.754210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108238, 39.802708, 31.436821>,  <39.518936, 39.815983, 30.850397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108238, 39.802708, 31.436821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976406, 39.449352, 31.303551>,  <38.897305, 39.237339, 31.223589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976406, 39.449352, 31.303551>,  <39.108238, 39.802708, 31.436821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976406, 39.449352, 31.303551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010087, -0.356169, 0.934367,
		-0.944072, 0.304593, 0.126299,
		-0.329585, -0.883384, -0.333177,
		38.877529, 39.184338, 31.203598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740673, 39.517574, 32.024300>,  <39.108238, 39.802708, 31.436821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740673, 39.517574, 32.024300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841454, 39.232609, 31.762308>,  <38.901920, 39.061630, 31.605114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841454, 39.232609, 31.762308>,  <38.740673, 39.517574, 32.024300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841454, 39.232609, 31.762308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035189, -0.669618, 0.741872,
		-0.967101, -0.209962, -0.143640,
		0.251949, -0.712410, -0.654976,
		38.917038, 39.018887, 31.565815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186665, 39.122482, 32.097576>,  <38.740673, 39.517574, 32.024300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186665, 39.122482, 32.097576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518494, 38.928886, 31.986174>,  <38.717590, 38.812729, 31.919333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518494, 38.928886, 31.986174>,  <38.186665, 39.122482, 32.097576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518494, 38.928886, 31.986174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044428, -0.439959, 0.896918,
		-0.556632, -0.756430, -0.343474,
		0.829570, -0.483994, -0.278502,
		38.767365, 38.783688, 31.902622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924515, 38.475685, 32.055943>,  <38.186665, 39.122482, 32.097576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924515, 38.475685, 32.055943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320892, 38.433685, 32.089413>,  <38.558720, 38.408485, 32.109497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320892, 38.433685, 32.089413>,  <37.924515, 38.475685, 32.055943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320892, 38.433685, 32.089413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127815, -0.546954, 0.827348,
		-0.041100, -0.830552, -0.555422,
		0.990946, -0.104995, 0.083677,
		38.618176, 38.402187, 32.114517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108299, 37.794796, 32.185482>,  <37.924515, 38.475685, 32.055943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108299, 37.794796, 32.185482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438297, 37.982674, 32.311195>,  <38.636295, 38.095402, 32.386623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438297, 37.982674, 32.311195>,  <38.108299, 37.794796, 32.185482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438297, 37.982674, 32.311195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040327, -0.505766, 0.861728,
		0.563702, -0.723594, -0.398312,
		0.824994, 0.469694, 0.314282,
		38.685795, 38.123581, 32.405479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468552, 37.249832, 32.610012>,  <38.108299, 37.794796, 32.185482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468552, 37.249832, 32.610012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635696, 37.596394, 32.719364>,  <38.735981, 37.804329, 32.784977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635696, 37.596394, 32.719364>,  <38.468552, 37.249832, 32.610012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635696, 37.596394, 32.719364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153542, -0.363933, 0.918682,
		0.895443, -0.341903, -0.285102,
		0.417858, 0.866403, 0.273385,
		38.761055, 37.856316, 32.801380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942436, 37.114540, 33.031342>,  <38.468552, 37.249832, 32.610012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942436, 37.114540, 33.031342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917206, 37.496674, 33.146824>,  <38.902065, 37.725956, 33.216114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917206, 37.496674, 33.146824>,  <38.942436, 37.114540, 33.031342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917206, 37.496674, 33.146824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077402, -0.283731, 0.955775,
		0.995003, 0.082636, -0.056047,
		-0.063079, 0.955337, 0.288709,
		38.898281, 37.783276, 33.233437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381767, 37.102081, 33.554977>,  <38.942436, 37.114540, 33.031342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381767, 37.102081, 33.554977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161407, 37.431744, 33.607548>,  <39.029190, 37.629539, 33.639091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161407, 37.431744, 33.607548>,  <39.381767, 37.102081, 33.554977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161407, 37.431744, 33.607548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023867, -0.141861, 0.989599,
		0.834229, 0.548309, 0.058482,
		-0.550902, 0.824156, 0.131431,
		38.996136, 37.678989, 33.646976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724907, 37.474895, 34.124615>,  <39.381767, 37.102081, 33.554977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724907, 37.474895, 34.124615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362770, 37.640415, 34.162830>,  <39.145489, 37.739727, 34.185760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362770, 37.640415, 34.162830>,  <39.724907, 37.474895, 34.124615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362770, 37.640415, 34.162830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037980, -0.145170, 0.988678,
		0.422985, 0.898718, 0.115712,
		-0.905341, 0.413801, 0.095538,
		39.091167, 37.764557, 34.191490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685211, 37.912540, 34.792225>,  <39.724907, 37.474895, 34.124615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685211, 37.912540, 34.792225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307274, 37.803181, 34.720093>,  <39.080509, 37.737564, 34.676815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307274, 37.803181, 34.720093>,  <39.685211, 37.912540, 34.792225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307274, 37.803181, 34.720093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099544, -0.284828, 0.953396,
		-0.312019, 0.918764, 0.241904,
		-0.944847, -0.273398, -0.180329,
		39.023819, 37.721161, 34.665993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262180, 38.045296, 35.388897>,  <39.685211, 37.912540, 34.792225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262180, 38.045296, 35.388897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977600, 37.827755, 35.210880>,  <38.806850, 37.697231, 35.104069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977600, 37.827755, 35.210880>,  <39.262180, 38.045296, 35.388897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977600, 37.827755, 35.210880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378732, -0.236714, 0.894722,
		-0.591941, 0.805105, -0.037562,
		-0.711454, -0.543849, -0.445040,
		38.764164, 37.664600, 35.077370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586189, 38.224792, 35.557938>,  <39.262180, 38.045296, 35.388897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586189, 38.224792, 35.557938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571236, 37.834538, 35.471474>,  <38.562263, 37.600384, 35.419594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571236, 37.834538, 35.471474>,  <38.586189, 38.224792, 35.557938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571236, 37.834538, 35.471474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499467, -0.169110, 0.849667,
		-0.865526, 0.139729, -0.480978,
		-0.037385, -0.975642, -0.216160,
		38.560020, 37.541843, 35.406628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913120, 38.038799, 35.558823>,  <38.586189, 38.224792, 35.557938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913120, 38.038799, 35.558823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131325, 37.708473, 35.616020>,  <38.262249, 37.510277, 35.650341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131325, 37.708473, 35.616020>,  <37.913120, 38.038799, 35.558823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131325, 37.708473, 35.616020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456937, -0.150024, 0.876756,
		-0.702583, -0.543623, -0.459184,
		0.545514, -0.825813, 0.142997,
		38.294979, 37.460728, 35.658920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430820, 37.464241, 35.568237>,  <37.913120, 38.038799, 35.558823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430820, 37.464241, 35.568237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763428, 37.377213, 35.772686>,  <37.962990, 37.324997, 35.895355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763428, 37.377213, 35.772686>,  <37.430820, 37.464241, 35.568237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763428, 37.377213, 35.772686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553685, -0.250282, 0.794224,
		-0.044876, -0.943409, -0.328580,
		0.831516, -0.217571, 0.511120,
		38.012882, 37.311943, 35.926022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255615, 36.949749, 35.950798>,  <37.430820, 37.464241, 35.568237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255615, 36.949749, 35.950798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584438, 37.053272, 36.153675>,  <37.781731, 37.115387, 36.275402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584438, 37.053272, 36.153675>,  <37.255615, 36.949749, 35.950798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584438, 37.053272, 36.153675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464715, -0.209771, 0.860253,
		0.329039, -0.942874, -0.052169,
		0.822054, 0.258813, 0.507191,
		37.831055, 37.130917, 36.305832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411797, 36.436790, 36.399944>,  <37.255615, 36.949749, 35.950798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411797, 36.436790, 36.399944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570965, 36.767197, 36.559628>,  <37.666466, 36.965439, 36.655437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570965, 36.767197, 36.559628>,  <37.411797, 36.436790, 36.399944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570965, 36.767197, 36.559628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380968, -0.247072, 0.890965,
		0.834581, -0.506614, 0.216371,
		0.397916, 0.826013, 0.399206,
		37.690338, 37.014999, 36.679390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868000, 36.171600, 37.013981>,  <37.411797, 36.436790, 36.399944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868000, 36.171600, 37.013981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763187, 36.556755, 37.039883>,  <37.700298, 36.787846, 37.055424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763187, 36.556755, 37.039883>,  <37.868000, 36.171600, 37.013981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763187, 36.556755, 37.039883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298961, -0.144787, 0.943217,
		0.917584, 0.227795, 0.325804,
		-0.262033, 0.962884, 0.064753,
		37.684578, 36.845619, 37.059307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234028, 36.434395, 37.569664>,  <37.868000, 36.171600, 37.013981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234028, 36.434395, 37.569664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934101, 36.693825, 37.517311>,  <37.754147, 36.849483, 37.485901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934101, 36.693825, 37.517311>,  <38.234028, 36.434395, 37.569664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934101, 36.693825, 37.517311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305932, -0.164450, 0.937743,
		0.586673, 0.743174, 0.321726,
		-0.749814, 0.648575, -0.130883,
		37.709156, 36.888397, 37.478046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250309, 36.813560, 38.147797>,  <38.234028, 36.434395, 37.569664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250309, 36.813560, 38.147797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889847, 36.894028, 37.994198>,  <37.673569, 36.942310, 37.902039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889847, 36.894028, 37.994198>,  <38.250309, 36.813560, 38.147797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889847, 36.894028, 37.994198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411361, -0.117378, 0.903883,
		0.136761, 0.972498, 0.188530,
		-0.901154, 0.201170, -0.383995,
		37.619499, 36.954380, 37.878998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936779, 37.438011, 38.523277>,  <38.250309, 36.813560, 38.147797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936779, 37.438011, 38.523277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659782, 37.194996, 38.367661>,  <37.493584, 37.049187, 38.274292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659782, 37.194996, 38.367661>,  <37.936779, 37.438011, 38.523277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659782, 37.194996, 38.367661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455942, -0.049348, 0.888641,
		-0.559082, 0.792756, -0.242829,
		-0.692492, -0.607538, -0.389040,
		37.452034, 37.012733, 38.250950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257637, 37.700916, 38.804485>,  <37.936779, 37.438011, 38.523277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257637, 37.700916, 38.804485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182316, 37.317490, 38.718987>,  <37.137123, 37.087433, 38.667686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182316, 37.317490, 38.718987>,  <37.257637, 37.700916, 38.804485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182316, 37.317490, 38.718987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368586, -0.132755, 0.920066,
		-0.910323, 0.252030, -0.328318,
		-0.188298, -0.958571, -0.213744,
		37.125828, 37.029919, 38.654861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515217, 37.493717, 38.828648>,  <37.257637, 37.700916, 38.804485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515217, 37.493717, 38.828648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731812, 37.173637, 38.931774>,  <36.861771, 36.981590, 38.993649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731812, 37.173637, 38.931774>,  <36.515217, 37.493717, 38.828648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731812, 37.173637, 38.931774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346089, 0.067304, 0.935784,
		-0.766167, -0.595945, -0.240496,
		0.541489, -0.800200, 0.257816,
		36.894257, 36.933578, 39.009117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322495, 37.214981, 39.550705>,  <36.515217, 37.493717, 38.828648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322495, 37.214981, 39.550705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604492, 36.940819, 39.477821>,  <36.773689, 36.776321, 39.434090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604492, 36.940819, 39.477821>,  <36.322495, 37.214981, 39.550705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604492, 36.940819, 39.477821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182980, -0.424008, 0.886981,
		-0.685204, -0.591973, -0.424338,
		0.704992, -0.685409, -0.182213,
		36.815990, 36.735195, 39.423157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057178, 36.621571, 39.707527>,  <36.322495, 37.214981, 39.550705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057178, 36.621571, 39.707527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450035, 36.552948, 39.738438>,  <36.685749, 36.511776, 39.756985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450035, 36.552948, 39.738438>,  <36.057178, 36.621571, 39.707527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450035, 36.552948, 39.738438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153379, -0.492110, 0.856915,
		-0.108981, -0.853462, -0.509633,
		0.982139, -0.171554, 0.077273,
		36.744678, 36.501480, 39.761620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117504, 35.954174, 39.717297>,  <36.057178, 36.621571, 39.707527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117504, 35.954174, 39.717297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453327, 36.089561, 39.887276>,  <36.654823, 36.170792, 39.989262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453327, 36.089561, 39.887276>,  <36.117504, 35.954174, 39.717297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453327, 36.089561, 39.887276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146972, -0.611533, 0.777448,
		0.523010, -0.715170, -0.463674,
		0.839559, 0.338466, 0.424948,
		36.705196, 36.191101, 40.014759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599506, 35.439972, 39.899761>,  <36.117504, 35.954174, 39.717297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599506, 35.439972, 39.899761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645306, 35.758125, 40.137840>,  <36.672787, 35.949017, 40.280689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645306, 35.758125, 40.137840>,  <36.599506, 35.439972, 39.899761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645306, 35.758125, 40.137840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274957, -0.550361, 0.788354,
		0.954614, -0.253920, 0.155680,
		0.114498, 0.795379, 0.595200,
		36.679657, 35.996738, 40.316399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817181, 35.143108, 40.563656>,  <36.599506, 35.439972, 39.899761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817181, 35.143108, 40.563656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711006, 35.510231, 40.681751>,  <36.647301, 35.730507, 40.752609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711006, 35.510231, 40.681751>,  <36.817181, 35.143108, 40.563656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711006, 35.510231, 40.681751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375208, -0.380421, 0.845280,
		0.888124, 0.113591, 0.445347,
		-0.265435, 0.917811, 0.295241,
		36.631374, 35.785576, 40.770325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061668, 35.165253, 41.253811>,  <36.817181, 35.143108, 40.563656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061668, 35.165253, 41.253811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774891, 35.440922, 41.211800>,  <36.602825, 35.606323, 41.186592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774891, 35.440922, 41.211800>,  <37.061668, 35.165253, 41.253811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774891, 35.440922, 41.211800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425804, -0.313614, 0.848727,
		0.551980, 0.653213, 0.518296,
		-0.716944, 0.689173, -0.105032,
		36.559807, 35.647675, 41.180290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926250, 35.471893, 41.830677>,  <37.061668, 35.165253, 41.253811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926250, 35.471893, 41.830677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586090, 35.545971, 41.633690>,  <36.381996, 35.590416, 41.515495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586090, 35.545971, 41.633690>,  <36.926250, 35.471893, 41.830677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586090, 35.545971, 41.633690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525086, -0.357929, 0.772121,
		-0.033281, 0.915200, 0.401623,
		-0.850398, 0.185190, -0.492471,
		36.330971, 35.601528, 41.485950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435478, 35.776070, 42.241207>,  <36.926250, 35.471893, 41.830677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435478, 35.776070, 42.241207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192505, 35.638546, 41.954762>,  <36.046722, 35.556030, 41.782894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192505, 35.638546, 41.954762>,  <36.435478, 35.776070, 42.241207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192505, 35.638546, 41.954762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625764, -0.348214, 0.697973,
		-0.489331, 0.872091, -0.003627,
		-0.607433, -0.343809, -0.716115,
		36.010277, 35.535404, 41.739925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768379, 35.918350, 42.530949>,  <36.435478, 35.776070, 42.241207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768379, 35.918350, 42.530949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757805, 35.623390, 42.260975>,  <35.751461, 35.446415, 42.098991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757805, 35.623390, 42.260975>,  <35.768379, 35.918350, 42.530949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757805, 35.623390, 42.260975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562508, -0.547162, 0.619837,
		-0.826369, 0.396045, -0.400329,
		-0.026439, -0.737402, -0.674936,
		35.749874, 35.402168, 42.058495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023331, 35.717030, 42.438091>,  <35.768379, 35.918350, 42.530949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023331, 35.717030, 42.438091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211018, 35.384003, 42.320339>,  <35.323631, 35.184185, 42.249687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211018, 35.384003, 42.320339>,  <35.023331, 35.717030, 42.438091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211018, 35.384003, 42.320339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652749, -0.551516, 0.519374,
		-0.594773, -0.051540, -0.802240,
		0.469217, -0.832570, -0.294384,
		35.351784, 35.134232, 42.232025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553616, 35.087311, 42.490284>,  <35.023331, 35.717030, 42.438091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553616, 35.087311, 42.490284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934929, 34.970394, 42.520771>,  <35.163719, 34.900242, 42.539062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934929, 34.970394, 42.520771>,  <34.553616, 35.087311, 42.490284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934929, 34.970394, 42.520771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208262, -0.453223, 0.866727,
		-0.218795, -0.842112, -0.492925,
		0.953286, -0.292293, 0.076217,
		35.220917, 34.882706, 42.543636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298409, 34.655674, 42.971977>,  <34.553616, 35.087311, 42.490284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298409, 34.655674, 42.971977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462330, 34.291065, 42.985813>,  <34.560680, 34.072300, 42.994114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462330, 34.291065, 42.985813>,  <34.298409, 34.655674, 42.971977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462330, 34.291065, 42.985813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889769, 0.391092, -0.235282,
		0.200935, 0.127196, 0.971312,
		0.409799, -0.911520, 0.034591,
		34.585270, 34.017609, 42.996189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963379, 34.814049, 43.320564>,  <34.298409, 34.655674, 42.971977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963379, 34.814049, 43.320564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959843, 34.502823, 43.069313>,  <34.957722, 34.316090, 42.918564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959843, 34.502823, 43.069313>,  <34.963379, 34.814049, 43.320564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959843, 34.502823, 43.069313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732020, 0.422894, -0.534142,
		0.681226, -0.464522, 0.565818,
		-0.008839, -0.778062, -0.628126,
		34.957191, 34.269405, 42.880875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651184, 34.621948, 43.024071>,  <34.963379, 34.814049, 43.320564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651184, 34.621948, 43.024071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390690, 34.483414, 42.753979>,  <35.234394, 34.400291, 42.591923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390690, 34.483414, 42.753979>,  <35.651184, 34.621948, 43.024071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390690, 34.483414, 42.753979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518662, 0.446393, -0.729193,
		0.553969, -0.825095, -0.111073,
		-0.651236, -0.346341, -0.675233,
		35.195320, 34.379513, 42.551407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991333, 34.254677, 42.477753>,  <35.651184, 34.621948, 43.024071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991333, 34.254677, 42.477753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655426, 34.423763, 42.341461>,  <35.453880, 34.525215, 42.259686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655426, 34.423763, 42.341461>,  <35.991333, 34.254677, 42.477753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655426, 34.423763, 42.341461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534878, 0.536335, -0.652878,
		-0.093239, -0.730516, -0.676501,
		-0.839769, 0.422719, -0.340729,
		35.403496, 34.550579, 42.239243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979221, 34.258533, 41.736973>,  <35.991333, 34.254677, 42.477753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979221, 34.258533, 41.736973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726826, 34.551544, 41.839157>,  <35.575390, 34.727352, 41.900467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726826, 34.551544, 41.839157>,  <35.979221, 34.258533, 41.736973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726826, 34.551544, 41.839157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291144, 0.528813, -0.797240,
		-0.719092, -0.428671, -0.546944,
		-0.630985, 0.732529, 0.255461,
		35.537529, 34.771301, 41.915794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478642, 34.467484, 41.164276>,  <35.979221, 34.258533, 41.736973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478642, 34.467484, 41.164276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521530, 34.779514, 41.410847>,  <35.547264, 34.966732, 41.558788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521530, 34.779514, 41.410847>,  <35.478642, 34.467484, 41.164276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521530, 34.779514, 41.410847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368180, 0.544773, -0.753436,
		-0.923552, 0.307741, -0.228798,
		0.107220, 0.780076, 0.616430,
		35.553696, 35.013538, 41.595776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246529, 35.074741, 40.821850>,  <35.478642, 34.467484, 41.164276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246529, 35.074741, 40.821850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475964, 35.224163, 41.113453>,  <35.613625, 35.313816, 41.288414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475964, 35.224163, 41.113453>,  <35.246529, 35.074741, 40.821850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475964, 35.224163, 41.113453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435936, 0.614267, -0.657751,
		-0.693510, 0.695080, 0.189493,
		0.573589, 0.373550, 0.729011,
		35.648041, 35.336227, 41.332157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233181, 35.891399, 40.819393>,  <35.246529, 35.074741, 40.821850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233181, 35.891399, 40.819393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567322, 35.782574, 41.010464>,  <35.767807, 35.717278, 41.125107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567322, 35.782574, 41.010464>,  <35.233181, 35.891399, 40.819393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567322, 35.782574, 41.010464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520214, 0.672085, -0.526953,
		-0.177676, 0.688683, 0.702956,
		0.835350, -0.272061, 0.477676,
		35.817928, 35.700954, 41.153767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544842, 36.529343, 40.914616>,  <35.233181, 35.891399, 40.819393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544842, 36.529343, 40.914616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846581, 36.273399, 40.973324>,  <36.027622, 36.119831, 41.008549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846581, 36.273399, 40.973324>,  <35.544842, 36.529343, 40.914616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846581, 36.273399, 40.973324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648017, 0.689994, -0.322462,
		0.105063, 0.338355, 0.935135,
		0.754344, -0.639863, 0.146767,
		36.072884, 36.081440, 41.017353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136383, 36.900959, 41.080029>,  <35.544842, 36.529343, 40.914616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136383, 36.900959, 41.080029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308990, 36.559711, 40.962734>,  <36.412556, 36.354961, 40.892357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308990, 36.559711, 40.962734>,  <36.136383, 36.900959, 41.080029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308990, 36.559711, 40.962734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647627, 0.519247, -0.557640,
		0.627992, 0.050726, 0.776565,
		0.431515, -0.853118, -0.293231,
		36.438446, 36.303776, 40.874763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851822, 37.035847, 41.066826>,  <36.136383, 36.900959, 41.080029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851822, 37.035847, 41.066826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795624, 36.713352, 40.836960>,  <36.761906, 36.519855, 40.699039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795624, 36.713352, 40.836960>,  <36.851822, 37.035847, 41.066826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795624, 36.713352, 40.836960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578962, 0.403938, -0.708263,
		0.803158, -0.432219, 0.410029,
		-0.140499, -0.806238, -0.574665,
		36.753475, 36.471481, 40.664558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497055, 36.842922, 40.677021>,  <36.851822, 37.035847, 41.066826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497055, 36.842922, 40.677021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172710, 36.703888, 40.488686>,  <36.978104, 36.620468, 40.375683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172710, 36.703888, 40.488686>,  <37.497055, 36.842922, 40.677021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172710, 36.703888, 40.488686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275332, 0.483365, -0.830994,
		0.516425, -0.803459, -0.296242,
		-0.810862, -0.347581, -0.470840,
		36.929451, 36.599613, 40.347435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912746, 37.006706, 40.036091>,  <37.497055, 36.842922, 40.677021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912746, 37.006706, 40.036091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280323, 37.019573, 39.878857>,  <38.500870, 37.027294, 39.784515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280323, 37.019573, 39.878857>,  <37.912746, 37.006706, 40.036091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280323, 37.019573, 39.878857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282899, 0.748214, -0.600121,
		0.274813, 0.662678, 0.696661,
		0.918938, 0.032164, -0.393089,
		38.556004, 37.029221, 39.760929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044735, 36.595291, 39.299507>,  <37.912746, 37.006706, 40.036091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044735, 36.595291, 39.299507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647278, 36.614983, 39.340019>,  <37.408806, 36.626797, 39.364326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647278, 36.614983, 39.340019>,  <38.044735, 36.595291, 39.299507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647278, 36.614983, 39.340019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107260, -0.139748, -0.984361,
		-0.034300, -0.988963, 0.144138,
		-0.993639, 0.049224, 0.101283,
		37.349186, 36.629749, 39.370403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757534, 35.943653, 38.925442>,  <38.044735, 36.595291, 39.299507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757534, 35.943653, 38.925442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470547, 36.217815, 38.975178>,  <37.298355, 36.382313, 39.005020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470547, 36.217815, 38.975178>,  <37.757534, 35.943653, 38.925442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470547, 36.217815, 38.975178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186219, -0.016714, -0.982366,
		-0.671239, -0.727971, 0.139627,
		-0.717468, 0.685404, 0.124343,
		37.255306, 36.423435, 39.012482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177280, 35.703381, 38.552895>,  <37.757534, 35.943653, 38.925442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177280, 35.703381, 38.552895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139610, 36.100563, 38.581661>,  <37.117008, 36.338871, 38.598919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139610, 36.100563, 38.581661>,  <37.177280, 35.703381, 38.552895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139610, 36.100563, 38.581661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172770, 0.054838, -0.983434,
		-0.980450, -0.105040, 0.166389,
		-0.094175, 0.992955, 0.071913,
		37.111359, 36.398449, 38.603233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160217, 36.017288, 37.929806>,  <37.177280, 35.703381, 38.552895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160217, 36.017288, 37.929806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041592, 36.335369, 38.141350>,  <36.970417, 36.526218, 38.268276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041592, 36.335369, 38.141350>,  <37.160217, 36.017288, 37.929806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041592, 36.335369, 38.141350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120751, 0.580554, -0.805218,
		-0.947348, -0.174938, -0.268193,
		-0.296564, 0.795207, 0.528863,
		36.952621, 36.573933, 38.300007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443333, 36.421928, 37.694237>,  <37.160217, 36.017288, 37.929806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443333, 36.421928, 37.694237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724934, 36.643940, 37.871468>,  <36.893894, 36.777145, 37.977806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724934, 36.643940, 37.871468>,  <36.443333, 36.421928, 37.694237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724934, 36.643940, 37.871468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166245, 0.477762, -0.862616,
		-0.690465, 0.680945, 0.244075,
		0.704004, 0.555030, 0.443081,
		36.936134, 36.810448, 38.004391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428665, 37.110802, 37.392269>,  <36.443333, 36.421928, 37.694237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428665, 37.110802, 37.392269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795799, 37.059307, 37.542469>,  <37.016079, 37.028408, 37.632591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795799, 37.059307, 37.542469>,  <36.428665, 37.110802, 37.392269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795799, 37.059307, 37.542469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396958, 0.295565, -0.868945,
		0.000882, 0.946608, 0.322385,
		0.917836, -0.128739, 0.375504,
		37.071152, 37.020687, 37.655121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696320, 37.701908, 37.322487>,  <36.428665, 37.110802, 37.392269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696320, 37.701908, 37.322487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010788, 37.462627, 37.384563>,  <37.199471, 37.319057, 37.421810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010788, 37.462627, 37.384563>,  <36.696320, 37.701908, 37.322487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010788, 37.462627, 37.384563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436101, 0.359065, -0.825159,
		0.437892, 0.716395, 0.543165,
		0.786172, -0.598206, 0.155189,
		37.246639, 37.283165, 37.431122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438660, 38.088150, 37.295563>,  <36.696320, 37.701908, 37.322487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438660, 38.088150, 37.295563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503338, 37.701588, 37.215656>,  <37.542145, 37.469650, 37.167713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503338, 37.701588, 37.215656>,  <37.438660, 38.088150, 37.295563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503338, 37.701588, 37.215656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550380, 0.256336, -0.794590,
		0.819108, 0.018531, 0.573340,
		0.161692, -0.966410, -0.199768,
		37.551846, 37.411663, 37.155727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160294, 38.081589, 37.040241>,  <37.438660, 38.088150, 37.295563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160294, 38.081589, 37.040241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024002, 37.716072, 36.951801>,  <37.942226, 37.496761, 36.898739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024002, 37.716072, 36.951801>,  <38.160294, 38.081589, 37.040241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024002, 37.716072, 36.951801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579799, -0.019105, -0.814535,
		0.740094, -0.405727, 0.536327,
		-0.340725, -0.913795, -0.221101,
		37.921783, 37.441933, 36.885471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761787, 37.580990, 37.060490>,  <38.160294, 38.081589, 37.040241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761787, 37.580990, 37.060490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483135, 37.426365, 36.818733>,  <38.315945, 37.333591, 36.673679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483135, 37.426365, 36.818733>,  <38.761787, 37.580990, 37.060490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483135, 37.426365, 36.818733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635515, 0.058428, -0.769874,
		0.332914, -0.920412, 0.204962,
		-0.696626, -0.386559, -0.604387,
		38.274147, 37.310398, 36.637417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060280, 36.962013, 36.599606>,  <38.761787, 37.580990, 37.060490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060280, 36.962013, 36.599606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751442, 37.094318, 36.382545>,  <38.566139, 37.173702, 36.252308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751442, 37.094318, 36.382545>,  <39.060280, 36.962013, 36.599606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751442, 37.094318, 36.382545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573219, -0.006230, -0.819379,
		-0.274399, -0.943694, -0.184788,
		-0.772092, 0.330761, -0.542652,
		38.519814, 37.193546, 36.219749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106560, 36.523102, 35.983223>,  <39.060280, 36.962013, 36.599606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106560, 36.523102, 35.983223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877659, 36.840420, 35.900082>,  <38.740318, 37.030811, 35.850197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877659, 36.840420, 35.900082>,  <39.106560, 36.523102, 35.983223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877659, 36.840420, 35.900082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313162, -0.022861, -0.949424,
		-0.757928, -0.608405, -0.235348,
		-0.572254, 0.793298, -0.207856,
		38.705982, 37.078407, 35.837727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663723, 36.809280, 35.434891>,  <39.106560, 36.523102, 35.983223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663723, 36.809280, 35.434891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999512, 36.593685, 35.462551>,  <40.200985, 36.464329, 35.479149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999512, 36.593685, 35.462551>,  <39.663723, 36.809280, 35.434891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999512, 36.593685, 35.462551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443578, -0.753189, -0.485742,
		0.313896, 0.377090, -0.871363,
		0.839469, -0.538989, 0.069154,
		40.251354, 36.431988, 35.483295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739731, 36.573074, 34.779778>,  <39.663723, 36.809280, 35.434891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739731, 36.573074, 34.779778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913925, 36.342609, 35.056442>,  <40.018440, 36.204330, 35.222439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913925, 36.342609, 35.056442>,  <39.739731, 36.573074, 34.779778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913925, 36.342609, 35.056442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602638, -0.757361, -0.251460,
		0.668717, -0.307313, -0.677035,
		0.435483, -0.576162, 0.691658,
		40.044571, 36.169762, 35.263939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714138, 35.777874, 34.582699>,  <39.739731, 36.573074, 34.779778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714138, 35.777874, 34.582699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791298, 35.782555, 34.975159>,  <39.837593, 35.785362, 35.210636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791298, 35.782555, 34.975159>,  <39.714138, 35.777874, 34.582699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791298, 35.782555, 34.975159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485735, -0.867674, 0.105845,
		0.852556, -0.496996, -0.161686,
		0.192895, 0.011703, 0.981150,
		39.849167, 35.786064, 35.269505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064285, 36.191658, 33.947121>,  <39.714138, 35.777874, 34.582699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064285, 36.191658, 33.947121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272568, 36.063049, 33.630772>,  <40.397537, 35.985886, 33.440960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272568, 36.063049, 33.630772>,  <40.064285, 36.191658, 33.947121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272568, 36.063049, 33.630772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377974, -0.743817, 0.551245,
		-0.765508, -0.585968, -0.265781,
		0.520705, -0.321525, -0.790879,
		40.428780, 35.966595, 33.393509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822906, 35.472805, 33.803215>,  <40.064285, 36.191658, 33.947121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822906, 35.472805, 33.803215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191780, 35.600529, 33.715931>,  <40.413105, 35.677162, 33.663559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191780, 35.600529, 33.715931>,  <39.822906, 35.472805, 33.803215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191780, 35.600529, 33.715931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376386, -0.611254, 0.696205,
		0.088918, -0.724164, -0.683872,
		0.922186, 0.319305, -0.218214,
		40.468437, 35.696320, 33.650467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208767, 34.869305, 33.801655>,  <39.822906, 35.472805, 33.803215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208767, 34.869305, 33.801655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485447, 35.152496, 33.858677>,  <40.651455, 35.322411, 33.892891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485447, 35.152496, 33.858677>,  <40.208767, 34.869305, 33.801655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485447, 35.152496, 33.858677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491735, -0.606272, 0.625005,
		0.528918, -0.362214, -0.767494,
		0.691696, 0.707980, 0.142555,
		40.692955, 35.364891, 33.901443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833401, 34.492752, 33.736126>,  <40.208767, 34.869305, 33.801655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833401, 34.492752, 33.736126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895866, 34.832664, 33.937519>,  <40.933346, 35.036610, 34.058353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895866, 34.832664, 33.937519>,  <40.833401, 34.492752, 33.736126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895866, 34.832664, 33.937519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625345, -0.479624, 0.615552,
		0.764563, 0.218722, -0.606304,
		0.156163, 0.849778, 0.503479,
		40.942715, 35.087597, 34.088562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903660, 35.151669, 33.325035>,  <40.833401, 34.492752, 33.736126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903660, 35.151669, 33.325035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160625, 35.438931, 33.432030>,  <41.314804, 35.611290, 33.496227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160625, 35.438931, 33.432030>,  <40.903660, 35.151669, 33.325035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160625, 35.438931, 33.432030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277783, -0.543518, 0.792102,
		0.714240, -0.434555, -0.548657,
		0.642416, 0.718158, 0.267490,
		41.353352, 35.654377, 33.512276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697884, 35.120747, 33.310772>,  <40.903660, 35.151669, 33.325035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697884, 35.120747, 33.310772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558441, 35.354656, 33.603760>,  <41.474777, 35.495003, 33.779552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558441, 35.354656, 33.603760>,  <41.697884, 35.120747, 33.310772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558441, 35.354656, 33.603760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566019, -0.491549, 0.661817,
		0.747058, 0.645307, -0.159635,
		-0.348606, 0.584772, 0.732472,
		41.453857, 35.530087, 33.823502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243053, 35.090595, 33.738220>,  <41.697884, 35.120747, 33.310772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243053, 35.090595, 33.738220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963455, 35.233219, 33.986179>,  <41.795696, 35.318794, 34.134956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963455, 35.233219, 33.986179>,  <42.243053, 35.090595, 33.738220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963455, 35.233219, 33.986179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502179, -0.372414, 0.780464,
		0.509140, 0.856839, 0.081259,
		-0.698994, 0.356559, 0.619897,
		41.753757, 35.340187, 34.172150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551678, 34.485832, 34.123997>,  <42.243053, 35.090595, 33.738220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551678, 34.485832, 34.123997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876957, 34.348804, 33.935802>,  <43.072124, 34.266586, 33.822884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876957, 34.348804, 33.935802>,  <42.551678, 34.485832, 34.123997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876957, 34.348804, 33.935802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569909, 0.304848, 0.763067,
		-0.117978, -0.888658, 0.443136,
		0.813194, -0.342572, -0.470489,
		43.120914, 34.246033, 33.794655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865944, 34.359234, 34.763321>,  <42.551678, 34.485832, 34.123997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865944, 34.359234, 34.763321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144978, 34.294754, 34.484066>,  <43.312397, 34.256065, 34.316513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144978, 34.294754, 34.484066>,  <42.865944, 34.359234, 34.763321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144978, 34.294754, 34.484066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716439, 0.170327, 0.676538,
		0.009851, -0.972112, 0.234309,
		0.697580, -0.161204, -0.698137,
		43.354252, 34.246395, 34.274624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248661, 33.811493, 34.972061>,  <42.865944, 34.359234, 34.763321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248661, 33.811493, 34.972061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472004, 34.029026, 34.721466>,  <43.606010, 34.159546, 34.571110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472004, 34.029026, 34.721466>,  <43.248661, 33.811493, 34.972061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472004, 34.029026, 34.721466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769984, -0.058617, 0.635365,
		0.308812, -0.837142, -0.451474,
		0.558355, 0.543836, -0.626484,
		43.639511, 34.192177, 34.533520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960903, 33.362717, 34.727509>,  <43.248661, 33.811493, 34.972061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960903, 33.362717, 34.727509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946312, 33.759571, 34.775414>,  <43.937557, 33.997684, 34.804157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946312, 33.759571, 34.775414>,  <43.960903, 33.362717, 34.727509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946312, 33.759571, 34.775414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749232, -0.052159, 0.660251,
		0.661303, 0.113814, -0.741434,
		-0.036473, 0.992132, 0.119766,
		43.935371, 34.057209, 34.811344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630051, 33.532005, 34.670197>,  <43.960903, 33.362717, 34.727509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630051, 33.532005, 34.670197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455189, 33.860035, 34.817913>,  <44.350273, 34.056854, 34.906544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455189, 33.860035, 34.817913>,  <44.630051, 33.532005, 34.670197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455189, 33.860035, 34.817913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845294, 0.234375, 0.480152,
		0.307209, 0.522058, -0.795662,
		-0.437150, 0.820076, 0.369290,
		44.324043, 34.106056, 34.928699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108921, 34.057198, 34.594898>,  <44.630051, 33.532005, 34.670197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108921, 34.057198, 34.594898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860775, 34.183838, 34.881927>,  <44.711887, 34.259823, 35.054146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860775, 34.183838, 34.881927>,  <45.108921, 34.057198, 34.594898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.860775, 34.183838, 34.881927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783144, 0.200061, 0.588779,
		0.042846, 0.927222, -0.372052,
		-0.620362, 0.316597, 0.717577,
		44.674667, 34.278816, 35.097202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.520218, 34.576046, 34.280685>,  <45.108921, 34.057198, 34.594898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.520218, 34.576046, 34.280685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.617527, 34.871601, 34.532040>,  <45.675915, 35.048935, 34.682854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.617527, 34.871601, 34.532040>,  <45.520218, 34.576046, 34.280685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.617527, 34.871601, 34.532040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915988, -0.388097, 0.101721,
		0.319034, 0.550846, -0.771224,
		0.243277, 0.738884, 0.628384,
		45.690510, 35.093266, 34.720554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.042278, 34.972279, 34.013687>,  <45.520218, 34.576046, 34.280685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.042278, 34.972279, 34.013687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.069210, 35.025486, 34.409218>,  <46.085369, 35.057411, 34.646534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.069210, 35.025486, 34.409218>,  <46.042278, 34.972279, 34.013687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.069210, 35.025486, 34.409218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855470, -0.517728, 0.011397,
		0.513458, 0.845142, -0.148651,
		0.067328, 0.133018, 0.988824,
		46.089409, 35.065392, 34.705864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.621212, 35.204708, 34.288593>,  <46.042278, 34.972279, 34.013687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.621212, 35.204708, 34.288593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472828, 34.968517, 34.575291>,  <46.383797, 34.826801, 34.747311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472828, 34.968517, 34.575291>,  <46.621212, 35.204708, 34.288593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.472828, 34.968517, 34.575291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793938, -0.602020, -0.085054,
		0.481718, 0.537500, 0.692128,
		-0.370958, -0.590479, 0.716746,
		46.361542, 34.791374, 34.790314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.024796, 34.942425, 34.885773>,  <46.621212, 35.204708, 34.288593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.024796, 34.942425, 34.885773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.762882, 34.667068, 34.760952>,  <46.605736, 34.501854, 34.686058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.762882, 34.667068, 34.760952>,  <47.024796, 34.942425, 34.885773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.762882, 34.667068, 34.760952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749202, -0.645662, -0.147702,
		-0.099804, -0.330502, 0.938513,
		-0.654779, -0.688395, -0.312053,
		46.566448, 34.460548, 34.667336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.579941, 35.381260, 34.890392>,  <47.024796, 34.942425, 34.885773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.579941, 35.381260, 34.890392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.844326, 35.222309, 35.145020>,  <48.002956, 35.126938, 35.297798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.844326, 35.222309, 35.145020>,  <47.579941, 35.381260, 34.890392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.844326, 35.222309, 35.145020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748368, 0.411723, -0.520029,
		-0.055445, 0.820109, 0.569515,
		0.660962, -0.397374, 0.636571,
		48.042614, 35.103096, 35.335991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.778069, 34.208332, 26.667089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.432453, 34.409115, 26.651714>,  <37.225086, 34.529587, 26.642488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.432453, 34.409115, 26.651714>,  <37.778069, 34.208332, 26.667089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432453, 34.409115, 26.651714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181490, -0.239359, 0.953818,
		0.469579, 0.831109, 0.297915,
		-0.864035, 0.501961, -0.038440,
		37.173241, 34.559704, 26.640182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747734, 34.819977, 27.258213>,  <37.778069, 34.208332, 26.667089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747734, 34.819977, 27.258213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371941, 34.725498, 27.158955>,  <37.146465, 34.668812, 27.099400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371941, 34.725498, 27.158955>,  <37.747734, 34.819977, 27.258213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371941, 34.725498, 27.158955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278632, 0.105389, 0.954598,
		-0.199324, 0.965973, -0.164825,
		-0.939486, -0.236200, -0.248145,
		37.090096, 34.654636, 27.084511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364254, 35.392731, 27.573454>,  <37.747734, 34.819977, 27.258213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364254, 35.392731, 27.573454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100552, 35.097004, 27.518616>,  <36.942329, 34.919567, 27.485712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100552, 35.097004, 27.518616>,  <37.364254, 35.392731, 27.573454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100552, 35.097004, 27.518616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354538, 0.144849, 0.923754,
		-0.663086, 0.657596, -0.357607,
		-0.659257, -0.739314, -0.137095,
		36.902775, 34.875210, 27.477488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769203, 35.792248, 27.864727>,  <37.364254, 35.392731, 27.573454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769203, 35.792248, 27.864727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748924, 35.392773, 27.862076>,  <36.736755, 35.153088, 27.860485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748924, 35.392773, 27.862076>,  <36.769203, 35.792248, 27.864727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748924, 35.392773, 27.862076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274113, 0.007532, 0.961668,
		-0.960360, 0.050574, -0.274136,
		-0.050700, -0.998692, -0.006629,
		36.733715, 35.093166, 27.860086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167698, 35.676533, 28.214035>,  <36.769203, 35.792248, 27.864727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167698, 35.676533, 28.214035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.386517, 35.341835, 28.223873>,  <36.517807, 35.141018, 28.229776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.386517, 35.341835, 28.223873>,  <36.167698, 35.676533, 28.214035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386517, 35.341835, 28.223873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301743, -0.169696, 0.938166,
		-0.780827, -0.520642, -0.345312,
		0.547047, -0.836741, 0.024597,
		36.550632, 35.090813, 28.231253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797718, 35.248783, 28.393204>,  <36.167698, 35.676533, 28.214035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797718, 35.248783, 28.393204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146202, 35.094639, 28.514856>,  <36.355293, 35.002151, 28.587847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146202, 35.094639, 28.514856>,  <35.797718, 35.248783, 28.393204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146202, 35.094639, 28.514856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376523, -0.126997, 0.917661,
		-0.315010, -0.913984, -0.255739,
		0.871205, -0.385364, 0.304130,
		36.407562, 34.979031, 28.606096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578472, 34.723419, 28.816336>,  <35.797718, 35.248783, 28.393204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578472, 34.723419, 28.816336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.957703, 34.788998, 28.925344>,  <36.185242, 34.828346, 28.990749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.957703, 34.788998, 28.925344>,  <35.578472, 34.723419, 28.816336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957703, 34.788998, 28.925344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206084, -0.335947, 0.919059,
		0.242232, -0.927502, -0.284717,
		0.948079, 0.163950, 0.272521,
		36.242126, 34.838181, 29.007101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751831, 34.146214, 29.177753>,  <35.578472, 34.723419, 28.816336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751831, 34.146214, 29.177753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.006710, 34.440727, 29.268858>,  <36.159637, 34.617435, 29.323521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.006710, 34.440727, 29.268858>,  <35.751831, 34.146214, 29.177753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006710, 34.440727, 29.268858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208206, -0.120084, 0.970686,
		0.742046, -0.665937, 0.076781,
		0.637195, 0.736280, 0.227760,
		36.197868, 34.661610, 29.337185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195999, 33.893551, 29.682775>,  <35.751831, 34.146214, 29.177753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195999, 33.893551, 29.682775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247871, 34.288406, 29.720150>,  <36.278996, 34.525322, 29.742575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247871, 34.288406, 29.720150>,  <36.195999, 33.893551, 29.682775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247871, 34.288406, 29.720150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123978, -0.077352, 0.989266,
		0.983774, -0.139876, 0.112352,
		0.129684, 0.987143, 0.093438,
		36.286777, 34.584549, 29.748182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592911, 34.014614, 30.193697>,  <36.195999, 33.893551, 29.682775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592911, 34.014614, 30.193697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.413242, 34.370815, 30.164711>,  <36.305439, 34.584534, 30.147320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.413242, 34.370815, 30.164711>,  <36.592911, 34.014614, 30.193697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413242, 34.370815, 30.164711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083621, 0.038847, 0.995740,
		0.889522, 0.453321, 0.057015,
		-0.449175, 0.890500, -0.072463,
		36.278488, 34.637966, 30.142973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016327, 34.472088, 30.601744>,  <36.592911, 34.014614, 30.193697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016327, 34.472088, 30.601744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.653084, 34.635979, 30.567198>,  <36.435135, 34.734314, 30.546471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.653084, 34.635979, 30.567198>,  <37.016327, 34.472088, 30.601744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653084, 34.635979, 30.567198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079467, 0.033874, 0.996262,
		0.411116, 0.911581, 0.001798,
		-0.908113, 0.409722, -0.086367,
		36.380650, 34.758896, 30.541288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033031, 35.142818, 31.081530>,  <37.016327, 34.472088, 30.601744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033031, 35.142818, 31.081530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.646423, 35.064857, 31.014769>,  <36.414459, 35.018082, 30.974712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.646423, 35.064857, 31.014769>,  <37.033031, 35.142818, 31.081530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646423, 35.064857, 31.014769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218084, 0.281185, 0.934545,
		-0.135211, 0.939654, -0.314274,
		-0.966518, -0.194899, -0.166904,
		36.356468, 35.006390, 30.964697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631073, 35.757549, 31.319338>,  <37.033031, 35.142818, 31.081530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631073, 35.757549, 31.319338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.366684, 35.458202, 31.297201>,  <36.208050, 35.278595, 31.283918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.366684, 35.458202, 31.297201>,  <36.631073, 35.757549, 31.319338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366684, 35.458202, 31.297201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208714, 0.112499, 0.971485,
		-0.720802, 0.653674, -0.230553,
		-0.660972, -0.748368, -0.055342,
		36.168392, 35.233692, 31.280600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051159, 35.999825, 31.692465>,  <36.631073, 35.757549, 31.319338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051159, 35.999825, 31.692465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.031097, 35.600334, 31.690121>,  <36.019062, 35.360641, 31.688715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.031097, 35.600334, 31.690121>,  <36.051159, 35.999825, 31.692465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031097, 35.600334, 31.690121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257610, 0.007266, 0.966222,
		-0.964947, 0.049966, -0.257645,
		-0.050151, -0.998725, -0.005861,
		36.016052, 35.300716, 31.688362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437824, 35.782795, 32.145630>,  <36.051159, 35.999825, 31.692465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437824, 35.782795, 32.145630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651470, 35.446468, 32.110394>,  <35.779655, 35.244675, 32.089252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651470, 35.446468, 32.110394>,  <35.437824, 35.782795, 32.145630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651470, 35.446468, 32.110394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161659, -0.203847, 0.965563,
		-0.829814, -0.501479, -0.244802,
		0.534112, -0.840812, -0.088086,
		35.811703, 35.194225, 32.083969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000549, 35.314877, 32.445919>,  <35.437824, 35.782795, 32.145630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000549, 35.314877, 32.445919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.364014, 35.148232, 32.456993>,  <35.582092, 35.048244, 32.463638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.364014, 35.148232, 32.456993>,  <35.000549, 35.314877, 32.445919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364014, 35.148232, 32.456993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088070, -0.126431, 0.988058,
		-0.408141, -0.900248, -0.151574,
		0.908661, -0.416616, 0.027683,
		35.636612, 35.023247, 32.465298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891003, 34.752888, 32.837822>,  <35.000549, 35.314877, 32.445919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891003, 34.752888, 32.837822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287724, 34.803905, 32.841038>,  <35.525757, 34.834518, 32.842968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287724, 34.803905, 32.841038>,  <34.891003, 34.752888, 32.837822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287724, 34.803905, 32.841038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011947, -0.155168, 0.987816,
		0.127242, -0.979620, -0.155419,
		0.991800, 0.127548, 0.008041,
		35.585262, 34.842171, 32.843449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161522, 34.179253, 33.189617>,  <34.891003, 34.752888, 32.837822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161522, 34.179253, 33.189617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.423046, 34.480518, 33.218693>,  <35.579960, 34.661278, 33.236137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.423046, 34.480518, 33.218693>,  <35.161522, 34.179253, 33.189617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423046, 34.480518, 33.218693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136908, 0.023276, 0.990310,
		0.744171, -0.657425, 0.118332,
		0.653809, 0.753160, 0.072685,
		35.619190, 34.706467, 33.240498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501534, 33.912846, 33.719074>,  <35.161522, 34.179253, 33.189617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501534, 33.912846, 33.719074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.591198, 34.302025, 33.696747>,  <35.644997, 34.535534, 33.683350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.591198, 34.302025, 33.696747>,  <35.501534, 33.912846, 33.719074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591198, 34.302025, 33.696747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082446, 0.038140, 0.995865,
		0.971058, -0.227836, -0.071667,
		0.224161, 0.972952, -0.055820,
		35.658447, 34.593910, 33.680000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985817, 33.969322, 34.211212>,  <35.501534, 33.912846, 33.719074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985817, 33.969322, 34.211212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843243, 34.339104, 34.157051>,  <35.757698, 34.560974, 34.124554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843243, 34.339104, 34.157051>,  <35.985817, 33.969322, 34.211212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843243, 34.339104, 34.157051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145237, 0.088339, 0.985445,
		0.922963, 0.370911, 0.102778,
		-0.356433, 0.924457, -0.135403,
		35.736313, 34.616440, 34.116428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463837, 34.409134, 34.614269>,  <35.985817, 33.969322, 34.211212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463837, 34.409134, 34.614269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103703, 34.578236, 34.572937>,  <35.887623, 34.679695, 34.548138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103703, 34.578236, 34.572937>,  <36.463837, 34.409134, 34.614269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103703, 34.578236, 34.572937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103908, 0.021760, 0.994349,
		0.422610, 0.905985, 0.024335,
		-0.900336, 0.422750, -0.103335,
		35.833603, 34.705059, 34.541935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247086, 34.391308, 34.561935>,  <36.463837, 34.409134, 34.614269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247086, 34.391308, 34.561935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538498, 34.641628, 34.673367>,  <37.713345, 34.791821, 34.740223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538498, 34.641628, 34.673367>,  <37.247086, 34.391308, 34.561935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538498, 34.641628, 34.673367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388731, -0.042851, -0.920354,
		-0.564026, 0.778801, -0.274489,
		0.728535, 0.625806, 0.278575,
		37.757057, 34.829369, 34.756939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257534, 34.964882, 34.125439>,  <37.247086, 34.391308, 34.561935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257534, 34.964882, 34.125439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627922, 34.942894, 34.274868>,  <37.850155, 34.929703, 34.364525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627922, 34.942894, 34.274868>,  <37.257534, 34.964882, 34.125439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627922, 34.942894, 34.274868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373463, -0.012715, -0.927558,
		0.055737, 0.998407, 0.008755,
		0.925969, -0.054969, 0.373576,
		37.905712, 34.926403, 34.386940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637314, 35.199635, 33.625851>,  <37.257534, 34.964882, 34.125439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637314, 35.199635, 33.625851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.900681, 35.004913, 33.855465>,  <38.058701, 34.888081, 33.993233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.900681, 35.004913, 33.855465>,  <37.637314, 35.199635, 33.625851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900681, 35.004913, 33.855465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494965, -0.294516, -0.817478,
		0.567011, 0.822366, 0.047036,
		0.658413, -0.486800, 0.574036,
		38.098206, 34.858871, 34.027676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252220, 35.355808, 33.267475>,  <37.637314, 35.199635, 33.625851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252220, 35.355808, 33.267475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299122, 35.036518, 33.503811>,  <38.327263, 34.844944, 33.645611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299122, 35.036518, 33.503811>,  <38.252220, 35.355808, 33.267475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299122, 35.036518, 33.503811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437139, -0.492721, -0.752420,
		0.891718, 0.346505, 0.291159,
		0.117257, -0.798223, 0.590839,
		38.334297, 34.797050, 33.681061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924061, 35.177082, 33.049404>,  <38.252220, 35.355808, 33.267475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924061, 35.177082, 33.049404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.774563, 34.874569, 33.264198>,  <38.684864, 34.693062, 33.393074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.774563, 34.874569, 33.264198>,  <38.924061, 35.177082, 33.049404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774563, 34.874569, 33.264198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378855, -0.652918, -0.655872,
		0.846629, -0.041692, 0.530547,
		-0.373748, -0.756281, 0.536984,
		38.662437, 34.647686, 33.425293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494766, 34.738125, 33.193275>,  <38.924061, 35.177082, 33.049404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494766, 34.738125, 33.193275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.152641, 34.531044, 33.201542>,  <38.947369, 34.406796, 33.206501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.152641, 34.531044, 33.201542>,  <39.494766, 34.738125, 33.193275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152641, 34.531044, 33.201542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399019, -0.683621, -0.611102,
		0.330500, -0.514434, 0.791282,
		-0.855309, -0.517706, 0.020668,
		38.896049, 34.375732, 33.207741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720741, 34.030937, 33.139286>,  <39.494766, 34.738125, 33.193275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720741, 34.030937, 33.139286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333042, 34.018326, 33.041656>,  <39.100422, 34.010757, 32.983078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333042, 34.018326, 33.041656>,  <39.720741, 34.030937, 33.139286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333042, 34.018326, 33.041656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215597, -0.587041, -0.780321,
		-0.118676, -0.808943, 0.575784,
		-0.969244, -0.031532, -0.244074,
		39.042271, 34.008865, 32.968433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610580, 33.450958, 32.881809>,  <39.720741, 34.030937, 33.139286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610580, 33.450958, 32.881809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.271797, 33.613739, 32.744965>,  <39.068527, 33.711407, 32.662857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.271797, 33.613739, 32.744965>,  <39.610580, 33.450958, 32.881809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271797, 33.613739, 32.744965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156003, -0.424932, -0.891681,
		-0.508253, -0.808590, 0.296414,
		-0.846960, 0.406958, -0.342116,
		39.017708, 33.735825, 32.642330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069019, 32.904484, 32.561840>,  <39.610580, 33.450958, 32.881809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069019, 32.904484, 32.561840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.036804, 33.274841, 32.414196>,  <39.017475, 33.497055, 32.325611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.036804, 33.274841, 32.414196>,  <39.069019, 32.904484, 32.561840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036804, 33.274841, 32.414196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164592, -0.352877, -0.921080,
		-0.983069, -0.134931, -0.123975,
		-0.080534, 0.925890, -0.369111,
		39.012646, 33.552608, 32.303463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545261, 32.819130, 32.058517>,  <39.069019, 32.904484, 32.561840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545261, 32.819130, 32.058517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.700134, 33.174694, 31.960600>,  <38.793060, 33.388031, 31.901848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.700134, 33.174694, 31.960600>,  <38.545261, 32.819130, 32.058517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700134, 33.174694, 31.960600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215730, -0.170794, -0.961400,
		-0.896409, 0.425049, 0.125635,
		0.387185, 0.888911, -0.244797,
		38.816288, 33.441368, 31.887161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097733, 33.126659, 31.586536>,  <38.545261, 32.819130, 32.058517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097733, 33.126659, 31.586536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448288, 33.304199, 31.511763>,  <38.658619, 33.410725, 31.466898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448288, 33.304199, 31.511763>,  <38.097733, 33.126659, 31.586536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448288, 33.304199, 31.511763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182796, -0.052550, -0.981745,
		-0.445572, 0.894559, 0.035081,
		0.876385, 0.443851, -0.186937,
		38.711205, 33.437355, 31.455681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970287, 33.458603, 31.029814>,  <38.097733, 33.126659, 31.586536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970287, 33.458603, 31.029814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.369804, 33.476223, 31.038567>,  <38.609512, 33.486797, 31.043818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.369804, 33.476223, 31.038567>,  <37.970287, 33.458603, 31.029814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369804, 33.476223, 31.038567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027317, -0.126836, -0.991547,
		-0.040907, 0.990945, -0.127886,
		0.998789, 0.044055, 0.021881,
		38.669441, 33.489441, 31.045132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242065, 34.051636, 30.518650>,  <37.970287, 33.458603, 31.029814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242065, 34.051636, 30.518650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522560, 33.771935, 30.574236>,  <38.690857, 33.604115, 30.607588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522560, 33.771935, 30.574236>,  <38.242065, 34.051636, 30.518650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522560, 33.771935, 30.574236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009099, -0.203684, -0.978995,
		0.712869, 0.685245, -0.149194,
		0.701239, -0.699252, 0.138964,
		38.732933, 33.562160, 30.615925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731865, 34.229259, 29.993074>,  <38.242065, 34.051636, 30.518650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731865, 34.229259, 29.993074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788284, 33.846748, 30.095556>,  <38.822136, 33.617241, 30.157045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788284, 33.846748, 30.095556>,  <38.731865, 34.229259, 29.993074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788284, 33.846748, 30.095556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192013, -0.227451, -0.954671,
		0.971204, 0.183848, 0.151536,
		0.141048, -0.956277, 0.256202,
		38.830597, 33.559864, 30.172417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400406, 34.036713, 29.745520>,  <38.731865, 34.229259, 29.993074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400406, 34.036713, 29.745520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.201263, 33.691475, 29.779470>,  <39.081779, 33.484333, 29.799841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.201263, 33.691475, 29.779470>,  <39.400406, 34.036713, 29.745520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201263, 33.691475, 29.779470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257794, -0.240720, -0.935733,
		0.828059, -0.443979, 0.342345,
		-0.497855, -0.863097, 0.084875,
		39.051907, 33.432545, 29.804934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900467, 33.535599, 29.567875>,  <39.400406, 34.036713, 29.745520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900467, 33.535599, 29.567875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.524101, 33.407883, 29.522732>,  <39.298283, 33.331253, 29.495646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.524101, 33.407883, 29.522732>,  <39.900467, 33.535599, 29.567875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524101, 33.407883, 29.522732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177751, -0.181972, -0.967104,
		0.288249, -0.930022, 0.227974,
		-0.940913, -0.319290, -0.112859,
		39.241829, 33.312096, 29.488874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895908, 32.879570, 29.157051>,  <39.900467, 33.535599, 29.567875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895908, 32.879570, 29.157051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525749, 33.022552, 29.106667>,  <39.303654, 33.108341, 29.076437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525749, 33.022552, 29.106667>,  <39.895908, 32.879570, 29.157051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525749, 33.022552, 29.106667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077005, -0.148085, -0.985972,
		-0.371092, -0.922116, 0.109512,
		-0.925398, 0.357453, -0.125961,
		39.248131, 33.129787, 29.068878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806103, 32.659977, 28.551182>,  <39.895908, 32.879570, 29.157051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806103, 32.659977, 28.551182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.507473, 32.919521, 28.609978>,  <39.328297, 33.075249, 28.645254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.507473, 32.919521, 28.609978>,  <39.806103, 32.659977, 28.551182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507473, 32.919521, 28.609978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069894, 0.143216, -0.987220,
		-0.661622, -0.747305, -0.061570,
		-0.746573, 0.648864, 0.146987,
		39.283501, 33.114182, 28.654074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293388, 32.513828, 28.088654>,  <39.806103, 32.659977, 28.551182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293388, 32.513828, 28.088654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.247562, 32.900600, 28.179806>,  <39.220066, 33.132664, 28.234497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.247562, 32.900600, 28.179806>,  <39.293388, 32.513828, 28.088654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247562, 32.900600, 28.179806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236259, 0.196289, -0.951658,
		-0.964913, -0.162862, 0.205958,
		-0.114561, 0.966927, 0.227879,
		39.213196, 33.190678, 28.248169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.947392, 32.866184, 27.382740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.004688, 33.185543, 27.616678>,  <39.039066, 33.377159, 27.757042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.004688, 33.185543, 27.616678>,  <38.947392, 32.866184, 27.382740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004688, 33.185543, 27.616678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062193, 0.597035, -0.799801,
		-0.987732, 0.078188, 0.135172,
		0.143237, 0.798396, 0.584848,
		39.047661, 33.425060, 27.792133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431980, 33.433155, 27.223803>,  <38.947392, 32.866184, 27.382740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431980, 33.433155, 27.223803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.740360, 33.636707, 27.376995>,  <38.925388, 33.758839, 27.468910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.740360, 33.636707, 27.376995>,  <38.431980, 33.433155, 27.223803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740360, 33.636707, 27.376995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099655, 0.690308, -0.716620,
		-0.629048, 0.514313, 0.582906,
		0.770952, 0.508878, 0.382983,
		38.971645, 33.789371, 27.491890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262207, 34.244614, 27.196438>,  <38.431980, 33.433155, 27.223803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262207, 34.244614, 27.196438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.659405, 34.227291, 27.240414>,  <38.897724, 34.216900, 27.266798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.659405, 34.227291, 27.240414>,  <38.262207, 34.244614, 27.196438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659405, 34.227291, 27.240414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113927, 0.597696, -0.793587,
		-0.031344, 0.800553, 0.598442,
		0.992995, -0.043304, 0.109938,
		38.957302, 34.214298, 27.273396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545097, 34.913406, 26.996382>,  <38.262207, 34.244614, 27.196438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545097, 34.913406, 26.996382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.856609, 34.663460, 26.974352>,  <39.043518, 34.513493, 26.961134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.856609, 34.663460, 26.974352>,  <38.545097, 34.913406, 26.996382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856609, 34.663460, 26.974352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198221, 0.328443, -0.923490,
		0.595150, 0.708281, 0.379649,
		0.778784, -0.624870, -0.055077,
		39.090244, 34.475998, 26.957829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144844, 35.349018, 26.986748>,  <38.545097, 34.913406, 26.996382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144844, 35.349018, 26.986748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.233368, 34.990093, 26.833984>,  <39.286484, 34.774738, 26.742327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.233368, 34.990093, 26.833984>,  <39.144844, 35.349018, 26.986748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233368, 34.990093, 26.833984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307959, 0.435885, -0.845675,
		0.925301, 0.069548, 0.372803,
		0.221314, -0.897311, -0.381907,
		39.299763, 34.720901, 26.719412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743385, 35.461296, 26.673098>,  <39.144844, 35.349018, 26.986748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743385, 35.461296, 26.673098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.599304, 35.130753, 26.499949>,  <39.512856, 34.932426, 26.396059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.599304, 35.130753, 26.499949>,  <39.743385, 35.461296, 26.673098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599304, 35.130753, 26.499949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293974, 0.339827, -0.893363,
		0.885343, -0.449046, 0.120521,
		-0.360205, -0.826362, -0.432871,
		39.491241, 34.882843, 26.370087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343559, 35.269722, 26.289171>,  <39.743385, 35.461296, 26.673098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343559, 35.269722, 26.289171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.019905, 35.093475, 26.133652>,  <39.825714, 34.987728, 26.040340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.019905, 35.093475, 26.133652>,  <40.343559, 35.269722, 26.289171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019905, 35.093475, 26.133652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245348, 0.347899, -0.904860,
		0.533958, -0.827541, -0.173392,
		-0.809132, -0.440615, -0.388798,
		39.777164, 34.961292, 26.017012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499931, 35.432076, 25.566067>,  <40.343559, 35.269722, 26.289171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499931, 35.432076, 25.566067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.127834, 35.300850, 25.500322>,  <39.904575, 35.222115, 25.460876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.127834, 35.300850, 25.500322>,  <40.499931, 35.432076, 25.566067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127834, 35.300850, 25.500322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076307, 0.265174, -0.961176,
		0.358913, -0.906673, -0.221644,
		-0.930247, -0.328065, -0.164360,
		39.848759, 35.202431, 25.451014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476120, 34.840584, 24.989841>,  <40.499931, 35.432076, 25.566067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476120, 34.840584, 24.989841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.125034, 35.031727, 25.004160>,  <39.914383, 35.146412, 25.012751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.125034, 35.031727, 25.004160>,  <40.476120, 34.840584, 24.989841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125034, 35.031727, 25.004160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067268, 0.196827, -0.978128,
		-0.474448, -0.856104, -0.204901,
		-0.877710, 0.477854, 0.035795,
		39.861721, 35.175083, 25.014898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114868, 34.561626, 24.477652>,  <40.476120, 34.840584, 24.989841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114868, 34.561626, 24.477652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.906368, 34.897415, 24.539076>,  <39.781269, 35.098888, 24.575932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.906368, 34.897415, 24.539076>,  <40.114868, 34.561626, 24.477652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906368, 34.897415, 24.539076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026420, 0.163981, -0.986110,
		-0.852997, -0.518063, -0.063296,
		-0.521247, 0.839476, 0.153562,
		39.749992, 35.149258, 24.585144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472111, 34.525528, 24.144012>,  <40.114868, 34.561626, 24.477652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472111, 34.525528, 24.144012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.566418, 34.910645, 24.196852>,  <39.623001, 35.141712, 24.228556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.566418, 34.910645, 24.196852>,  <39.472111, 34.525528, 24.144012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566418, 34.910645, 24.196852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082487, 0.155265, -0.984423,
		-0.968302, 0.221199, 0.116024,
		0.235768, 0.962790, 0.132097,
		39.637150, 35.199482, 24.236481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127602, 34.831650, 23.701580>,  <39.472111, 34.525528, 24.144012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127602, 34.831650, 23.701580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.357601, 35.144478, 23.797707>,  <39.495602, 35.332172, 23.855383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.357601, 35.144478, 23.797707>,  <39.127602, 34.831650, 23.701580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357601, 35.144478, 23.797707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036827, 0.268692, -0.962522,
		-0.817328, 0.562296, 0.125695,
		0.574995, 0.782067, 0.240317,
		39.530098, 35.379097, 23.869802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949017, 35.438847, 23.240267>,  <39.127602, 34.831650, 23.701580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949017, 35.438847, 23.240267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.321102, 35.531475, 23.354164>,  <39.544353, 35.587051, 23.422503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.321102, 35.531475, 23.354164>,  <38.949017, 35.438847, 23.240267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321102, 35.531475, 23.354164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190890, 0.357372, -0.914246,
		-0.313470, 0.904799, 0.288228,
		0.930214, 0.231569, 0.284742,
		39.600166, 35.600945, 23.439587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160130, 36.132465, 22.886631>,  <38.949017, 35.438847, 23.240267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160130, 36.132465, 22.886631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.514477, 35.964703, 22.965971>,  <39.727085, 35.864044, 23.013575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.514477, 35.964703, 22.965971>,  <39.160130, 36.132465, 22.886631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514477, 35.964703, 22.965971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347501, 0.316568, -0.882626,
		0.307390, 0.850812, 0.426181,
		0.885864, -0.419409, 0.198348,
		39.780235, 35.838879, 23.025476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706924, 36.611752, 22.678730>,  <39.160130, 36.132465, 22.886631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706924, 36.611752, 22.678730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.878792, 36.250584, 22.683245>,  <39.981915, 36.033882, 22.685953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.878792, 36.250584, 22.683245>,  <39.706924, 36.611752, 22.678730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878792, 36.250584, 22.683245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449671, 0.203111, -0.869794,
		0.783058, 0.378801, 0.493285,
		0.429671, -0.902915, 0.011288,
		40.007694, 35.979710, 22.686630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409012, 36.778183, 22.507607>,  <39.706924, 36.611752, 22.678730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409012, 36.778183, 22.507607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.350414, 36.387890, 22.442518>,  <40.315254, 36.153713, 22.403465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.350414, 36.387890, 22.442518>,  <40.409012, 36.778183, 22.507607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350414, 36.387890, 22.442518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293067, 0.114300, -0.949235,
		0.944801, -0.186750, 0.269212,
		-0.146498, -0.975736, -0.162721,
		40.306465, 36.095169, 22.393702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991455, 36.523460, 22.079855>,  <40.409012, 36.778183, 22.507607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991455, 36.523460, 22.079855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.707027, 36.248852, 22.019096>,  <40.536369, 36.084087, 21.982641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.707027, 36.248852, 22.019096>,  <40.991455, 36.523460, 22.079855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707027, 36.248852, 22.019096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213941, -0.005461, -0.976831,
		0.669785, -0.727090, 0.150758,
		-0.711068, -0.686520, -0.151897,
		40.493706, 36.042896, 21.973528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324684, 36.007820, 21.602617>,  <40.991455, 36.523460, 22.079855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324684, 36.007820, 21.602617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.934448, 35.926361, 21.569736>,  <40.700306, 35.877483, 21.550009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.934448, 35.926361, 21.569736>,  <41.324684, 36.007820, 21.602617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934448, 35.926361, 21.569736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057128, 0.126079, -0.990374,
		0.212058, -0.970891, -0.111367,
		-0.975586, -0.203655, -0.082202,
		40.641773, 35.865265, 21.545076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345470, 35.611897, 21.031500>,  <41.324684, 36.007820, 21.602617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345470, 35.611897, 21.031500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.956333, 35.696674, 21.068722>,  <40.722851, 35.747543, 21.091055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.956333, 35.696674, 21.068722>,  <41.345470, 35.611897, 21.031500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956333, 35.696674, 21.068722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054023, 0.183018, -0.981624,
		-0.225084, -0.959991, -0.166598,
		-0.972841, 0.211947, 0.093056,
		40.664482, 35.760258, 21.096638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064087, 35.263187, 20.534382>,  <41.345470, 35.611897, 21.031500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064087, 35.263187, 20.534382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.791447, 35.541946, 20.623598>,  <40.627861, 35.709202, 20.677128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.791447, 35.541946, 20.623598>,  <41.064087, 35.263187, 20.534382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791447, 35.541946, 20.623598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076035, 0.235711, -0.968844,
		-0.727762, -0.677324, -0.107672,
		-0.681601, 0.696901, 0.223042,
		40.586967, 35.751019, 20.690510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554028, 35.193764, 20.077835>,  <41.064087, 35.263187, 20.534382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554028, 35.193764, 20.077835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.480759, 35.566792, 20.202257>,  <40.436798, 35.790607, 20.276911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.480759, 35.566792, 20.202257>,  <40.554028, 35.193764, 20.077835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480759, 35.566792, 20.202257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204790, 0.273270, -0.939885,
		-0.961513, -0.235865, 0.140925,
		-0.183175, 0.932572, 0.311056,
		40.425808, 35.846561, 20.295574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998554, 35.561192, 19.656139>,  <40.554028, 35.193764, 20.077835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998554, 35.561192, 19.656139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.207699, 35.854805, 19.829487>,  <40.333183, 36.030975, 19.933496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.207699, 35.854805, 19.829487>,  <39.998554, 35.561192, 19.656139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207699, 35.854805, 19.829487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124725, 0.568807, -0.812959,
		-0.843246, 0.371010, 0.388958,
		0.522858, 0.734037, 0.433369,
		40.364555, 36.075016, 19.959497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822521, 35.781124, 18.907564>,  <39.998554, 35.561192, 19.656139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822521, 35.781124, 18.907564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.660660, 36.118786, 18.766907>,  <39.563545, 36.321384, 18.682512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.660660, 36.118786, 18.766907>,  <39.822521, 35.781124, 18.907564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660660, 36.118786, 18.766907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534171, -0.093916, -0.840144,
		-0.742239, -0.527804, -0.412922,
		-0.404651, 0.844158, -0.351645,
		39.539265, 36.372032, 18.661413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156967, 35.436970, 18.936270>,  <39.822521, 35.781124, 18.907564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156967, 35.436970, 18.936270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.959198, 35.550610, 19.264864>,  <38.840538, 35.618793, 19.462021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.959198, 35.550610, 19.264864>,  <39.156967, 35.436970, 18.936270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959198, 35.550610, 19.264864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741451, 0.355396, -0.569161,
		-0.453650, -0.890495, 0.034931,
		-0.494421, 0.284100, 0.821484,
		38.810871, 35.635838, 19.511309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646412, 35.873039, 19.091896>,  <39.156967, 35.436970, 18.936270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646412, 35.873039, 19.091896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280602, 36.030617, 19.055145>,  <38.061115, 36.125164, 19.033094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280602, 36.030617, 19.055145>,  <38.646412, 35.873039, 19.091896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280602, 36.030617, 19.055145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058884, 0.095061, 0.993728,
		0.400211, 0.914204, -0.063739,
		-0.914529, 0.393948, -0.091876,
		38.006241, 36.148800, 19.027582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717651, 36.596096, 19.316343>,  <38.646412, 35.873039, 19.091896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717651, 36.596096, 19.316343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.331161, 36.496605, 19.343298>,  <38.099266, 36.436913, 19.359470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.331161, 36.496605, 19.343298>,  <38.717651, 36.596096, 19.316343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331161, 36.496605, 19.343298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023118, 0.176774, 0.983980,
		-0.256651, 0.952306, -0.165054,
		-0.966228, -0.248724, 0.067385,
		38.041294, 36.421989, 19.363514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368530, 37.213226, 19.617754>,  <38.717651, 36.596096, 19.316343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368530, 37.213226, 19.617754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.119183, 36.908016, 19.686111>,  <37.969574, 36.724892, 19.727125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.119183, 36.908016, 19.686111>,  <38.368530, 37.213226, 19.617754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119183, 36.908016, 19.686111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086719, 0.284668, 0.954696,
		-0.777104, 0.580307, -0.243622,
		-0.623369, -0.763025, 0.170893,
		37.932171, 36.679108, 19.737379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874565, 37.502686, 20.122732>,  <38.368530, 37.213226, 19.617754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874565, 37.502686, 20.122732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827694, 37.105885, 20.141462>,  <37.799572, 36.867802, 20.152700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827694, 37.105885, 20.141462>,  <37.874565, 37.502686, 20.122732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827694, 37.105885, 20.141462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193821, 0.069087, 0.978601,
		-0.974014, 0.105595, -0.200367,
		-0.117178, -0.992007, 0.046826,
		37.792542, 36.808281, 20.155510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292576, 37.309124, 20.465761>,  <37.874565, 37.502686, 20.122732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292576, 37.309124, 20.465761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486561, 36.962055, 20.509489>,  <37.602951, 36.753815, 20.535727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486561, 36.962055, 20.509489>,  <37.292576, 37.309124, 20.465761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486561, 36.962055, 20.509489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305425, -0.050907, 0.950855,
		-0.819467, -0.494519, -0.289697,
		0.484964, -0.867675, 0.109322,
		37.632050, 36.701752, 20.542286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777283, 36.851665, 20.861570>,  <37.292576, 37.309124, 20.465761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777283, 36.851665, 20.861570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151958, 36.721596, 20.913542>,  <37.376762, 36.643555, 20.944725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151958, 36.721596, 20.913542>,  <36.777283, 36.851665, 20.861570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151958, 36.721596, 20.913542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174942, -0.113140, 0.978056,
		-0.303338, -0.938862, -0.162863,
		0.936686, -0.325173, 0.129927,
		37.432964, 36.624043, 20.952520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763927, 36.171104, 21.202374>,  <36.777283, 36.851665, 20.861570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763927, 36.171104, 21.202374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132225, 36.302025, 21.287317>,  <37.353203, 36.380577, 21.338284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132225, 36.302025, 21.287317>,  <36.763927, 36.171104, 21.202374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132225, 36.302025, 21.287317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112885, -0.297532, 0.948014,
		0.373469, -0.896855, -0.237005,
		0.920748, 0.327299, 0.212361,
		37.408451, 36.400215, 21.351025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164810, 35.664616, 21.591038>,  <36.763927, 36.171104, 21.202374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164810, 35.664616, 21.591038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.350533, 36.003292, 21.694992>,  <37.461964, 36.206497, 21.757364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.350533, 36.003292, 21.694992>,  <37.164810, 35.664616, 21.591038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350533, 36.003292, 21.694992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115696, -0.232938, 0.965585,
		0.878088, -0.478391, -0.010195,
		0.464302, 0.846689, 0.259888,
		37.489822, 36.257298, 21.772959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628384, 35.381340, 22.069256>,  <37.164810, 35.664616, 21.591038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628384, 35.381340, 22.069256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621834, 35.777214, 22.126171>,  <37.617905, 36.014740, 22.160320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621834, 35.777214, 22.126171>,  <37.628384, 35.381340, 22.069256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621834, 35.777214, 22.126171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074900, -0.143123, 0.986867,
		0.997057, 0.005503, 0.076472,
		-0.016375, 0.989689, 0.142290,
		37.616920, 36.074120, 22.168858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145264, 35.571888, 22.610483>,  <37.628384, 35.381340, 22.069256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145264, 35.571888, 22.610483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.870857, 35.862911, 22.607582>,  <37.706215, 36.037525, 22.605841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.870857, 35.862911, 22.607582>,  <38.145264, 35.571888, 22.610483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870857, 35.862911, 22.607582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121674, -0.104886, 0.987013,
		0.717345, 0.677985, 0.160478,
		-0.686011, 0.727555, -0.007253,
		37.665054, 36.081177, 22.605406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400047, 36.048397, 23.102547>,  <38.145264, 35.571888, 22.610483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400047, 36.048397, 23.102547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004105, 36.101814, 23.083124>,  <37.766541, 36.133865, 23.071470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004105, 36.101814, 23.083124>,  <38.400047, 36.048397, 23.102547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004105, 36.101814, 23.083124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066383, -0.132446, 0.988965,
		0.125641, 0.982152, 0.139967,
		-0.989852, 0.133546, -0.048557,
		37.707150, 36.141876, 23.068558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254745, 36.583950, 23.533047>,  <38.400047, 36.048397, 23.102547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254745, 36.583950, 23.533047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.914513, 36.382271, 23.473318>,  <37.710373, 36.261265, 23.437481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.914513, 36.382271, 23.473318>,  <38.254745, 36.583950, 23.533047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914513, 36.382271, 23.473318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136129, -0.063150, 0.988676,
		-0.507917, 0.861276, -0.014921,
		-0.850581, -0.504197, -0.149320,
		37.659340, 36.231010, 23.428522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960613, 36.560783, 24.173214>,  <38.254745, 36.583950, 23.533047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960613, 36.560783, 24.173214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.679138, 36.350517, 23.982008>,  <37.510254, 36.224358, 23.867285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.679138, 36.350517, 23.982008>,  <37.960613, 36.560783, 24.173214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679138, 36.350517, 23.982008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378699, -0.291762, 0.878329,
		-0.601176, 0.799092, 0.006238,
		-0.703686, -0.525668, -0.478015,
		37.468033, 36.192818, 23.838604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262775, 36.771389, 24.418701>,  <37.960613, 36.560783, 24.173214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262775, 36.771389, 24.418701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296890, 36.394730, 24.288458>,  <37.317360, 36.168732, 24.210312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296890, 36.394730, 24.288458>,  <37.262775, 36.771389, 24.418701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296890, 36.394730, 24.288458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152508, -0.335285, 0.929691,
		-0.984615, -0.029634, -0.172205,
		0.085288, -0.941651, -0.325607,
		37.322475, 36.112236, 24.190775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653294, 36.524235, 24.677895>,  <37.262775, 36.771389, 24.418701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653294, 36.524235, 24.677895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882206, 36.208797, 24.587902>,  <37.019554, 36.019535, 24.533907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882206, 36.208797, 24.587902>,  <36.653294, 36.524235, 24.677895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882206, 36.208797, 24.587902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337642, -0.476602, 0.811695,
		-0.747323, -0.388554, -0.539012,
		0.572281, -0.788592, -0.224983,
		37.053890, 35.972221, 24.520407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299572, 35.948982, 24.896879>,  <36.653294, 36.524235, 24.677895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299572, 35.948982, 24.896879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.660458, 35.783813, 24.847075>,  <36.876991, 35.684711, 24.817192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.660458, 35.783813, 24.847075>,  <36.299572, 35.948982, 24.896879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660458, 35.783813, 24.847075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121022, -0.519494, 0.845860,
		-0.413952, -0.748082, -0.518669,
		0.902218, -0.412916, -0.124511,
		36.931122, 35.659939, 24.809721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181519, 35.241226, 24.937819>,  <36.299572, 35.948982, 24.896879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181519, 35.241226, 24.937819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.569302, 35.296291, 25.019012>,  <36.801971, 35.329330, 25.067728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.569302, 35.296291, 25.019012>,  <36.181519, 35.241226, 24.937819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569302, 35.296291, 25.019012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044886, -0.714064, 0.698640,
		0.241120, -0.686413, -0.686075,
		0.969457, 0.137660, 0.202985,
		36.860138, 35.337589, 25.079908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626755, 34.565086, 24.964029>,  <36.181519, 35.241226, 24.937819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626755, 34.565086, 24.964029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.828426, 34.828484, 25.187527>,  <36.949429, 34.986523, 25.321625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.828426, 34.828484, 25.187527>,  <36.626755, 34.565086, 24.964029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828426, 34.828484, 25.187527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081014, -0.680203, 0.728533,
		0.859790, -0.322046, -0.396292,
		0.504180, 0.658491, 0.558741,
		36.979679, 35.026031, 25.355148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108295, 34.187485, 25.403538>,  <36.626755, 34.565086, 24.964029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108295, 34.187485, 25.403538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.098137, 34.534927, 25.601477>,  <37.092041, 34.743393, 25.720240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.098137, 34.534927, 25.601477>,  <37.108295, 34.187485, 25.403538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098137, 34.534927, 25.601477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171802, -0.483852, 0.858121,
		0.984804, 0.106808, -0.136941,
		-0.025395, 0.868608, 0.494850,
		37.090519, 34.795509, 25.749931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560776, 34.144676, 25.975481>,  <37.108295, 34.187485, 25.403538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560776, 34.144676, 25.975481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325424, 34.444450, 26.096910>,  <37.184212, 34.624313, 26.169767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325424, 34.444450, 26.096910>,  <37.560776, 34.144676, 25.975481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325424, 34.444450, 26.096910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016063, -0.386197, 0.922277,
		0.808423, 0.537776, 0.239270,
		-0.588383, 0.749433, 0.303572,
		37.148911, 34.669281, 26.187983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.711224, 32.677017, 30.812138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.423878, 32.948551, 30.751305>,  <39.251469, 33.111473, 30.714804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.423878, 32.948551, 30.751305>,  <39.711224, 32.677017, 30.812138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423878, 32.948551, 30.751305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109919, 0.326631, 0.938738,
		0.686924, 0.657643, -0.309259,
		-0.718369, 0.678835, -0.152084,
		39.208366, 33.152203, 30.705679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939693, 33.356003, 31.018950>,  <39.711224, 32.677017, 30.812138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939693, 33.356003, 31.018950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543770, 33.412956, 31.018312>,  <39.306217, 33.447128, 31.017931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543770, 33.412956, 31.018312>,  <39.939693, 33.356003, 31.018950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543770, 33.412956, 31.018312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065359, 0.464235, 0.883297,
		0.126505, 0.874193, -0.468811,
		-0.989810, 0.142383, -0.001592,
		39.246826, 33.455669, 31.017836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808582, 34.125633, 31.220293>,  <39.939693, 33.356003, 31.018950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808582, 34.125633, 31.220293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.458435, 33.946274, 31.292587>,  <39.248348, 33.838657, 31.335964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.458435, 33.946274, 31.292587>,  <39.808582, 34.125633, 31.220293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458435, 33.946274, 31.292587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056394, 0.465998, 0.882987,
		-0.480155, 0.762747, -0.433207,
		-0.875369, -0.448400, 0.180737,
		39.195824, 33.811752, 31.346807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359016, 34.545280, 31.511257>,  <39.808582, 34.125633, 31.220293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359016, 34.545280, 31.511257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.146507, 34.225262, 31.622734>,  <39.019001, 34.033249, 31.689621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.146507, 34.225262, 31.622734>,  <39.359016, 34.545280, 31.511257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146507, 34.225262, 31.622734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123876, 0.398780, 0.908641,
		-0.838097, 0.448210, -0.310967,
		-0.531270, -0.800051, 0.278694,
		38.987125, 33.985245, 31.706343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717224, 34.788803, 31.862484>,  <39.359016, 34.545280, 31.511257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717224, 34.788803, 31.862484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824516, 34.422661, 31.982597>,  <38.888893, 34.202976, 32.054665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824516, 34.422661, 31.982597>,  <38.717224, 34.788803, 31.862484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824516, 34.422661, 31.982597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214241, 0.247221, 0.944978,
		-0.939229, -0.317809, -0.129794,
		0.268234, -0.915357, 0.300285,
		38.904987, 34.148052, 32.072681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121723, 34.526585, 32.153805>,  <38.717224, 34.788803, 31.862484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121723, 34.526585, 32.153805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.385506, 34.264450, 32.301132>,  <38.543774, 34.107170, 32.389530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.385506, 34.264450, 32.301132>,  <38.121723, 34.526585, 32.153805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385506, 34.264450, 32.301132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401732, 0.106910, 0.909495,
		-0.635398, -0.747737, -0.192766,
		0.659455, -0.655332, 0.368320,
		38.583344, 34.067852, 32.411629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755398, 34.018559, 32.722027>,  <38.121723, 34.526585, 32.153805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755398, 34.018559, 32.722027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.149761, 34.048077, 32.782082>,  <38.386379, 34.065788, 32.818115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.149761, 34.048077, 32.782082>,  <37.755398, 34.018559, 32.722027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149761, 34.048077, 32.782082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158706, 0.128679, 0.978905,
		0.052918, -0.988937, 0.138578,
		0.985907, 0.073795, 0.150141,
		38.445534, 34.070217, 32.827126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787983, 33.652119, 33.307076>,  <37.755398, 34.018559, 32.722027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787983, 33.652119, 33.307076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.093029, 33.907097, 33.263103>,  <38.276054, 34.060085, 33.236721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.093029, 33.907097, 33.263103>,  <37.787983, 33.652119, 33.307076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093029, 33.907097, 33.263103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163669, 0.354561, 0.920597,
		0.625810, -0.684065, 0.374722,
		0.762610, 0.637449, -0.109927,
		38.321812, 34.098331, 33.230125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141983, 33.624615, 33.934566>,  <37.787983, 33.652119, 33.307076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141983, 33.624615, 33.934566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.299923, 33.959915, 33.784138>,  <38.394688, 34.161095, 33.693882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.299923, 33.959915, 33.784138>,  <38.141983, 33.624615, 33.934566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299923, 33.959915, 33.784138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029214, 0.420577, 0.906786,
		0.918282, -0.347055, 0.190553,
		0.394847, 0.838253, -0.376069,
		38.418377, 34.211391, 33.671318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624134, 33.736626, 34.407055>,  <38.141983, 33.624615, 33.934566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624134, 33.736626, 34.407055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.528866, 34.057243, 34.187672>,  <38.471706, 34.249615, 34.056042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.528866, 34.057243, 34.187672>,  <38.624134, 33.736626, 34.407055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528866, 34.057243, 34.187672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095186, 0.542722, 0.834501,
		0.966548, 0.250957, -0.052964,
		-0.238169, 0.801544, -0.548455,
		38.457417, 34.297707, 34.023136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934261, 34.247990, 34.819847>,  <38.624134, 33.736626, 34.407055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934261, 34.247990, 34.819847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688908, 34.448425, 34.575661>,  <38.541695, 34.568687, 34.429150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688908, 34.448425, 34.575661>,  <38.934261, 34.247990, 34.819847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688908, 34.448425, 34.575661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312790, 0.555621, 0.770356,
		0.725209, 0.663469, -0.184070,
		-0.613380, 0.501094, -0.610467,
		38.504894, 34.598755, 34.392521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097439, 34.890728, 34.954781>,  <38.934261, 34.247990, 34.819847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097439, 34.890728, 34.954781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.746674, 34.926102, 34.765804>,  <38.536213, 34.947327, 34.652420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.746674, 34.926102, 34.765804>,  <39.097439, 34.890728, 34.954781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746674, 34.926102, 34.765804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431825, 0.286654, 0.855194,
		0.211052, 0.953944, -0.213185,
		-0.876917, 0.088432, -0.472436,
		38.483597, 34.952633, 34.624073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757053, 35.412739, 35.350872>,  <39.097439, 34.890728, 34.954781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757053, 35.412739, 35.350872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.470222, 35.219028, 35.150360>,  <38.298122, 35.102802, 35.030052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.470222, 35.219028, 35.150360>,  <38.757053, 35.412739, 35.350872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470222, 35.219028, 35.150360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623442, 0.124080, 0.771961,
		-0.311642, 0.866073, -0.390891,
		-0.717077, -0.484273, -0.501278,
		38.255100, 35.073746, 34.999977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136852, 35.826717, 35.353981>,  <38.757053, 35.412739, 35.350872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136852, 35.826717, 35.353981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.061367, 35.434845, 35.326820>,  <38.016075, 35.199722, 35.310524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.061367, 35.434845, 35.326820>,  <38.136852, 35.826717, 35.353981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061367, 35.434845, 35.326820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625754, 0.066672, 0.777166,
		-0.756849, 0.189148, -0.625622,
		-0.188711, -0.979683, -0.067899,
		38.004753, 35.140942, 35.306450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604691, 36.320690, 35.085815>,  <38.136852, 35.826717, 35.353981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604691, 36.320690, 35.085815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569195, 36.706341, 35.185886>,  <38.547897, 36.937729, 35.245930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569195, 36.706341, 35.185886>,  <38.604691, 36.320690, 35.085815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569195, 36.706341, 35.185886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216433, 0.263836, -0.939972,
		-0.972256, -0.029269, -0.232082,
		-0.088744, 0.964123, 0.250182,
		38.542572, 36.995579, 35.260941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033627, 36.725029, 34.641685>,  <38.604691, 36.320690, 35.085815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033627, 36.725029, 34.641685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.258598, 37.030312, 34.768932>,  <38.393581, 37.213482, 34.845280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.258598, 37.030312, 34.768932>,  <38.033627, 36.725029, 34.641685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258598, 37.030312, 34.768932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026381, 0.367975, -0.929461,
		-0.826426, 0.531147, 0.186826,
		0.562428, 0.763202, 0.318116,
		38.427326, 37.259274, 34.864368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869808, 37.346294, 34.278145>,  <38.033627, 36.725029, 34.641685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869808, 37.346294, 34.278145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.216122, 37.473476, 34.432709>,  <38.423912, 37.549786, 34.525448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.216122, 37.473476, 34.432709>,  <37.869808, 37.346294, 34.278145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216122, 37.473476, 34.432709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125636, 0.609337, -0.782895,
		-0.484382, 0.726368, 0.487610,
		0.865788, 0.317959, 0.386410,
		38.475857, 37.568863, 34.548630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883675, 38.168839, 34.272606>,  <37.869808, 37.346294, 34.278145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883675, 38.168839, 34.272606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.254696, 38.025688, 34.229580>,  <38.477310, 37.939800, 34.203766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.254696, 38.025688, 34.229580>,  <37.883675, 38.168839, 34.272606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254696, 38.025688, 34.229580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073612, 0.457188, -0.886319,
		0.366368, 0.814190, 0.450410,
		0.927554, -0.357874, -0.107565,
		38.532963, 37.918327, 34.197311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273079, 38.715836, 33.897568>,  <37.883675, 38.168839, 34.272606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273079, 38.715836, 33.897568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.521923, 38.413090, 33.817436>,  <38.671230, 38.231441, 33.769356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.521923, 38.413090, 33.817436>,  <38.273079, 38.715836, 33.897568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521923, 38.413090, 33.817436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136785, 0.357009, -0.924032,
		0.770889, 0.547447, 0.325627,
		0.622110, -0.756867, -0.200331,
		38.708557, 38.186031, 33.757336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855743, 39.030788, 33.575214>,  <38.273079, 38.715836, 33.897568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855743, 39.030788, 33.575214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883156, 38.644672, 33.474407>,  <38.899605, 38.413002, 33.413921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883156, 38.644672, 33.474407>,  <38.855743, 39.030788, 33.575214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883156, 38.644672, 33.474407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221215, 0.261027, -0.939643,
		0.972814, 0.008649, 0.231427,
		0.068535, -0.965293, -0.252017,
		38.903717, 38.355083, 33.398804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460556, 38.903168, 33.261402>,  <38.855743, 39.030788, 33.575214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460556, 38.903168, 33.261402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.223778, 38.609615, 33.128124>,  <39.081711, 38.433483, 33.048157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.223778, 38.609615, 33.128124>,  <39.460556, 38.903168, 33.261402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223778, 38.609615, 33.128124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245011, 0.229991, -0.941846,
		0.767837, -0.639156, 0.043668,
		-0.591943, -0.733883, -0.333195,
		39.046196, 38.389450, 33.028164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794178, 38.668533, 32.755665>,  <39.460556, 38.903168, 33.261402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794178, 38.668533, 32.755665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.465546, 38.464283, 32.654263>,  <39.268368, 38.341732, 32.593422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.465546, 38.464283, 32.654263>,  <39.794178, 38.668533, 32.755665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465546, 38.464283, 32.654263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074503, 0.344686, -0.935757,
		0.565202, -0.787687, -0.245145,
		-0.821581, -0.510628, -0.253502,
		39.219070, 38.311096, 32.578213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916683, 38.194504, 32.151958>,  <39.794178, 38.668533, 32.755665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916683, 38.194504, 32.151958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.525524, 38.275345, 32.130493>,  <39.290829, 38.323849, 32.117615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.525524, 38.275345, 32.130493>,  <39.916683, 38.194504, 32.151958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525524, 38.275345, 32.130493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091469, 0.182650, -0.978914,
		-0.188039, -0.962182, -0.197098,
		-0.977893, 0.202102, -0.053664,
		39.232155, 38.335976, 32.114395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812618, 38.062424, 31.494839>,  <39.916683, 38.194504, 32.151958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812618, 38.062424, 31.494839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490509, 38.276718, 31.596443>,  <39.297241, 38.405293, 31.657406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490509, 38.276718, 31.596443>,  <39.812618, 38.062424, 31.494839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490509, 38.276718, 31.596443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080306, 0.325915, -0.941982,
		-0.587437, -0.778954, -0.219429,
		-0.805276, 0.535733, 0.254009,
		39.248928, 38.437439, 31.672646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306190, 37.978634, 30.936251>,  <39.812618, 38.062424, 31.494839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306190, 37.978634, 30.936251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.191135, 38.309910, 31.128654>,  <39.122101, 38.508675, 31.244097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.191135, 38.309910, 31.128654>,  <39.306190, 37.978634, 30.936251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191135, 38.309910, 31.128654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251706, 0.419209, -0.872300,
		-0.924071, -0.371983, 0.087878,
		-0.287641, 0.828186, 0.481010,
		39.104843, 38.558365, 31.272957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576874, 38.037106, 30.763653>,  <39.306190, 37.978634, 30.936251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576874, 38.037106, 30.763653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.700336, 38.396378, 30.888876>,  <38.774414, 38.611942, 30.964010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.700336, 38.396378, 30.888876>,  <38.576874, 38.037106, 30.763653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700336, 38.396378, 30.888876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324541, 0.408821, -0.852959,
		-0.894095, 0.161670, 0.417681,
		0.308655, 0.898180, 0.313057,
		38.792934, 38.665833, 30.982794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064266, 38.566437, 30.524162>,  <38.576874, 38.037106, 30.763653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064266, 38.566437, 30.524162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.391636, 38.783157, 30.600725>,  <38.588058, 38.913189, 30.646664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.391636, 38.783157, 30.600725>,  <38.064266, 38.566437, 30.524162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391636, 38.783157, 30.600725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130083, 0.499152, -0.856695,
		-0.559698, 0.676240, 0.478997,
		0.818423, 0.541800, 0.191407,
		38.637161, 38.945698, 30.658148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906097, 39.144363, 30.229527>,  <38.064266, 38.566437, 30.524162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906097, 39.144363, 30.229527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.305538, 39.139324, 30.250055>,  <38.545204, 39.136299, 30.262373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.305538, 39.139324, 30.250055>,  <37.906097, 39.144363, 30.229527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305538, 39.139324, 30.250055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050771, 0.498158, -0.865599,
		-0.014657, 0.866995, 0.498102,
		0.998603, -0.012602, 0.051320,
		38.605118, 39.135544, 30.265451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490185, 39.708138, 30.403570>,  <37.906097, 39.144363, 30.229527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490185, 39.708138, 30.403570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.147091, 39.850487, 30.255171>,  <36.941235, 39.935898, 30.166132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.147091, 39.850487, 30.255171>,  <37.490185, 39.708138, 30.403570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147091, 39.850487, 30.255171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467271, -0.238802, 0.851253,
		0.214345, 0.903508, 0.371119,
		-0.857738, 0.355875, -0.370997,
		36.889771, 39.957249, 30.143871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251503, 39.939705, 31.030294>,  <37.490185, 39.708138, 30.403570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251503, 39.939705, 31.030294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.946655, 39.942940, 30.771338>,  <36.763748, 39.944881, 30.615963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.946655, 39.942940, 30.771338>,  <37.251503, 39.939705, 31.030294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946655, 39.942940, 30.771338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589396, -0.422478, 0.688567,
		-0.267942, 0.906337, 0.326741,
		-0.762115, 0.008084, -0.647391,
		36.718021, 39.945366, 30.577120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670921, 40.358459, 31.343647>,  <37.251503, 39.939705, 31.030294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670921, 40.358459, 31.343647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.489048, 40.133331, 31.067535>,  <36.379925, 39.998253, 30.901869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.489048, 40.133331, 31.067535>,  <36.670921, 40.358459, 31.343647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489048, 40.133331, 31.067535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720446, -0.223259, 0.656592,
		-0.523658, 0.795854, -0.303972,
		-0.454687, -0.562825, -0.690281,
		36.352642, 39.964485, 30.860451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946426, 40.456070, 31.368528>,  <36.670921, 40.358459, 31.343647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946426, 40.456070, 31.368528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.949932, 40.094673, 31.197126>,  <35.952034, 39.877834, 31.094286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.949932, 40.094673, 31.197126>,  <35.946426, 40.456070, 31.368528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949932, 40.094673, 31.197126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567873, -0.357214, 0.741565,
		-0.823070, 0.236838, -0.516202,
		0.008764, -0.903497, -0.428506,
		35.952560, 39.823624, 31.068575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291027, 40.273434, 31.305525>,  <35.946426, 40.456070, 31.368528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291027, 40.273434, 31.305525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.476326, 39.919716, 31.282106>,  <35.587505, 39.707485, 31.268055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.476326, 39.919716, 31.282106>,  <35.291027, 40.273434, 31.305525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476326, 39.919716, 31.282106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667336, -0.391539, 0.633529,
		-0.583148, -0.254412, -0.771500,
		0.463250, -0.884291, -0.058547,
		35.615303, 39.654427, 31.264544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754128, 39.708157, 31.232357>,  <35.291027, 40.273434, 31.305525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754128, 39.708157, 31.232357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.081360, 39.523304, 31.369282>,  <35.277699, 39.412392, 31.451437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.081360, 39.523304, 31.369282>,  <34.754128, 39.708157, 31.232357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081360, 39.523304, 31.369282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565171, -0.535878, 0.627229,
		-0.106424, -0.706590, -0.699575,
		0.818081, -0.462132, 0.342314,
		35.326782, 39.384663, 31.471975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538956, 39.127968, 31.366055>,  <34.754128, 39.708157, 31.232357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538956, 39.127968, 31.366055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.885880, 39.112072, 31.564526>,  <35.094032, 39.102535, 31.683609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.885880, 39.112072, 31.564526>,  <34.538956, 39.127968, 31.366055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885880, 39.112072, 31.564526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424315, -0.580183, 0.695230,
		0.260249, -0.813516, -0.520059,
		0.867310, -0.039735, 0.496179,
		35.146072, 39.100151, 31.713379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822086, 38.491360, 31.401930>,  <34.538956, 39.127968, 31.366055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822086, 38.491360, 31.401930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.979912, 38.674137, 31.720808>,  <35.074608, 38.783802, 31.912136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.979912, 38.674137, 31.720808>,  <34.822086, 38.491360, 31.401930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979912, 38.674137, 31.720808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380586, -0.708400, 0.594411,
		0.836344, -0.537936, -0.105606,
		0.394567, 0.456940, 0.797197,
		35.098282, 38.811218, 31.959967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928661, 37.964684, 31.922752>,  <34.822086, 38.491360, 31.401930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928661, 37.964684, 31.922752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.966671, 38.277924, 32.168591>,  <34.989479, 38.465866, 32.316093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.966671, 38.277924, 32.168591>,  <34.928661, 37.964684, 31.922752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966671, 38.277924, 32.168591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272733, -0.573285, 0.772632,
		0.957385, -0.241042, 0.159099,
		0.095028, 0.783098, 0.614595,
		34.995178, 38.512852, 32.352970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436146, 37.803642, 32.394863>,  <34.928661, 37.964684, 31.922752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436146, 37.803642, 32.394863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.214531, 38.086956, 32.569847>,  <35.081562, 38.256947, 32.674839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.214531, 38.086956, 32.569847>,  <35.436146, 37.803642, 32.394863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214531, 38.086956, 32.569847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043286, -0.549285, 0.834513,
		0.831368, 0.443412, 0.334982,
		-0.554034, 0.708288, 0.437464,
		35.048321, 38.299442, 32.701088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781914, 37.947121, 33.069717>,  <35.436146, 37.803642, 32.394863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781914, 37.947121, 33.069717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.427864, 38.129154, 33.108620>,  <35.215435, 38.238373, 33.131962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.427864, 38.129154, 33.108620>,  <35.781914, 37.947121, 33.069717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427864, 38.129154, 33.108620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098823, -0.388031, 0.916333,
		0.454741, 0.801457, 0.388428,
		-0.885124, 0.455080, 0.097252,
		35.162327, 38.265678, 33.137794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833546, 38.290314, 33.662193>,  <35.781914, 37.947121, 33.069717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833546, 38.290314, 33.662193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.443069, 38.223557, 33.606766>,  <35.208786, 38.183502, 33.573509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.443069, 38.223557, 33.606766>,  <35.833546, 38.290314, 33.662193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443069, 38.223557, 33.606766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092515, -0.257486, 0.961843,
		-0.196205, 0.951760, 0.235915,
		-0.976189, -0.166893, -0.138572,
		35.150211, 38.173489, 33.565193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.751831, 41.352474, 27.050310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431778, 41.164829, 26.900795>,  <38.239746, 41.052242, 26.811085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431778, 41.164829, 26.900795>,  <38.751831, 41.352474, 27.050310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431778, 41.164829, 26.900795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416652, -0.013610, 0.908964,
		-0.431496, 0.883032, -0.184568,
		-0.800133, -0.469115, -0.373790,
		38.191738, 41.024094, 26.788658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115677, 41.695053, 27.259478>,  <38.751831, 41.352474, 27.050310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115677, 41.695053, 27.259478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988010, 41.325665, 27.174305>,  <37.911411, 41.104031, 27.123201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988010, 41.325665, 27.174305>,  <38.115677, 41.695053, 27.259478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988010, 41.325665, 27.174305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409392, -0.068286, 0.909800,
		-0.854710, 0.377552, -0.356265,
		-0.319169, -0.923467, -0.212931,
		37.892262, 41.048626, 27.110426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542740, 41.729263, 27.569397>,  <38.115677, 41.695053, 27.259478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542740, 41.729263, 27.569397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549583, 41.338570, 27.483889>,  <37.553692, 41.104153, 27.432583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549583, 41.338570, 27.483889>,  <37.542740, 41.729263, 27.569397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549583, 41.338570, 27.483889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318057, -0.208015, 0.924970,
		-0.947917, 0.052163, -0.314217,
		0.017112, -0.976734, -0.213771,
		37.554718, 41.045551, 27.419758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889317, 41.464993, 27.671978>,  <37.542740, 41.729263, 27.569397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889317, 41.464993, 27.671978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152222, 41.173748, 27.749815>,  <37.309963, 40.999001, 27.796518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152222, 41.173748, 27.749815>,  <36.889317, 41.464993, 27.671978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152222, 41.173748, 27.749815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384604, -0.101988, 0.917430,
		-0.648143, -0.677832, -0.347066,
		0.657260, -0.728109, 0.194594,
		37.349400, 40.955315, 27.808193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478760, 40.938667, 27.953003>,  <36.889317, 41.464993, 27.671978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478760, 40.938667, 27.953003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842495, 40.857159, 28.098095>,  <37.060738, 40.808254, 28.185150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842495, 40.857159, 28.098095>,  <36.478760, 40.938667, 27.953003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842495, 40.857159, 28.098095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416044, -0.450459, 0.789933,
		0.002426, -0.869231, -0.494401,
		0.909341, -0.203776, 0.362731,
		37.115299, 40.796024, 28.206915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352459, 40.440231, 28.417044>,  <36.478760, 40.938667, 27.953003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352459, 40.440231, 28.417044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724350, 40.513203, 28.544998>,  <36.947483, 40.556984, 28.621771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724350, 40.513203, 28.544998>,  <36.352459, 40.440231, 28.417044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724350, 40.513203, 28.544998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247537, -0.333539, 0.909658,
		0.272643, -0.924917, -0.264942,
		0.929727, 0.182428, 0.319888,
		37.003269, 40.567932, 28.640965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621910, 39.820797, 28.683439>,  <36.352459, 40.440231, 28.417044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621910, 39.820797, 28.683439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830925, 40.110622, 28.863201>,  <36.956333, 40.284519, 28.971058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830925, 40.110622, 28.863201>,  <36.621910, 39.820797, 28.683439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830925, 40.110622, 28.863201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149324, -0.441171, 0.884913,
		0.839439, -0.529507, -0.122334,
		0.522537, 0.724563, 0.449403,
		36.987686, 40.327991, 28.998022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085804, 39.466080, 29.076899>,  <36.621910, 39.820797, 28.683439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085804, 39.466080, 29.076899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048931, 39.835350, 29.226160>,  <37.026806, 40.056911, 29.315718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048931, 39.835350, 29.226160>,  <37.085804, 39.466080, 29.076899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048931, 39.835350, 29.226160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120624, -0.382344, 0.916113,
		0.988409, 0.039437, 0.146602,
		-0.092181, 0.923178, 0.373155,
		37.021278, 40.112305, 29.338106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463299, 39.392567, 29.680622>,  <37.085804, 39.466080, 29.076899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463299, 39.392567, 29.680622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222466, 39.711327, 29.700409>,  <37.077965, 39.902580, 29.712280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222466, 39.711327, 29.700409>,  <37.463299, 39.392567, 29.680622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222466, 39.711327, 29.700409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312965, -0.292548, 0.903587,
		0.734537, 0.528556, 0.425540,
		-0.602087, 0.796897, 0.049468,
		37.041840, 39.950394, 29.715250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094242, 39.839531, 30.027122>,  <37.463299, 39.392567, 29.680622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094242, 39.839531, 30.027122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419697, 39.613529, 29.972340>,  <38.614971, 39.477928, 29.939470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419697, 39.613529, 29.972340>,  <38.094242, 39.839531, 30.027122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419697, 39.613529, 29.972340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240851, 0.541997, -0.805127,
		0.529133, 0.622097, 0.577073,
		0.813640, -0.565007, -0.136956,
		38.663788, 39.444027, 29.931253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415211, 40.173523, 29.528372>,  <38.094242, 39.839531, 30.027122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415211, 40.173523, 29.528372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641384, 39.844242, 29.507874>,  <38.777088, 39.646675, 29.495575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641384, 39.844242, 29.507874>,  <38.415211, 40.173523, 29.528372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641384, 39.844242, 29.507874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346789, 0.293652, -0.890790,
		0.748346, 0.485912, 0.451517,
		0.565434, -0.823200, -0.051245,
		38.811016, 39.597282, 29.492500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121536, 40.385330, 29.286600>,  <38.415211, 40.173523, 29.528372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121536, 40.385330, 29.286600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071350, 39.994923, 29.215445>,  <39.041237, 39.760677, 29.172750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071350, 39.994923, 29.215445>,  <39.121536, 40.385330, 29.286600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071350, 39.994923, 29.215445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571056, 0.075575, -0.817425,
		0.811267, -0.204143, 0.547880,
		-0.125465, -0.976020, -0.177888,
		39.033710, 39.702118, 29.162079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661198, 40.160351, 28.804323>,  <39.121536, 40.385330, 29.286600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661198, 40.160351, 28.804323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439201, 39.829964, 28.764803>,  <39.306004, 39.631733, 28.741091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439201, 39.829964, 28.764803>,  <39.661198, 40.160351, 28.804323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439201, 39.829964, 28.764803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527587, -0.257676, -0.809478,
		0.643142, -0.501382, 0.578778,
		-0.554995, -0.825966, -0.098801,
		39.272701, 39.582172, 28.735163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143139, 39.589542, 28.789217>,  <39.661198, 40.160351, 28.804323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143139, 39.589542, 28.789217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804012, 39.501045, 28.596445>,  <39.600536, 39.447948, 28.480782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804012, 39.501045, 28.596445>,  <40.143139, 39.589542, 28.789217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804012, 39.501045, 28.596445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528236, -0.272524, -0.804175,
		0.046578, -0.936368, 0.347917,
		-0.847819, -0.221239, -0.481929,
		39.549667, 39.434673, 28.451866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242867, 38.927902, 28.459373>,  <40.143139, 39.589542, 28.789217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242867, 38.927902, 28.459373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943317, 39.081467, 28.243299>,  <39.763588, 39.173603, 28.113655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943317, 39.081467, 28.243299>,  <40.242867, 38.927902, 28.459373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943317, 39.081467, 28.243299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435753, -0.328873, -0.837831,
		-0.499301, -0.862820, 0.078997,
		-0.748877, 0.383907, -0.540184,
		39.718655, 39.196640, 28.081244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123367, 38.473801, 27.853670>,  <40.242867, 38.927902, 28.459373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123367, 38.473801, 27.853670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973438, 38.828724, 27.746195>,  <39.883480, 39.041679, 27.681709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973438, 38.828724, 27.746195>,  <40.123367, 38.473801, 27.853670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973438, 38.828724, 27.746195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241639, -0.186300, -0.952315,
		-0.895052, -0.421876, -0.144578,
		-0.374823, 0.887307, -0.268689,
		39.860992, 39.094917, 27.665588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855476, 38.336288, 27.278378>,  <40.123367, 38.473801, 27.853670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855476, 38.336288, 27.278378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911575, 38.731953, 27.295813>,  <39.945236, 38.969349, 27.306274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911575, 38.731953, 27.295813>,  <39.855476, 38.336288, 27.278378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911575, 38.731953, 27.295813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268042, 0.004449, -0.963397,
		-0.953144, 0.146801, -0.264511,
		0.140251, 0.989156, 0.043589,
		39.953651, 39.028698, 27.308889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624619, 38.634888, 26.632265>,  <39.855476, 38.336288, 27.278378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624619, 38.634888, 26.632265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873131, 38.917507, 26.767794>,  <40.022240, 39.087078, 26.849112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873131, 38.917507, 26.767794>,  <39.624619, 38.634888, 26.632265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873131, 38.917507, 26.767794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346774, 0.139835, -0.927467,
		-0.702676, 0.693715, -0.158134,
		0.621284, 0.706545, 0.338821,
		40.059517, 39.129471, 26.869440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509312, 39.365898, 26.250841>,  <39.624619, 38.634888, 26.632265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509312, 39.365898, 26.250841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882561, 39.377346, 26.394203>,  <40.106510, 39.384216, 26.480221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882561, 39.377346, 26.394203>,  <39.509312, 39.365898, 26.250841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882561, 39.377346, 26.394203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352856, 0.118497, -0.928144,
		-0.069036, 0.992542, 0.100473,
		0.933127, 0.028623, 0.358405,
		40.162498, 39.385933, 26.501724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757580, 39.717827, 25.673273>,  <39.509312, 39.365898, 26.250841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757580, 39.717827, 25.673273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089596, 39.660812, 25.888945>,  <40.288807, 39.626602, 26.018349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089596, 39.660812, 25.888945>,  <39.757580, 39.717827, 25.673273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089596, 39.660812, 25.888945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555299, 0.300922, -0.775299,
		-0.051740, 0.942936, 0.328930,
		0.830040, -0.142541, 0.539181,
		40.338608, 39.618050, 26.050699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290119, 40.252838, 25.576374>,  <39.757580, 39.717827, 25.673273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290119, 40.252838, 25.576374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508060, 39.942162, 25.702795>,  <40.638824, 39.755756, 25.778648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508060, 39.942162, 25.702795>,  <40.290119, 40.252838, 25.576374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508060, 39.942162, 25.702795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672940, 0.180138, -0.717427,
		0.500283, 0.603579, 0.620814,
		0.544856, -0.776687, 0.316052,
		40.671516, 39.709156, 25.797611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987236, 40.484356, 25.446526>,  <40.290119, 40.252838, 25.576374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987236, 40.484356, 25.446526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018661, 40.089832, 25.504522>,  <41.037518, 39.853119, 25.539320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018661, 40.089832, 25.504522>,  <40.987236, 40.484356, 25.446526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018661, 40.089832, 25.504522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677990, -0.053764, -0.733102,
		0.730861, 0.155896, 0.664484,
		0.078562, -0.986309, 0.144990,
		41.042229, 39.793938, 25.548019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677738, 40.278156, 25.377220>,  <40.987236, 40.484356, 25.446526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677738, 40.278156, 25.377220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443455, 39.965862, 25.290142>,  <41.302883, 39.778484, 25.237896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443455, 39.965862, 25.290142>,  <41.677738, 40.278156, 25.377220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443455, 39.965862, 25.290142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409292, -0.053076, -0.910858,
		0.699585, -0.622603, 0.350637,
		-0.585713, -0.780736, -0.217695,
		41.267742, 39.731640, 25.224834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.363670, 36.516773, 24.537844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.600357, 36.812572, 24.666224>,  <34.742371, 36.990051, 24.743252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.600357, 36.812572, 24.666224>,  <34.363670, 36.516773, 24.537844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600357, 36.812572, 24.666224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164326, -0.279122, 0.946091,
		0.789218, -0.612560, -0.043643,
		0.591719, 0.739501, 0.320948,
		34.777874, 37.034424, 24.762508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790375, 36.260151, 25.122519>,  <34.363670, 36.516773, 24.537844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790375, 36.260151, 25.122519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.834061, 36.652573, 25.186514>,  <34.860271, 36.888027, 25.224911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.834061, 36.652573, 25.186514>,  <34.790375, 36.260151, 25.122519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834061, 36.652573, 25.186514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051173, -0.155190, 0.986558,
		0.992700, -0.115938, 0.033255,
		0.109219, 0.981058, 0.159990,
		34.866825, 36.946892, 25.234510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324512, 36.319557, 25.571056>,  <34.790375, 36.260151, 25.122519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324512, 36.319557, 25.571056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103188, 36.651455, 25.600368>,  <34.970394, 36.850594, 25.617956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103188, 36.651455, 25.600368>,  <35.324512, 36.319557, 25.571056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103188, 36.651455, 25.600368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048063, -0.119628, 0.991655,
		0.831588, 0.545170, 0.106072,
		-0.553309, 0.829747, 0.073279,
		34.937195, 36.900379, 25.622353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495110, 36.537266, 26.179937>,  <35.324512, 36.319557, 25.571056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495110, 36.537266, 26.179937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.164532, 36.754532, 26.120649>,  <34.966187, 36.884892, 26.085077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.164532, 36.754532, 26.120649>,  <35.495110, 36.537266, 26.179937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164532, 36.754532, 26.120649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195901, -0.030605, 0.980146,
		0.527842, 0.839070, 0.131699,
		-0.826441, 0.543162, -0.148220,
		34.916599, 36.917480, 26.076183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556217, 37.052170, 26.657688>,  <35.495110, 36.537266, 26.179937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556217, 37.052170, 26.657688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.173733, 37.055519, 26.540668>,  <34.944241, 37.057529, 26.470457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.173733, 37.055519, 26.540668>,  <35.556217, 37.052170, 26.657688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173733, 37.055519, 26.540668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291649, 0.056122, 0.954877,
		0.024410, 0.998389, -0.051224,
		-0.956214, 0.008370, -0.292549,
		34.886868, 37.058029, 26.452904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180710, 37.665806, 26.859325>,  <35.556217, 37.052170, 26.657688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180710, 37.665806, 26.859325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.915688, 37.367039, 26.836954>,  <34.756676, 37.187778, 26.823530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.915688, 37.367039, 26.836954>,  <35.180710, 37.665806, 26.859325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915688, 37.367039, 26.836954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102840, 0.016752, 0.994557,
		-0.741918, 0.664703, -0.087912,
		-0.662557, -0.746920, -0.055930,
		34.716919, 37.142963, 26.820175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656387, 37.767853, 27.419580>,  <35.180710, 37.665806, 26.859325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656387, 37.767853, 27.419580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.614986, 37.385048, 27.311199>,  <34.590145, 37.155365, 27.246170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.614986, 37.385048, 27.311199>,  <34.656387, 37.767853, 27.419580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614986, 37.385048, 27.311199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218562, -0.243872, 0.944858,
		-0.970318, 0.157015, -0.183926,
		-0.103503, -0.957012, -0.270951,
		34.583935, 37.097942, 27.229914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046169, 37.597595, 27.677254>,  <34.656387, 37.767853, 27.419580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046169, 37.597595, 27.677254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.207680, 37.236031, 27.620804>,  <34.304585, 37.019093, 27.586933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.207680, 37.236031, 27.620804>,  <34.046169, 37.597595, 27.677254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207680, 37.236031, 27.620804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311812, -0.280994, 0.907643,
		-0.860082, -0.322477, -0.395307,
		0.403773, -0.903908, -0.141126,
		34.328812, 36.964859, 27.578466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595619, 37.148838, 27.888529>,  <34.046169, 37.597595, 27.677254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595619, 37.148838, 27.888529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.926682, 36.924446, 27.895311>,  <34.125320, 36.789810, 27.899382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.926682, 36.924446, 27.895311>,  <33.595619, 37.148838, 27.888529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926682, 36.924446, 27.895311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264357, -0.363019, 0.893495,
		-0.495075, -0.743990, -0.448754,
		0.827657, -0.560978, 0.016957,
		34.174980, 36.756153, 27.900398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358051, 36.518200, 28.136879>,  <33.595619, 37.148838, 27.888529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358051, 36.518200, 28.136879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.753464, 36.473198, 28.177179>,  <33.990711, 36.446198, 28.201359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.753464, 36.473198, 28.177179>,  <33.358051, 36.518200, 28.136879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753464, 36.473198, 28.177179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143847, -0.498247, 0.855020,
		-0.045993, -0.859706, -0.508715,
		0.988531, -0.112502, 0.100750,
		34.050022, 36.439445, 28.207405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433949, 35.821842, 28.429672>,  <33.358051, 36.518200, 28.136879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433949, 35.821842, 28.429672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.767864, 36.021202, 28.523249>,  <33.968212, 36.140820, 28.579395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.767864, 36.021202, 28.523249>,  <33.433949, 35.821842, 28.429672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767864, 36.021202, 28.523249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082877, -0.306311, 0.948317,
		0.544299, -0.811031, -0.214399,
		0.834787, 0.498399, 0.233941,
		34.018299, 36.170723, 28.593431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820198, 35.326279, 28.847494>,  <33.433949, 35.821842, 28.429672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820198, 35.326279, 28.847494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.010952, 35.662926, 28.948893>,  <34.125404, 35.864914, 29.009731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.010952, 35.662926, 28.948893>,  <33.820198, 35.326279, 28.847494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010952, 35.662926, 28.948893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137603, -0.356330, 0.924173,
		0.868127, -0.405844, -0.285738,
		0.476887, 0.841617, 0.253494,
		34.154018, 35.915409, 29.024940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384907, 35.188522, 29.329887>,  <33.820198, 35.326279, 28.847494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384907, 35.188522, 29.329887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.301254, 35.575897, 29.384144>,  <34.251064, 35.808323, 29.416697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.301254, 35.575897, 29.384144>,  <34.384907, 35.188522, 29.329887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301254, 35.575897, 29.384144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076796, -0.122013, 0.989553,
		0.974868, 0.217361, -0.048855,
		-0.209129, 0.968435, 0.135639,
		34.238514, 35.866428, 29.424835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972607, 35.503887, 29.762291>,  <34.384907, 35.188522, 29.329887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972607, 35.503887, 29.762291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.639137, 35.722240, 29.795778>,  <34.439056, 35.853252, 29.815870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.639137, 35.722240, 29.795778>,  <34.972607, 35.503887, 29.762291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639137, 35.722240, 29.795778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004940, -0.158954, 0.987274,
		0.552239, 0.822648, 0.135212,
		-0.833671, 0.545879, 0.083716,
		34.389034, 35.886005, 29.820892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744568, 35.788914, 29.953949>,  <34.972607, 35.503887, 29.762291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744568, 35.788914, 29.953949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.922733, 35.436214, 30.016090>,  <36.029633, 35.224594, 30.053375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.922733, 35.436214, 30.016090>,  <35.744568, 35.788914, 29.953949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922733, 35.436214, 30.016090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242174, -0.048400, -0.969025,
		0.861952, 0.469237, 0.191978,
		0.445410, -0.881745, 0.155356,
		36.056355, 35.171692, 30.062696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463947, 35.922703, 29.814156>,  <35.744568, 35.788914, 29.953949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463947, 35.922703, 29.814156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.407665, 35.526882, 29.801619>,  <36.373898, 35.289391, 29.794096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.407665, 35.526882, 29.801619>,  <36.463947, 35.922703, 29.814156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407665, 35.526882, 29.801619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271118, -0.008063, -0.962512,
		0.952206, -0.143929, 0.269420,
		-0.140706, -0.989555, -0.031344,
		36.365452, 35.230015, 29.792215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109501, 35.588383, 29.671165>,  <36.463947, 35.922703, 29.814156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109501, 35.588383, 29.671165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.845684, 35.307140, 29.564844>,  <36.687393, 35.138397, 29.501051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.845684, 35.307140, 29.564844>,  <37.109501, 35.588383, 29.671165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845684, 35.307140, 29.564844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472447, -0.112716, -0.874122,
		0.584638, -0.702097, 0.406520,
		-0.659540, -0.703104, -0.265805,
		36.647823, 35.096210, 29.485102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508854, 35.152832, 29.259804>,  <37.109501, 35.588383, 29.671165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508854, 35.152832, 29.259804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.137039, 35.029202, 29.179375>,  <36.913948, 34.955025, 29.131117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.137039, 35.029202, 29.179375>,  <37.508854, 35.152832, 29.259804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137039, 35.029202, 29.179375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233673, -0.071957, -0.969649,
		0.285227, -0.948311, 0.139110,
		-0.929539, -0.309076, -0.201070,
		36.858177, 34.936478, 29.119053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548016, 34.373615, 28.900875>,  <37.508854, 35.152832, 29.259804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548016, 34.373615, 28.900875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.207108, 34.567909, 28.823212>,  <37.002563, 34.684486, 28.776613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.207108, 34.567909, 28.823212>,  <37.548016, 34.373615, 28.900875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207108, 34.567909, 28.823212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104928, -0.204885, -0.973146,
		-0.512470, -0.849756, 0.123650,
		-0.852270, 0.485733, -0.194161,
		36.951427, 34.713631, 28.764963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199089, 34.011524, 28.467245>,  <37.548016, 34.373615, 28.900875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199089, 34.011524, 28.467245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.006996, 34.351208, 28.379398>,  <36.891743, 34.555016, 28.326691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.006996, 34.351208, 28.379398>,  <37.199089, 34.011524, 28.467245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006996, 34.351208, 28.379398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051454, -0.222674, -0.973534,
		-0.875633, -0.478819, 0.063239,
		-0.480228, 0.849205, -0.219618,
		36.862926, 34.605968, 28.313513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565178, 33.849277, 27.934357>,  <37.199089, 34.011524, 28.467245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565178, 33.849277, 27.934357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.572437, 34.248310, 27.907494>,  <36.576794, 34.487728, 27.891376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.572437, 34.248310, 27.907494>,  <36.565178, 33.849277, 27.934357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572437, 34.248310, 27.907494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195364, -0.062335, -0.978748,
		-0.980563, 0.030879, 0.193759,
		0.018145, 0.997578, -0.067156,
		36.577881, 34.547585, 27.887346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030163, 33.978073, 27.359579>,  <36.565178, 33.849277, 27.934357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030163, 33.978073, 27.359579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.315197, 34.256870, 27.391665>,  <36.486217, 34.424149, 27.410915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.315197, 34.256870, 27.391665>,  <36.030163, 33.978073, 27.359579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315197, 34.256870, 27.391665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034112, 0.148614, -0.988307,
		-0.700760, 0.701512, 0.129675,
		0.712581, 0.696989, 0.080213,
		36.528973, 34.465965, 27.415728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828480, 34.504032, 26.907095>,  <36.030163, 33.978073, 27.359579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828480, 34.504032, 26.907095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.223427, 34.538773, 26.960091>,  <36.460396, 34.559616, 26.991888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.223427, 34.538773, 26.960091>,  <35.828480, 34.504032, 26.907095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223427, 34.538773, 26.960091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124783, 0.088836, -0.988199,
		-0.097598, 0.992252, 0.076876,
		0.987372, 0.086853, 0.132487,
		36.519638, 34.564827, 26.999836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029526, 35.104393, 26.487919>,  <35.828480, 34.504032, 26.907095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029526, 35.104393, 26.487919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.396519, 34.968246, 26.570255>,  <36.616714, 34.886559, 26.619658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.396519, 34.968246, 26.570255>,  <36.029526, 35.104393, 26.487919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396519, 34.968246, 26.570255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364602, 0.512756, -0.777269,
		0.159009, 0.788184, 0.594544,
		0.917486, -0.340365, 0.205841,
		36.671764, 34.866138, 26.632008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486721, 35.671829, 26.601807>,  <36.029526, 35.104393, 26.487919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486721, 35.671829, 26.601807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655762, 35.339844, 26.456169>,  <36.757187, 35.140652, 26.368786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655762, 35.339844, 26.456169>,  <36.486721, 35.671829, 26.601807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655762, 35.339844, 26.456169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314208, 0.510986, -0.800104,
		0.850104, 0.223728, 0.476727,
		0.422607, -0.829963, -0.364094,
		36.782543, 35.090855, 26.346941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137211, 35.909657, 26.359385>,  <36.486721, 35.671829, 26.601807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137211, 35.909657, 26.359385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112301, 35.564087, 26.159481>,  <37.097355, 35.356747, 26.039539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112301, 35.564087, 26.159481>,  <37.137211, 35.909657, 26.359385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112301, 35.564087, 26.159481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299462, 0.461485, -0.835077,
		0.952074, -0.201662, 0.229973,
		-0.062274, -0.863924, -0.499758,
		37.093620, 35.304909, 26.009554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785160, 35.740864, 26.051561>,  <37.137211, 35.909657, 26.359385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785160, 35.740864, 26.051561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508892, 35.546719, 25.837120>,  <37.343132, 35.430233, 25.708456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508892, 35.546719, 25.837120>,  <37.785160, 35.740864, 26.051561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508892, 35.546719, 25.837120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282755, 0.501063, -0.817915,
		0.665605, -0.716491, -0.208829,
		-0.690666, -0.485362, -0.536102,
		37.301693, 35.401112, 25.676291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053699, 35.662121, 25.485018>,  <37.785160, 35.740864, 26.051561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053699, 35.662121, 25.485018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.687332, 35.574791, 25.350296>,  <37.467514, 35.522392, 25.269463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.687332, 35.574791, 25.350296>,  <38.053699, 35.662121, 25.485018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687332, 35.574791, 25.350296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271840, 0.279947, -0.920724,
		0.295308, -0.934859, -0.197057,
		-0.915913, -0.218329, -0.336803,
		37.412560, 35.509293, 25.249256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598309, 35.096371, 25.605015>,  <38.053699, 35.662121, 25.485018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598309, 35.096371, 25.605015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.990330, 35.083015, 25.526649>,  <39.225544, 35.075005, 25.479631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.990330, 35.083015, 25.526649>,  <38.598309, 35.096371, 25.605015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990330, 35.083015, 25.526649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124973, -0.662961, 0.738149,
		-0.154525, -0.747909, -0.645565,
		0.980053, -0.033384, -0.195912,
		39.284348, 35.073002, 25.467876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719955, 34.358273, 25.567759>,  <38.598309, 35.096371, 25.605015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719955, 34.358273, 25.567759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.039322, 34.571354, 25.680016>,  <39.230942, 34.699203, 25.747370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.039322, 34.571354, 25.680016>,  <38.719955, 34.358273, 25.567759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039322, 34.571354, 25.680016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053796, -0.401128, 0.914441,
		0.599697, -0.745203, -0.291610,
		0.798417, 0.532700, 0.280644,
		39.278847, 34.731163, 25.764210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072063, 33.816208, 25.791590>,  <38.719955, 34.358273, 25.567759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072063, 33.816208, 25.791590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.209972, 34.144714, 25.973429>,  <39.292717, 34.341816, 26.082533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.209972, 34.144714, 25.973429>,  <39.072063, 33.816208, 25.791590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209972, 34.144714, 25.973429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075981, -0.507120, 0.858520,
		0.935607, -0.261451, -0.237240,
		0.344770, 0.821263, 0.454599,
		39.313404, 34.391094, 26.109808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661911, 33.554859, 26.259932>,  <39.072063, 33.816208, 25.791590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661911, 33.554859, 26.259932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.568909, 33.917542, 26.400681>,  <39.513107, 34.135151, 26.485130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.568909, 33.917542, 26.400681>,  <39.661911, 33.554859, 26.259932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568909, 33.917542, 26.400681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173582, -0.317296, 0.932305,
		0.956979, 0.277849, -0.083614,
		-0.232510, 0.906710, 0.351875,
		39.499157, 34.189556, 26.506243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128292, 33.724094, 26.772509>,  <39.661911, 33.554859, 26.259932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128292, 33.724094, 26.772509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.806931, 33.952610, 26.839640>,  <39.614113, 34.089722, 26.879919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.806931, 33.952610, 26.839640>,  <40.128292, 33.724094, 26.772509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806931, 33.952610, 26.839640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054592, -0.209998, 0.976177,
		0.592927, 0.793426, 0.137525,
		-0.803403, 0.571294, 0.167828,
		39.565910, 34.123997, 26.889988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264679, 33.981384, 27.370165>,  <40.128292, 33.724094, 26.772509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264679, 33.981384, 27.370165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.869637, 34.040886, 27.350130>,  <39.632610, 34.076588, 27.338110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.869637, 34.040886, 27.350130>,  <40.264679, 33.981384, 27.370165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869637, 34.040886, 27.350130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077358, -0.183654, 0.979942,
		0.136570, 0.971671, 0.192885,
		-0.987606, 0.148752, -0.050085,
		39.573357, 34.085510, 27.335104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014462, 34.459618, 27.955750>,  <40.264679, 33.981384, 27.370165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014462, 34.459618, 27.955750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.723652, 34.231976, 27.802092>,  <39.549168, 34.095390, 27.709898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.723652, 34.231976, 27.802092>,  <40.014462, 34.459618, 27.955750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723652, 34.231976, 27.802092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153692, -0.410394, 0.898863,
		-0.669194, 0.712531, 0.210898,
		-0.727020, -0.569101, -0.384144,
		39.505547, 34.061245, 27.686848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449638, 34.463188, 28.426598>,  <40.014462, 34.459618, 27.955750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449638, 34.463188, 28.426598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.306694, 34.138115, 28.242489>,  <39.220928, 33.943073, 28.132025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.306694, 34.138115, 28.242489>,  <39.449638, 34.463188, 28.426598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306694, 34.138115, 28.242489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414612, -0.303553, 0.857877,
		-0.836894, 0.497403, -0.228469,
		-0.357358, -0.812678, -0.460271,
		39.199486, 33.894310, 28.104408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852600, 34.373905, 28.555576>,  <39.449638, 34.463188, 28.426598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852600, 34.373905, 28.555576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.932606, 33.993862, 28.459841>,  <38.980610, 33.765835, 28.402399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.932606, 33.993862, 28.459841>,  <38.852600, 34.373905, 28.555576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932606, 33.993862, 28.459841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174992, -0.274990, 0.945388,
		-0.964040, -0.147208, -0.221264,
		0.200014, -0.950111, -0.239341,
		38.992611, 33.708828, 28.388039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280117, 33.951450, 28.605610>,  <38.852600, 34.373905, 28.555576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280117, 33.951450, 28.605610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.574501, 33.682678, 28.638784>,  <38.751133, 33.521416, 28.658689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.574501, 33.682678, 28.638784>,  <38.280117, 33.951450, 28.605610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574501, 33.682678, 28.638784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343499, -0.265025, 0.900983,
		-0.583414, -0.691575, -0.425854,
		0.735959, -0.671927, 0.082936,
		38.795288, 33.481102, 28.663666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001255, 33.457813, 28.995741>,  <38.280117, 33.951450, 28.605610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001255, 33.457813, 28.995741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.388279, 33.367203, 29.040482>,  <38.620495, 33.312836, 29.067326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.388279, 33.367203, 29.040482>,  <38.001255, 33.457813, 28.995741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388279, 33.367203, 29.040482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163552, -0.224209, 0.960719,
		-0.192546, -0.947849, -0.253984,
		0.967562, -0.226523, 0.111852,
		38.678547, 33.299244, 29.074038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000786, 32.903404, 29.467966>,  <38.001255, 33.457813, 28.995741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000786, 32.903404, 29.467966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.383125, 33.020950, 29.468672>,  <38.612530, 33.091476, 29.469095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.383125, 33.020950, 29.468672>,  <38.000786, 32.903404, 29.467966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383125, 33.020950, 29.468672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099204, -0.328320, 0.939343,
		0.276619, -0.897691, -0.342976,
		0.955846, 0.293864, 0.001765,
		38.669880, 33.109108, 29.469202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431293, 32.324135, 29.925734>,  <38.000786, 32.903404, 29.467966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431293, 32.324135, 29.925734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.619595, 32.675667, 29.894600>,  <38.732574, 32.886585, 29.875919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.619595, 32.675667, 29.894600>,  <38.431293, 32.324135, 29.925734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619595, 32.675667, 29.894600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243754, -0.044765, 0.968803,
		0.847925, -0.475038, -0.235291,
		0.470751, 0.878826, -0.077835,
		38.760818, 32.939316, 29.871250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985699, 32.290615, 30.496521>,  <38.431293, 32.324135, 29.925734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985699, 32.290615, 30.496521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.972218, 32.678032, 30.397892>,  <38.964130, 32.910480, 30.338715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.972218, 32.678032, 30.397892>,  <38.985699, 32.290615, 30.496521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972218, 32.678032, 30.397892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324944, 0.243929, 0.913734,
		0.945133, -0.049330, -0.322941,
		-0.033700, 0.968538, -0.246574,
		38.962109, 32.968594, 30.323919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.151939, 39.745495, 25.159054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.791992, 39.665878, 25.003811>,  <41.576023, 39.618107, 24.910666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.791992, 39.665878, 25.003811>,  <42.151939, 39.745495, 25.159054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791992, 39.665878, 25.003811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433944, -0.318752, -0.842668,
		0.044017, -0.926703, 0.373207,
		-0.899864, -0.199042, -0.388106,
		41.522034, 39.606167, 24.887379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133453, 39.005993, 25.054323>,  <42.151939, 39.745495, 25.159054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133453, 39.005993, 25.054323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.874256, 39.179401, 24.803831>,  <41.718739, 39.283447, 24.653536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.874256, 39.179401, 24.803831>,  <42.133453, 39.005993, 25.054323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874256, 39.179401, 24.803831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448103, -0.447855, -0.773711,
		-0.615879, -0.781977, 0.095946,
		-0.647994, 0.433519, -0.626231,
		41.679859, 39.309456, 24.615961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853222, 38.470802, 24.626776>,  <42.133453, 39.005993, 25.054323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853222, 38.470802, 24.626776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.843811, 38.809849, 24.414743>,  <41.838165, 39.013279, 24.287523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.843811, 38.809849, 24.414743>,  <41.853222, 38.470802, 24.626776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843811, 38.809849, 24.414743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343260, -0.491145, -0.800592,
		-0.938946, -0.200788, -0.279402,
		-0.023523, 0.847620, -0.530081,
		41.836754, 39.064137, 24.255718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004658, 38.204266, 23.967220>,  <41.853222, 38.470802, 24.626776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004658, 38.204266, 23.967220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.956375, 38.586231, 23.858732>,  <41.927406, 38.815411, 23.793640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.956375, 38.586231, 23.858732>,  <42.004658, 38.204266, 23.967220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956375, 38.586231, 23.858732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095203, -0.260824, -0.960681,
		-0.988113, -0.141781, -0.059428,
		-0.120706, 0.954919, -0.271221,
		41.920162, 38.872707, 23.777367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559883, 38.141853, 23.512106>,  <42.004658, 38.204266, 23.967220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559883, 38.141853, 23.512106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.742970, 38.490341, 23.441137>,  <41.852821, 38.699432, 23.398556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.742970, 38.490341, 23.441137>,  <41.559883, 38.141853, 23.512106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742970, 38.490341, 23.441137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061870, -0.167860, -0.983867,
		-0.886942, 0.461311, -0.022930,
		0.457718, 0.871215, -0.177423,
		41.880283, 38.751705, 23.387911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103565, 38.440968, 22.911970>,  <41.559883, 38.141853, 23.512106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103565, 38.440968, 22.911970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.460079, 38.622326, 22.909369>,  <41.673988, 38.731140, 22.907806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.460079, 38.622326, 22.909369>,  <41.103565, 38.440968, 22.911970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460079, 38.622326, 22.909369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002643, -0.019541, -0.999806,
		-0.453439, 0.891093, -0.018615,
		0.891284, 0.453400, -0.006505,
		41.727463, 38.758347, 22.907417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085011, 38.965298, 22.382294>,  <41.103565, 38.440968, 22.911970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085011, 38.965298, 22.382294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.475071, 38.894241, 22.435230>,  <41.709106, 38.851608, 22.466993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.475071, 38.894241, 22.435230>,  <41.085011, 38.965298, 22.382294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475071, 38.894241, 22.435230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109473, -0.132924, -0.985062,
		0.192581, 0.975077, -0.110175,
		0.975156, -0.177643, 0.132343,
		41.767616, 38.840950, 22.474934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475807, 39.428303, 21.936243>,  <41.085011, 38.965298, 22.382294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475807, 39.428303, 21.936243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.716393, 39.118298, 22.013802>,  <41.860744, 38.932293, 22.060337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.716393, 39.118298, 22.013802>,  <41.475807, 39.428303, 21.936243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716393, 39.118298, 22.013802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108181, -0.161456, -0.980933,
		0.791542, 0.610971, -0.013268,
		0.601464, -0.775014, 0.193895,
		41.896832, 38.885792, 22.071970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031734, 39.451611, 21.444710>,  <41.475807, 39.428303, 21.936243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031734, 39.451611, 21.444710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.023060, 39.067543, 21.556147>,  <42.017857, 38.837105, 21.623009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.023060, 39.067543, 21.556147>,  <42.031734, 39.451611, 21.444710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023060, 39.067543, 21.556147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078026, -0.276181, -0.957933,
		0.996715, -0.042508, -0.068930,
		-0.021683, -0.960165, 0.278591,
		42.016556, 38.779495, 21.639725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659248, 39.034855, 21.074200>,  <42.031734, 39.451611, 21.444710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659248, 39.034855, 21.074200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.377098, 38.773151, 21.183298>,  <42.207809, 38.616127, 21.248756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.377098, 38.773151, 21.183298>,  <42.659248, 39.034855, 21.074200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377098, 38.773151, 21.183298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111807, -0.277267, -0.954265,
		0.699962, -0.703609, 0.122425,
		-0.705374, -0.654261, 0.272745,
		42.165485, 38.576874, 21.265121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906647, 38.406628, 20.806952>,  <42.659248, 39.034855, 21.074200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906647, 38.406628, 20.806952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.529346, 38.290173, 20.870850>,  <42.302967, 38.220299, 20.909189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.529346, 38.290173, 20.870850>,  <42.906647, 38.406628, 20.806952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529346, 38.290173, 20.870850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012387, -0.449862, -0.893012,
		0.331852, -0.844312, 0.420726,
		-0.943250, -0.291137, 0.159746,
		42.246372, 38.202831, 20.918774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876526, 37.780243, 20.525915>,  <42.906647, 38.406628, 20.806952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876526, 37.780243, 20.525915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.488937, 37.875172, 20.553537>,  <42.256382, 37.932129, 20.570110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.488937, 37.875172, 20.553537>,  <42.876526, 37.780243, 20.525915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488937, 37.875172, 20.553537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146304, -0.325551, -0.934137,
		-0.199206, -0.915258, 0.350171,
		-0.968975, 0.237317, 0.069054,
		42.198246, 37.946365, 20.574253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327408, 37.233093, 20.328514>,  <42.876526, 37.780243, 20.525915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327408, 37.233093, 20.328514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.164543, 37.588142, 20.242405>,  <42.066822, 37.801170, 20.190739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.164543, 37.588142, 20.242405>,  <42.327408, 37.233093, 20.328514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164543, 37.588142, 20.242405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293054, -0.350193, -0.889654,
		-0.865065, -0.299149, 0.402707,
		-0.407165, 0.887623, -0.215273,
		42.042393, 37.854431, 20.177824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553665, 37.193329, 20.192223>,  <42.327408, 37.233093, 20.328514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553665, 37.193329, 20.192223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.769665, 37.486767, 20.027180>,  <41.899265, 37.662830, 19.928154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.769665, 37.486767, 20.027180>,  <41.553665, 37.193329, 20.192223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769665, 37.486767, 20.027180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363014, -0.239286, -0.900535,
		-0.759357, 0.636068, 0.137091,
		0.539997, 0.733594, -0.412605,
		41.931664, 37.706844, 19.903399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845863, 37.118286, 20.540960>,  <41.553665, 37.193329, 20.192223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845863, 37.118286, 20.540960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.703396, 36.808437, 20.331924>,  <40.617916, 36.622528, 20.206503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.703396, 36.808437, 20.331924>,  <40.845863, 37.118286, 20.540960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703396, 36.808437, 20.331924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462867, -0.339571, 0.818807,
		-0.811724, 0.533525, -0.237603,
		-0.356171, -0.774624, -0.522589,
		40.596546, 36.576050, 20.175148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185234, 37.062767, 20.789627>,  <40.845863, 37.118286, 20.540960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185234, 37.062767, 20.789627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.244087, 36.696117, 20.640951>,  <40.279400, 36.476128, 20.551744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.244087, 36.696117, 20.640951>,  <40.185234, 37.062767, 20.789627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244087, 36.696117, 20.640951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276482, -0.398917, 0.874313,
		-0.949688, -0.025877, -0.312125,
		0.147137, -0.916622, -0.371692,
		40.288227, 36.421131, 20.529444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640705, 36.597332, 20.889572>,  <40.185234, 37.062767, 20.789627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640705, 36.597332, 20.889572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.925007, 36.323666, 20.824158>,  <40.095589, 36.159466, 20.784908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.925007, 36.323666, 20.824158>,  <39.640705, 36.597332, 20.889572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925007, 36.323666, 20.824158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249837, -0.462845, 0.850503,
		-0.657577, -0.563643, -0.499899,
		0.710756, -0.684165, -0.163537,
		40.138233, 36.118416, 20.775097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366219, 35.979599, 21.171598>,  <39.640705, 36.597332, 20.889572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366219, 35.979599, 21.171598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.762451, 35.924992, 21.167446>,  <40.000191, 35.892227, 21.164955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.762451, 35.924992, 21.167446>,  <39.366219, 35.979599, 21.171598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762451, 35.924992, 21.167446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051868, -0.444333, 0.894359,
		-0.126712, -0.885398, -0.447230,
		0.990583, -0.136523, -0.010379,
		40.059628, 35.884033, 21.164333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495884, 35.371906, 21.370981>,  <39.366219, 35.979599, 21.171598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495884, 35.371906, 21.370981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.835388, 35.570873, 21.442736>,  <40.039093, 35.690254, 21.485788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.835388, 35.570873, 21.442736>,  <39.495884, 35.371906, 21.370981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835388, 35.570873, 21.442736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013633, -0.318554, 0.947806,
		0.528597, -0.806909, -0.263596,
		0.848763, 0.497414, 0.179387,
		40.090015, 35.720097, 21.496552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710373, 34.969757, 21.912971>,  <39.495884, 35.371906, 21.370981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710373, 34.969757, 21.912971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.983746, 35.261421, 21.927086>,  <40.147770, 35.436420, 21.935555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.983746, 35.261421, 21.927086>,  <39.710373, 34.969757, 21.912971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983746, 35.261421, 21.927086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125087, -0.164591, 0.978398,
		0.719216, -0.664256, -0.203695,
		0.683433, 0.729159, 0.035287,
		40.188774, 35.480167, 21.937672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329205, 34.736893, 22.198206>,  <39.710373, 34.969757, 21.912971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329205, 34.736893, 22.198206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.324619, 35.132137, 22.259539>,  <40.321869, 35.369282, 22.296339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.324619, 35.132137, 22.259539>,  <40.329205, 34.736893, 22.198206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324619, 35.132137, 22.259539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103407, -0.151348, 0.983057,
		0.994573, 0.027122, -0.100443,
		-0.011461, 0.988108, 0.153331,
		40.321182, 35.428570, 22.305538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833641, 34.935783, 22.778244>,  <40.329205, 34.736893, 22.198206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833641, 34.935783, 22.778244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.583950, 35.247509, 22.756313>,  <40.434135, 35.434547, 22.743155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.583950, 35.247509, 22.756313>,  <40.833641, 34.935783, 22.778244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583950, 35.247509, 22.756313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117588, -0.024342, 0.992764,
		0.772345, 0.626155, 0.106833,
		-0.624224, 0.779319, -0.054828,
		40.396683, 35.481304, 22.739864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923641, 35.356171, 23.397963>,  <40.833641, 34.935783, 22.778244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923641, 35.356171, 23.397963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.560326, 35.475193, 23.280338>,  <40.342335, 35.546604, 23.209763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.560326, 35.475193, 23.280338>,  <40.923641, 35.356171, 23.397963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560326, 35.475193, 23.280338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302006, 0.020033, 0.953096,
		0.289486, 0.954496, 0.071667,
		-0.908290, 0.297552, -0.294063,
		40.287838, 35.564457, 23.192120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793446, 35.859711, 23.805258>,  <40.923641, 35.356171, 23.397963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793446, 35.859711, 23.805258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.417316, 35.779205, 23.695503>,  <40.191639, 35.730904, 23.629650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.417316, 35.779205, 23.695503>,  <40.793446, 35.859711, 23.805258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417316, 35.779205, 23.695503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318050, 0.233115, 0.918968,
		-0.120987, 0.951395, -0.283214,
		-0.940322, -0.201260, -0.274388,
		40.135220, 35.718826, 23.613188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302380, 36.406666, 24.002838>,  <40.793446, 35.859711, 23.805258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302380, 36.406666, 24.002838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.053268, 36.094791, 23.976824>,  <39.903801, 35.907665, 23.961214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.053268, 36.094791, 23.976824>,  <40.302380, 36.406666, 24.002838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053268, 36.094791, 23.976824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146137, 0.034258, 0.988671,
		-0.768626, 0.625231, -0.135276,
		-0.622782, -0.779687, -0.065038,
		39.866432, 35.860886, 23.957312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761871, 36.483910, 24.486387>,  <40.302380, 36.406666, 24.002838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761871, 36.483910, 24.486387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.736412, 36.088612, 24.430801>,  <39.721134, 35.851433, 24.397449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.736412, 36.088612, 24.430801>,  <39.761871, 36.483910, 24.486387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736412, 36.088612, 24.430801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254953, -0.118525, 0.959661,
		-0.964856, 0.096514, -0.244413,
		-0.063652, -0.988249, -0.138966,
		39.717316, 35.792137, 24.389112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178936, 36.298355, 24.832928>,  <39.761871, 36.483910, 24.486387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178936, 36.298355, 24.832928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.336174, 35.936481, 24.767168>,  <39.430515, 35.719357, 24.727713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.336174, 35.936481, 24.767168>,  <39.178936, 36.298355, 24.832928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336174, 35.936481, 24.767168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288298, -0.291038, 0.912239,
		-0.873134, -0.311198, -0.375224,
		0.393092, -0.904683, -0.164398,
		39.454102, 35.665077, 24.717850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724197, 35.778454, 25.085495>,  <39.178936, 36.298355, 24.832928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724197, 35.778454, 25.085495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.077896, 35.592175, 25.071505>,  <39.290115, 35.480408, 25.063110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.077896, 35.592175, 25.071505>,  <38.724197, 35.778454, 25.085495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077896, 35.592175, 25.071505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179459, -0.407977, 0.895181,
		-0.431158, -0.785287, -0.444328,
		0.884250, -0.465703, -0.034976,
		39.343170, 35.452465, 25.061012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196083, 35.271389, 24.747341>,  <38.724197, 35.778454, 25.085495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196083, 35.271389, 24.747341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.812840, 35.382706, 24.774435>,  <37.582893, 35.449497, 24.790691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.812840, 35.382706, 24.774435>,  <38.196083, 35.271389, 24.747341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812840, 35.382706, 24.774435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023730, 0.158553, -0.987065,
		-0.285430, -0.947320, -0.145306,
		-0.958105, 0.278290, 0.067735,
		37.525410, 35.466194, 24.794756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818047, 34.905113, 24.337358>,  <38.196083, 35.271389, 24.747341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818047, 34.905113, 24.337358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.585030, 35.228348, 24.372328>,  <37.445221, 35.422287, 24.393309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.585030, 35.228348, 24.372328>,  <37.818047, 34.905113, 24.337358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585030, 35.228348, 24.372328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020564, 0.092871, -0.995466,
		-0.812542, -0.581697, -0.037483,
		-0.582540, 0.808087, 0.087423,
		37.410267, 35.470776, 24.398554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362782, 34.892780, 23.719955>,  <37.818047, 34.905113, 24.337358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362782, 34.892780, 23.719955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.342705, 35.263176, 23.869633>,  <37.330658, 35.485413, 23.959438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.342705, 35.263176, 23.869633>,  <37.362782, 34.892780, 23.719955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342705, 35.263176, 23.869633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079585, 0.377181, -0.922714,
		-0.995564, -0.016535, -0.092628,
		-0.050195, 0.925992, 0.374191,
		37.327648, 35.540974, 23.981890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856102, 35.196815, 23.364441>,  <37.362782, 34.892780, 23.719955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856102, 35.196815, 23.364441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030727, 35.523899, 23.514517>,  <37.135502, 35.720150, 23.604563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030727, 35.523899, 23.514517>,  <36.856102, 35.196815, 23.364441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030727, 35.523899, 23.514517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102322, 0.459449, -0.882290,
		-0.893837, 0.346782, 0.284247,
		0.436560, 0.817709, 0.375190,
		37.161694, 35.769211, 23.627073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440624, 35.791767, 23.179207>,  <36.856102, 35.196815, 23.364441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440624, 35.791767, 23.179207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.806171, 35.939686, 23.246258>,  <37.025501, 36.028435, 23.286488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.806171, 35.939686, 23.246258>,  <36.440624, 35.791767, 23.179207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806171, 35.939686, 23.246258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029551, 0.351183, -0.935840,
		-0.404935, 0.860188, 0.310007,
		0.913868, 0.369793, 0.167626,
		37.080330, 36.050625, 23.296545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444443, 36.593231, 22.904932>,  <36.440624, 35.791767, 23.179207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444443, 36.593231, 22.904932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.820709, 36.463974, 22.946344>,  <37.046471, 36.386417, 22.971191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.820709, 36.463974, 22.946344>,  <36.444443, 36.593231, 22.904932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820709, 36.463974, 22.946344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247279, 0.443877, -0.861293,
		0.232369, 0.835793, 0.497449,
		0.940669, -0.323147, 0.103531,
		37.102909, 36.367031, 22.977404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909218, 37.113430, 22.675323>,  <36.444443, 36.593231, 22.904932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909218, 37.113430, 22.675323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.144554, 36.790337, 22.660229>,  <37.285755, 36.596481, 22.651173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.144554, 36.790337, 22.660229>,  <36.909218, 37.113430, 22.675323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144554, 36.790337, 22.660229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374916, 0.313838, -0.872321,
		0.716443, 0.499075, 0.487476,
		0.588342, -0.807731, -0.037736,
		37.321056, 36.548016, 22.648909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862095, 37.825562, 22.809160>,  <36.909218, 37.113430, 22.675323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862095, 37.825562, 22.809160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.509163, 37.918484, 22.645441>,  <36.297405, 37.974236, 22.547209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.509163, 37.918484, 22.645441>,  <36.862095, 37.825562, 22.809160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509163, 37.918484, 22.645441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462109, -0.262907, 0.846956,
		0.089145, 0.936437, 0.339322,
		-0.882331, 0.232306, -0.409299,
		36.244465, 37.988174, 22.522652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578499, 38.160049, 23.311554>,  <36.862095, 37.825562, 22.809160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578499, 38.160049, 23.311554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.255013, 38.063477, 23.097010>,  <36.060921, 38.005531, 22.968283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.255013, 38.063477, 23.097010>,  <36.578499, 38.160049, 23.311554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255013, 38.063477, 23.097010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495941, -0.210399, 0.842482,
		-0.316254, 0.947334, 0.050416,
		-0.808719, -0.241435, -0.536361,
		36.012398, 37.991047, 22.936102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045475, 38.568008, 23.553265>,  <36.578499, 38.160049, 23.311554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045475, 38.568008, 23.553265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879627, 38.247471, 23.380783>,  <35.780117, 38.055149, 23.277294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879627, 38.247471, 23.380783>,  <36.045475, 38.568008, 23.553265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879627, 38.247471, 23.380783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473391, -0.214749, 0.854274,
		-0.777168, 0.558328, -0.290310,
		-0.414621, -0.801345, -0.431203,
		35.755241, 38.007069, 23.251423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348289, 38.622982, 23.617298>,  <36.045475, 38.568008, 23.553265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348289, 38.622982, 23.617298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402943, 38.233307, 23.545416>,  <35.435734, 37.999504, 23.502287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402943, 38.233307, 23.545416>,  <35.348289, 38.622982, 23.617298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402943, 38.233307, 23.545416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513221, -0.224774, 0.828300,
		-0.847311, -0.020944, -0.530684,
		0.136632, -0.974185, -0.179705,
		35.443932, 37.941051, 23.491505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671875, 38.324371, 23.761787>,  <35.348289, 38.622982, 23.617298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671875, 38.324371, 23.761787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.942513, 38.030346, 23.779243>,  <35.104893, 37.853931, 23.789717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.942513, 38.030346, 23.779243>,  <34.671875, 38.324371, 23.761787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942513, 38.030346, 23.779243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459909, -0.375552, 0.804639,
		-0.575073, -0.564482, -0.592158,
		0.676591, -0.735065, 0.043641,
		35.145489, 37.809826, 23.792336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191025, 37.722622, 23.858328>,  <34.671875, 38.324371, 23.761787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191025, 37.722622, 23.858328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557999, 37.590912, 23.947678>,  <34.778183, 37.511887, 24.001287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557999, 37.590912, 23.947678>,  <34.191025, 37.722622, 23.858328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557999, 37.590912, 23.947678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344878, -0.378064, 0.859143,
		-0.198446, -0.865242, -0.460408,
		0.917430, -0.329278, 0.223377,
		34.833229, 37.492126, 24.014690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155094, 37.006443, 24.070826>,  <34.191025, 37.722622, 23.858328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155094, 37.006443, 24.070826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.500824, 37.139050, 24.222111>,  <34.708260, 37.218613, 24.312881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.500824, 37.139050, 24.222111>,  <34.155094, 37.006443, 24.070826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500824, 37.139050, 24.222111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243703, -0.381760, 0.891554,
		0.439952, -0.862761, -0.249172,
		0.864321, 0.331517, 0.378213,
		34.760120, 37.238506, 24.335575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.011627, 39.158375, 19.880930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.276672, 38.976528, 20.119013>,  <39.435699, 38.867420, 20.261862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.276672, 38.976528, 20.119013>,  <39.011627, 39.158375, 19.880930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276672, 38.976528, 20.119013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437784, 0.409714, 0.800300,
		-0.607694, -0.790859, 0.072457,
		0.662610, -0.454617, 0.595206,
		39.475456, 38.840141, 20.297575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657124, 38.786423, 20.501062>,  <39.011627, 39.158375, 19.880930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657124, 38.786423, 20.501062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.028618, 38.879391, 20.616602>,  <39.251514, 38.935173, 20.685925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.028618, 38.879391, 20.616602>,  <38.657124, 38.786423, 20.501062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028618, 38.879391, 20.616602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352955, 0.315842, 0.880720,
		0.113466, -0.919905, 0.375367,
		0.928735, 0.232420, 0.288848,
		39.307240, 38.949116, 20.703257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672821, 38.555241, 21.228319>,  <38.657124, 38.786423, 20.501062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672821, 38.555241, 21.228319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.961819, 38.826508, 21.174520>,  <39.135216, 38.989269, 21.142241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.961819, 38.826508, 21.174520>,  <38.672821, 38.555241, 21.228319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961819, 38.826508, 21.174520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191337, 0.383062, 0.903689,
		0.664377, -0.627173, 0.406518,
		0.722492, 0.678172, -0.134496,
		39.178566, 39.029961, 21.134172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070282, 38.455364, 21.828474>,  <38.672821, 38.555241, 21.228319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070282, 38.455364, 21.828474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.157242, 38.819485, 21.687569>,  <39.209419, 39.037956, 21.603025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.157242, 38.819485, 21.687569>,  <39.070282, 38.455364, 21.828474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157242, 38.819485, 21.687569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015176, 0.364003, 0.931274,
		0.975965, -0.197111, 0.092948,
		0.217398, 0.910302, -0.352263,
		39.222462, 39.092575, 21.581890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468388, 38.807533, 22.290792>,  <39.070282, 38.455364, 21.828474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468388, 38.807533, 22.290792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.353416, 39.136654, 22.094681>,  <39.284435, 39.334129, 21.977013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.353416, 39.136654, 22.094681>,  <39.468388, 38.807533, 22.290792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353416, 39.136654, 22.094681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022496, 0.505940, 0.862275,
		0.957538, 0.258871, -0.126911,
		-0.287428, 0.822806, -0.490281,
		39.267189, 39.383495, 21.947598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817619, 39.400108, 22.565174>,  <39.468388, 38.807533, 22.290792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817619, 39.400108, 22.565174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.494595, 39.555206, 22.387415>,  <39.300777, 39.648266, 22.280760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.494595, 39.555206, 22.387415>,  <39.817619, 39.400108, 22.565174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494595, 39.555206, 22.387415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109169, 0.642203, 0.758721,
		0.579587, 0.661231, -0.476290,
		-0.807565, 0.387748, -0.444399,
		39.252327, 39.671532, 22.254095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827740, 40.126316, 22.786772>,  <39.817619, 39.400108, 22.565174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827740, 40.126316, 22.786772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.448627, 40.078213, 22.668613>,  <39.221161, 40.049351, 22.597719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.448627, 40.078213, 22.668613>,  <39.827740, 40.126316, 22.786772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448627, 40.078213, 22.668613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305732, 0.606287, 0.734128,
		0.090812, 0.786101, -0.611390,
		-0.947777, -0.120254, -0.295394,
		39.164295, 40.042137, 22.579996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540596, 40.758358, 22.663868>,  <39.827740, 40.126316, 22.786772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540596, 40.758358, 22.663868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.226151, 40.517876, 22.721251>,  <39.037483, 40.373585, 22.755680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.226151, 40.517876, 22.721251>,  <39.540596, 40.758358, 22.663868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226151, 40.517876, 22.721251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245240, 0.516440, 0.820455,
		-0.567349, 0.609789, -0.553419,
		-0.786112, -0.601205, 0.143457,
		38.990318, 40.337513, 22.764288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952667, 41.176968, 22.866762>,  <39.540596, 40.758358, 22.663868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952667, 41.176968, 22.866762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.835423, 40.817276, 22.996666>,  <38.765076, 40.601460, 23.074608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.835423, 40.817276, 22.996666>,  <38.952667, 41.176968, 22.866762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835423, 40.817276, 22.996666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220791, 0.394164, 0.892124,
		-0.930235, 0.189787, -0.314076,
		-0.293112, -0.899230, 0.324762,
		38.747490, 40.547508, 23.094095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399982, 41.375729, 23.281618>,  <38.952667, 41.176968, 22.866762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399982, 41.375729, 23.281618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.481323, 40.997772, 23.384251>,  <38.530128, 40.771000, 23.445831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.481323, 40.997772, 23.384251>,  <38.399982, 41.375729, 23.281618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481323, 40.997772, 23.384251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211978, 0.213355, 0.953701,
		-0.955883, -0.248329, -0.156909,
		0.203354, -0.944888, 0.256583,
		38.542328, 40.714306, 23.461226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748661, 41.153320, 23.575943>,  <38.399982, 41.375729, 23.281618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748661, 41.153320, 23.575943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.055794, 40.937653, 23.714355>,  <38.240074, 40.808254, 23.797403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.055794, 40.937653, 23.714355>,  <37.748661, 41.153320, 23.575943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055794, 40.937653, 23.714355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248001, 0.247867, 0.936513,
		-0.590707, -0.804899, 0.056606,
		0.767829, -0.539166, 0.346032,
		38.286144, 40.775902, 23.818165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558952, 40.703518, 24.142588>,  <37.748661, 41.153320, 23.575943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558952, 40.703518, 24.142588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.949066, 40.744034, 24.221128>,  <38.183136, 40.768341, 24.268253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.949066, 40.744034, 24.221128>,  <37.558952, 40.703518, 24.142588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949066, 40.744034, 24.221128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204929, 0.082571, 0.975288,
		0.082571, -0.991425, 0.101287,
		-0.975288, -0.101287, -0.196354,
		38.241653, 40.774422, 24.280035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059517, 40.169785, 24.076130>,  <37.558952, 40.703518, 24.142588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059517, 40.169785, 24.076130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.724239, 40.387089, 24.056940>,  <36.523071, 40.517471, 24.045427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.724239, 40.387089, 24.056940>,  <37.059517, 40.169785, 24.076130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724239, 40.387089, 24.056940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097710, 0.063050, -0.993216,
		-0.536546, -0.837196, -0.105930,
		-0.838195, 0.543256, -0.047973,
		36.472782, 40.550064, 24.042547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766308, 39.947704, 23.493801>,  <37.059517, 40.169785, 24.076130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766308, 39.947704, 23.493801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.585026, 40.301720, 23.536339>,  <36.476257, 40.514130, 23.561861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.585026, 40.301720, 23.536339>,  <36.766308, 39.947704, 23.493801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585026, 40.301720, 23.536339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281568, 0.255323, -0.924949,
		-0.845769, -0.389247, -0.364912,
		-0.453204, 0.885041, 0.106345,
		36.449066, 40.567230, 23.568243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405239, 39.952805, 22.905502>,  <36.766308, 39.947704, 23.493801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405239, 39.952805, 22.905502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.459496, 40.329609, 23.028282>,  <36.492050, 40.555691, 23.101950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.459496, 40.329609, 23.028282>,  <36.405239, 39.952805, 22.905502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459496, 40.329609, 23.028282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183832, 0.280502, -0.942085,
		-0.973554, 0.184214, -0.135123,
		0.135643, 0.942011, 0.306948,
		36.500187, 40.612213, 23.120367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997921, 40.315205, 22.507690>,  <36.405239, 39.952805, 22.905502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997921, 40.315205, 22.507690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.260639, 40.584629, 22.643299>,  <36.418270, 40.746284, 22.724665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.260639, 40.584629, 22.643299>,  <35.997921, 40.315205, 22.507690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260639, 40.584629, 22.643299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028489, 0.427106, -0.903752,
		-0.753528, 0.603242, 0.261334,
		0.656799, 0.673557, 0.339023,
		36.457680, 40.786697, 22.745007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751274, 40.973770, 22.211563>,  <35.997921, 40.315205, 22.507690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751274, 40.973770, 22.211563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.133995, 41.020462, 22.318075>,  <36.363628, 41.048477, 22.381983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.133995, 41.020462, 22.318075>,  <35.751274, 40.973770, 22.211563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133995, 41.020462, 22.318075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184112, 0.465571, -0.865648,
		-0.225024, 0.877278, 0.423966,
		0.956800, 0.116734, 0.266282,
		36.421036, 41.055481, 22.397961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862141, 41.567154, 21.820381>,  <35.751274, 40.973770, 22.211563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862141, 41.567154, 21.820381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.223331, 41.462772, 21.956932>,  <36.440044, 41.400143, 22.038862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.223331, 41.462772, 21.956932>,  <35.862141, 41.567154, 21.820381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223331, 41.462772, 21.956932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409806, 0.284109, -0.866799,
		0.129207, 0.922597, 0.363484,
		0.902976, -0.260954, 0.341377,
		36.494225, 41.384487, 22.059345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418976, 42.195526, 21.703579>,  <35.862141, 41.567154, 21.820381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418976, 42.195526, 21.703579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.641991, 41.865017, 21.735636>,  <36.775799, 41.666714, 21.754869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.641991, 41.865017, 21.735636>,  <36.418976, 42.195526, 21.703579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641991, 41.865017, 21.735636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519328, 0.271843, -0.810185,
		0.647646, 0.493333, 0.580670,
		0.557542, -0.826271, 0.080144,
		36.809254, 41.617134, 21.759678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157234, 42.375534, 21.660198>,  <36.418976, 42.195526, 21.703579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157234, 42.375534, 21.660198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.126549, 41.989891, 21.558523>,  <37.108135, 41.758507, 21.497519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.126549, 41.989891, 21.558523>,  <37.157234, 42.375534, 21.660198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126549, 41.989891, 21.558523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609488, 0.156415, -0.777213,
		0.789075, -0.214549, 0.575612,
		-0.076716, -0.964108, -0.254188,
		37.103535, 41.700661, 21.482267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900230, 42.083073, 21.437531>,  <37.157234, 42.375534, 21.660198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900230, 42.083073, 21.437531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.632053, 41.827957, 21.285879>,  <37.471146, 41.674889, 21.194889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.632053, 41.827957, 21.285879>,  <37.900230, 42.083073, 21.437531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632053, 41.827957, 21.285879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453112, 0.052682, -0.889896,
		0.587536, -0.768410, 0.253668,
		-0.670441, -0.637786, -0.379128,
		37.430920, 41.636620, 21.172140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240887, 41.677246, 21.025110>,  <37.900230, 42.083073, 21.437531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240887, 41.677246, 21.025110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.872639, 41.614601, 20.882044>,  <37.651688, 41.577015, 20.796204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.872639, 41.614601, 20.882044>,  <38.240887, 41.677246, 21.025110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872639, 41.614601, 20.882044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375879, -0.107555, -0.920406,
		0.105677, -0.981786, 0.157885,
		-0.920624, -0.156611, -0.357667,
		37.596451, 41.567619, 20.774744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352695, 41.252483, 20.442671>,  <38.240887, 41.677246, 21.025110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352695, 41.252483, 20.442671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.980309, 41.380692, 20.372732>,  <37.756878, 41.457615, 20.330769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.980309, 41.380692, 20.372732>,  <38.352695, 41.252483, 20.442671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980309, 41.380692, 20.372732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202236, 0.053972, -0.977849,
		-0.303984, -0.945703, -0.115067,
		-0.930964, 0.320521, -0.174849,
		37.701019, 41.476849, 20.320278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154232, 40.868938, 19.881454>,  <38.352695, 41.252483, 20.442671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154232, 40.868938, 19.881454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.892090, 41.170868, 19.892374>,  <37.734802, 41.352024, 19.898926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.892090, 41.170868, 19.892374>,  <38.154232, 40.868938, 19.881454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892090, 41.170868, 19.892374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003100, 0.033457, -0.999435,
		-0.755311, -0.655073, -0.019587,
		-0.655359, 0.754824, 0.027301,
		37.695480, 41.397316, 19.900564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712254, 40.720680, 19.348267>,  <38.154232, 40.868938, 19.881454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712254, 40.720680, 19.348267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.710270, 41.116089, 19.408659>,  <37.709080, 41.353336, 19.444895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.710270, 41.116089, 19.408659>,  <37.712254, 40.720680, 19.348267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710270, 41.116089, 19.408659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239514, 0.147761, -0.959583,
		-0.970880, 0.031403, -0.237499,
		-0.004959, 0.988524, 0.150980,
		37.708782, 41.412647, 19.453953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421711, 40.184143, 19.853527>,  <37.712254, 40.720680, 19.348267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421711, 40.184143, 19.853527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.344540, 39.810932, 19.732044>,  <37.298237, 39.587006, 19.659155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.344540, 39.810932, 19.732044>,  <37.421711, 40.184143, 19.853527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344540, 39.810932, 19.732044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495112, -0.174663, 0.851092,
		-0.847139, 0.314566, -0.428256,
		-0.192924, -0.933028, -0.303709,
		37.286663, 39.531025, 19.640932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784084, 39.969620, 20.175034>,  <37.421711, 40.184143, 19.853527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784084, 39.969620, 20.175034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.960182, 39.617584, 20.103901>,  <37.065842, 39.406361, 20.061222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.960182, 39.617584, 20.103901>,  <36.784084, 39.969620, 20.175034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960182, 39.617584, 20.103901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543752, -0.418936, 0.727205,
		-0.714507, -0.223451, -0.662986,
		0.440243, -0.880092, -0.177830,
		37.092255, 39.353558, 20.050552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223751, 39.403751, 20.142223>,  <36.784084, 39.969620, 20.175034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223751, 39.403751, 20.142223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.563576, 39.215446, 20.237406>,  <36.767471, 39.102463, 20.294516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.563576, 39.215446, 20.237406>,  <36.223751, 39.403751, 20.142223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563576, 39.215446, 20.237406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478363, -0.497494, 0.723650,
		-0.222285, -0.728616, -0.647848,
		0.849563, -0.470764, 0.237958,
		36.818443, 39.074219, 20.308792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013588, 38.719654, 20.183821>,  <36.223751, 39.403751, 20.142223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013588, 38.719654, 20.183821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.364479, 38.681732, 20.372070>,  <36.575012, 38.658978, 20.485020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.364479, 38.681732, 20.372070>,  <36.013588, 38.719654, 20.183821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364479, 38.681732, 20.372070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473451, -0.333192, 0.815369,
		0.079505, -0.938080, -0.337172,
		0.877225, -0.094809, 0.470626,
		36.627647, 38.653290, 20.513258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979008, 37.992947, 20.469954>,  <36.013588, 38.719654, 20.183821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979008, 37.992947, 20.469954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.256260, 38.187206, 20.683012>,  <36.422611, 38.303764, 20.810848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.256260, 38.187206, 20.683012>,  <35.979008, 37.992947, 20.469954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256260, 38.187206, 20.683012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408850, -0.343698, 0.845407,
		0.593643, -0.803750, -0.039669,
		0.693130, 0.485651, 0.532647,
		36.464199, 38.332901, 20.842806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153358, 37.527313, 20.910786>,  <35.979008, 37.992947, 20.469954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153358, 37.527313, 20.910786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.252674, 37.879063, 21.073292>,  <36.312263, 38.090115, 21.170795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.252674, 37.879063, 21.073292>,  <36.153358, 37.527313, 20.910786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252674, 37.879063, 21.073292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283440, -0.335091, 0.898541,
		0.926291, -0.338247, 0.166052,
		0.248286, 0.879376, 0.406265,
		36.327160, 38.142876, 21.195171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382236, 37.330887, 21.555269>,  <36.153358, 37.527313, 20.910786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382236, 37.330887, 21.555269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.313839, 37.721397, 21.608393>,  <36.272800, 37.955704, 21.640266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.313839, 37.721397, 21.608393>,  <36.382236, 37.330887, 21.555269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313839, 37.721397, 21.608393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205827, -0.167215, 0.964196,
		0.963534, 0.137534, 0.229537,
		-0.170992, 0.976281, 0.132809,
		36.262543, 38.014282, 21.648235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878300, 37.542980, 22.068834>,  <36.382236, 37.330887, 21.555269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878300, 37.542980, 22.068834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.565041, 37.790840, 22.047993>,  <36.377087, 37.939556, 22.035488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.565041, 37.790840, 22.047993>,  <36.878300, 37.542980, 22.068834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565041, 37.790840, 22.047993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271851, -0.265810, 0.924901,
		0.559263, 0.738500, 0.376621,
		-0.783149, 0.619648, -0.052104,
		36.330097, 37.976734, 22.032362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520962, 37.336334, 22.384825>,  <36.878300, 37.542980, 22.068834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520962, 37.336334, 22.384825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.561726, 36.945831, 22.308357>,  <37.586185, 36.711529, 22.262478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.561726, 36.945831, 22.308357>,  <37.520962, 37.336334, 22.384825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561726, 36.945831, 22.308357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592785, 0.213918, -0.776431,
		0.798887, -0.034195, 0.600508,
		0.101909, -0.976253, -0.191167,
		37.592297, 36.652954, 22.251007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223248, 37.175365, 22.095089>,  <37.520962, 37.336334, 22.384825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223248, 37.175365, 22.095089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.940517, 36.921326, 21.970478>,  <37.770878, 36.768902, 21.895712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.940517, 36.921326, 21.970478>,  <38.223248, 37.175365, 22.095089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940517, 36.921326, 21.970478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336992, 0.084896, -0.937672,
		0.621960, -0.767753, 0.154016,
		-0.706825, -0.635097, -0.311528,
		37.728470, 36.730797, 21.877020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600811, 36.856476, 21.579762>,  <38.223248, 37.175365, 22.095089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600811, 36.856476, 21.579762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.221546, 36.748020, 21.513464>,  <37.993988, 36.682949, 21.473684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.221546, 36.748020, 21.513464>,  <38.600811, 36.856476, 21.579762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221546, 36.748020, 21.513464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217862, -0.174909, -0.960178,
		0.231348, -0.946516, 0.224913,
		-0.948164, -0.271135, -0.165745,
		37.937096, 36.666679, 21.463739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725468, 36.340332, 21.162901>,  <38.600811, 36.856476, 21.579762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725468, 36.340332, 21.162901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.341766, 36.438671, 21.107201>,  <38.111546, 36.497673, 21.073780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.341766, 36.438671, 21.107201>,  <38.725468, 36.340332, 21.162901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341766, 36.438671, 21.107201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110906, -0.125669, -0.985853,
		-0.259872, -0.961127, 0.093282,
		-0.959253, 0.245850, -0.139253,
		38.053989, 36.512424, 21.065424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443764, 35.717064, 20.641096>,  <38.725468, 36.340332, 21.162901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443764, 35.717064, 20.641096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.192001, 36.027042, 20.618088>,  <38.040943, 36.213032, 20.604282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.192001, 36.027042, 20.618088>,  <38.443764, 35.717064, 20.641096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192001, 36.027042, 20.618088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117973, -0.168458, -0.978624,
		-0.768073, -0.609161, 0.197451,
		-0.629402, 0.774948, -0.057523,
		38.003181, 36.259525, 20.600830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880390, 35.516632, 20.332075>,  <38.443764, 35.717064, 20.641096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880390, 35.516632, 20.332075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.800732, 35.902302, 20.261988>,  <37.752937, 36.133705, 20.219934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.800732, 35.902302, 20.261988>,  <37.880390, 35.516632, 20.332075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800732, 35.902302, 20.261988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264540, -0.225055, -0.937747,
		-0.943589, -0.140397, 0.299883,
		-0.199146, 0.964178, -0.175219,
		37.740986, 36.191555, 20.209421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248112, 35.604496, 19.937704>,  <37.880390, 35.516632, 20.332075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248112, 35.604496, 19.937704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.448875, 35.942188, 19.862482>,  <37.569332, 36.144802, 19.817348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.448875, 35.942188, 19.862482>,  <37.248112, 35.604496, 19.937704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448875, 35.942188, 19.862482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117700, -0.148733, -0.981848,
		-0.856875, 0.514932, 0.024715,
		0.501909, 0.844229, -0.188053,
		37.599449, 36.195457, 19.806067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778072, 36.057438, 19.493919>,  <37.248112, 35.604496, 19.937704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778072, 36.057438, 19.493919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.159065, 36.162758, 19.432663>,  <37.387661, 36.225952, 19.395908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.159065, 36.162758, 19.432663>,  <36.778072, 36.057438, 19.493919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159065, 36.162758, 19.432663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125202, -0.119906, -0.984859,
		-0.277680, 0.957232, -0.081242,
		0.952480, 0.263304, -0.153143,
		37.444809, 36.241749, 19.386721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719498, 36.548553, 18.948856>,  <36.778072, 36.057438, 19.493919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719498, 36.548553, 18.948856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.096558, 36.420750, 18.987471>,  <37.322796, 36.344067, 19.010639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.096558, 36.420750, 18.987471>,  <36.719498, 36.548553, 18.948856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096558, 36.420750, 18.987471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072192, -0.087202, -0.993571,
		0.325877, 0.943561, -0.059135,
		0.942652, -0.319513, 0.096535,
		37.379353, 36.324894, 19.016432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.662701, 34.883587, 34.630798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.024967, 35.015495, 34.737404>,  <35.242325, 35.094639, 34.801365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.024967, 35.015495, 34.737404>,  <34.662701, 34.883587, 34.630798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024967, 35.015495, 34.737404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277598, 0.013943, -0.960596,
		-0.320492, 0.943958, -0.078916,
		0.905662, 0.329770, 0.266510,
		35.296665, 35.114426, 34.817356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781048, 35.473518, 34.328739>,  <34.662701, 34.883587, 34.630798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781048, 35.473518, 34.328739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121143, 35.271965, 34.389656>,  <35.325199, 35.151031, 34.426205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121143, 35.271965, 34.389656>,  <34.781048, 35.473518, 34.328739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121143, 35.271965, 34.389656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212018, 0.063009, -0.975233,
		0.481811, 0.861469, 0.160405,
		0.850239, -0.503887, 0.152288,
		35.376217, 35.120800, 34.435341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406338, 35.860111, 34.024685>,  <34.781048, 35.473518, 34.328739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406338, 35.860111, 34.024685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492847, 35.470333, 34.048946>,  <35.544754, 35.236465, 34.063503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492847, 35.470333, 34.048946>,  <35.406338, 35.860111, 34.024685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492847, 35.470333, 34.048946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163441, -0.025111, -0.986233,
		0.962555, 0.223210, 0.153834,
		0.216275, -0.974447, 0.060652,
		35.557732, 35.177998, 34.067142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981476, 35.908619, 33.624443>,  <35.406338, 35.860111, 34.024685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981476, 35.908619, 33.624443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.876766, 35.523903, 33.656551>,  <35.813942, 35.293076, 33.675816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.876766, 35.523903, 33.656551>,  <35.981476, 35.908619, 33.624443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876766, 35.523903, 33.656551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365037, -0.175655, -0.914272,
		0.893433, -0.210032, 0.397069,
		-0.261773, -0.961786, 0.080266,
		35.798233, 35.235367, 33.680630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600418, 35.542488, 33.353065>,  <35.981476, 35.908619, 33.624443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600418, 35.542488, 33.353065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.278408, 35.306255, 33.330578>,  <36.085201, 35.164516, 33.317085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.278408, 35.306255, 33.330578>,  <36.600418, 35.542488, 33.353065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278408, 35.306255, 33.330578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237809, -0.234438, -0.942595,
		0.543496, -0.772177, 0.329172,
		-0.805021, -0.590577, -0.056215,
		36.036903, 35.129082, 33.313713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847763, 34.932682, 32.955330>,  <36.600418, 35.542488, 33.353065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847763, 34.932682, 32.955330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.450516, 34.939247, 32.908958>,  <36.212166, 34.943188, 32.881138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.450516, 34.939247, 32.908958>,  <36.847763, 34.932682, 32.955330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450516, 34.939247, 32.908958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107496, -0.264512, -0.958372,
		-0.046396, -0.964243, 0.260928,
		-0.993123, 0.016416, -0.115924,
		36.152580, 34.944172, 32.874180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833721, 34.736092, 32.338863>,  <36.847763, 34.932682, 32.955330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833721, 34.736092, 32.338863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437450, 34.764194, 32.385559>,  <36.199688, 34.781055, 32.413578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437450, 34.764194, 32.385559>,  <36.833721, 34.736092, 32.338863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437450, 34.764194, 32.385559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132729, -0.304091, -0.943351,
		-0.030775, -0.950049, 0.310580,
		-0.990674, 0.070254, 0.116741,
		36.140247, 34.785271, 32.420582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433868, 34.075413, 32.050961>,  <36.833721, 34.736092, 32.338863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433868, 34.075413, 32.050961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215717, 34.410683, 32.048973>,  <36.084827, 34.611847, 32.047783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215717, 34.410683, 32.048973>,  <36.433868, 34.075413, 32.050961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215717, 34.410683, 32.048973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165867, -0.113728, -0.979568,
		-0.821616, -0.533409, 0.201051,
		-0.545376, 0.838177, -0.004966,
		36.052105, 34.662136, 32.047482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942066, 33.983635, 31.614040>,  <36.433868, 34.075413, 32.050961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942066, 33.983635, 31.614040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942829, 34.381546, 31.654861>,  <35.943287, 34.620293, 31.679354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942829, 34.381546, 31.654861>,  <35.942066, 33.983635, 31.614040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942829, 34.381546, 31.654861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032538, 0.102059, -0.994246,
		-0.999469, -0.001424, 0.032563,
		0.001908, 0.994777, 0.102051,
		35.943401, 34.679977, 31.685476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423832, 34.192062, 31.287039>,  <35.942066, 33.983635, 31.614040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423832, 34.192062, 31.287039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.670700, 34.506683, 31.278620>,  <35.818821, 34.695454, 31.273569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.670700, 34.506683, 31.278620>,  <35.423832, 34.192062, 31.287039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670700, 34.506683, 31.278620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061974, 0.021929, -0.997837,
		-0.784385, 0.617140, 0.062280,
		0.617171, 0.786548, -0.021046,
		35.855850, 34.742649, 31.272306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112122, 34.705025, 30.792120>,  <35.423832, 34.192062, 31.287039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112122, 34.705025, 30.792120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.500381, 34.785908, 30.844200>,  <35.733337, 34.834438, 30.875448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.500381, 34.785908, 30.844200>,  <35.112122, 34.705025, 30.792120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500381, 34.785908, 30.844200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070136, 0.279850, -0.957478,
		-0.230047, 0.938507, 0.257454,
		0.970649, 0.202209, 0.130202,
		35.791576, 34.846569, 30.883261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257027, 35.428188, 30.491823>,  <35.112122, 34.705025, 30.792120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257027, 35.428188, 30.491823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.603821, 35.229664, 30.509762>,  <35.811897, 35.110550, 30.520525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.603821, 35.229664, 30.509762>,  <35.257027, 35.428188, 30.491823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603821, 35.229664, 30.509762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166726, 0.204079, -0.964653,
		0.469619, 0.843815, 0.259681,
		0.866984, -0.496315, 0.044847,
		35.863914, 35.080769, 30.523216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921680, 36.005512, 30.735455>,  <35.257027, 35.428188, 30.491823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921680, 36.005512, 30.735455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566845, 36.065762, 30.560919>,  <34.353943, 36.101913, 30.456198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566845, 36.065762, 30.560919>,  <34.921680, 36.005512, 30.735455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566845, 36.065762, 30.560919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453498, -0.107992, 0.884690,
		0.086137, 0.982674, 0.164107,
		-0.887085, 0.150627, -0.436339,
		34.300720, 36.110950, 30.430017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566898, 36.579407, 31.048101>,  <34.921680, 36.005512, 30.735455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566898, 36.579407, 31.048101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268017, 36.362919, 30.893818>,  <34.088688, 36.233028, 30.801249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268017, 36.362919, 30.893818>,  <34.566898, 36.579407, 31.048101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268017, 36.362919, 30.893818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364501, -0.151560, 0.918786,
		-0.555722, 0.827111, -0.084028,
		-0.747203, -0.541218, -0.385708,
		34.043858, 36.200554, 30.778105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833096, 36.818413, 31.308992>,  <34.566898, 36.579407, 31.048101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833096, 36.818413, 31.308992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784851, 36.446507, 31.169857>,  <33.755905, 36.223362, 31.086376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784851, 36.446507, 31.169857>,  <33.833096, 36.818413, 31.308992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784851, 36.446507, 31.169857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443599, -0.262987, 0.856771,
		-0.888073, 0.257634, -0.380725,
		-0.120608, -0.929765, -0.347838,
		33.748669, 36.167576, 31.065506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079815, 36.754295, 31.266258>,  <33.833096, 36.818413, 31.308992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079815, 36.754295, 31.266258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.277691, 36.408150, 31.298313>,  <33.396416, 36.200462, 31.317545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.277691, 36.408150, 31.298313>,  <33.079815, 36.754295, 31.266258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277691, 36.408150, 31.298313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524467, -0.223741, 0.821508,
		-0.692976, -0.448421, -0.564538,
		0.494691, -0.865366, 0.080135,
		33.426098, 36.148540, 31.322353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683681, 36.423241, 31.665522>,  <33.079815, 36.754295, 31.266258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683681, 36.423241, 31.665522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982254, 36.157101, 31.670479>,  <33.161396, 35.997417, 31.673454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982254, 36.157101, 31.670479>,  <32.683681, 36.423241, 31.665522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982254, 36.157101, 31.670479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263234, -0.278100, 0.923779,
		-0.611192, -0.692796, -0.382724,
		0.746426, -0.665353, 0.012395,
		33.206181, 35.957497, 31.674198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319874, 35.749329, 31.665777>,  <32.683681, 36.423241, 31.665522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319874, 35.749329, 31.665777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680164, 35.784897, 31.835852>,  <32.896339, 35.806240, 31.937897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680164, 35.784897, 31.835852>,  <32.319874, 35.749329, 31.665777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680164, 35.784897, 31.835852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386818, -0.281164, 0.878247,
		0.197644, -0.955531, -0.218855,
		0.900727, 0.088924, 0.425187,
		32.950382, 35.811573, 31.963408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400448, 35.164101, 32.122734>,  <32.319874, 35.749329, 31.665777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400448, 35.164101, 32.122734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.694641, 35.388245, 32.275078>,  <32.871159, 35.522732, 32.366486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.694641, 35.388245, 32.275078>,  <32.400448, 35.164101, 32.122734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694641, 35.388245, 32.275078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294364, -0.242025, 0.924540,
		0.610255, -0.792098, -0.013055,
		0.735485, 0.560362, 0.380862,
		32.915287, 35.556355, 32.389336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657742, 34.758625, 32.644592>,  <32.400448, 35.164101, 32.122734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657742, 34.758625, 32.644592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759773, 35.139183, 32.713623>,  <32.820992, 35.367519, 32.755043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759773, 35.139183, 32.713623>,  <32.657742, 34.758625, 32.644592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759773, 35.139183, 32.713623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234214, -0.112369, 0.965669,
		0.938124, -0.286746, 0.194166,
		0.255084, 0.951394, 0.172576,
		32.836300, 35.424603, 32.765396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102058, 34.777733, 33.345570>,  <32.657742, 34.758625, 32.644592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102058, 34.777733, 33.345570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974934, 35.152279, 33.285946>,  <32.898659, 35.377007, 33.250172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974934, 35.152279, 33.285946>,  <33.102058, 34.777733, 33.345570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974934, 35.152279, 33.285946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208522, 0.084339, 0.974374,
		0.924941, 0.340746, 0.168449,
		-0.317808, 0.936365, -0.149062,
		32.879593, 35.433189, 33.241226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234657, 35.109833, 33.989182>,  <33.102058, 34.777733, 33.345570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234657, 35.109833, 33.989182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996037, 35.379860, 33.815556>,  <32.852863, 35.541878, 33.711380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996037, 35.379860, 33.815556>,  <33.234657, 35.109833, 33.989182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996037, 35.379860, 33.815556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407156, 0.211515, 0.888530,
		0.691628, 0.706785, 0.148678,
		-0.596552, 0.675067, -0.434062,
		32.817070, 35.582378, 33.685337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297295, 35.708092, 34.389439>,  <33.234657, 35.109833, 33.989182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297295, 35.708092, 34.389439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.950554, 35.742188, 34.192947>,  <32.742512, 35.762646, 34.075054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.950554, 35.742188, 34.192947>,  <33.297295, 35.708092, 34.389439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950554, 35.742188, 34.192947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447432, 0.301658, 0.841907,
		0.219944, 0.949598, -0.223355,
		-0.866850, 0.085236, -0.491229,
		32.690498, 35.767757, 34.045578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082985, 36.433670, 34.474953>,  <33.297295, 35.708092, 34.389439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082985, 36.433670, 34.474953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.764744, 36.214924, 34.370686>,  <32.573799, 36.083675, 34.308125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.764744, 36.214924, 34.370686>,  <33.082985, 36.433670, 34.474953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764744, 36.214924, 34.370686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527541, 0.413851, 0.741908,
		-0.297844, 0.727782, -0.617756,
		-0.795607, -0.546864, -0.260672,
		32.526062, 36.050865, 34.292484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548603, 36.947029, 34.374416>,  <33.082985, 36.433670, 34.474953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548603, 36.947029, 34.374416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.379807, 36.594074, 34.457664>,  <32.278530, 36.382301, 34.507614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.379807, 36.594074, 34.457664>,  <32.548603, 36.947029, 34.374416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379807, 36.594074, 34.457664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465079, 0.407748, 0.785775,
		-0.778220, 0.234797, -0.582446,
		-0.421989, -0.882390, 0.208118,
		32.253208, 36.329357, 34.520100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872644, 37.116444, 34.572285>,  <32.548603, 36.947029, 34.374416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872644, 37.116444, 34.572285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.887461, 36.750256, 34.732559>,  <31.896351, 36.530544, 34.828724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.887461, 36.750256, 34.732559>,  <31.872644, 37.116444, 34.572285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887461, 36.750256, 34.732559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628109, 0.290530, 0.721853,
		-0.777243, -0.278410, -0.564252,
		0.037039, -0.915467, 0.400685,
		31.898573, 36.475616, 34.852764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963991, 37.307491, 33.845600>,  <31.872644, 37.116444, 34.572285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963991, 37.307491, 33.845600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.925013, 37.659428, 34.031670>,  <31.901625, 37.870590, 34.143311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.925013, 37.659428, 34.031670>,  <31.963991, 37.307491, 33.845600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925013, 37.659428, 34.031670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479908, 0.451011, -0.752514,
		-0.871890, 0.149912, -0.466191,
		-0.097446, 0.879838, 0.465176,
		31.895779, 37.923378, 34.171223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479342, 37.756916, 33.571053>,  <31.963991, 37.307491, 33.845600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479342, 37.756916, 33.571053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.788250, 37.960678, 33.722897>,  <31.973595, 38.082935, 33.814003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.788250, 37.960678, 33.722897>,  <31.479342, 37.756916, 33.571053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788250, 37.960678, 33.722897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260323, 0.291323, -0.920523,
		-0.579506, 0.809716, 0.092371,
		0.772272, 0.509402, 0.379612,
		32.019932, 38.113499, 33.836781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393393, 38.431667, 33.424763>,  <31.479342, 37.756916, 33.571053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393393, 38.431667, 33.424763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.782600, 38.340065, 33.436012>,  <32.016125, 38.285103, 33.442760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.782600, 38.340065, 33.436012>,  <31.393393, 38.431667, 33.424763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782600, 38.340065, 33.436012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057078, 0.120814, -0.991033,
		0.223550, 0.965900, 0.130625,
		0.973020, -0.229001, 0.028124,
		32.074505, 38.271366, 33.444450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778866, 39.037285, 33.140347>,  <31.393393, 38.431667, 33.424763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778866, 39.037285, 33.140347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.979443, 38.693573, 33.099953>,  <32.099789, 38.487347, 33.075714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.979443, 38.693573, 33.099953>,  <31.778866, 39.037285, 33.140347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979443, 38.693573, 33.099953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124947, 0.187419, -0.974301,
		0.856122, 0.475937, 0.201343,
		0.501441, -0.859278, -0.100987,
		32.129875, 38.435791, 33.069656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333370, 39.310902, 32.895603>,  <31.778866, 39.037285, 33.140347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333370, 39.310902, 32.895603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366264, 38.920986, 32.812637>,  <32.386002, 38.687038, 32.762856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366264, 38.920986, 32.812637>,  <32.333370, 39.310902, 32.895603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366264, 38.920986, 32.812637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378106, 0.223079, -0.898483,
		0.922103, -0.004541, 0.386918,
		0.082233, -0.974790, -0.207419,
		32.390934, 38.628548, 32.750412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955040, 39.149414, 32.486446>,  <32.333370, 39.310902, 32.895603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955040, 39.149414, 32.486446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.740139, 38.819458, 32.416111>,  <32.611198, 38.621487, 32.373909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.740139, 38.819458, 32.416111>,  <32.955040, 39.149414, 32.486446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740139, 38.819458, 32.416111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318720, -0.005537, -0.947833,
		0.780881, -0.565271, 0.265882,
		-0.537255, -0.824887, -0.175839,
		32.578964, 38.571991, 32.363358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469707, 38.754612, 32.124027>,  <32.955040, 39.149414, 32.486446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469707, 38.754612, 32.124027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.117767, 38.600216, 32.013130>,  <32.906601, 38.507576, 31.946592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.117767, 38.600216, 32.013130>,  <33.469707, 38.754612, 32.124027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117767, 38.600216, 32.013130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338215, -0.098747, -0.935874,
		0.333865, -0.917201, 0.217432,
		-0.879855, -0.385994, -0.277244,
		32.853809, 38.484417, 31.929956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602207, 38.162037, 31.887077>,  <33.469707, 38.754612, 32.124027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602207, 38.162037, 31.887077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.271217, 38.301769, 31.711239>,  <33.072624, 38.385609, 31.605736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.271217, 38.301769, 31.711239>,  <33.602207, 38.162037, 31.887077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271217, 38.301769, 31.711239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432624, -0.102418, -0.895738,
		-0.357935, -0.931384, -0.066382,
		-0.827478, 0.349334, -0.439598,
		33.022972, 38.406570, 31.579359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612385, 37.849937, 31.284370>,  <33.602207, 38.162037, 31.887077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612385, 37.849937, 31.284370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332695, 38.122646, 31.198326>,  <33.164879, 38.286270, 31.146700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332695, 38.122646, 31.198326>,  <33.612385, 37.849937, 31.284370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332695, 38.122646, 31.198326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355476, 0.070511, -0.932022,
		-0.620256, -0.728162, -0.291655,
		-0.699228, 0.681768, -0.215110,
		33.122925, 38.327175, 31.133793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293438, 37.692596, 30.566792>,  <33.612385, 37.849937, 31.284370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293438, 37.692596, 30.566792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.193344, 38.075802, 30.622780>,  <33.133289, 38.305725, 30.656372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.193344, 38.075802, 30.622780>,  <33.293438, 37.692596, 30.566792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193344, 38.075802, 30.622780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267430, 0.207337, -0.941006,
		-0.930518, -0.198040, -0.308085,
		-0.250235, 0.958014, 0.139969,
		33.118275, 38.363205, 30.664770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847710, 37.927822, 29.945887>,  <33.293438, 37.692596, 30.566792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847710, 37.927822, 29.945887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.022194, 38.239883, 30.125256>,  <33.126884, 38.427120, 30.232876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.022194, 38.239883, 30.125256>,  <32.847710, 37.927822, 29.945887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022194, 38.239883, 30.125256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219519, 0.391015, -0.893822,
		-0.872658, 0.488332, -0.000693,
		0.436211, 0.780153, 0.448421,
		33.153057, 38.473930, 30.259783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563148, 38.512028, 29.579231>,  <32.847710, 37.927822, 29.945887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563148, 38.512028, 29.579231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904671, 38.630783, 29.750288>,  <33.109585, 38.702038, 29.852922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904671, 38.630783, 29.750288>,  <32.563148, 38.512028, 29.579231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904671, 38.630783, 29.750288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228113, 0.525034, -0.819941,
		-0.467956, 0.797620, 0.380552,
		0.853804, 0.296887, 0.427640,
		33.160812, 38.719849, 29.878580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578201, 39.215279, 29.339622>,  <32.563148, 38.512028, 29.579231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578201, 39.215279, 29.339622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952805, 39.101189, 29.421207>,  <33.177567, 39.032734, 29.470158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952805, 39.101189, 29.421207>,  <32.578201, 39.215279, 29.339622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952805, 39.101189, 29.421207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304584, 0.373514, -0.876194,
		0.173726, 0.882687, 0.436672,
		0.936508, -0.285221, 0.203963,
		33.233757, 39.015621, 29.482397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967896, 39.837872, 29.069561>,  <32.578201, 39.215279, 29.339622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967896, 39.837872, 29.069561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.240795, 39.550713, 29.124928>,  <33.404533, 39.378418, 29.158148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.240795, 39.550713, 29.124928>,  <32.967896, 39.837872, 29.069561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240795, 39.550713, 29.124928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584285, 0.421567, -0.693464,
		0.439484, 0.553991, 0.707070,
		0.682250, -0.717897, 0.138417,
		33.445469, 39.335342, 29.166452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625065, 40.202900, 29.112881>,  <32.967896, 39.837872, 29.069561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625065, 40.202900, 29.112881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727585, 39.822975, 29.041132>,  <33.789097, 39.595020, 28.998083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727585, 39.822975, 29.041132>,  <33.625065, 40.202900, 29.112881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727585, 39.822975, 29.041132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750403, 0.312484, -0.582451,
		0.609268, 0.014681, 0.792829,
		0.256297, -0.949809, -0.179370,
		33.804474, 39.538033, 28.987322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455891, 40.078499, 29.315365>,  <33.625065, 40.202900, 29.112881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455891, 40.078499, 29.315365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.309315, 39.830738, 29.037642>,  <34.221371, 39.682083, 28.871006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.309315, 39.830738, 29.037642>,  <34.455891, 40.078499, 29.315365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309315, 39.830738, 29.037642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590490, 0.421874, -0.688000,
		0.719059, -0.662091, 0.211160,
		-0.366436, -0.619401, -0.694311,
		34.199383, 39.644917, 28.829348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004833, 40.031754, 28.821814>,  <34.455891, 40.078499, 29.315365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004833, 40.031754, 28.821814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754993, 39.821724, 28.590584>,  <34.605091, 39.695705, 28.451845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754993, 39.821724, 28.590584>,  <35.004833, 40.031754, 28.821814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754993, 39.821724, 28.590584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560598, 0.213881, -0.799990,
		0.543694, -0.823742, 0.160766,
		-0.624601, -0.525075, -0.578075,
		34.567612, 39.664200, 28.417162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418350, 39.479462, 28.396305>,  <35.004833, 40.031754, 28.821814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418350, 39.479462, 28.396305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.064808, 39.533867, 28.217287>,  <34.852684, 39.566509, 28.109877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.064808, 39.533867, 28.217287>,  <35.418350, 39.479462, 28.396305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064808, 39.533867, 28.217287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464298, 0.138964, -0.874709,
		-0.056784, -0.980912, -0.185978,
		-0.883857, 0.136019, -0.447545,
		34.799652, 39.574673, 28.083023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288136, 39.008888, 27.774836>,  <35.418350, 39.479462, 28.396305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288136, 39.008888, 27.774836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.036026, 39.308014, 27.691376>,  <34.884762, 39.487488, 27.641300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.036026, 39.308014, 27.691376>,  <35.288136, 39.008888, 27.774836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036026, 39.308014, 27.691376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309425, -0.004527, -0.950913,
		-0.712047, -0.663898, -0.228538,
		-0.630275, 0.747810, -0.208650,
		34.846943, 39.532356, 27.628780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156021, 38.854008, 27.153204>,  <35.288136, 39.008888, 27.774836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156021, 38.854008, 27.153204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086914, 39.246056, 27.192232>,  <35.045448, 39.481285, 27.215649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086914, 39.246056, 27.192232>,  <35.156021, 38.854008, 27.153204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086914, 39.246056, 27.192232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420187, 0.162934, -0.892690,
		-0.890839, -0.113230, -0.439983,
		-0.172768, 0.980118, 0.097570,
		35.035084, 39.540092, 27.221502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809128, 39.112598, 26.525522>,  <35.156021, 38.854008, 27.153204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809128, 39.112598, 26.525522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.915531, 39.454834, 26.703154>,  <34.979374, 39.660175, 26.809732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.915531, 39.454834, 26.703154>,  <34.809128, 39.112598, 26.525522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915531, 39.454834, 26.703154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278383, 0.372866, -0.885140,
		-0.922898, 0.359081, -0.138995,
		0.266011, 0.855588, 0.444080,
		34.995335, 39.711510, 26.836378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519569, 39.600830, 26.128754>,  <34.809128, 39.112598, 26.525522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519569, 39.600830, 26.128754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.852402, 39.754898, 26.288395>,  <35.052101, 39.847340, 26.384180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.852402, 39.754898, 26.288395>,  <34.519569, 39.600830, 26.128754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852402, 39.754898, 26.288395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276925, 0.334955, -0.900621,
		-0.480573, 0.859912, 0.172047,
		0.832083, 0.385170, 0.399101,
		35.102028, 39.870449, 26.408125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591949, 40.141029, 25.719427>,  <34.519569, 39.600830, 26.128754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591949, 40.141029, 25.719427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.933445, 40.147797, 25.927599>,  <35.138340, 40.151855, 26.052502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.933445, 40.147797, 25.927599>,  <34.591949, 40.141029, 25.719427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933445, 40.147797, 25.927599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446194, 0.491438, -0.747931,
		-0.268414, 0.870748, 0.412009,
		0.853736, 0.016919, 0.520431,
		35.189568, 40.152874, 26.083729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863609, 40.935570, 25.802496>,  <34.591949, 40.141029, 25.719427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863609, 40.935570, 25.802496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162487, 40.670891, 25.827307>,  <35.341816, 40.512081, 25.842194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162487, 40.670891, 25.827307>,  <34.863609, 40.935570, 25.802496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162487, 40.670891, 25.827307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449173, 0.434002, -0.780951,
		0.489837, 0.611386, 0.621504,
		0.747197, -0.661702, 0.062027,
		35.386646, 40.472382, 25.845915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356010, 41.284405, 25.380367>,  <34.863609, 40.935570, 25.802496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356010, 41.284405, 25.380367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518883, 40.921272, 25.420454>,  <35.616608, 40.703392, 25.444506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518883, 40.921272, 25.420454>,  <35.356010, 41.284405, 25.380367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518883, 40.921272, 25.420454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547062, 0.154548, -0.822701,
		0.731386, 0.389814, 0.559570,
		0.407181, -0.907832, 0.100218,
		35.641037, 40.648922, 25.450520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046513, 41.365345, 25.300928>,  <35.356010, 41.284405, 25.380367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046513, 41.365345, 25.300928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961369, 40.985580, 25.208578>,  <35.910282, 40.757721, 25.153168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961369, 40.985580, 25.208578>,  <36.046513, 41.365345, 25.300928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961369, 40.985580, 25.208578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531735, 0.085676, -0.842566,
		0.819726, -0.302110, 0.486600,
		-0.212857, -0.949415, -0.230873,
		35.897511, 40.700756, 25.139317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656422, 41.144413, 25.104921>,  <36.046513, 41.365345, 25.300928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656422, 41.144413, 25.104921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.389336, 40.888111, 24.953348>,  <36.229084, 40.734329, 24.862404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.389336, 40.888111, 24.953348>,  <36.656422, 41.144413, 25.104921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389336, 40.888111, 24.953348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434779, 0.077515, -0.897195,
		0.604256, -0.763821, 0.226829,
		-0.667714, -0.640756, -0.378932,
		36.189022, 40.695885, 24.839668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994587, 40.582901, 24.696663>,  <36.656422, 41.144413, 25.104921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994587, 40.582901, 24.696663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.623596, 40.571499, 24.547550>,  <36.401001, 40.564659, 24.458082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.623596, 40.571499, 24.547550>,  <36.994587, 40.582901, 24.696663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623596, 40.571499, 24.547550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356277, 0.234879, -0.904377,
		0.113335, -0.971607, -0.207692,
		-0.927482, -0.028501, -0.372781,
		36.345352, 40.562950, 24.435717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667522, 40.297901, 24.768711>,  <36.994587, 40.582901, 24.696663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667522, 40.297901, 24.768711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.990509, 40.532307, 24.741642>,  <38.184303, 40.672951, 24.725401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.990509, 40.532307, 24.741642>,  <37.667522, 40.297901, 24.768711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990509, 40.532307, 24.741642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099605, 0.248507, 0.963495,
		0.581441, -0.771252, 0.259031,
		0.807468, 0.586016, -0.067672,
		38.232750, 40.708111, 24.721340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081284, 40.041100, 25.356197>,  <37.667522, 40.297901, 24.768711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081284, 40.041100, 25.356197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.182575, 40.409370, 25.237385>,  <38.243351, 40.630333, 25.166098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.182575, 40.409370, 25.237385>,  <38.081284, 40.041100, 25.356197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182575, 40.409370, 25.237385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022727, 0.301292, 0.953261,
		0.967140, -0.248142, 0.055371,
		0.253227, 0.920678, -0.297031,
		38.258545, 40.685574, 25.148275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815544, 40.078434, 25.539104>,  <38.081284, 40.041100, 25.356197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815544, 40.078434, 25.539104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.618874, 40.426029, 25.516754>,  <38.500870, 40.634586, 25.503344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.618874, 40.426029, 25.516754>,  <38.815544, 40.078434, 25.539104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618874, 40.426029, 25.516754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070616, 0.024164, 0.997211,
		0.867910, 0.494251, 0.049483,
		-0.491677, 0.868983, -0.055875,
		38.471371, 40.686726, 25.499992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028633, 40.340160, 26.108158>,  <38.815544, 40.078434, 25.539104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028633, 40.340160, 26.108158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.707764, 40.558960, 26.012407>,  <38.515240, 40.690239, 25.954958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.707764, 40.558960, 26.012407>,  <39.028633, 40.340160, 26.108158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707764, 40.558960, 26.012407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220297, 0.101482, 0.970140,
		0.554961, 0.830957, 0.039097,
		-0.802177, 0.547002, -0.239376,
		38.467110, 40.723061, 25.940594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975136, 40.798630, 26.633913>,  <39.028633, 40.340160, 26.108158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975136, 40.798630, 26.633913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.608852, 40.855301, 26.483500>,  <38.389080, 40.889305, 26.393251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.608852, 40.855301, 26.483500>,  <38.975136, 40.798630, 26.633913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608852, 40.855301, 26.483500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359689, 0.128218, 0.924221,
		0.179159, 0.981574, -0.066450,
		-0.915711, 0.141681, -0.376033,
		38.334141, 40.897804, 26.370689>
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
