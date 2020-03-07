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
	<4.574948, 4.419973, 2.626304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.246670, 4.598694, 2.768756>,  <4.049703, 4.705926, 2.854227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.246670, 4.598694, 2.768756>,  <4.574948, 4.419973, 2.626304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.246670, 4.598694, 2.768756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328353, -0.878905, 0.345993,
		0.467595, 0.167018, 0.868021,
		-0.820695, 0.446801, 0.356130,
		4.000462, 4.732734, 2.875595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.436429, 4.313770, 3.406671>,  <4.574948, 4.419973, 2.626304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.436429, 4.313770, 3.406671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.084362, 4.330048, 3.217504>,  <3.873122, 4.339814, 3.104004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.084362, 4.330048, 3.217504>,  <4.436429, 4.313770, 3.406671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.084362, 4.330048, 3.217504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275557, -0.855046, 0.439277,
		-0.386492, 0.516953, 0.763796,
		-0.880166, 0.040693, -0.472918,
		3.820312, 4.342256, 3.075629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.889054, 3.984972, 3.898561>,  <4.436429, 4.313770, 3.406671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.889054, 3.984972, 3.898561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.760410, 3.981331, 3.519830>,  <3.683224, 3.979146, 3.292591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.760410, 3.981331, 3.519830>,  <3.889054, 3.984972, 3.898561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.760410, 3.981331, 3.519830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222426, -0.971247, 0.084889,
		-0.920377, 0.237900, 0.310338,
		-0.321610, -0.009103, -0.946828,
		3.663928, 3.978600, 3.235781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.259983, 3.609560, 3.921648>,  <3.889054, 3.984972, 3.898561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.259983, 3.609560, 3.921648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.435230, 3.575630, 3.563686>,  <3.540379, 3.555273, 3.348908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.435230, 3.575630, 3.563686>,  <3.259983, 3.609560, 3.921648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.435230, 3.575630, 3.563686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238046, -0.970945, -0.024509,
		-0.866825, 0.223767, -0.445582,
		0.438120, -0.084824, -0.894906,
		3.566666, 3.550183, 3.295214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.884585, 3.230972, 3.419536>,  <3.259983, 3.609560, 3.921648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.884585, 3.230972, 3.419536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.260040, 3.175594, 3.293177>,  <3.485314, 3.142368, 3.217362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.260040, 3.175594, 3.293177>,  <2.884585, 3.230972, 3.419536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.260040, 3.175594, 3.293177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151367, -0.988338, -0.016615,
		-0.309911, 0.063412, -0.948649,
		0.938639, -0.138444, -0.315896,
		3.541632, 3.134061, 3.198409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.956978, 2.692989, 2.776530>,  <2.884585, 3.230972, 3.419536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.956978, 2.692989, 2.776530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.320175, 2.708805, 2.943376>,  <3.538094, 2.718295, 3.043484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.320175, 2.708805, 2.943376>,  <2.956978, 2.692989, 2.776530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.320175, 2.708805, 2.943376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033719, -0.999204, 0.021321,
		0.417627, -0.005294, -0.908603,
		0.907993, 0.039541, 0.417116,
		3.592573, 2.720667, 3.068511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.266508, 2.142629, 2.468231>,  <2.956978, 2.692989, 2.776530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.266508, 2.142629, 2.468231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.509495, 2.236309, 2.771845>,  <3.655287, 2.292517, 2.954014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.509495, 2.236309, 2.771845>,  <3.266508, 2.142629, 2.468231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.509495, 2.236309, 2.771845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244601, -0.964269, 0.101768,
		0.755748, 0.123840, -0.643047,
		0.607467, 0.234201, 0.759035,
		3.691735, 2.306569, 2.999556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.928425, 1.930448, 2.229159>,  <3.266508, 2.142629, 2.468231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.928425, 1.930448, 2.229159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.875854, 1.951195, 2.625147>,  <3.844312, 1.963643, 2.862739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.875854, 1.951195, 2.625147>,  <3.928425, 1.930448, 2.229159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.875854, 1.951195, 2.625147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343529, -0.934369, 0.094561,
		0.929900, 0.352511, 0.104983,
		-0.131427, 0.051867, 0.989968,
		3.836426, 1.966755, 2.922137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.560726, 0.845658, 4.200130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.498703, 1.201328, 4.372327>,  <5.461489, 1.414731, 4.475645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.498703, 1.201328, 4.372327>,  <5.560726, 0.845658, 4.200130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.498703, 1.201328, 4.372327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324293, 0.365802, -0.872366,
		-0.933162, -0.274872, 0.231634,
		-0.155056, 0.889176, 0.430492,
		5.452186, 1.468081, 4.501474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.913042, 0.994343, 3.864765>,  <5.560726, 0.845658, 4.200130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.913042, 0.994343, 3.864765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.093544, 1.316090, 4.019355>,  <5.201845, 1.509138, 4.112109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.093544, 1.316090, 4.019355>,  <4.913042, 0.994343, 3.864765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.093544, 1.316090, 4.019355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225648, 0.521849, -0.822652,
		-0.863396, 0.284018, 0.416990,
		0.451254, 0.804367, 0.386474,
		5.228920, 1.557400, 4.135297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.479084, 1.641191, 3.965398>,  <4.913042, 0.994343, 3.864765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.479084, 1.641191, 3.965398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.860764, 1.732441, 3.887976>,  <5.089771, 1.787191, 3.841522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.860764, 1.732441, 3.887976>,  <4.479084, 1.641191, 3.965398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.860764, 1.732441, 3.887976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290455, 0.551334, -0.782091,
		-0.071700, 0.802490, 0.592342,
		0.954198, 0.228125, -0.193556,
		5.147023, 1.800879, 3.829909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.909642, 2.078771, 4.177639>,  <4.479084, 1.641191, 3.965398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.909642, 2.078771, 4.177639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.967392, 2.033554, 3.784421>,  <4.002042, 2.006424, 3.548490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.967392, 2.033554, 3.784421>,  <3.909642, 2.078771, 4.177639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.967392, 2.033554, 3.784421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125901, 0.987478, -0.095062,
		0.981481, -0.110042, 0.156799,
		0.144375, -0.113043, -0.983045,
		4.010705, 1.999641, 3.489507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.477641, 2.501160, 3.995702>,  <3.909642, 2.078771, 4.177639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.477641, 2.501160, 3.995702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.246941, 2.445923, 3.673636>,  <4.108521, 2.412781, 3.480397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.246941, 2.445923, 3.673636>,  <4.477641, 2.501160, 3.995702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.246941, 2.445923, 3.673636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016325, 0.983464, -0.180367,
		0.816757, -0.117171, -0.564959,
		-0.576750, -0.138093, -0.805164,
		4.073915, 2.404495, 3.432087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.828394, 2.895202, 3.526470>,  <4.477641, 2.501160, 3.995702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.828394, 2.895202, 3.526470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.455757, 2.847012, 3.389288>,  <4.232175, 2.818097, 3.306978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.455757, 2.847012, 3.389288>,  <4.828394, 2.895202, 3.526470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.455757, 2.847012, 3.389288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025185, 0.919819, -0.391534,
		0.362628, -0.373388, -0.853863,
		-0.931593, -0.120477, -0.342956,
		4.176279, 2.810869, 3.286401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.773038, 3.150254, 2.807629>,  <4.828394, 2.895202, 3.526470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.773038, 3.150254, 2.807629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.397102, 3.135113, 2.943433>,  <4.171541, 3.126028, 3.024915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.397102, 3.135113, 2.943433>,  <4.773038, 3.150254, 2.807629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.397102, 3.135113, 2.943433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123803, 0.964021, -0.235236,
		-0.318391, -0.263117, -0.910712,
		-0.939841, -0.037852, 0.339510,
		4.115150, 3.123757, 3.045286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.400714, 3.387015, 2.304218>,  <4.773038, 3.150254, 2.807629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.400714, 3.387015, 2.304218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.167984, 3.426178, 2.627178>,  <4.028346, 3.449676, 2.820954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.167984, 3.426178, 2.627178>,  <4.400714, 3.387015, 2.304218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.167984, 3.426178, 2.627178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021496, 0.994232, -0.105073,
		-0.813030, -0.043778, -0.580574,
		-0.581825, 0.097907, 0.807400,
		3.993437, 3.455550, 2.869398>
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
