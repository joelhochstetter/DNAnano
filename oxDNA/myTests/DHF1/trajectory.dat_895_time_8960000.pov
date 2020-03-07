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
	<3.557805, 5.122033, 3.452199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.591240, 4.775318, 3.255549>,  <3.611301, 4.567289, 3.137560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.591240, 4.775318, 3.255549>,  <3.557805, 5.122033, 3.452199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.591240, 4.775318, 3.255549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762270, 0.262146, -0.591797,
		0.641839, 0.424216, -0.638814,
		0.083587, -0.866787, -0.491623,
		3.616316, 4.515282, 3.108063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.689234, 5.327981, 2.711225>,  <3.557805, 5.122033, 3.452199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.689234, 5.327981, 2.711225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.451057, 5.039303, 2.852423>,  <3.308151, 4.866096, 2.937142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.451057, 5.039303, 2.852423>,  <3.689234, 5.327981, 2.711225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.451057, 5.039303, 2.852423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628770, 0.145120, -0.763929,
		0.500097, -0.676828, -0.540191,
		-0.595442, -0.721695, 0.352995,
		3.272425, 4.822794, 2.958321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.619026, 4.678761, 2.277679>,  <3.689234, 5.327981, 2.711225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.619026, 4.678761, 2.277679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.307861, 4.818413, 2.486662>,  <3.121162, 4.902204, 2.612052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.307861, 4.818413, 2.486662>,  <3.619026, 4.678761, 2.277679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.307861, 4.818413, 2.486662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499999, 0.159681, -0.851178,
		-0.380598, -0.923369, 0.050346,
		-0.777912, 0.349129, 0.522457,
		3.074488, 4.923151, 2.643399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.095229, 4.525058, 1.821317>,  <3.619026, 4.678761, 2.277679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.095229, 4.525058, 1.821317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.929405, 4.769413, 2.091119>,  <2.829911, 4.916026, 2.253000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.929405, 4.769413, 2.091119>,  <3.095229, 4.525058, 1.821317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.929405, 4.769413, 2.091119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778087, 0.146437, -0.610850,
		-0.471933, -0.778056, 0.414617,
		-0.414560, 0.610889, 0.674504,
		2.805037, 4.952680, 2.293470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.442216, 4.347058, 1.774093>,  <3.095229, 4.525058, 1.821317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.442216, 4.347058, 1.774093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.415291, 4.708199, 1.943954>,  <2.399136, 4.924883, 2.045870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.415291, 4.708199, 1.943954>,  <2.442216, 4.347058, 1.774093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.415291, 4.708199, 1.943954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815570, 0.195380, -0.544677,
		-0.574730, -0.382997, 0.723186,
		-0.067313, 0.902851, 0.424651,
		2.395097, 4.979054, 2.071349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.692332, 4.438140, 1.860065>,  <2.442216, 4.347058, 1.774093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.692332, 4.438140, 1.860065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.857780, 4.802132, 1.871774>,  <1.957049, 5.020526, 1.878799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.857780, 4.802132, 1.871774>,  <1.692332, 4.438140, 1.860065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.857780, 4.802132, 1.871774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668075, 0.325196, -0.669271,
		-0.618542, 0.257268, 0.742441,
		0.413621, 0.909979, 0.029273,
		1.981867, 5.075125, 1.880556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.096150, 4.883678, 1.840254>,  <1.692332, 4.438140, 1.860065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.096150, 4.883678, 1.840254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.406181, 5.114635, 1.737593>,  <1.592200, 5.253210, 1.675996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.406181, 5.114635, 1.737593>,  <1.096150, 4.883678, 1.840254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.406181, 5.114635, 1.737593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554827, 0.427542, -0.713705,
		-0.302359, 0.695575, 0.651732,
		0.775078, 0.577394, -0.256653,
		1.638705, 5.287854, 1.660597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.825892, 5.521361, 1.758510>,  <1.096150, 4.883678, 1.840254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.825892, 5.521361, 1.758510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.175240, 5.553345, 1.566329>,  <1.384848, 5.572535, 1.451021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.175240, 5.553345, 1.566329>,  <0.825892, 5.521361, 1.758510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.175240, 5.553345, 1.566329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413078, 0.644240, -0.643678,
		0.258058, 0.760632, 0.595689,
		0.873369, 0.079960, -0.480452,
		1.437250, 5.577332, 1.422193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.906278, 0.751706, 0.544084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.225174, 0.791008, 0.305840>,  <1.416512, 0.814589, 0.162893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.225174, 0.791008, 0.305840>,  <0.906278, 0.751706, 0.544084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.225174, 0.791008, 0.305840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593171, -0.310650, 0.742727,
		-0.112051, -0.945433, -0.305944,
		0.797240, 0.098254, -0.595612,
		1.464346, 0.820484, 0.127156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.267953, 0.035432, 0.571249>,  <0.906278, 0.751706, 0.544084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.267953, 0.035432, 0.571249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.472992, 0.369625, 0.492039>,  <1.596015, 0.570141, 0.444512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.472992, 0.369625, 0.492039>,  <1.267953, 0.035432, 0.571249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.472992, 0.369625, 0.492039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557494, -0.148443, 0.816801,
		0.653027, -0.529089, -0.541868,
		0.512597, 0.835482, -0.198027,
		1.626771, 0.620270, 0.432631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.992683, -0.064334, 0.730240>,  <1.267953, 0.035432, 0.571249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.992683, -0.064334, 0.730240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.934029, 0.330467, 0.756540>,  <1.898836, 0.567348, 0.772320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.934029, 0.330467, 0.756540>,  <1.992683, -0.064334, 0.730240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.934029, 0.330467, 0.756540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361183, -0.008457, 0.932457,
		0.920893, 0.160480, -0.355248,
		-0.146636, 0.987003, 0.065750,
		1.890038, 0.626568, 0.776265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.585906, 0.434990, 0.882633>,  <1.992683, -0.064334, 0.730240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.585906, 0.434990, 0.882633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.245766, 0.574184, 1.040524>,  <2.041682, 0.657701, 1.135258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.245766, 0.574184, 1.040524>,  <2.585906, 0.434990, 0.882633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.245766, 0.574184, 1.040524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426424, 0.016169, 0.904379,
		0.308329, 0.937360, -0.162139,
		-0.850350, 0.347987, 0.394727,
		1.990661, 0.678580, 1.158942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.664039, 1.001040, 1.369833>,  <2.585906, 0.434990, 0.882633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.664039, 1.001040, 1.369833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.337715, 0.790337, 1.465317>,  <2.141921, 0.663915, 1.522607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.337715, 0.790337, 1.465317>,  <2.664039, 1.001040, 1.369833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.337715, 0.790337, 1.465317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375531, -0.168607, 0.911344,
		-0.439809, 0.833125, 0.335365,
		-0.815809, -0.526758, 0.238709,
		2.092973, 0.632309, 1.536929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.458094, 1.330801, 1.971860>,  <2.664039, 1.001040, 1.369833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.458094, 1.330801, 1.971860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.324814, 0.954243, 1.950874>,  <2.244846, 0.728308, 1.938283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.324814, 0.954243, 1.950874>,  <2.458094, 1.330801, 1.971860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.324814, 0.954243, 1.950874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477193, -0.216368, 0.851746,
		-0.813181, 0.258766, 0.521321,
		-0.333200, -0.941395, -0.052465,
		2.224854, 0.671824, 1.935135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.187098, 1.134028, 2.646982>,  <2.458094, 1.330801, 1.971860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.187098, 1.134028, 2.646982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.259491, 0.783993, 2.467442>,  <2.302927, 0.573972, 2.359717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.259491, 0.783993, 2.467442>,  <2.187098, 1.134028, 2.646982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.259491, 0.783993, 2.467442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550164, -0.288215, 0.783742,
		-0.815208, -0.388786, 0.429280,
		0.180983, -0.875087, -0.448852,
		2.313786, 0.521467, 2.332786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.318114, 0.696423, 3.158545>,  <2.187098, 1.134028, 2.646982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.318114, 0.696423, 3.158545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.508736, 0.506699, 2.862457>,  <2.623109, 0.392864, 2.684805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.508736, 0.506699, 2.862457>,  <2.318114, 0.696423, 3.158545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.508736, 0.506699, 2.862457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762326, -0.196442, 0.616660,
		-0.437900, -0.858160, 0.267965,
		0.476554, -0.474312, -0.740219,
		2.651702, 0.364405, 2.640391>
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
