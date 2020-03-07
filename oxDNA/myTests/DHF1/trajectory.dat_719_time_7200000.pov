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
	<2.001453, 1.533060, 2.322068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.988926, 1.383142, 2.692699>,  <1.981410, 1.293192, 2.915078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.988926, 1.383142, 2.692699>,  <2.001453, 1.533060, 2.322068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.988926, 1.383142, 2.692699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992718, -0.119549, -0.014804,
		0.116320, 0.919368, 0.375808,
		-0.031317, -0.374793, 0.926579,
		1.979531, 1.270705, 2.970673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.277326, 1.954996, 2.822421>,  <2.001453, 1.533060, 2.322068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.277326, 1.954996, 2.822421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.305454, 1.565865, 2.910655>,  <2.322331, 1.332385, 2.963595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.305454, 1.565865, 2.910655>,  <2.277326, 1.954996, 2.822421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.305454, 1.565865, 2.910655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995495, 0.054341, -0.077701,
		0.063603, 0.225055, 0.972268,
		0.070321, -0.972830, 0.220584,
		2.326550, 1.274016, 2.976830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.839112, 1.775929, 3.262238>,  <2.277326, 1.954996, 2.822421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.839112, 1.775929, 3.262238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.777180, 1.411011, 3.110584>,  <2.740021, 1.192060, 3.019592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.777180, 1.411011, 3.110584>,  <2.839112, 1.775929, 3.262238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.777180, 1.411011, 3.110584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982331, -0.101322, -0.157354,
		0.105139, -0.396799, 0.911864,
		-0.154830, -0.912296, -0.379135,
		2.730731, 1.137322, 2.996844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.286708, 1.298348, 3.630235>,  <2.839112, 1.775929, 3.262238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.286708, 1.298348, 3.630235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.208523, 1.158381, 3.263770>,  <3.161612, 1.074400, 3.043891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.208523, 1.158381, 3.263770>,  <3.286708, 1.298348, 3.630235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.208523, 1.158381, 3.263770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980091, -0.102926, -0.169791,
		-0.034884, -0.931109, 0.363070,
		-0.195463, -0.349918, -0.916161,
		3.149884, 1.053405, 2.988922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.640954, 0.698149, 3.556593>,  <3.286708, 1.298348, 3.630235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.640954, 0.698149, 3.556593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.585312, 0.822653, 3.180557>,  <3.551927, 0.897355, 2.954936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.585312, 0.822653, 3.180557>,  <3.640954, 0.698149, 3.556593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.585312, 0.822653, 3.180557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990277, 0.044778, -0.131706,
		0.001101, -0.949269, -0.314463,
		-0.139105, 0.311261, -0.940089,
		3.543580, 0.916031, 2.898531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.072856, 0.315033, 3.068274>,  <3.640954, 0.698149, 3.556593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.072856, 0.315033, 3.068274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.989643, 0.656889, 2.877985>,  <3.939715, 0.862003, 2.763811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.989643, 0.656889, 2.877985>,  <4.072856, 0.315033, 3.068274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.989643, 0.656889, 2.877985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975853, 0.148241, -0.160421,
		-0.066580, -0.497609, -0.864842,
		-0.208032, 0.854640, -0.475723,
		3.927234, 0.913281, 2.735268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.491737, 0.261808, 2.393214>,  <4.072856, 0.315033, 3.068274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.491737, 0.261808, 2.393214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.386879, 0.647335, 2.412550>,  <4.323964, 0.878651, 2.424152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.386879, 0.647335, 2.412550>,  <4.491737, 0.261808, 2.393214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.386879, 0.647335, 2.412550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936579, 0.266171, -0.227973,
		-0.232591, -0.014487, -0.972467,
		-0.262146, 0.963817, 0.048341,
		4.308235, 0.936480, 2.427052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.607265, 0.818306, 1.752681>,  <4.491737, 0.261808, 2.393214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.607265, 0.818306, 1.752681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.650387, 0.993069, 2.109890>,  <4.676260, 1.097926, 2.324215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.650387, 0.993069, 2.109890>,  <4.607265, 0.818306, 1.752681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.650387, 0.993069, 2.109890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952562, 0.211759, -0.218595,
		-0.284611, 0.874226, -0.393352,
		0.107805, 0.436907, 0.893023,
		4.682728, 1.124141, 2.377797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.646157, 0.759800, 2.805421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.658508, 1.145576, 2.910416>,  <5.665919, 1.377042, 2.973413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.658508, 1.145576, 2.910416>,  <5.646157, 0.759800, 2.805421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.658508, 1.145576, 2.910416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884339, 0.148750, -0.442514,
		-0.465824, -0.218464, 0.857486,
		0.030878, 0.964441, 0.262488,
		5.667772, 1.434909, 2.989163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.038214, 0.906889, 3.156553>,  <5.646157, 0.759800, 2.805421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.038214, 0.906889, 3.156553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.174942, 1.242825, 2.987874>,  <5.256979, 1.444386, 2.886666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.174942, 1.242825, 2.987874>,  <5.038214, 0.906889, 3.156553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.174942, 1.242825, 2.987874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927905, 0.230554, -0.292979,
		-0.148831, 0.491442, 0.858099,
		0.341820, 0.839839, -0.421698,
		5.277488, 1.494776, 2.861365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.720582, 1.567080, 3.415654>,  <5.038214, 0.906889, 3.156553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.720582, 1.567080, 3.415654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.836784, 1.570141, 3.032917>,  <4.906506, 1.571977, 2.803274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.836784, 1.570141, 3.032917>,  <4.720582, 1.567080, 3.415654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.836784, 1.570141, 3.032917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953614, 0.084783, -0.288846,
		0.078913, 0.996370, 0.031927,
		0.290505, 0.007652, -0.956843,
		4.923936, 1.572436, 2.745864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.261936, 2.001672, 3.149420>,  <4.720582, 1.567080, 3.415654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.261936, 2.001672, 3.149420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.419106, 1.773979, 2.860537>,  <4.513407, 1.637364, 2.687207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.419106, 1.773979, 2.860537>,  <4.261936, 2.001672, 3.149420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.419106, 1.773979, 2.860537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898283, -0.069586, -0.433872,
		0.196718, 0.819227, -0.538673,
		0.392924, -0.569232, -0.722209,
		4.536983, 1.603210, 2.643874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.974292, 2.172344, 2.539073>,  <4.261936, 2.001672, 3.149420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.974292, 2.172344, 2.539073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.099098, 1.798023, 2.473440>,  <4.173982, 1.573431, 2.434061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.099098, 1.798023, 2.473440>,  <3.974292, 2.172344, 2.539073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.099098, 1.798023, 2.473440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924989, -0.259785, -0.277320,
		0.216891, 0.238301, -0.946663,
		0.312015, -0.935801, -0.164081,
		4.192703, 1.517283, 2.424216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.702721, 1.908877, 1.911178>,  <3.974292, 2.172344, 2.539073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.702721, 1.908877, 1.911178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.772621, 1.595215, 2.149358>,  <3.814561, 1.407017, 2.292266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.772621, 1.595215, 2.149358>,  <3.702721, 1.908877, 1.911178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.772621, 1.595215, 2.149358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976749, -0.214340, 0.004383,
		0.124192, -0.582372, -0.803380,
		0.174749, -0.784157, 0.595451,
		3.825046, 1.359968, 2.327993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.234602, 1.380321, 1.671680>,  <3.702721, 1.908877, 1.911178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.234602, 1.380321, 1.671680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.327194, 1.251858, 2.039000>,  <3.382750, 1.174780, 2.259392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.327194, 1.251858, 2.039000>,  <3.234602, 1.380321, 1.671680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.327194, 1.251858, 2.039000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932607, -0.341909, 0.115512,
		0.276878, -0.883151, -0.378659,
		0.231481, -0.321157, 0.918300,
		3.396639, 1.155511, 2.314490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.923778, 0.764836, 1.760830>,  <3.234602, 1.380321, 1.671680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.923778, 0.764836, 1.760830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.998802, 0.866879, 2.140249>,  <3.043817, 0.928104, 2.367900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.998802, 0.866879, 2.140249>,  <2.923778, 0.764836, 1.760830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.998802, 0.866879, 2.140249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896626, -0.349871, 0.271390,
		0.401102, -0.901394, 0.163112,
		0.187561, 0.255106, 0.948547,
		3.055071, 0.943410, 2.424813>
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
