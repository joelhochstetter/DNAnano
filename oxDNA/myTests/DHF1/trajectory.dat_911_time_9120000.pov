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
	<2.353419, 0.055420, -0.367306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.041595, 0.200611, -0.163136>,  <1.854501, 0.287726, -0.040633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.041595, 0.200611, -0.163136>,  <2.353419, 0.055420, -0.367306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.041595, 0.200611, -0.163136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625972, 0.424029, 0.654491,
		0.021132, 0.829727, -0.557770,
		-0.779559, 0.362979, 0.510425,
		1.807728, 0.309505, -0.010008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.643514, 0.376379, 0.226765>,  <2.353419, 0.055420, -0.367306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.643514, 0.376379, 0.226765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.269913, 0.464390, 0.339355>,  <2.045752, 0.517196, 0.406910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.269913, 0.464390, 0.339355>,  <2.643514, 0.376379, 0.226765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.269913, 0.464390, 0.339355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349575, 0.400224, 0.847124,
		0.073736, 0.889612, -0.450725,
		-0.934002, 0.220026, 0.281475,
		1.989712, 0.530398, 0.423798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.641307, 1.110049, 0.533263>,  <2.643514, 0.376379, 0.226765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.641307, 1.110049, 0.533263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.334908, 0.893215, 0.671474>,  <2.151068, 0.763115, 0.754402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.334908, 0.893215, 0.671474>,  <2.641307, 1.110049, 0.533263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.334908, 0.893215, 0.671474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137106, 0.387369, 0.911673,
		-0.628052, 0.745713, -0.222401,
		-0.765998, -0.542086, 0.345530,
		2.105108, 0.730589, 0.775133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.471215, 1.456208, 1.149525>,  <2.641307, 1.110049, 0.533263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.471215, 1.456208, 1.149525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.213196, 1.150616, 1.155800>,  <2.058384, 0.967260, 1.159565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.213196, 1.150616, 1.155800>,  <2.471215, 1.456208, 1.149525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.213196, 1.150616, 1.155800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159576, 0.154754, 0.974980,
		-0.747295, 0.626405, -0.221737,
		-0.645047, -0.763982, 0.015688,
		2.019682, 0.921421, 1.160506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.906091, 1.661231, 1.389462>,  <2.471215, 1.456208, 1.149525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.906091, 1.661231, 1.389462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.850121, 1.273575, 1.470642>,  <1.816538, 1.040981, 1.519350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.850121, 1.273575, 1.470642>,  <1.906091, 1.661231, 1.389462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.850121, 1.273575, 1.470642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229067, 0.231090, 0.945582,
		-0.963301, 0.085822, -0.254333,
		-0.139926, -0.969140, 0.202951,
		1.808143, 0.982833, 1.531527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.326344, 1.586033, 1.817451>,  <1.906091, 1.661231, 1.389462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.326344, 1.586033, 1.817451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.537743, 1.251648, 1.876591>,  <1.664582, 1.051017, 1.912075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.537743, 1.251648, 1.876591>,  <1.326344, 1.586033, 1.817451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.537743, 1.251648, 1.876591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201760, 0.045485, 0.978378,
		-0.824612, -0.546899, -0.144625,
		0.528496, -0.835962, 0.147850,
		1.696292, 1.000859, 1.920946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.940011, 1.172938, 2.300069>,  <1.326344, 1.586033, 1.817451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.940011, 1.172938, 2.300069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.295746, 0.990948, 2.318295>,  <1.509187, 0.881753, 2.329230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.295746, 0.990948, 2.318295>,  <0.940011, 1.172938, 2.300069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.295746, 0.990948, 2.318295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123414, -0.142893, 0.982014,
		-0.440283, -0.878964, -0.183230,
		0.889337, -0.454977, 0.045563,
		1.562547, 0.854455, 2.331964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.889619, 0.384336, 2.450128>,  <0.940011, 1.172938, 2.300069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.889619, 0.384336, 2.450128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.219856, 0.567245, 2.582367>,  <1.417999, 0.676991, 2.661710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.219856, 0.567245, 2.582367>,  <0.889619, 0.384336, 2.450128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.219856, 0.567245, 2.582367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224490, -0.271346, 0.935936,
		0.517686, -0.846918, -0.121368,
		0.825594, 0.457275, 0.330597,
		1.467535, 0.704428, 2.681546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.587275, 1.223233, 4.216691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.918121, 1.047070, 4.077023>,  <2.116629, 0.941372, 3.993222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.918121, 1.047070, 4.077023>,  <1.587275, 1.223233, 4.216691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.918121, 1.047070, 4.077023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435634, -0.109837, -0.893397,
		0.355107, 0.891054, -0.282705,
		0.827117, -0.440407, -0.349170,
		2.166256, 0.914947, 3.972272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.834027, 1.610174, 3.545046>,  <1.587275, 1.223233, 4.216691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.834027, 1.610174, 3.545046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.915070, 1.218685, 3.558029>,  <1.963695, 0.983792, 3.565819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.915070, 1.218685, 3.558029>,  <1.834027, 1.610174, 3.545046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.915070, 1.218685, 3.558029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058950, -0.045276, -0.997234,
		0.977484, 0.200132, -0.066869,
		0.202606, -0.978722, 0.032459,
		1.975851, 0.925068, 3.567767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.360151, 1.508785, 3.191151>,  <1.834027, 1.610174, 3.545046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.360151, 1.508785, 3.191151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.173630, 1.154976, 3.196556>,  <2.061717, 0.942691, 3.199799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.173630, 1.154976, 3.196556>,  <2.360151, 1.508785, 3.191151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.173630, 1.154976, 3.196556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094482, 0.034611, -0.994925,
		0.879565, -0.465213, -0.099711,
		-0.466303, -0.884522, 0.013512,
		2.033739, 0.889619, 3.200610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.768673, 1.086353, 2.734394>,  <2.360151, 1.508785, 3.191151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.768673, 1.086353, 2.734394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.391525, 0.954773, 2.755524>,  <2.165237, 0.875825, 2.768201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.391525, 0.954773, 2.755524>,  <2.768673, 1.086353, 2.734394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.391525, 0.954773, 2.755524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063969, 0.023145, -0.997683,
		0.326966, -0.944063, -0.042866,
		-0.942868, -0.328951, 0.052823,
		2.108665, 0.856088, 2.771371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.787020, 0.483116, 2.388748>,  <2.768673, 1.086353, 2.734394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.787020, 0.483116, 2.388748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.407837, 0.610386, 2.393517>,  <2.180327, 0.686748, 2.396378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.407837, 0.610386, 2.393517>,  <2.787020, 0.483116, 2.388748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.407837, 0.610386, 2.393517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099202, -0.259562, -0.960618,
		-0.302551, -0.911807, 0.277617,
		-0.947957, 0.318176, 0.011922,
		2.123450, 0.705839, 2.397093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.362316, -0.099060, 2.133474>,  <2.787020, 0.483116, 2.388748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.362316, -0.099060, 2.133474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.165283, 0.241039, 2.059242>,  <2.047064, 0.445099, 2.014703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.165283, 0.241039, 2.059242>,  <2.362316, -0.099060, 2.133474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.165283, 0.241039, 2.059242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198681, -0.317482, -0.927217,
		-0.847283, -0.419859, 0.325314,
		-0.492582, 0.850249, -0.185579,
		2.017509, 0.496114, 2.003568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.870841, -0.288509, 1.798639>,  <2.362316, -0.099060, 2.133474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.870841, -0.288509, 1.798639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.858963, 0.101322, 1.709812>,  <1.851836, 0.335221, 1.656516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.858963, 0.101322, 1.709812>,  <1.870841, -0.288509, 1.798639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.858963, 0.101322, 1.709812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030691, -0.221172, -0.974752,
		-0.999088, -0.035761, -0.023343,
		-0.029695, 0.974579, -0.222068,
		1.850054, 0.393696, 1.643192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.275253, -0.125723, 1.444533>,  <1.870841, -0.288509, 1.798639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.275253, -0.125723, 1.444533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.516556, 0.176502, 1.342392>,  <1.661337, 0.357837, 1.281107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.516556, 0.176502, 1.342392>,  <1.275253, -0.125723, 1.444533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.516556, 0.176502, 1.342392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031479, -0.342480, -0.938998,
		-0.796926, 0.558419, -0.230387,
		0.603257, 0.755564, -0.255353,
		1.697533, 0.403171, 1.265786>
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
