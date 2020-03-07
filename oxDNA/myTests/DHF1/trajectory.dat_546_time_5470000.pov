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
	<0.252472, 2.412164, 5.505560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.642723, 2.325180, 5.493813>,  <0.876874, 2.272990, 5.486764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.642723, 2.325180, 5.493813>,  <0.252472, 2.412164, 5.505560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.642723, 2.325180, 5.493813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067473, -0.169936, -0.983142,
		0.208804, 0.961162, -0.180467,
		0.975627, -0.217461, -0.029369,
		0.935411, 2.259942, 5.485002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.602928, 2.727481, 4.901312>,  <0.252472, 2.412164, 5.505560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.602928, 2.727481, 4.901312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.816055, 2.407619, 5.012062>,  <0.943932, 2.215703, 5.078512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.816055, 2.407619, 5.012062>,  <0.602928, 2.727481, 4.901312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.816055, 2.407619, 5.012062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127913, -0.247321, -0.960453,
		0.836506, 0.547163, -0.029492,
		0.532818, -0.799653, 0.276875,
		0.975901, 2.167723, 5.095125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.343969, 2.542490, 4.445457>,  <0.602928, 2.727481, 4.901312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.343969, 2.542490, 4.445457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.163597, 2.218468, 4.595375>,  <1.055374, 2.024055, 4.685326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.163597, 2.218468, 4.595375>,  <1.343969, 2.542490, 4.445457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.163597, 2.218468, 4.595375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123625, -0.359182, -0.925043,
		0.883956, -0.463464, 0.061823,
		-0.450930, -0.810055, 0.374797,
		1.028318, 1.975451, 4.707814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.770828, 1.862497, 4.230659>,  <1.343969, 2.542490, 4.445457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.770828, 1.862497, 4.230659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.383606, 1.797787, 4.307285>,  <1.151273, 1.758960, 4.353261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.383606, 1.797787, 4.307285>,  <1.770828, 1.862497, 4.230659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.383606, 1.797787, 4.307285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063024, -0.582490, -0.810391,
		0.242689, -0.796576, 0.553686,
		-0.968055, -0.161777, 0.191567,
		1.093189, 1.749254, 4.364755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.696599, 1.186859, 4.362936>,  <1.770828, 1.862497, 4.230659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.696599, 1.186859, 4.362936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.339912, 1.328350, 4.250000>,  <1.125900, 1.413245, 4.182238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.339912, 1.328350, 4.250000>,  <1.696599, 1.186859, 4.362936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.339912, 1.328350, 4.250000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061210, -0.712353, -0.699147,
		-0.448434, -0.606160, 0.656869,
		-0.891717, 0.353728, -0.282341,
		1.072397, 1.434469, 4.165298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.240425, 0.701651, 4.479142>,  <1.696599, 1.186859, 4.362936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.240425, 0.701651, 4.479142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.078804, 0.935158, 4.197445>,  <0.981832, 1.075262, 4.028427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.078804, 0.935158, 4.197445>,  <1.240425, 0.701651, 4.479142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.078804, 0.935158, 4.197445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139420, -0.800192, -0.583313,
		-0.904049, -0.137503, 0.404708,
		-0.404052, 0.583768, -0.704242,
		0.957589, 1.110288, 3.986172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.758475, 0.225658, 4.122622>,  <1.240425, 0.701651, 4.479142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.758475, 0.225658, 4.122622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.816799, 0.536800, 3.878105>,  <0.851793, 0.723486, 3.731395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.816799, 0.536800, 3.878105>,  <0.758475, 0.225658, 4.122622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.816799, 0.536800, 3.878105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213959, -0.578478, -0.787137,
		-0.965899, 0.245563, 0.082082,
		0.145809, 0.777857, -0.611292,
		0.860542, 0.770158, 3.694717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.189367, 0.190035, 3.661402>,  <0.758475, 0.225658, 4.122622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.189367, 0.190035, 3.661402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.462292, 0.406609, 3.464912>,  <0.626047, 0.536552, 3.347019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.462292, 0.406609, 3.464912>,  <0.189367, 0.190035, 3.661402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.462292, 0.406609, 3.464912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201882, -0.506257, -0.838419,
		-0.702633, 0.671233, -0.236120,
		0.682312, 0.541433, -0.491223,
		0.666985, 0.569038, 3.317545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.883687, -0.425639, 2.395198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.882812, -0.066635, 2.218803>,  <0.882288, 0.148767, 2.112966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.882812, -0.066635, 2.218803>,  <0.883687, -0.425639, 2.395198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.882812, -0.066635, 2.218803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110603, 0.438500, 0.891900,
		0.993862, -0.046824, -0.100227,
		-0.002187, 0.897511, -0.440988,
		0.882156, 0.202618, 2.086507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.538717, 0.019054, 2.526217>,  <0.883687, -0.425639, 2.395198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.538717, 0.019054, 2.526217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.227402, 0.260361, 2.456547>,  <1.040613, 0.405145, 2.414745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.227402, 0.260361, 2.456547>,  <1.538717, 0.019054, 2.526217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.227402, 0.260361, 2.456547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063244, 0.351293, 0.934127,
		0.624715, 0.716004, -0.311560,
		-0.778288, 0.603267, -0.174175,
		0.993915, 0.441341, 2.404294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.700473, 0.644633, 2.751312>,  <1.538717, 0.019054, 2.526217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.700473, 0.644633, 2.751312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.301613, 0.672867, 2.761978>,  <1.062297, 0.689807, 2.768378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.301613, 0.672867, 2.761978>,  <1.700473, 0.644633, 2.751312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.301613, 0.672867, 2.761978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064874, 0.621590, 0.780652,
		0.038527, 0.780156, -0.624398,
		-0.997150, 0.070583, 0.026664,
		1.002468, 0.694042, 2.769978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.475921, 1.362009, 2.692579>,  <1.700473, 0.644633, 2.751312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.475921, 1.362009, 2.692579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.220604, 1.124077, 2.888031>,  <1.067414, 0.981318, 3.005302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.220604, 1.124077, 2.888031>,  <1.475921, 1.362009, 2.692579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.220604, 1.124077, 2.888031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077789, 0.681346, 0.727816,
		-0.765853, 0.426550, -0.481170,
		-0.638293, -0.594830, 0.488630,
		1.029116, 0.945628, 3.034620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.880724, 1.735563, 2.801719>,  <1.475921, 1.362009, 2.692579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.880724, 1.735563, 2.801719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.897888, 1.449570, 3.080849>,  <0.908187, 1.277974, 3.248327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.897888, 1.449570, 3.080849>,  <0.880724, 1.735563, 2.801719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.897888, 1.449570, 3.080849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091327, 0.692736, 0.715385,
		-0.994896, -0.094428, -0.035571,
		0.042911, -0.714982, 0.697824,
		0.910761, 1.235075, 3.290196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.273992, 1.893281, 3.184479>,  <0.880724, 1.735563, 2.801719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.273992, 1.893281, 3.184479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.510597, 1.668762, 3.416016>,  <0.652560, 1.534051, 3.554938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.510597, 1.668762, 3.416016>,  <0.273992, 1.893281, 3.184479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.510597, 1.668762, 3.416016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177450, 0.609676, 0.772532,
		-0.786527, -0.559678, 0.261029,
		0.591512, -0.561298, 0.578842,
		0.688051, 1.500373, 3.589668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.095896, 1.913472, 3.868212>,  <0.273992, 1.893281, 3.184479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.095896, 1.913472, 3.868212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.261032, 1.757286, 3.958813>,  <0.475189, 1.663575, 4.013173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.261032, 1.757286, 3.958813>,  <-0.095896, 1.913472, 3.868212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.261032, 1.757286, 3.958813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085171, 0.347123, 0.933944,
		-0.443295, -0.852668, 0.276489,
		0.892320, -0.390464, 0.226501,
		0.528728, 1.640147, 4.026763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.188054, 1.543973, 4.474234>,  <-0.095896, 1.913472, 3.868212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.188054, 1.543973, 4.474234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.204636, 1.617851, 4.455875>,  <0.440249, 1.662178, 4.444860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.204636, 1.617851, 4.455875>,  <-0.188054, 1.543973, 4.474234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.204636, 1.617851, 4.455875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001670, 0.249513, 0.968370,
		0.190302, -0.950596, 0.245261,
		0.981724, 0.184693, -0.045895,
		0.499153, 1.673260, 4.442107>
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
