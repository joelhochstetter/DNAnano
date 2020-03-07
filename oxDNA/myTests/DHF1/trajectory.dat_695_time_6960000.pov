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
	<5.315544, 0.375745, 2.463464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.415796, 0.762434, 2.442947>,  <5.475948, 0.994448, 2.430638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.415796, 0.762434, 2.442947>,  <5.315544, 0.375745, 2.463464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.415796, 0.762434, 2.442947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746531, 0.226733, 0.625526,
		0.616340, -0.118486, 0.778516,
		0.250632, 0.966723, -0.051291,
		5.490986, 1.052451, 2.427560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.385680, 0.517562, 3.180047>,  <5.315544, 0.375745, 2.463464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.385680, 0.517562, 3.180047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.287497, 0.816822, 2.933464>,  <5.228587, 0.996378, 2.785514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.287497, 0.816822, 2.933464>,  <5.385680, 0.517562, 3.180047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.287497, 0.816822, 2.933464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544307, 0.419844, 0.726265,
		0.802172, 0.513811, 0.304170,
		-0.245459, 0.748151, -0.616458,
		5.213859, 1.041267, 2.748527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.592910, 1.100377, 3.510527>,  <5.385680, 0.517562, 3.180047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.592910, 1.100377, 3.510527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.293365, 1.196033, 3.263296>,  <5.113639, 1.253427, 3.114958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.293365, 1.196033, 3.263296>,  <5.592910, 1.100377, 3.510527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.293365, 1.196033, 3.263296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360637, 0.635402, 0.682792,
		0.556010, 0.734218, -0.389585,
		-0.748861, 0.239141, -0.618077,
		5.068707, 1.267776, 3.077873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.572771, 1.815040, 3.467277>,  <5.592910, 1.100377, 3.510527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.572771, 1.815040, 3.467277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.217934, 1.675074, 3.346863>,  <5.005031, 1.591094, 3.274614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.217934, 1.675074, 3.346863>,  <5.572771, 1.815040, 3.467277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.217934, 1.675074, 3.346863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461573, 0.667118, 0.584725,
		-0.003779, 0.657656, -0.753308,
		-0.887094, -0.349917, -0.301035,
		4.951806, 1.570099, 3.256552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.102757, 2.445631, 3.258299>,  <5.572771, 1.815040, 3.467277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.102757, 2.445631, 3.258299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.863314, 2.130888, 3.318333>,  <4.719648, 1.942042, 3.354353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.863314, 2.130888, 3.318333>,  <5.102757, 2.445631, 3.258299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.863314, 2.130888, 3.318333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686989, 0.600642, 0.408993,
		-0.411966, 0.141720, -0.900111,
		-0.598607, -0.786857, 0.150084,
		4.683732, 1.894831, 3.363358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.482245, 2.606770, 3.026751>,  <5.102757, 2.445631, 3.258299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.482245, 2.606770, 3.026751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.417336, 2.319700, 3.297634>,  <4.378389, 2.147459, 3.460164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.417336, 2.319700, 3.297634>,  <4.482245, 2.606770, 3.026751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.417336, 2.319700, 3.297634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622748, 0.606847, 0.493884,
		-0.765409, -0.341585, -0.545407,
		-0.162275, -0.717674, 0.677208,
		4.368653, 2.104398, 3.500797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.761354, 2.679623, 3.160850>,  <4.482245, 2.606770, 3.026751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.761354, 2.679623, 3.160850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.886833, 2.448435, 3.462193>,  <3.962121, 2.309722, 3.642998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.886833, 2.448435, 3.462193>,  <3.761354, 2.679623, 3.160850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.886833, 2.448435, 3.462193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677654, 0.419483, 0.604002,
		-0.665115, -0.699989, -0.260072,
		0.313699, -0.577969, 0.753355,
		3.980943, 2.275044, 3.688199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.180559, 2.489108, 3.558825>,  <3.761354, 2.679623, 3.160850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.180559, 2.489108, 3.558825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.495035, 2.439245, 3.800938>,  <3.683721, 2.409328, 3.946205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.495035, 2.439245, 3.800938>,  <3.180559, 2.489108, 3.558825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.495035, 2.439245, 3.800938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449154, 0.557462, 0.698209,
		-0.424457, -0.820790, 0.382282,
		0.786191, -0.124656, 0.605280,
		3.730893, 2.401848, 3.982522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.491554, 3.326504, 4.032803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.694088, 3.369993, 4.374985>,  <3.815609, 3.396087, 4.580294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.694088, 3.369993, 4.374985>,  <3.491554, 3.326504, 4.032803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.694088, 3.369993, 4.374985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206273, -0.978492, 0.002271,
		0.837303, 0.175308, -0.517872,
		0.506335, 0.108724, 0.855455,
		3.845989, 3.402611, 4.631621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.139974, 3.122793, 3.933660>,  <3.491554, 3.326504, 4.032803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.139974, 3.122793, 3.933660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.040775, 3.065691, 4.316934>,  <3.981256, 3.031430, 4.546898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.040775, 3.065691, 4.316934>,  <4.139974, 3.122793, 3.933660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.040775, 3.065691, 4.316934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292742, -0.953887, -0.066348,
		0.923472, 0.264047, 0.278350,
		-0.247995, -0.142755, 0.958185,
		3.966377, 3.022864, 4.604389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.773777, 2.957320, 4.466089>,  <4.139974, 3.122793, 3.933660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.773777, 2.957320, 4.466089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.414696, 2.790158, 4.521928>,  <4.199247, 2.689861, 4.555431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.414696, 2.790158, 4.521928>,  <4.773777, 2.957320, 4.466089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.414696, 2.790158, 4.521928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355129, -0.873811, -0.332171,
		0.260797, -0.248616, 0.932832,
		-0.897702, -0.417905, 0.139596,
		4.145385, 2.664787, 4.563807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.651274, 2.294870, 4.875825>,  <4.773777, 2.957320, 4.466089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.651274, 2.294870, 4.875825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.354248, 2.313455, 4.608561>,  <4.176033, 2.324605, 4.448202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.354248, 2.313455, 4.608561>,  <4.651274, 2.294870, 4.875825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.354248, 2.313455, 4.608561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376756, -0.795822, -0.474048,
		-0.553763, -0.603745, 0.573444,
		-0.742564, 0.046461, -0.668162,
		4.131479, 2.327393, 4.408112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.472121, 1.615676, 4.659972>,  <4.651274, 2.294870, 4.875825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.472121, 1.615676, 4.659972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.307472, 1.820655, 4.358519>,  <4.208683, 1.943642, 4.177646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.307472, 1.820655, 4.358519>,  <4.472121, 1.615676, 4.659972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.307472, 1.820655, 4.358519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334093, -0.684521, -0.647929,
		-0.847909, -0.518486, 0.110558,
		-0.411621, 0.512448, -0.753634,
		4.183986, 1.974389, 4.132428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.973105, 1.171856, 4.279337>,  <4.472121, 1.615676, 4.659972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.973105, 1.171856, 4.279337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.142899, 1.460054, 4.059993>,  <4.244775, 1.632973, 3.928386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.142899, 1.460054, 4.059993>,  <3.973105, 1.171856, 4.279337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.142899, 1.460054, 4.059993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354297, -0.689515, -0.631698,
		-0.833239, 0.073863, -0.547957,
		0.424484, 0.720495, -0.548362,
		4.270244, 1.676203, 3.895484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.944102, 0.794919, 3.618619>,  <3.973105, 1.171856, 4.279337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.944102, 0.794919, 3.618619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.158852, 1.124645, 3.546762>,  <4.287702, 1.322481, 3.503648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.158852, 1.124645, 3.546762>,  <3.944102, 0.794919, 3.618619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.158852, 1.124645, 3.546762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554042, -0.505066, -0.661775,
		-0.636242, 0.255761, -0.727862,
		0.536874, 0.824315, -0.179642,
		4.319914, 1.371940, 3.492870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.973877, 0.903119, 2.855961>,  <3.944102, 0.794919, 3.618619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.973877, 0.903119, 2.855961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.271339, 1.115746, 3.018152>,  <4.449817, 1.243321, 3.115467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.271339, 1.115746, 3.018152>,  <3.973877, 0.903119, 2.855961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.271339, 1.115746, 3.018152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656281, -0.464701, -0.594431,
		-0.127554, 0.708160, -0.694434,
		0.743657, 0.531566, 0.405477,
		4.494436, 1.275215, 3.139796>
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
