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
	<-0.787839, 5.292620, 4.775917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.565521, 5.432885, 4.474420>,  <-0.432131, 5.517044, 4.293521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.565521, 5.432885, 4.474420>,  <-0.787839, 5.292620, 4.775917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.565521, 5.432885, 4.474420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530633, -0.847596, -0.003048,
		-0.639939, -0.398267, -0.657162,
		0.555794, 0.350662, -0.753744,
		-0.398783, 5.538084, 4.248296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.569229, 4.699549, 4.365904>,  <-0.787839, 5.292620, 4.775917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.569229, 4.699549, 4.365904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.279179, 4.971054, 4.319475>,  <-0.105148, 5.133957, 4.291618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.279179, 4.971054, 4.319475>,  <-0.569229, 4.699549, 4.365904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.279179, 4.971054, 4.319475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687477, -0.723259, 0.065355,
		-0.039589, -0.127187, -0.991088,
		0.725126, 0.678763, -0.116072,
		-0.061641, 5.174683, 4.284654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.060654, 4.502425, 3.815875>,  <-0.569229, 4.699549, 4.365904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.060654, 4.502425, 3.815875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.089828, 4.685818, 4.137934>,  <0.180118, 4.795853, 4.331169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.089828, 4.685818, 4.137934>,  <-0.060654, 4.502425, 3.815875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.089828, 4.685818, 4.137934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593202, -0.786723, 0.170815,
		0.711744, 0.413354, -0.567943,
		0.376206, 0.458482, 0.805148,
		0.202690, 4.823362, 4.379478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.520960, 4.945761, 3.837933>,  <-0.060654, 4.502425, 3.815875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.520960, 4.945761, 3.837933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.514851, 4.713719, 4.163692>,  <0.511185, 4.574495, 4.359149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.514851, 4.713719, 4.163692>,  <0.520960, 4.945761, 3.837933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.514851, 4.713719, 4.163692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783743, -0.512722, -0.350518,
		0.620898, 0.632927, 0.462483,
		-0.015273, -0.580103, 0.814400,
		0.510269, 4.539689, 4.408012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.309189, 4.893478, 4.160041>,  <0.520960, 4.945761, 3.837933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.309189, 4.893478, 4.160041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.091679, 4.571701, 4.255689>,  <0.961172, 4.378634, 4.313077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.091679, 4.571701, 4.255689>,  <1.309189, 4.893478, 4.160041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.091679, 4.571701, 4.255689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669173, -0.587568, -0.454940,
		0.506473, -0.087373, 0.857818,
		-0.543776, -0.804444, 0.239119,
		0.928546, 4.330368, 4.327425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.700810, 4.434267, 4.538531>,  <1.309189, 4.893478, 4.160041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.700810, 4.434267, 4.538531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.419968, 4.211406, 4.361160>,  <1.251462, 4.077689, 4.254738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.419968, 4.211406, 4.361160>,  <1.700810, 4.434267, 4.538531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.419968, 4.211406, 4.361160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710525, -0.589206, -0.384696,
		-0.046935, -0.585164, 0.809556,
		-0.702105, -0.557154, -0.443428,
		1.209336, 4.044260, 4.228132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.061503, 3.826137, 4.656448>,  <1.700810, 4.434267, 4.538531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.061503, 3.826137, 4.656448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.752068, 3.790231, 4.405529>,  <1.566406, 3.768687, 4.254978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.752068, 3.790231, 4.405529>,  <2.061503, 3.826137, 4.656448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.752068, 3.790231, 4.405529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533643, -0.626130, -0.568495,
		-0.341738, -0.774534, 0.532270,
		-0.773589, -0.089765, -0.627297,
		1.519991, 3.763301, 4.217340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.981928, 3.095088, 4.604594>,  <2.061503, 3.826137, 4.656448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.981928, 3.095088, 4.604594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.799072, 3.260903, 4.289842>,  <1.689359, 3.360393, 4.100990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.799072, 3.260903, 4.289842>,  <1.981928, 3.095088, 4.604594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.799072, 3.260903, 4.289842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457797, -0.648860, -0.607785,
		-0.762526, -0.638073, 0.106844,
		-0.457138, 0.414539, -0.786881,
		1.661931, 3.385265, 4.053777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.760056, 3.206050, 3.235785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.450623, 3.243175, 2.985041>,  <2.264963, 3.265449, 2.834594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.450623, 3.243175, 2.985041>,  <2.760056, 3.206050, 3.235785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.450623, 3.243175, 2.985041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630074, -0.007048, 0.776503,
		0.067650, 0.995659, 0.063929,
		-0.773583, 0.092810, -0.626862,
		2.218548, 3.271018, 2.796982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.434698, 3.796636, 3.476896>,  <2.760056, 3.206050, 3.235785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.434698, 3.796636, 3.476896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.182869, 3.533753, 3.311140>,  <2.031771, 3.376024, 3.211687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.182869, 3.533753, 3.311140>,  <2.434698, 3.796636, 3.476896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.182869, 3.533753, 3.311140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623564, 0.109253, 0.774100,
		-0.463470, 0.745751, -0.478592,
		-0.629574, -0.657205, -0.414389,
		1.993997, 3.336592, 3.186823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.770620, 4.128736, 3.227067>,  <2.434698, 3.796636, 3.476896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.770620, 4.128736, 3.227067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.711517, 3.739741, 3.299112>,  <1.676056, 3.506345, 3.342339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.711517, 3.739741, 3.299112>,  <1.770620, 4.128736, 3.227067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.711517, 3.739741, 3.299112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674131, 0.232282, 0.701137,
		-0.723682, -0.017822, -0.689903,
		-0.147756, -0.972485, 0.180113,
		1.667190, 3.447996, 3.353146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.046151, 3.963576, 3.063708>,  <1.770620, 4.128736, 3.227067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.046151, 3.963576, 3.063708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.237297, 3.763076, 3.352261>,  <1.351985, 3.642776, 3.525392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.237297, 3.763076, 3.352261>,  <1.046151, 3.963576, 3.063708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.237297, 3.763076, 3.352261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670245, 0.322777, 0.668272,
		-0.567818, -0.802846, -0.181717,
		0.477866, -0.501252, 0.721381,
		1.380657, 3.612700, 3.568675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.508072, 3.643052, 3.445070>,  <1.046151, 3.963576, 3.063708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.508072, 3.643052, 3.445070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.824600, 3.651728, 3.689476>,  <1.014517, 3.656933, 3.836120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.824600, 3.651728, 3.689476>,  <0.508072, 3.643052, 3.445070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.824600, 3.651728, 3.689476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586102, 0.311408, 0.748003,
		-0.174053, -0.950029, 0.259135,
		0.791322, 0.021687, 0.611016,
		1.061997, 3.658234, 3.872781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.265004, 3.200003, 3.987821>,  <0.508072, 3.643052, 3.445070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.265004, 3.200003, 3.987821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.557449, 3.452256, 4.091955>,  <0.732917, 3.603608, 4.154436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.557449, 3.452256, 4.091955>,  <0.265004, 3.200003, 3.987821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.557449, 3.452256, 4.091955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629005, 0.475258, 0.615209,
		0.264245, -0.613540, 0.744139,
		0.731114, 0.630633, 0.260335,
		0.776783, 3.641446, 4.170055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.267497, 3.236913, 4.749887>,  <0.265004, 3.200003, 3.987821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.267497, 3.236913, 4.749887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.450066, 3.562370, 4.605852>,  <0.559607, 3.757645, 4.519431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.450066, 3.562370, 4.605852>,  <0.267497, 3.236913, 4.749887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.450066, 3.562370, 4.605852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658496, 0.581060, 0.478280,
		0.598384, 0.018822, 0.800989,
		0.456420, 0.813643, -0.360091,
		0.586992, 3.806463, 4.497826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.265837, 3.647330, 5.296179>,  <0.267497, 3.236913, 4.749887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.265837, 3.647330, 5.296179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.321121, 3.907003, 4.996992>,  <0.354292, 4.062808, 4.817480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.321121, 3.907003, 4.996992>,  <0.265837, 3.647330, 5.296179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.321121, 3.907003, 4.996992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728334, 0.578388, 0.367418,
		0.671138, 0.493990, 0.552763,
		0.138211, 0.649184, -0.747969,
		0.362585, 4.101759, 4.772602>
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
