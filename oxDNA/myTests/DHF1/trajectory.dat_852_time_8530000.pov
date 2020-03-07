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
	<1.339372, -0.190382, 2.300256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.277557, -0.309761, 2.676989>,  <1.240469, -0.381389, 2.903028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.277557, -0.309761, 2.676989>,  <1.339372, -0.190382, 2.300256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.277557, -0.309761, 2.676989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328844, 0.914467, 0.235821,
		-0.931655, -0.273273, -0.239461,
		-0.154535, -0.298449, 0.941832,
		1.231197, -0.399296, 2.959538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.597591, 0.011288, 2.560904>,  <1.339372, -0.190382, 2.300256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.597591, 0.011288, 2.560904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.896820, -0.024414, 2.823939>,  <1.076357, -0.045835, 2.981760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.896820, -0.024414, 2.823939>,  <0.597591, 0.011288, 2.560904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.896820, -0.024414, 2.823939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139241, 0.947746, 0.287037,
		-0.648845, -0.306288, 0.696555,
		0.748072, -0.089254, 0.657588,
		1.121242, -0.051190, 3.021216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.352243, 0.463733, 3.100420>,  <0.597591, 0.011288, 2.560904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.352243, 0.463733, 3.100420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.751419, 0.440750, 3.111827>,  <0.990925, 0.426961, 3.118671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.751419, 0.440750, 3.111827>,  <0.352243, 0.463733, 3.100420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.751419, 0.440750, 3.111827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046951, 0.957207, 0.285569,
		-0.043704, -0.283642, 0.957934,
		0.997941, -0.057456, 0.028516,
		1.050801, 0.423513, 3.120382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.584744, 0.740956, 3.766074>,  <0.352243, 0.463733, 3.100420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.584744, 0.740956, 3.766074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.893501, 0.793556, 3.517273>,  <1.078756, 0.825116, 3.367992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.893501, 0.793556, 3.517273>,  <0.584744, 0.740956, 3.766074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.893501, 0.793556, 3.517273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097567, 0.942282, 0.320289,
		0.628221, -0.307916, 0.714511,
		0.771893, 0.131500, -0.622003,
		1.125069, 0.833006, 3.330672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.032122, 1.091731, 4.109591>,  <0.584744, 0.740956, 3.766074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.032122, 1.091731, 4.109591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.138443, 1.140137, 3.727030>,  <1.202236, 1.169180, 3.497493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.138443, 1.140137, 3.727030>,  <1.032122, 1.091731, 4.109591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.138443, 1.140137, 3.727030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239607, 0.952665, 0.187132,
		0.933776, -0.278901, 0.224226,
		0.265804, 0.121014, -0.956402,
		1.218184, 1.176441, 3.440109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.623125, 1.399451, 4.152157>,  <1.032122, 1.091731, 4.109591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.623125, 1.399451, 4.152157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.486816, 1.503754, 3.790853>,  <1.405031, 1.566335, 3.574070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.486816, 1.503754, 3.790853>,  <1.623125, 1.399451, 4.152157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.486816, 1.503754, 3.790853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353538, 0.925790, 0.133881,
		0.871141, -0.273714, -0.407670,
		-0.340772, 0.260756, -0.903261,
		1.384585, 1.581980, 3.519874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.276947, 1.849943, 3.823875>,  <1.623125, 1.399451, 4.152157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.276947, 1.849943, 3.823875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.933266, 1.904762, 3.626700>,  <1.727057, 1.937654, 3.508396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.933266, 1.904762, 3.626700>,  <2.276947, 1.849943, 3.823875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.933266, 1.904762, 3.626700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092563, 0.989196, 0.113679,
		0.503190, 0.052045, -0.862608,
		-0.859205, 0.137048, -0.492936,
		1.675504, 1.945877, 3.478820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.354647, 2.358756, 3.326577>,  <2.276947, 1.849943, 3.823875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.354647, 2.358756, 3.326577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.964066, 2.333168, 3.408986>,  <1.729717, 2.317815, 3.458431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.964066, 2.333168, 3.408986>,  <2.354647, 2.358756, 3.326577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.964066, 2.333168, 3.408986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017497, 0.975361, 0.219921,
		-0.215015, 0.211138, -0.953514,
		-0.976454, -0.063970, 0.206023,
		1.671129, 2.313977, 3.470793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.871212, 3.313404, 4.096632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.587379, 3.447968, 3.848980>,  <1.417080, 3.528706, 3.700388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.587379, 3.447968, 3.848980>,  <1.871212, 3.313404, 4.096632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.587379, 3.447968, 3.848980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127585, -0.925487, -0.356644,
		-0.692976, -0.174076, 0.699629,
		-0.709582, 0.336408, -0.619131,
		1.374505, 3.548890, 3.663241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.279142, 2.949023, 4.252968>,  <1.871212, 3.313404, 4.096632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.279142, 2.949023, 4.252968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.256477, 3.064125, 3.870558>,  <1.242878, 3.133186, 3.641111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.256477, 3.064125, 3.870558>,  <1.279142, 2.949023, 4.252968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.256477, 3.064125, 3.870558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055790, -0.956981, -0.284735,
		-0.996833, 0.037204, 0.070278,
		-0.056662, 0.287754, -0.956027,
		1.239479, 3.150451, 3.583750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.758229, 2.545973, 4.009174>,  <1.279142, 2.949023, 4.252968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.758229, 2.545973, 4.009174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.003029, 2.666756, 3.716796>,  <1.149909, 2.739225, 3.541370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.003029, 2.666756, 3.716796>,  <0.758229, 2.545973, 4.009174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.003029, 2.666756, 3.716796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043687, -0.935738, -0.349981,
		-0.789650, 0.182255, -0.585863,
		0.612000, 0.301957, -0.730943,
		1.186629, 2.757343, 3.497513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.425634, 2.474616, 3.300602>,  <0.758229, 2.545973, 4.009174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.425634, 2.474616, 3.300602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.823387, 2.433258, 3.291530>,  <1.062039, 2.408443, 3.286087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.823387, 2.433258, 3.291530>,  <0.425634, 2.474616, 3.300602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.823387, 2.433258, 3.291530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105692, -0.958039, -0.266441,
		0.005820, 0.267341, -0.963584,
		0.994382, -0.103394, -0.022680,
		1.121702, 2.402240, 3.284726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.573276, 2.184093, 2.608229>,  <0.425634, 2.474616, 3.300602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.573276, 2.184093, 2.608229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.875687, 2.096954, 2.855119>,  <1.057133, 2.044671, 3.003253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.875687, 2.096954, 2.855119>,  <0.573276, 2.184093, 2.608229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.875687, 2.096954, 2.855119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073730, -0.908643, -0.411014,
		0.650375, 0.356245, -0.670896,
		0.756027, -0.217848, 0.617224,
		1.102495, 2.031600, 3.040286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.969965, 1.847554, 2.268299>,  <0.573276, 2.184093, 2.608229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.969965, 1.847554, 2.268299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.115746, 1.747978, 2.627231>,  <1.203214, 1.688233, 2.842591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.115746, 1.747978, 2.627231>,  <0.969965, 1.847554, 2.268299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.115746, 1.747978, 2.627231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009242, -0.962592, -0.270798,
		0.931176, 0.106986, -0.348518,
		0.364452, -0.248940, 0.897331,
		1.225081, 1.673296, 2.896430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.584597, 1.427048, 2.229157>,  <0.969965, 1.847554, 2.268299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.584597, 1.427048, 2.229157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.449799, 1.351974, 2.598200>,  <1.368919, 1.306930, 2.819627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.449799, 1.351974, 2.598200>,  <1.584597, 1.427048, 2.229157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.449799, 1.351974, 2.598200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209295, -0.940477, -0.267767,
		0.917948, -0.283335, 0.277656,
		-0.336997, -0.187684, 0.922609,
		1.348700, 1.295669, 2.874983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.047813, 0.891614, 2.524403>,  <1.584597, 1.427048, 2.229157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.047813, 0.891614, 2.524403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.709206, 0.910210, 2.736533>,  <1.506041, 0.921367, 2.863811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.709206, 0.910210, 2.736533>,  <2.047813, 0.891614, 2.524403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.709206, 0.910210, 2.736533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146459, -0.978076, -0.148043,
		0.511817, -0.202992, 0.834768,
		-0.846518, 0.046489, 0.530326,
		1.455250, 0.924156, 2.895631>
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
